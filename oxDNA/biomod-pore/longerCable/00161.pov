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
	<23.889574, 34.731365, 34.805927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.051916, 35.077938, 34.922256>,  <24.149321, 35.285881, 34.992054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.051916, 35.077938, 34.922256>,  <23.889574, 34.731365, 34.805927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.051916, 35.077938, 34.922256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519430, -0.480492, 0.706625,
		0.751981, -0.135725, -0.645061,
		0.405854, 0.866433, 0.290821,
		24.173672, 35.337868, 35.009502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.717449, 34.828827, 34.845566>,  <23.889574, 34.731365, 34.805927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.717449, 34.828827, 34.845566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.490021, 35.016212, 35.116055>,  <24.353563, 35.128643, 35.278347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.490021, 35.016212, 35.116055>,  <24.717449, 34.828827, 34.845566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.490021, 35.016212, 35.116055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478778, -0.480006, 0.735095,
		0.668953, 0.741712, 0.048628,
		-0.568571, 0.468462, 0.676218,
		24.319450, 35.156750, 35.318920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.108198, 35.283676, 35.322399>,  <24.717449, 34.828827, 34.845566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.108198, 35.283676, 35.322399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788338, 35.105461, 35.483421>,  <24.596422, 34.998531, 35.580036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788338, 35.105461, 35.483421>,  <25.108198, 35.283676, 35.322399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.788338, 35.105461, 35.483421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581224, -0.405968, 0.705244,
		-0.150789, 0.797925, 0.583591,
		-0.799651, -0.445540, 0.402558,
		24.548443, 34.971798, 35.604187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.768808, 35.586330, 35.628693>,  <25.108198, 35.283676, 35.322399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.768808, 35.586330, 35.628693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.730980, 35.456852, 36.005260>,  <25.708282, 35.379166, 36.231201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.730980, 35.456852, 36.005260>,  <25.768808, 35.586330, 35.628693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.730980, 35.456852, 36.005260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973351, -0.228514, 0.019204,
		0.208912, 0.918150, 0.336683,
		-0.094569, -0.323699, 0.941422,
		25.702610, 35.359741, 36.287685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385876, 35.854042, 35.938538>,  <25.768808, 35.586330, 35.628693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385876, 35.854042, 35.938538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279989, 35.544102, 36.168159>,  <26.216457, 35.358139, 36.305931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279989, 35.544102, 36.168159>,  <26.385876, 35.854042, 35.938538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279989, 35.544102, 36.168159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963843, -0.193761, 0.182929,
		-0.030513, 0.601723, 0.798122,
		-0.264717, -0.774846, 0.574054,
		26.200575, 35.311649, 36.340374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.528564, 36.021423, 36.642437>,  <26.385876, 35.854042, 35.938538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.528564, 36.021423, 36.642437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550167, 35.641098, 36.520432>,  <26.563128, 35.412903, 36.447227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550167, 35.641098, 36.520432>,  <26.528564, 36.021423, 36.642437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550167, 35.641098, 36.520432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984767, 0.000154, 0.173879,
		-0.165280, -0.309756, 0.936341,
		0.054005, -0.950816, -0.305012,
		26.566368, 35.355854, 36.428928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813831, 35.485172, 37.165909>,  <26.528564, 36.021423, 36.642437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813831, 35.485172, 37.165909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886204, 35.410160, 36.779728>,  <26.929626, 35.365154, 36.548019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886204, 35.410160, 36.779728>,  <26.813831, 35.485172, 37.165909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886204, 35.410160, 36.779728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969685, -0.129923, 0.206959,
		-0.164245, -0.973628, 0.158339,
		0.180929, -0.187531, -0.965452,
		26.940483, 35.353901, 36.490093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136766, 36.147739, 37.115097>,  <26.813831, 35.485172, 37.165909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136766, 36.147739, 37.115097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481155, 36.243965, 37.294365>,  <27.687788, 36.301701, 37.401928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481155, 36.243965, 37.294365>,  <27.136766, 36.147739, 37.115097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481155, 36.243965, 37.294365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479517, 0.089937, 0.872912,
		0.169680, -0.966459, 0.192786,
		0.860972, 0.240560, 0.448173,
		27.739447, 36.316132, 37.428818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341866, 35.573360, 37.621223>,  <27.136766, 36.147739, 37.115097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341866, 35.573360, 37.621223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495178, 35.929123, 37.720863>,  <27.587166, 36.142582, 37.780647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495178, 35.929123, 37.720863>,  <27.341866, 35.573360, 37.621223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495178, 35.929123, 37.720863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427953, -0.067986, 0.901240,
		0.818505, -0.452030, 0.354567,
		0.383282, 0.889408, 0.249095,
		27.610163, 36.195946, 37.795593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657101, 35.439064, 38.263256>,  <27.341866, 35.573360, 37.621223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657101, 35.439064, 38.263256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670633, 35.838825, 38.260742>,  <27.678753, 36.078682, 38.259235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670633, 35.838825, 38.260742>,  <27.657101, 35.439064, 38.263256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670633, 35.838825, 38.260742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385093, 0.018839, 0.922685,
		0.922257, -0.028797, 0.385503,
		0.033833, 0.999408, -0.006284,
		27.680784, 36.138649, 38.258858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087067, 35.574875, 38.747772>,  <27.657101, 35.439064, 38.263256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087067, 35.574875, 38.747772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847864, 35.892502, 38.704243>,  <27.704342, 36.083076, 38.678123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847864, 35.892502, 38.704243>,  <28.087067, 35.574875, 38.747772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847864, 35.892502, 38.704243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408142, -0.184843, 0.894010,
		0.689789, 0.579041, 0.434629,
		-0.598006, 0.794069, -0.108828,
		27.668463, 36.130722, 38.671593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212580, 36.193417, 39.287189>,  <28.087067, 35.574875, 38.747772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212580, 36.193417, 39.287189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838470, 36.173119, 39.147079>,  <27.614004, 36.160938, 39.063015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838470, 36.173119, 39.147079>,  <28.212580, 36.193417, 39.287189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838470, 36.173119, 39.147079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339356, -0.152486, 0.928216,
		-0.100513, 0.987002, 0.125396,
		-0.935272, -0.050744, -0.350272,
		27.557888, 36.157894, 39.041996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896845, 36.676010, 39.631645>,  <28.212580, 36.193417, 39.287189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896845, 36.676010, 39.631645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607904, 36.441517, 39.484924>,  <27.434540, 36.300823, 39.396893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607904, 36.441517, 39.484924>,  <27.896845, 36.676010, 39.631645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607904, 36.441517, 39.484924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441148, -0.017824, 0.897258,
		-0.532536, 0.809949, -0.245739,
		-0.722353, -0.586229, -0.366799,
		27.391199, 36.265648, 39.374886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135267, 36.866238, 39.952179>,  <27.896845, 36.676010, 39.631645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135267, 36.866238, 39.952179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118380, 36.491047, 39.814529>,  <27.108248, 36.265934, 39.731941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118380, 36.491047, 39.814529>,  <27.135267, 36.866238, 39.952179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118380, 36.491047, 39.814529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564636, -0.261753, 0.782733,
		-0.824260, 0.227349, -0.518564,
		-0.042218, -0.937975, -0.344122,
		27.105715, 36.209656, 39.711292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.481169, 36.668678, 39.540985>,  <27.135267, 36.866238, 39.952179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.481169, 36.668678, 39.540985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879938, 36.648529, 39.516975>,  <27.119200, 36.636440, 39.502571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879938, 36.648529, 39.516975>,  <26.481169, 36.668678, 39.540985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879938, 36.648529, 39.516975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057066, 0.058174, -0.996674,
		0.053701, 0.997034, 0.055120,
		0.996925, -0.050377, -0.060020,
		27.179016, 36.633415, 39.498970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559238, 36.822037, 38.853458>,  <26.481169, 36.668678, 39.540985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559238, 36.822037, 38.853458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936890, 36.730145, 38.947983>,  <27.163481, 36.675007, 39.004696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936890, 36.730145, 38.947983>,  <26.559238, 36.822037, 38.853458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936890, 36.730145, 38.947983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195400, -0.187213, -0.962689,
		0.265403, 0.955078, -0.131863,
		0.944129, -0.229735, 0.236309,
		27.220129, 36.661224, 39.018875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094269, 37.329556, 38.583408>,  <26.559238, 36.822037, 38.853458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094269, 37.329556, 38.583408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237314, 36.956642, 38.605202>,  <27.323141, 36.732895, 38.618279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237314, 36.956642, 38.605202>,  <27.094269, 37.329556, 38.583408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237314, 36.956642, 38.605202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344288, 0.077386, -0.935670,
		0.868089, 0.353364, 0.348647,
		0.357613, -0.932280, 0.054481,
		27.344599, 36.676960, 38.621548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571198, 37.408253, 38.202946>,  <27.094269, 37.329556, 38.583408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571198, 37.408253, 38.202946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596176, 37.010254, 38.234127>,  <27.611164, 36.771454, 38.252834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596176, 37.010254, 38.234127>,  <27.571198, 37.408253, 38.202946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596176, 37.010254, 38.234127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321399, -0.053893, -0.945409,
		0.944882, 0.084092, 0.316427,
		0.062448, -0.994999, 0.077950,
		27.614910, 36.711754, 38.257511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286051, 37.219105, 38.120331>,  <27.571198, 37.408253, 38.202946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286051, 37.219105, 38.120331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051510, 36.909374, 38.025158>,  <27.910786, 36.723537, 37.968052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051510, 36.909374, 38.025158>,  <28.286051, 37.219105, 38.120331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051510, 36.909374, 38.025158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553727, -0.168743, -0.815421,
		0.591251, -0.609875, 0.527707,
		-0.586351, -0.774325, -0.237935,
		27.875605, 36.677078, 37.953777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795324, 36.635937, 38.071640>,  <28.286051, 37.219105, 38.120331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795324, 36.635937, 38.071640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467636, 36.560963, 37.854847>,  <28.271023, 36.515980, 37.724770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467636, 36.560963, 37.854847>,  <28.795324, 36.635937, 38.071640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467636, 36.560963, 37.854847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571812, -0.338947, -0.747092,
		-0.043672, -0.921945, 0.384850,
		-0.819221, -0.187435, -0.541982,
		28.221870, 36.504734, 37.692253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018553, 36.655941, 38.853401>,  <28.795324, 36.635937, 38.071640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018553, 36.655941, 38.853401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234310, 36.788227, 39.163158>,  <29.363766, 36.867599, 39.349014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234310, 36.788227, 39.163158>,  <29.018553, 36.655941, 38.853401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234310, 36.788227, 39.163158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684828, -0.707402, -0.174908,
		0.489962, 0.624670, -0.608050,
		0.539395, 0.330712, 0.774392,
		29.396130, 36.887440, 39.395477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654537, 36.904213, 38.625313>,  <29.018553, 36.655941, 38.853401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654537, 36.904213, 38.625313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629381, 36.727119, 38.983089>,  <29.614286, 36.620865, 39.197758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629381, 36.727119, 38.983089>,  <29.654537, 36.904213, 38.625313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629381, 36.727119, 38.983089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562980, -0.755755, -0.334497,
		0.824074, 0.482518, 0.296780,
		-0.062892, -0.442731, 0.894446,
		29.610514, 36.594299, 39.251423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234762, 36.527431, 38.923126>,  <29.654537, 36.904213, 38.625313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234762, 36.527431, 38.923126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958519, 36.331959, 39.136383>,  <29.792772, 36.214676, 39.264339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958519, 36.331959, 39.136383>,  <30.234762, 36.527431, 38.923126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958519, 36.331959, 39.136383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478077, -0.861613, -0.170483,
		0.542679, 0.137148, 0.828668,
		-0.690610, -0.488685, 0.533146,
		29.751335, 36.185352, 39.296326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515680, 36.020241, 39.334118>,  <30.234762, 36.527431, 38.923126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515680, 36.020241, 39.334118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146261, 35.896877, 39.242950>,  <29.924610, 35.822861, 39.188251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146261, 35.896877, 39.242950>,  <30.515680, 36.020241, 39.334118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146261, 35.896877, 39.242950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349197, -0.921973, -0.167414,
		-0.158501, -0.234202, 0.959180,
		-0.923547, -0.308407, -0.227916,
		29.869198, 35.804356, 39.174576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299761, 35.495438, 39.746864>,  <30.515680, 36.020241, 39.334118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299761, 35.495438, 39.746864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071201, 35.436638, 39.423904>,  <29.934067, 35.401356, 39.230129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071201, 35.436638, 39.423904>,  <30.299761, 35.495438, 39.746864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071201, 35.436638, 39.423904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264420, -0.964338, -0.011553,
		-0.776909, -0.220094, 0.589891,
		-0.571397, -0.147004, -0.807400,
		29.899782, 35.392536, 39.181683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650234, 35.022007, 39.372242>,  <30.299761, 35.495438, 39.746864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650234, 35.022007, 39.372242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333359, 34.984997, 39.130955>,  <30.143234, 34.962791, 38.986183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333359, 34.984997, 39.130955>,  <30.650234, 35.022007, 39.372242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333359, 34.984997, 39.130955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483961, -0.697401, -0.528596,
		-0.371779, -0.710683, 0.597252,
		-0.792188, -0.092525, -0.603222,
		30.095703, 34.957241, 38.949989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337366, 34.324177, 39.423374>,  <30.650234, 35.022007, 39.372242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337366, 34.324177, 39.423374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255461, 34.469837, 39.059952>,  <30.206318, 34.557232, 38.841900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255461, 34.469837, 39.059952>,  <30.337366, 34.324177, 39.423374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255461, 34.469837, 39.059952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392299, -0.819875, -0.417021,
		-0.896757, -0.441815, 0.025023,
		-0.204762, 0.364150, -0.908552,
		30.194033, 34.579082, 38.787388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092766, 34.062840, 39.343349>,  <30.337366, 34.324177, 39.423374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092766, 34.062840, 39.343349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794350, 33.856125, 39.175369>,  <30.615301, 33.732098, 39.074581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794350, 33.856125, 39.175369>,  <31.092766, 34.062840, 39.343349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794350, 33.856125, 39.175369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370227, 0.202295, -0.906647,
		0.553497, -0.831870, 0.040408,
		-0.746038, -0.516787, -0.419951,
		30.570538, 33.701088, 39.049385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333710, 33.456879, 39.083660>,  <31.092766, 34.062840, 39.343349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333710, 33.456879, 39.083660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027222, 33.614704, 38.880791>,  <30.843328, 33.709400, 38.759071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027222, 33.614704, 38.880791>,  <31.333710, 33.456879, 39.083660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027222, 33.614704, 38.880791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540368, -0.031447, -0.840841,
		-0.347716, -0.918330, -0.189115,
		-0.766222, 0.394565, -0.507170,
		30.797356, 33.733074, 38.728638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101669, 33.007401, 38.611549>,  <31.333710, 33.456879, 39.083660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101669, 33.007401, 38.611549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009420, 33.369637, 38.469158>,  <30.954071, 33.586979, 38.383724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009420, 33.369637, 38.469158>,  <31.101669, 33.007401, 38.611549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009420, 33.369637, 38.469158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489061, -0.208392, -0.846990,
		-0.841209, -0.369427, -0.394830,
		-0.230621, 0.905592, -0.355974,
		30.940233, 33.641315, 38.362366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792845, 32.990269, 37.786678>,  <31.101669, 33.007401, 38.611549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792845, 32.990269, 37.786678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028826, 33.280117, 37.929161>,  <31.170414, 33.454025, 38.014652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028826, 33.280117, 37.929161>,  <30.792845, 32.990269, 37.786678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028826, 33.280117, 37.929161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726796, -0.284382, -0.625216,
		-0.351745, 0.627737, -0.694422,
		0.589952, 0.724620, 0.356206,
		31.205811, 33.497501, 38.036022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119177, 33.336021, 37.122887>,  <30.792845, 32.990269, 37.786678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119177, 33.336021, 37.122887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347357, 33.332478, 37.451401>,  <31.484264, 33.330353, 37.648510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347357, 33.332478, 37.451401>,  <31.119177, 33.336021, 37.122887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347357, 33.332478, 37.451401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813584, -0.130920, -0.566516,
		0.112540, 0.991353, -0.067477,
		0.570452, -0.008858, 0.821283,
		31.518492, 33.329819, 37.697784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486256, 34.013161, 37.151043>,  <31.119177, 33.336021, 37.122887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486256, 34.013161, 37.151043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691154, 33.704910, 37.302696>,  <31.814095, 33.519958, 37.393688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691154, 33.704910, 37.302696>,  <31.486256, 34.013161, 37.151043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691154, 33.704910, 37.302696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662983, 0.074197, -0.744948,
		0.545945, 0.632955, 0.548918,
		0.512247, -0.770625, 0.379131,
		31.844830, 33.473724, 37.416435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306473, 34.125145, 37.299030>,  <31.486256, 34.013161, 37.151043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306473, 34.125145, 37.299030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200588, 33.755287, 37.189514>,  <32.137058, 33.533371, 37.123806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200588, 33.755287, 37.189514>,  <32.306473, 34.125145, 37.299030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200588, 33.755287, 37.189514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740437, -0.012993, -0.672000,
		0.617805, -0.380606, 0.688082,
		-0.264708, -0.924646, -0.273788,
		32.121178, 33.477894, 37.107376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956776, 33.762321, 37.337337>,  <32.306473, 34.125145, 37.299030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956776, 33.762321, 37.337337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693188, 33.607986, 37.079067>,  <32.535034, 33.515385, 36.924107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693188, 33.607986, 37.079067>,  <32.956776, 33.762321, 37.337337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693188, 33.607986, 37.079067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685459, 0.045391, -0.726695,
		0.309691, -0.921451, 0.234562,
		-0.658967, -0.385834, -0.645674,
		32.495499, 33.492237, 36.885365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372643, 33.235310, 36.845352>,  <32.956776, 33.762321, 37.337337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372643, 33.235310, 36.845352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054905, 33.386326, 36.654991>,  <32.864262, 33.476936, 36.540775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054905, 33.386326, 36.654991>,  <33.372643, 33.235310, 36.845352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054905, 33.386326, 36.654991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567589, 0.182090, -0.802923,
		-0.216480, -0.907912, -0.358930,
		-0.794342, 0.377542, -0.475902,
		32.816601, 33.499588, 36.512222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401649, 33.915596, 36.459747>,  <33.372643, 33.235310, 36.845352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401649, 33.915596, 36.459747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529453, 34.294270, 36.443264>,  <33.606136, 34.521473, 36.433376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529453, 34.294270, 36.443264>,  <33.401649, 33.915596, 36.459747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529453, 34.294270, 36.443264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044400, -0.028481, -0.998608,
		-0.946541, 0.320899, 0.032932,
		0.319514, 0.946685, -0.041206,
		33.625309, 34.578274, 36.430901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948551, 34.402264, 36.104633>,  <33.401649, 33.915596, 36.459747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948551, 34.402264, 36.104633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319214, 34.548450, 36.069439>,  <33.541611, 34.636162, 36.048321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319214, 34.548450, 36.069439>,  <32.948551, 34.402264, 36.104633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319214, 34.548450, 36.069439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109146, 0.037590, -0.993315,
		-0.359717, 0.930065, 0.074723,
		0.926656, 0.365467, -0.087991,
		33.597210, 34.658092, 36.043041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943871, 34.831436, 35.500614>,  <32.948551, 34.402264, 36.104633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943871, 34.831436, 35.500614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300529, 34.662670, 35.566288>,  <33.514526, 34.561413, 35.605694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300529, 34.662670, 35.566288>,  <32.943871, 34.831436, 35.500614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300529, 34.662670, 35.566288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026135, -0.314082, -0.949036,
		0.451976, 0.850496, -0.269024,
		0.891647, -0.421911, 0.164185,
		33.568024, 34.536098, 35.615543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461983, 35.219795, 35.213955>,  <32.943871, 34.831436, 35.500614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461983, 35.219795, 35.213955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550751, 34.829948, 35.225796>,  <33.604012, 34.596039, 35.232903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550751, 34.829948, 35.225796>,  <33.461983, 35.219795, 35.213955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550751, 34.829948, 35.225796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026266, -0.036326, -0.998995,
		0.974712, 0.220916, -0.033661,
		0.221917, -0.974616, 0.029604,
		33.617325, 34.537563, 35.234676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065239, 35.129223, 34.723324>,  <33.461983, 35.219795, 35.213955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065239, 35.129223, 34.723324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838322, 34.800755, 34.748180>,  <33.702171, 34.603676, 34.763092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838322, 34.800755, 34.748180>,  <34.065239, 35.129223, 34.723324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838322, 34.800755, 34.748180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133186, 0.017026, -0.990945,
		0.812673, -0.570435, -0.119027,
		-0.567296, -0.821166, 0.062138,
		33.668133, 34.554405, 34.766823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301056, 34.531700, 34.278255>,  <34.065239, 35.129223, 34.723324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301056, 34.531700, 34.278255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905754, 34.515682, 34.337238>,  <33.668571, 34.506073, 34.372627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905754, 34.515682, 34.337238>,  <34.301056, 34.531700, 34.278255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905754, 34.515682, 34.337238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131697, -0.266157, -0.954891,
		0.077485, -0.963098, 0.257758,
		-0.988257, -0.040043, 0.147460,
		33.609276, 34.503670, 34.381477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092472, 33.828743, 34.050858>,  <34.301056, 34.531700, 34.278255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092472, 33.828743, 34.050858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815002, 34.109703, 33.987038>,  <33.648521, 34.278278, 33.948746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815002, 34.109703, 33.987038>,  <34.092472, 33.828743, 34.050858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815002, 34.109703, 33.987038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041073, -0.182575, -0.982334,
		-0.719121, -0.687968, 0.097798,
		-0.693670, 0.702400, -0.159550,
		33.606903, 34.320423, 33.939171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392994, 33.709167, 33.829391>,  <34.092472, 33.828743, 34.050858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392994, 33.709167, 33.829391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528149, 34.042820, 33.655010>,  <33.609241, 34.243011, 33.550381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528149, 34.042820, 33.655010>,  <33.392994, 33.709167, 33.829391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528149, 34.042820, 33.655010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182924, -0.396161, -0.899775,
		-0.923239, 0.383768, 0.018725,
		0.337887, 0.834133, -0.435952,
		33.629517, 34.293060, 33.524223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192081, 33.008774, 33.428421>,  <33.392994, 33.709167, 33.829391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192081, 33.008774, 33.428421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242741, 33.147266, 33.800243>,  <33.273136, 33.230362, 34.023338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242741, 33.147266, 33.800243>,  <33.192081, 33.008774, 33.428421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242741, 33.147266, 33.800243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608638, -0.712847, 0.348438,
		0.783276, -0.609894, 0.120453,
		0.126645, 0.346236, 0.929560,
		33.280735, 33.251137, 34.079113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454697, 32.569439, 33.992165>,  <33.192081, 33.008774, 33.428421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454697, 32.569439, 33.992165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167732, 32.807819, 34.136475>,  <32.995552, 32.950848, 34.223061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167732, 32.807819, 34.136475>,  <33.454697, 32.569439, 33.992165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167732, 32.807819, 34.136475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472089, -0.796723, 0.377313,
		0.512298, 0.100371, 0.852922,
		-0.717414, 0.595952, 0.360775,
		32.952507, 32.986607, 34.244709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325893, 32.231113, 34.633331>,  <33.454697, 32.569439, 33.992165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325893, 32.231113, 34.633331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990555, 32.408939, 34.507141>,  <32.789352, 32.515636, 34.431427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990555, 32.408939, 34.507141>,  <33.325893, 32.231113, 34.633331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990555, 32.408939, 34.507141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490529, -0.867669, 0.080820,
		-0.237801, 0.222507, 0.945485,
		-0.838351, 0.444568, -0.315479,
		32.739048, 32.542309, 34.412498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949650, 31.767387, 35.031612>,  <33.325893, 32.231113, 34.633331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949650, 31.767387, 35.031612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717430, 31.933285, 34.751339>,  <32.578098, 32.032822, 34.583176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717430, 31.933285, 34.751339>,  <32.949650, 31.767387, 35.031612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717430, 31.933285, 34.751339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616054, -0.786421, 0.044935,
		-0.532393, 0.457743, 0.712060,
		-0.580548, 0.414745, -0.700679,
		32.543266, 32.057709, 34.541134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498726, 31.509638, 35.550861>,  <32.949650, 31.767387, 35.031612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498726, 31.509638, 35.550861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765999, 31.212719, 35.570961>,  <33.926361, 31.034567, 35.583019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765999, 31.212719, 35.570961>,  <33.498726, 31.509638, 35.550861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765999, 31.212719, 35.570961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035993, -0.035204, -0.998732,
		0.743126, 0.669143, 0.003195,
		0.668182, -0.742299, 0.050245,
		33.966454, 30.990028, 35.586033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140343, 31.671127, 35.258331>,  <33.498726, 31.509638, 35.550861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140343, 31.671127, 35.258331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071308, 31.279440, 35.215721>,  <34.029888, 31.044428, 35.190155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071308, 31.279440, 35.215721>,  <34.140343, 31.671127, 35.258331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071308, 31.279440, 35.215721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106916, 0.126136, -0.986235,
		0.979174, -0.158825, -0.126464,
		-0.172591, -0.979216, -0.106528,
		34.019531, 30.985676, 35.183762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715767, 31.258978, 34.874378>,  <34.140343, 31.671127, 35.258331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715767, 31.258978, 34.874378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349453, 31.104851, 34.828995>,  <34.129665, 31.012375, 34.801765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349453, 31.104851, 34.828995>,  <34.715767, 31.258978, 34.874378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349453, 31.104851, 34.828995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082028, 0.097105, -0.991888,
		0.393210, -0.917660, -0.057320,
		-0.915782, -0.385319, -0.113456,
		34.074718, 30.989256, 34.794956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387882, 31.671122, 34.217052>,  <34.715767, 31.258978, 34.874378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387882, 31.671122, 34.217052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583275, 31.402750, 33.993896>,  <34.700508, 31.241728, 33.860001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583275, 31.402750, 33.993896>,  <34.387882, 31.671122, 34.217052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583275, 31.402750, 33.993896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591768, 0.215140, -0.776869,
		0.641248, 0.709627, -0.291942,
		0.488479, -0.670928, -0.557892,
		34.729820, 31.201471, 33.826530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537617, 31.963409, 33.515152>,  <34.387882, 31.671122, 34.217052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537617, 31.963409, 33.515152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471550, 31.571199, 33.557655>,  <34.431911, 31.335873, 33.583157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471550, 31.571199, 33.557655>,  <34.537617, 31.963409, 33.515152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471550, 31.571199, 33.557655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675034, 0.033839, -0.737010,
		0.719061, -0.193458, -0.667477,
		-0.165167, -0.980525, 0.106258,
		34.422001, 31.277042, 33.589531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781044, 31.738192, 32.856407>,  <34.537617, 31.963409, 33.515152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781044, 31.738192, 32.856407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499458, 31.535839, 33.055817>,  <34.330509, 31.414427, 33.175461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499458, 31.535839, 33.055817>,  <34.781044, 31.738192, 32.856407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499458, 31.535839, 33.055817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620198, 0.095793, -0.778574,
		0.346113, -0.857267, -0.381182,
		-0.703960, -0.505883, 0.498520,
		34.288269, 31.384075, 33.205372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614281, 31.781815, 32.148060>,  <34.781044, 31.738192, 32.856407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614281, 31.781815, 32.148060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300720, 31.558094, 32.040226>,  <34.112583, 31.423862, 31.975527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300720, 31.558094, 32.040226>,  <34.614281, 31.781815, 32.148060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300720, 31.558094, 32.040226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094585, -0.321548, 0.942157,
		-0.613633, 0.764061, 0.199162,
		-0.783906, -0.559301, -0.269581,
		34.065548, 31.390305, 31.959352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976826, 32.048912, 32.515045>,  <34.614281, 31.781815, 32.148060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976826, 32.048912, 32.515045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048897, 31.661228, 32.447914>,  <34.092140, 31.428617, 32.407635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048897, 31.661228, 32.447914>,  <33.976826, 32.048912, 32.515045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048897, 31.661228, 32.447914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007648, -0.171993, 0.985068,
		-0.983604, -0.176208, -0.038402,
		0.180182, -0.969210, -0.167826,
		34.102951, 31.370464, 32.397568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520222, 31.720900, 33.026375>,  <33.976826, 32.048912, 32.515045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520222, 31.720900, 33.026375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848553, 31.525053, 32.908718>,  <34.045551, 31.407545, 32.838123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848553, 31.525053, 32.908718>,  <33.520222, 31.720900, 33.026375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848553, 31.525053, 32.908718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274019, -0.114280, 0.954910,
		-0.501156, -0.864415, 0.040360,
		0.820826, -0.489619, -0.294138,
		34.094799, 31.378168, 32.820477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328426, 31.431751, 33.691353>,  <33.520222, 31.720900, 33.026375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328426, 31.431751, 33.691353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068165, 31.222729, 33.470959>,  <32.912006, 31.097315, 33.338722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068165, 31.222729, 33.470959>,  <33.328426, 31.431751, 33.691353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068165, 31.222729, 33.470959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644037, 0.004676, -0.764980,
		0.402321, -0.852592, 0.333503,
		-0.650656, -0.522556, -0.550982,
		32.872967, 31.065962, 33.305664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602226, 30.898119, 33.338543>,  <33.328426, 31.431751, 33.691353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602226, 30.898119, 33.338543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304951, 31.032906, 33.107327>,  <33.126587, 31.113777, 32.968597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304951, 31.032906, 33.107327>,  <33.602226, 30.898119, 33.338543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304951, 31.032906, 33.107327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570269, -0.132849, -0.810645,
		-0.349952, -0.932097, -0.093430,
		-0.743187, 0.336967, -0.578037,
		33.081993, 31.133995, 32.933914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403740, 30.493765, 32.766998>,  <33.602226, 30.898119, 33.338543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403740, 30.493765, 32.766998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345894, 30.867723, 32.637348>,  <33.311184, 31.092098, 32.559559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345894, 30.867723, 32.637348>,  <33.403740, 30.493765, 32.766998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345894, 30.867723, 32.637348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580322, -0.185179, -0.793054,
		-0.801443, -0.302788, -0.515760,
		-0.144619, 0.934895, -0.324125,
		33.302509, 31.148191, 32.540112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153084, 30.415573, 32.102047>,  <33.403740, 30.493765, 32.766998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153084, 30.415573, 32.102047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281811, 30.793863, 32.120117>,  <33.359047, 31.020838, 32.130959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281811, 30.793863, 32.120117>,  <33.153084, 30.415573, 32.102047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281811, 30.793863, 32.120117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490248, -0.125629, -0.862482,
		-0.809994, 0.299707, -0.504069,
		0.321817, 0.945724, 0.045172,
		33.378357, 31.077579, 32.133667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080238, 30.707743, 31.429453>,  <33.153084, 30.415573, 32.102047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080238, 30.707743, 31.429453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360504, 30.933626, 31.603888>,  <33.528664, 31.069157, 31.708549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360504, 30.933626, 31.603888>,  <33.080238, 30.707743, 31.429453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360504, 30.933626, 31.603888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499291, 0.048542, -0.865074,
		-0.509682, 0.823863, -0.247941,
		0.700666, 0.564707, 0.436088,
		33.570705, 31.103039, 31.734715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246407, 31.388006, 31.155163>,  <33.080238, 30.707743, 31.429453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246407, 31.388006, 31.155163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573097, 31.206192, 31.297348>,  <33.769112, 31.097103, 31.382660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573097, 31.206192, 31.297348>,  <33.246407, 31.388006, 31.155163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573097, 31.206192, 31.297348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436793, 0.084466, -0.895587,
		0.377053, 0.886714, 0.267525,
		0.816727, -0.454537, 0.355463,
		33.818115, 31.069830, 31.403986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901592, 31.786686, 31.049055>,  <33.246407, 31.388006, 31.155163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901592, 31.786686, 31.049055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996346, 31.398075, 31.051020>,  <34.053200, 31.164909, 31.052198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996346, 31.398075, 31.051020>,  <33.901592, 31.786686, 31.049055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996346, 31.398075, 31.051020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702352, 0.167758, -0.691779,
		0.671258, 0.167321, 0.722092,
		0.236886, -0.971525, 0.004910,
		34.067410, 31.106617, 31.052492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624523, 31.711245, 31.322142>,  <33.901592, 31.786686, 31.049055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624523, 31.711245, 31.322142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478409, 31.447033, 31.059763>,  <34.390739, 31.288506, 30.902336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478409, 31.447033, 31.059763>,  <34.624523, 31.711245, 31.322142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478409, 31.447033, 31.059763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689368, 0.281582, -0.667445,
		0.625571, -0.695996, 0.352492,
		-0.365284, -0.660531, -0.655947,
		34.368824, 31.248873, 30.862980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219040, 31.330528, 31.005291>,  <34.624523, 31.711245, 31.322142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219040, 31.330528, 31.005291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905949, 31.327761, 30.756359>,  <34.718094, 31.326101, 30.607000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905949, 31.327761, 30.756359>,  <35.219040, 31.330528, 31.005291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905949, 31.327761, 30.756359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583584, 0.339303, -0.737769,
		0.216260, -0.940652, -0.261545,
		-0.782727, -0.006916, -0.622327,
		34.671131, 31.325686, 30.569660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417957, 30.938532, 30.358191>,  <35.219040, 31.330528, 31.005291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417957, 30.938532, 30.358191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133430, 31.215797, 30.311638>,  <34.962715, 31.382156, 30.283707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133430, 31.215797, 30.311638>,  <35.417957, 30.938532, 30.358191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133430, 31.215797, 30.311638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567232, 0.468350, -0.677418,
		-0.415054, -0.547879, -0.726332,
		-0.711321, 0.693164, -0.116384,
		34.920033, 31.423746, 30.276722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759483, 31.278864, 29.724783>,  <35.417957, 30.938532, 30.358191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759483, 31.278864, 29.724783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455715, 31.503990, 29.855330>,  <35.273453, 31.639067, 29.933657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455715, 31.503990, 29.855330>,  <35.759483, 31.278864, 29.724783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455715, 31.503990, 29.855330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346226, 0.774320, -0.529675,
		-0.550820, -0.289253, -0.782898,
		-0.759424, 0.562815, 0.326365,
		35.227886, 31.672834, 29.953239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635025, 31.601765, 29.167179>,  <35.759483, 31.278864, 29.724783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635025, 31.601765, 29.167179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449112, 31.833733, 29.434811>,  <35.337563, 31.972914, 29.595390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449112, 31.833733, 29.434811>,  <35.635025, 31.601765, 29.167179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449112, 31.833733, 29.434811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246183, 0.810505, -0.531485,
		-0.850510, -0.082311, -0.519478,
		-0.464787, 0.579920, 0.669079,
		35.309677, 32.007710, 29.635534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379925, 32.127392, 28.773212>,  <35.635025, 31.601765, 29.167179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379925, 32.127392, 28.773212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385197, 32.272625, 29.145878>,  <35.388359, 32.359764, 29.369476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385197, 32.272625, 29.145878>,  <35.379925, 32.127392, 28.773212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385197, 32.272625, 29.145878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249245, 0.901140, -0.354717,
		-0.968351, 0.236888, -0.078619,
		0.013181, 0.363085, 0.931662,
		35.389153, 32.381550, 29.425377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081146, 32.727020, 28.654131>,  <35.379925, 32.127392, 28.773212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081146, 32.727020, 28.654131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282440, 32.759907, 28.998222>,  <35.403217, 32.779636, 29.204678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282440, 32.759907, 28.998222>,  <35.081146, 32.727020, 28.654131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282440, 32.759907, 28.998222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277550, 0.927344, -0.250996,
		-0.818362, 0.365067, 0.443857,
		0.503239, 0.082213, 0.860228,
		35.433411, 32.784569, 29.256290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830956, 33.293510, 28.939129>,  <35.081146, 32.727020, 28.654131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830956, 33.293510, 28.939129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187630, 33.248554, 29.114525>,  <35.401634, 33.221581, 29.219763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187630, 33.248554, 29.114525>,  <34.830956, 33.293510, 28.939129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187630, 33.248554, 29.114525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250977, 0.928913, -0.272272,
		-0.376717, 0.352830, 0.856501,
		0.891681, -0.112392, 0.438490,
		35.455135, 33.214836, 29.246071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947262, 33.953655, 29.239748>,  <34.830956, 33.293510, 28.939129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947262, 33.953655, 29.239748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310215, 33.786507, 29.257845>,  <35.527985, 33.686218, 29.268703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310215, 33.786507, 29.257845>,  <34.947262, 33.953655, 29.239748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310215, 33.786507, 29.257845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419851, 0.896069, -0.144173,
		0.019705, 0.149814, 0.988518,
		0.907379, -0.417871, 0.045243,
		35.582428, 33.661144, 29.271418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336361, 34.411915, 29.677595>,  <34.947262, 33.953655, 29.239748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336361, 34.411915, 29.677595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588795, 34.214191, 29.438467>,  <35.740253, 34.095558, 29.294991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588795, 34.214191, 29.438467>,  <35.336361, 34.411915, 29.677595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588795, 34.214191, 29.438467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290172, 0.865151, -0.409041,
		0.719397, 0.084669, 0.689419,
		0.631084, -0.494313, -0.597819,
		35.778118, 34.065899, 29.259121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004810, 34.654938, 29.778973>,  <35.336361, 34.411915, 29.677595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004810, 34.654938, 29.778973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975605, 34.503208, 29.410021>,  <35.958080, 34.412170, 29.188650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975605, 34.503208, 29.410021>,  <36.004810, 34.654938, 29.778973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975605, 34.503208, 29.410021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309330, 0.870625, -0.382527,
		0.948147, -0.313250, 0.053767,
		-0.073016, -0.379323, -0.922379,
		35.953701, 34.389412, 29.133307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576561, 34.896957, 29.427307>,  <36.004810, 34.654938, 29.778973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576561, 34.896957, 29.427307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306534, 34.798130, 29.149246>,  <36.144516, 34.738834, 28.982410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306534, 34.798130, 29.149246>,  <36.576561, 34.896957, 29.427307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306534, 34.798130, 29.149246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320062, 0.750888, -0.577691,
		0.664710, -0.612475, -0.427827,
		-0.675072, -0.247066, -0.695153,
		36.104012, 34.724010, 28.940701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806343, 35.250565, 28.802896>,  <36.576561, 34.896957, 29.427307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806343, 35.250565, 28.802896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419998, 35.177010, 28.729904>,  <36.188190, 35.132877, 28.686108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419998, 35.177010, 28.729904>,  <36.806343, 35.250565, 28.802896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419998, 35.177010, 28.729904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061738, 0.847470, -0.527241,
		0.251603, -0.497975, -0.829890,
		-0.965859, -0.183891, -0.182482,
		36.130241, 35.121841, 28.675159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717361, 35.459026, 28.168545>,  <36.806343, 35.250565, 28.802896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717361, 35.459026, 28.168545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329811, 35.411190, 28.255249>,  <36.097282, 35.382488, 28.307272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329811, 35.411190, 28.255249>,  <36.717361, 35.459026, 28.168545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329811, 35.411190, 28.255249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229455, 0.762514, -0.604915,
		-0.092939, -0.635822, -0.766220,
		-0.968872, -0.119593, 0.216760,
		36.039150, 35.375313, 28.320276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269318, 35.297901, 27.524544>,  <36.717361, 35.459026, 28.168545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269318, 35.297901, 27.524544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059887, 35.477757, 27.814011>,  <35.934227, 35.585670, 27.987690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059887, 35.477757, 27.814011>,  <36.269318, 35.297901, 27.524544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059887, 35.477757, 27.814011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131096, 0.796762, -0.589902,
		-0.841829, -0.403731, -0.358225,
		-0.523581, 0.449635, 0.723665,
		35.902813, 35.612648, 28.031111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724201, 35.698864, 27.123043>,  <36.269318, 35.297901, 27.524544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724201, 35.698864, 27.123043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712757, 35.838982, 27.497524>,  <35.705891, 35.923054, 27.722212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712757, 35.838982, 27.497524>,  <35.724201, 35.698864, 27.123043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712757, 35.838982, 27.497524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371922, 0.865610, -0.335252,
		-0.927823, -0.357786, 0.105516,
		-0.028613, 0.350298, 0.936201,
		35.704174, 35.944073, 27.778385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104538, 36.107750, 27.149555>,  <35.724201, 35.698864, 27.123043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104538, 36.107750, 27.149555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320435, 36.243179, 27.457853>,  <35.449974, 36.324436, 27.642832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320435, 36.243179, 27.457853>,  <35.104538, 36.107750, 27.149555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320435, 36.243179, 27.457853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281801, 0.935403, -0.213565,
		-0.793263, -0.101926, 0.600287,
		0.539742, 0.338575, 0.770743,
		35.482357, 36.344753, 27.689075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688545, 36.584049, 27.509571>,  <35.104538, 36.107750, 27.149555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688545, 36.584049, 27.509571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068905, 36.667912, 27.600649>,  <35.297119, 36.718227, 27.655296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068905, 36.667912, 27.600649>,  <34.688545, 36.584049, 27.509571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068905, 36.667912, 27.600649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148306, 0.954327, -0.259354,
		-0.271671, 0.212849, 0.938557,
		0.950894, 0.209653, 0.227696,
		35.354172, 36.730808, 27.668959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662525, 37.206982, 27.962337>,  <34.688545, 36.584049, 27.509571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662525, 37.206982, 27.962337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016739, 37.165615, 27.781170>,  <35.229267, 37.140797, 27.672468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016739, 37.165615, 27.781170>,  <34.662525, 37.206982, 27.962337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016739, 37.165615, 27.781170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002841, 0.973686, -0.227875,
		0.464568, 0.203077, 0.861937,
		0.885533, -0.103415, -0.452920,
		35.282398, 37.134590, 27.645294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041763, 37.807652, 28.196903>,  <34.662525, 37.206982, 27.962337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041763, 37.807652, 28.196903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214012, 37.667274, 27.864300>,  <35.317360, 37.583050, 27.664738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214012, 37.667274, 27.864300>,  <35.041763, 37.807652, 28.196903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214012, 37.667274, 27.864300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046001, 0.928641, -0.368117,
		0.901360, 0.120270, 0.416036,
		0.430622, -0.350944, -0.831507,
		35.343197, 37.561993, 27.614847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680134, 38.226521, 28.115351>,  <35.041763, 37.807652, 28.196903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680134, 38.226521, 28.115351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585411, 38.074696, 27.757612>,  <35.528580, 37.983601, 27.542969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585411, 38.074696, 27.757612>,  <35.680134, 38.226521, 28.115351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585411, 38.074696, 27.757612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116376, 0.902821, -0.413970,
		0.964563, -0.202110, -0.169619,
		-0.236803, -0.379560, -0.894348,
		35.514370, 37.960827, 27.489307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101074, 38.527462, 27.567518>,  <35.680134, 38.226521, 28.115351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101074, 38.527462, 27.567518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798252, 38.381653, 27.350636>,  <35.616558, 38.294167, 27.220507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798252, 38.381653, 27.350636>,  <36.101074, 38.527462, 27.567518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798252, 38.381653, 27.350636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056566, 0.863339, -0.501444,
		0.650899, -0.348950, -0.674214,
		-0.757054, -0.364527, -0.542207,
		35.571136, 38.272293, 27.187973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214661, 38.730595, 26.907322>,  <36.101074, 38.527462, 27.567518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214661, 38.730595, 26.907322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836029, 38.609730, 26.862272>,  <35.608849, 38.537212, 26.835241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836029, 38.609730, 26.862272>,  <36.214661, 38.730595, 26.907322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836029, 38.609730, 26.862272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138609, 0.696602, -0.703941,
		0.291159, -0.650726, -0.701272,
		-0.946580, -0.302162, -0.112625,
		35.552055, 38.519081, 26.828485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134407, 38.503609, 26.271090>,  <36.214661, 38.730595, 26.907322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134407, 38.503609, 26.271090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776825, 38.623825, 26.404066>,  <35.562275, 38.695957, 26.483852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776825, 38.623825, 26.404066>,  <36.134407, 38.503609, 26.271090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776825, 38.623825, 26.404066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065098, 0.646846, -0.759838,
		-0.443403, -0.700902, -0.558686,
		-0.893955, 0.300546, 0.332440,
		35.508640, 38.713989, 26.503798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733170, 38.434288, 25.757210>,  <36.134407, 38.503609, 26.271090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733170, 38.434288, 25.757210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541210, 38.709209, 25.975313>,  <35.426033, 38.874165, 26.106174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541210, 38.709209, 25.975313>,  <35.733170, 38.434288, 25.757210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541210, 38.709209, 25.975313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141562, 0.552695, -0.821272,
		-0.865827, -0.471316, -0.167942,
		-0.479900, 0.687306, 0.545259,
		35.397240, 38.915401, 26.138891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149754, 38.542622, 25.391592>,  <35.733170, 38.434288, 25.757210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149754, 38.542622, 25.391592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133724, 38.852615, 25.643877>,  <35.124107, 39.038612, 25.795248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133724, 38.852615, 25.643877>,  <35.149754, 38.542622, 25.391592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133724, 38.852615, 25.643877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296420, 0.593582, -0.748195,
		-0.954216, -0.216940, 0.205932,
		-0.040076, 0.774982, 0.630712,
		35.121700, 39.085110, 25.833090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492348, 38.779472, 25.346422>,  <35.149754, 38.542622, 25.391592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492348, 38.779472, 25.346422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712353, 39.088749, 25.472696>,  <34.844357, 39.274315, 25.548460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712353, 39.088749, 25.472696>,  <34.492348, 38.779472, 25.346422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712353, 39.088749, 25.472696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285225, 0.529173, -0.799139,
		-0.784940, 0.349497, 0.511586,
		0.550014, 0.773194, 0.315684,
		34.877357, 39.320705, 25.567402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197220, 39.282791, 25.126156>,  <34.492348, 38.779472, 25.346422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197220, 39.282791, 25.126156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543777, 39.457241, 25.223454>,  <34.751713, 39.561909, 25.281832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543777, 39.457241, 25.223454>,  <34.197220, 39.282791, 25.126156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543777, 39.457241, 25.223454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072014, 0.591127, -0.803357,
		-0.494149, 0.678503, 0.543553,
		0.866389, 0.436122, 0.243243,
		34.803696, 39.588078, 25.296427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001713, 39.922241, 25.132942>,  <34.197220, 39.282791, 25.126156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001713, 39.922241, 25.132942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392742, 39.883614, 25.058090>,  <34.627361, 39.860435, 25.013180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392742, 39.883614, 25.058090>,  <34.001713, 39.922241, 25.132942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392742, 39.883614, 25.058090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110999, 0.518853, -0.847627,
		0.178948, 0.849392, 0.496499,
		0.977577, -0.096570, -0.187129,
		34.686016, 39.854641, 25.001951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238091, 40.628471, 24.921267>,  <34.001713, 39.922241, 25.132942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238091, 40.628471, 24.921267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516502, 40.370663, 24.794689>,  <34.683548, 40.215977, 24.718742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516502, 40.370663, 24.794689>,  <34.238091, 40.628471, 24.921267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516502, 40.370663, 24.794689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020857, 0.422389, -0.906174,
		0.717710, 0.637325, 0.280553,
		0.696030, -0.644519, -0.316446,
		34.725311, 40.177307, 24.699755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663727, 41.088585, 24.546741>,  <34.238091, 40.628471, 24.921267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663727, 41.088585, 24.546741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743515, 40.714619, 24.429337>,  <34.791386, 40.490238, 24.358892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743515, 40.714619, 24.429337>,  <34.663727, 41.088585, 24.546741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743515, 40.714619, 24.429337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059049, 0.310456, -0.948752,
		0.978124, 0.171913, 0.117131,
		0.199467, -0.934913, -0.293514,
		34.803356, 40.434143, 24.341282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309235, 41.135113, 24.196354>,  <34.663727, 41.088585, 24.546741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309235, 41.135113, 24.196354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087452, 40.825138, 24.074995>,  <34.954380, 40.639153, 24.002180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087452, 40.825138, 24.074995>,  <35.309235, 41.135113, 24.196354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087452, 40.825138, 24.074995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034054, 0.385388, -0.922126,
		0.831514, -0.500949, -0.240072,
		-0.554459, -0.774936, -0.303396,
		34.921116, 40.592659, 23.983976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602337, 40.835732, 23.638491>,  <35.309235, 41.135113, 24.196354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602337, 40.835732, 23.638491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227100, 40.700844, 23.606800>,  <35.001961, 40.619911, 23.587786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227100, 40.700844, 23.606800>,  <35.602337, 40.835732, 23.638491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227100, 40.700844, 23.606800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013886, 0.265140, -0.964110,
		0.346121, -0.903319, -0.253407,
		-0.938087, -0.337218, -0.079227,
		34.945675, 40.599678, 23.583033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533112, 40.610287, 22.947811>,  <35.602337, 40.835732, 23.638491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533112, 40.610287, 22.947811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148849, 40.663864, 23.045139>,  <34.918293, 40.696011, 23.103537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148849, 40.663864, 23.045139>,  <35.533112, 40.610287, 22.947811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148849, 40.663864, 23.045139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182820, 0.354588, -0.916976,
		-0.209100, -0.925379, -0.316148,
		-0.960653, 0.133942, 0.243323,
		34.860653, 40.704048, 23.118135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117680, 40.306419, 22.355879>,  <35.533112, 40.610287, 22.947811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117680, 40.306419, 22.355879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878815, 40.544094, 22.571413>,  <34.735497, 40.686699, 22.700733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878815, 40.544094, 22.571413>,  <35.117680, 40.306419, 22.355879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878815, 40.544094, 22.571413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282101, 0.473274, -0.834524,
		-0.750881, -0.650349, -0.114999,
		-0.597158, 0.594187, 0.538837,
		34.699669, 40.722351, 22.733065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503532, 40.470242, 21.967430>,  <35.117680, 40.306419, 22.355879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503532, 40.470242, 21.967430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509815, 40.756680, 22.246563>,  <34.513584, 40.928543, 22.414042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509815, 40.756680, 22.246563>,  <34.503532, 40.470242, 21.967430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509815, 40.756680, 22.246563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325699, 0.663515, -0.673549,
		-0.945343, -0.216705, 0.243650,
		0.015704, 0.716091, 0.697830,
		34.514526, 40.971508, 22.455912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894306, 40.856369, 21.975843>,  <34.503532, 40.470242, 21.967430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894306, 40.856369, 21.975843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154430, 41.103127, 22.153175>,  <34.310505, 41.251179, 22.259575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154430, 41.103127, 22.153175>,  <33.894306, 40.856369, 21.975843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154430, 41.103127, 22.153175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302116, 0.745467, -0.594142,
		-0.697007, 0.252442, 0.671159,
		0.650313, 0.616889, 0.443329,
		34.349525, 41.288193, 22.286175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459717, 41.467655, 22.029203>,  <33.894306, 40.856369, 21.975843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459717, 41.467655, 22.029203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826042, 41.611275, 22.101175>,  <34.045837, 41.697445, 22.144358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826042, 41.611275, 22.101175>,  <33.459717, 41.467655, 22.029203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826042, 41.611275, 22.101175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181969, 0.770369, -0.611080,
		-0.358019, 0.526893, 0.770848,
		0.915811, 0.359048, 0.179929,
		34.100784, 41.718990, 22.155153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387234, 42.198624, 22.090742>,  <33.459717, 41.467655, 22.029203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387234, 42.198624, 22.090742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775478, 42.138859, 22.015280>,  <34.008427, 42.103001, 21.970003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775478, 42.138859, 22.015280>,  <33.387234, 42.198624, 22.090742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775478, 42.138859, 22.015280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026889, 0.711681, -0.701988,
		0.239150, 0.686429, 0.686747,
		0.970610, -0.149415, -0.188656,
		34.066662, 42.094036, 21.958683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736954, 42.824169, 22.213852>,  <33.387234, 42.198624, 22.090742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736954, 42.824169, 22.213852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996761, 42.633858, 21.976618>,  <34.152645, 42.519669, 21.834278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996761, 42.633858, 21.976618>,  <33.736954, 42.824169, 22.213852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996761, 42.633858, 21.976618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089036, 0.822252, -0.562116,
		0.755111, 0.312301, 0.576433,
		0.649523, -0.475783, -0.593086,
		34.191620, 42.491123, 21.798693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273521, 43.289654, 22.069376>,  <33.736954, 42.824169, 22.213852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273521, 43.289654, 22.069376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287323, 43.027786, 21.767326>,  <34.295605, 42.870667, 21.586096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287323, 43.027786, 21.767326>,  <34.273521, 43.289654, 22.069376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287323, 43.027786, 21.767326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081215, 0.754914, -0.650776,
		0.996099, -0.038875, 0.079214,
		0.034500, -0.654671, -0.755126,
		34.297672, 42.831387, 21.540789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711342, 43.640793, 21.593185>,  <34.273521, 43.289654, 22.069376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711342, 43.640793, 21.593185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550152, 43.344944, 21.377565>,  <34.453438, 43.167435, 21.248194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550152, 43.344944, 21.377565>,  <34.711342, 43.640793, 21.593185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550152, 43.344944, 21.377565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145446, 0.633255, -0.760153,
		0.903582, -0.227918, -0.362759,
		-0.402972, -0.739622, -0.539048,
		34.429260, 43.123058, 21.215851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017185, 43.656460, 21.011572>,  <34.711342, 43.640793, 21.593185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017185, 43.656460, 21.011572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668663, 43.486446, 20.913452>,  <34.459549, 43.384438, 20.854580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668663, 43.486446, 20.913452>,  <35.017185, 43.656460, 21.011572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668663, 43.486446, 20.913452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107344, 0.652820, -0.749869,
		0.478857, -0.627034, -0.614430,
		-0.871305, -0.425036, -0.245299,
		34.407272, 43.358936, 20.839863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866817, 43.864021, 20.244698>,  <35.017185, 43.656460, 21.011572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866817, 43.864021, 20.244698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508846, 43.726231, 20.358149>,  <34.294064, 43.643559, 20.426218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508846, 43.726231, 20.358149>,  <34.866817, 43.864021, 20.244698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508846, 43.726231, 20.358149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444061, 0.625195, -0.641826,
		0.043769, -0.700335, -0.712471,
		-0.894927, -0.344473, 0.283627,
		34.240368, 43.622890, 20.443237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479679, 43.742897, 19.554611>,  <34.866817, 43.864021, 20.244698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479679, 43.742897, 19.554611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224659, 43.773552, 19.861244>,  <34.071648, 43.791946, 20.045225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224659, 43.773552, 19.861244>,  <34.479679, 43.742897, 19.554611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224659, 43.773552, 19.861244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641725, 0.497744, -0.583472,
		-0.426280, -0.863931, -0.268158,
		-0.637553, 0.076639, 0.766585,
		34.033394, 43.796543, 20.091219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836590, 43.434326, 19.407446>,  <34.479679, 43.742897, 19.554611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836590, 43.434326, 19.407446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790680, 43.726772, 19.676458>,  <33.763134, 43.902241, 19.837866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790680, 43.726772, 19.676458>,  <33.836590, 43.434326, 19.407446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790680, 43.726772, 19.676458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525243, 0.529971, -0.665770,
		-0.843177, -0.429653, 0.323189,
		-0.114770, 0.731115, 0.672532,
		33.756248, 43.946106, 19.878218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124710, 43.723019, 19.327702>,  <33.836590, 43.434326, 19.407446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124710, 43.723019, 19.327702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358112, 44.010864, 19.478262>,  <33.498154, 44.183571, 19.568598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358112, 44.010864, 19.478262>,  <33.124710, 43.723019, 19.327702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358112, 44.010864, 19.478262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405760, 0.659819, -0.632455,
		-0.703481, 0.216310, 0.676997,
		0.583501, 0.719618, 0.376400,
		33.533161, 44.226749, 19.591183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675484, 44.164791, 19.703444>,  <33.124710, 43.723019, 19.327702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675484, 44.164791, 19.703444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999176, 44.307201, 19.516510>,  <33.193390, 44.392647, 19.404350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999176, 44.307201, 19.516510>,  <32.675484, 44.164791, 19.703444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999176, 44.307201, 19.516510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566120, 0.685173, -0.458308,
		0.157036, 0.635442, 0.756012,
		0.809226, 0.356023, -0.467333,
		33.241943, 44.414009, 19.376310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767467, 44.939091, 19.923906>,  <32.675484, 44.164791, 19.703444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767467, 44.939091, 19.923906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893902, 44.827560, 19.561174>,  <32.969765, 44.760643, 19.343534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893902, 44.827560, 19.561174>,  <32.767467, 44.939091, 19.923906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893902, 44.827560, 19.561174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693849, 0.583948, -0.421400,
		0.647040, 0.762404, -0.008883,
		0.316090, -0.278826, -0.906831,
		32.988728, 44.743912, 19.289125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094437, 45.421818, 19.543293>,  <32.767467, 44.939091, 19.923906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094437, 45.421818, 19.543293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883163, 45.200626, 19.285536>,  <32.756401, 45.067913, 19.130882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883163, 45.200626, 19.285536>,  <33.094437, 45.421818, 19.543293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883163, 45.200626, 19.285536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548298, 0.801570, -0.238444,
		0.648380, 0.227378, -0.726569,
		-0.528179, -0.552979, -0.644393,
		32.724709, 45.034733, 19.092218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367008, 46.070511, 19.834669>,  <33.094437, 45.421818, 19.543293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367008, 46.070511, 19.834669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003880, 46.038700, 19.669970>,  <32.786003, 46.019615, 19.571150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003880, 46.038700, 19.669970>,  <33.367008, 46.070511, 19.834669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003880, 46.038700, 19.669970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225295, -0.735636, 0.638813,
		-0.353697, 0.672693, 0.649909,
		-0.907822, -0.079525, -0.411747,
		32.731533, 46.014843, 19.546446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557049, 46.775433, 19.480370>,  <33.367008, 46.070511, 19.834669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557049, 46.775433, 19.480370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187130, 46.915741, 19.421440>,  <32.965179, 46.999928, 19.386082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187130, 46.915741, 19.421440>,  <33.557049, 46.775433, 19.480370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187130, 46.915741, 19.421440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286270, -0.386510, 0.876732,
		0.250592, 0.852976, 0.457860,
		-0.924799, 0.350774, -0.147325,
		32.909691, 47.020973, 19.377243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406052, 47.235481, 19.921984>,  <33.557049, 46.775433, 19.480370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406052, 47.235481, 19.921984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071686, 47.039272, 19.823488>,  <32.871067, 46.921547, 19.764391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071686, 47.039272, 19.823488>,  <33.406052, 47.235481, 19.921984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071686, 47.039272, 19.823488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007401, -0.438524, 0.898689,
		-0.548812, 0.753048, 0.362937,
		-0.835913, -0.490525, -0.246241,
		32.820911, 46.892117, 19.749617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191147, 47.043217, 20.580917>,  <33.406052, 47.235481, 19.921984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191147, 47.043217, 20.580917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940018, 46.804832, 20.380650>,  <32.789341, 46.661800, 20.260489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940018, 46.804832, 20.380650>,  <33.191147, 47.043217, 20.580917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940018, 46.804832, 20.380650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317507, -0.391203, 0.863800,
		-0.710654, 0.701279, 0.056385,
		-0.627823, -0.595960, -0.500671,
		32.751671, 46.626045, 20.230448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724270, 46.631641, 20.961575>,  <33.191147, 47.043217, 20.580917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724270, 46.631641, 20.961575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701801, 46.335072, 20.694103>,  <32.688320, 46.157127, 20.533621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701801, 46.335072, 20.694103>,  <32.724270, 46.631641, 20.961575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701801, 46.335072, 20.694103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088387, -0.663415, 0.743013,
		-0.994501, 0.100836, -0.028270,
		-0.056168, -0.741426, -0.668680,
		32.684952, 46.112644, 20.493500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192265, 46.194016, 21.036249>,  <32.724270, 46.631641, 20.961575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192265, 46.194016, 21.036249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453655, 45.964657, 20.838587>,  <32.610489, 45.827042, 20.719990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453655, 45.964657, 20.838587>,  <32.192265, 46.194016, 21.036249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453655, 45.964657, 20.838587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142571, -0.734377, 0.663599,
		-0.743401, -0.363192, -0.561646,
		0.653474, -0.573395, -0.494156,
		32.649696, 45.792637, 20.690340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908436, 45.565975, 20.996374>,  <32.192265, 46.194016, 21.036249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908436, 45.565975, 20.996374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289040, 45.480835, 20.907536>,  <32.517403, 45.429752, 20.854233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289040, 45.480835, 20.907536>,  <31.908436, 45.565975, 20.996374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289040, 45.480835, 20.907536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080815, -0.869576, 0.487141,
		-0.296818, -0.445570, -0.844610,
		0.951508, -0.212850, -0.222097,
		32.574493, 45.416981, 20.840906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931360, 44.883785, 20.673691>,  <31.908436, 45.565975, 20.996374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931360, 44.883785, 20.673691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274872, 44.988762, 20.849703>,  <32.480980, 45.051750, 20.955309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274872, 44.988762, 20.849703>,  <31.931360, 44.883785, 20.673691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274872, 44.988762, 20.849703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197868, -0.622326, 0.757337,
		0.472600, -0.737451, -0.482509,
		0.858777, 0.262444, 0.440029,
		32.532505, 45.067493, 20.981712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982460, 44.297058, 21.178450>,  <31.931360, 44.883785, 20.673691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982460, 44.297058, 21.178450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277687, 44.529945, 21.314846>,  <32.454823, 44.669678, 21.396683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277687, 44.529945, 21.314846>,  <31.982460, 44.297058, 21.178450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277687, 44.529945, 21.314846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118065, -0.609018, 0.784320,
		0.664317, -0.538622, -0.518237,
		0.738068, 0.582223, 0.340989,
		32.499107, 44.704613, 21.417143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544643, 43.835117, 21.266562>,  <31.982460, 44.297058, 21.178450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544643, 43.835117, 21.266562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561455, 44.139210, 21.525879>,  <32.571541, 44.321667, 21.681469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561455, 44.139210, 21.525879>,  <32.544643, 43.835117, 21.266562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561455, 44.139210, 21.525879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041931, -0.649636, 0.759088,
		0.998236, -0.004722, -0.059182,
		0.042031, 0.760231, 0.648292,
		32.574062, 44.367279, 21.720366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009827, 43.617771, 21.715836>,  <32.544643, 43.835117, 21.266562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009827, 43.617771, 21.715836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848125, 43.902412, 21.945686>,  <32.751106, 44.073196, 22.083597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848125, 43.902412, 21.945686>,  <33.009827, 43.617771, 21.715836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848125, 43.902412, 21.945686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196252, -0.546134, 0.814385,
		0.893345, 0.441988, 0.081121,
		-0.404252, 0.711607, 0.574627,
		32.726849, 44.115894, 22.118074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477921, 43.618481, 22.253695>,  <33.009827, 43.617771, 21.715836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477921, 43.618481, 22.253695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147457, 43.793842, 22.395266>,  <32.949181, 43.899059, 22.480209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147457, 43.793842, 22.395266>,  <33.477921, 43.618481, 22.253695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147457, 43.793842, 22.395266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036466, -0.585238, 0.810041,
		0.562257, 0.682128, 0.467513,
		-0.826158, 0.438403, 0.353929,
		32.899609, 43.925362, 22.501444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637321, 43.894432, 22.899076>,  <33.477921, 43.618481, 22.253695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637321, 43.894432, 22.899076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238266, 43.867176, 22.902697>,  <32.998833, 43.850822, 22.904869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238266, 43.867176, 22.902697>,  <33.637321, 43.894432, 22.899076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238266, 43.867176, 22.902697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037196, -0.424429, 0.904697,
		-0.057800, 0.902894, 0.425959,
		-0.997635, -0.068135, 0.009052,
		32.938976, 43.846737, 22.905413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484779, 44.198856, 23.560850>,  <33.637321, 43.894432, 22.899076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484779, 44.198856, 23.560850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206226, 43.942165, 23.432331>,  <33.039093, 43.788151, 23.355221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206226, 43.942165, 23.432331>,  <33.484779, 44.198856, 23.560850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206226, 43.942165, 23.432331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011295, -0.437837, 0.898983,
		-0.717581, 0.629666, 0.297655,
		-0.696383, -0.641732, -0.321296,
		32.997311, 43.749645, 23.335943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913109, 44.124378, 24.087093>,  <33.484779, 44.198856, 23.560850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913109, 44.124378, 24.087093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824520, 43.788231, 23.889210>,  <32.771366, 43.586544, 23.770479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824520, 43.788231, 23.889210>,  <32.913109, 44.124378, 24.087093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824520, 43.788231, 23.889210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104495, -0.483934, 0.868843,
		-0.969551, 0.244122, 0.019365,
		-0.221475, -0.840364, -0.494708,
		32.758076, 43.536121, 23.740797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326138, 43.780510, 24.425997>,  <32.913109, 44.124378, 24.087093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326138, 43.780510, 24.425997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512672, 43.505081, 24.203863>,  <32.624592, 43.339825, 24.070583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512672, 43.505081, 24.203863>,  <32.326138, 43.780510, 24.425997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512672, 43.505081, 24.203863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157733, -0.682441, 0.713718,
		-0.870431, -0.245238, -0.426858,
		0.466336, -0.688572, -0.555336,
		32.652573, 43.298508, 24.037262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923883, 43.131672, 24.580341>,  <32.326138, 43.780510, 24.425997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923883, 43.131672, 24.580341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262650, 42.978100, 24.433193>,  <32.465908, 42.885956, 24.344904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262650, 42.978100, 24.433193>,  <31.923883, 43.131672, 24.580341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262650, 42.978100, 24.433193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050241, -0.746530, 0.663452,
		-0.529346, -0.543407, -0.651538,
		0.846917, -0.383930, -0.367872,
		32.516724, 42.862923, 24.322832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772949, 42.435894, 24.366209>,  <31.923883, 43.131672, 24.580341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772949, 42.435894, 24.366209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170540, 42.446838, 24.408663>,  <32.409096, 42.453403, 24.434135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170540, 42.446838, 24.408663>,  <31.772949, 42.435894, 24.366209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170540, 42.446838, 24.408663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038465, -0.819671, 0.571542,
		0.102634, -0.572182, -0.813680,
		0.993975, 0.027361, 0.106135,
		32.468731, 42.455048, 24.440504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946407, 41.713310, 24.242851>,  <31.772949, 42.435894, 24.366209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946407, 41.713310, 24.242851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272842, 41.886543, 24.395922>,  <32.468704, 41.990482, 24.487764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272842, 41.886543, 24.395922>,  <31.946407, 41.713310, 24.242851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272842, 41.886543, 24.395922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149143, -0.797544, 0.584534,
		0.558353, -0.419957, -0.715456,
		0.816087, 0.433082, 0.382677,
		32.517670, 42.016468, 24.510725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539867, 41.203232, 24.188633>,  <31.946407, 41.713310, 24.242851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539867, 41.203232, 24.188633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602783, 41.453167, 24.494532>,  <32.640533, 41.603127, 24.678072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602783, 41.453167, 24.494532>,  <32.539867, 41.203232, 24.188633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602783, 41.453167, 24.494532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057277, -0.778857, 0.624581,
		0.985890, -0.054438, -0.158296,
		0.157291, 0.624835, 0.764749,
		32.649971, 41.640617, 24.723957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016209, 40.809547, 24.611082>,  <32.539867, 41.203232, 24.188633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016209, 40.809547, 24.611082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845421, 41.074474, 24.857344>,  <32.742947, 41.233429, 25.005100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845421, 41.074474, 24.857344>,  <33.016209, 40.809547, 24.611082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845421, 41.074474, 24.857344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127749, -0.718188, 0.684022,
		0.895196, 0.213408, 0.391255,
		-0.426970, 0.662317, 0.615656,
		32.717331, 41.273170, 25.042040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416862, 40.953293, 25.178127>,  <33.016209, 40.809547, 24.611082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416862, 40.953293, 25.178127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048351, 41.050629, 25.299475>,  <32.827244, 41.109028, 25.372284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048351, 41.050629, 25.299475>,  <33.416862, 40.953293, 25.178127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048351, 41.050629, 25.299475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018249, -0.752157, 0.658731,
		0.388474, 0.612411, 0.688506,
		-0.921279, 0.243335, 0.303369,
		32.771969, 41.123631, 25.390486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467537, 40.823570, 25.928955>,  <33.416862, 40.953293, 25.178127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467537, 40.823570, 25.928955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089008, 40.861107, 25.805237>,  <32.861889, 40.883629, 25.731005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089008, 40.861107, 25.805237>,  <33.467537, 40.823570, 25.928955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089008, 40.861107, 25.805237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226349, -0.875506, 0.426915,
		-0.230730, 0.474009, 0.849752,
		-0.946325, 0.093838, -0.309297,
		32.805111, 40.889259, 25.712448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129627, 40.772766, 26.472839>,  <33.467537, 40.823570, 25.928955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129627, 40.772766, 26.472839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841824, 40.681145, 26.210590>,  <32.669140, 40.626171, 26.053242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841824, 40.681145, 26.210590>,  <33.129627, 40.772766, 26.472839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841824, 40.681145, 26.210590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233366, -0.809405, 0.538891,
		-0.654099, 0.540737, 0.528921,
		-0.719510, -0.229056, -0.655621,
		32.625969, 40.612427, 26.013905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580193, 40.575443, 26.893579>,  <33.129627, 40.772766, 26.472839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580193, 40.575443, 26.893579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488239, 40.425037, 26.534521>,  <32.433067, 40.334793, 26.319086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488239, 40.425037, 26.534521>,  <32.580193, 40.575443, 26.893579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488239, 40.425037, 26.534521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386967, -0.810986, 0.438814,
		-0.892978, 0.448235, 0.040927,
		-0.229883, -0.376015, -0.897645,
		32.419273, 40.312233, 26.265228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898613, 40.268929, 26.923601>,  <32.580193, 40.575443, 26.893579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898613, 40.268929, 26.923601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002617, 40.100605, 26.575966>,  <32.065022, 39.999611, 26.367386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002617, 40.100605, 26.575966>,  <31.898613, 40.268929, 26.923601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002617, 40.100605, 26.575966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288896, -0.892719, 0.345821,
		-0.921376, 0.161159, -0.353687,
		0.260011, -0.420810, -0.869087,
		32.080620, 39.974361, 26.315239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491556, 39.661793, 26.909103>,  <31.898613, 40.268929, 26.923601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491556, 39.661793, 26.909103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734831, 39.587559, 26.600386>,  <31.880795, 39.543018, 26.415155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734831, 39.587559, 26.600386>,  <31.491556, 39.661793, 26.909103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734831, 39.587559, 26.600386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161764, -0.980859, 0.108386,
		-0.777138, 0.058930, -0.626565,
		0.608185, -0.185587, -0.771796,
		31.917286, 39.531883, 26.368847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141407, 39.344189, 26.370592>,  <31.491556, 39.661793, 26.909103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141407, 39.344189, 26.370592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525047, 39.230995, 26.368032>,  <31.755232, 39.163078, 26.366497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525047, 39.230995, 26.368032>,  <31.141407, 39.344189, 26.370592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525047, 39.230995, 26.368032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270178, -0.921968, 0.277451,
		-0.084413, -0.264376, -0.960719,
		0.959103, -0.282985, -0.006397,
		31.812778, 39.146099, 26.366114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183475, 38.738361, 26.013767>,  <31.141407, 39.344189, 26.370592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183475, 38.738361, 26.013767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527950, 38.734474, 26.217043>,  <31.734636, 38.732143, 26.339008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527950, 38.734474, 26.217043>,  <31.183475, 38.738361, 26.013767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527950, 38.734474, 26.217043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112147, -0.978810, 0.171331,
		0.495758, -0.204541, -0.844030,
		0.861189, -0.009717, 0.508192,
		31.786306, 38.731560, 26.369501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531103, 38.112675, 25.820803>,  <31.183475, 38.738361, 26.013767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531103, 38.112675, 25.820803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734251, 38.216652, 26.149315>,  <31.856140, 38.279037, 26.346422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734251, 38.216652, 26.149315>,  <31.531103, 38.112675, 25.820803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734251, 38.216652, 26.149315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004830, -0.952512, 0.304462,
		0.861420, -0.158594, -0.482497,
		0.507870, 0.259939, 0.821280,
		31.886612, 38.294632, 26.395699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056202, 37.660675, 25.922768>,  <31.531103, 38.112675, 25.820803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056202, 37.660675, 25.922768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045387, 37.814316, 26.291925>,  <32.038898, 37.906498, 26.513420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045387, 37.814316, 26.291925>,  <32.056202, 37.660675, 25.922768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045387, 37.814316, 26.291925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132337, -0.913732, 0.384163,
		0.990836, 0.132521, -0.026124,
		-0.027040, 0.384100, 0.922896,
		32.037277, 37.929546, 26.568794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646538, 37.384052, 26.228325>,  <32.056202, 37.660675, 25.922768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646538, 37.384052, 26.228325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413891, 37.505440, 26.530220>,  <32.274303, 37.578274, 26.711357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413891, 37.505440, 26.530220>,  <32.646538, 37.384052, 26.228325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413891, 37.505440, 26.530220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126324, -0.882856, 0.452336,
		0.803597, 0.358426, 0.475145,
		-0.581613, 0.303473, 0.754738,
		32.239407, 37.596481, 26.756641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000687, 37.237244, 26.833916>,  <32.646538, 37.384052, 26.228325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000687, 37.237244, 26.833916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624073, 37.287857, 26.958815>,  <32.398106, 37.318226, 27.033754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624073, 37.287857, 26.958815>,  <33.000687, 37.237244, 26.833916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624073, 37.287857, 26.958815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109114, -0.762319, 0.637937,
		0.318752, 0.634712, 0.703945,
		-0.941537, 0.126533, 0.312247,
		32.341614, 37.325817, 27.052488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008335, 37.318066, 27.586405>,  <33.000687, 37.237244, 26.833916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008335, 37.318066, 27.586405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648376, 37.183758, 27.475092>,  <32.432400, 37.103172, 27.408304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648376, 37.183758, 27.475092>,  <33.008335, 37.318066, 27.586405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648376, 37.183758, 27.475092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051566, -0.715570, 0.696634,
		-0.433037, 0.612552, 0.661256,
		-0.899900, -0.335766, -0.278282,
		32.378407, 37.083027, 27.391607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520512, 37.366524, 28.204292>,  <33.008335, 37.318066, 27.586405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520512, 37.366524, 28.204292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379948, 37.095963, 27.945374>,  <32.295609, 36.933628, 27.790022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379948, 37.095963, 27.945374>,  <32.520512, 37.366524, 28.204292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379948, 37.095963, 27.945374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075423, -0.668693, 0.739703,
		-0.933180, 0.308758, 0.183967,
		-0.351407, -0.676400, -0.647299,
		32.274525, 36.893044, 27.751184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975107, 37.071785, 28.580803>,  <32.520512, 37.366524, 28.204292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975107, 37.071785, 28.580803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090755, 36.819401, 28.292831>,  <32.160145, 36.667969, 28.120049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090755, 36.819401, 28.292831>,  <31.975107, 37.071785, 28.580803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090755, 36.819401, 28.292831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014928, -0.748983, 0.662421,
		-0.957176, -0.202267, -0.207127,
		0.289121, -0.630961, -0.719928,
		32.177490, 36.630112, 28.076853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561121, 36.476059, 28.716047>,  <31.975107, 37.071785, 28.580803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561121, 36.476059, 28.716047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861197, 36.344894, 28.486374>,  <32.041241, 36.266193, 28.348570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861197, 36.344894, 28.486374>,  <31.561121, 36.476059, 28.716047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861197, 36.344894, 28.486374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004165, -0.866008, 0.500013,
		-0.661210, -0.377496, -0.648304,
		0.750190, -0.327914, -0.574185,
		32.086254, 36.246521, 28.314119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500465, 35.711124, 28.824612>,  <31.561121, 36.476059, 28.716047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500465, 35.711124, 28.824612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867897, 35.738960, 28.668985>,  <32.088356, 35.755661, 28.575609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867897, 35.738960, 28.668985>,  <31.500465, 35.711124, 28.824612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867897, 35.738960, 28.668985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184189, -0.946322, 0.265611,
		-0.349700, -0.315646, -0.882087,
		0.918577, 0.069587, -0.389068,
		32.143471, 35.759838, 28.552265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619246, 35.094353, 28.339233>,  <31.500465, 35.711124, 28.824612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619246, 35.094353, 28.339233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965609, 35.249393, 28.465702>,  <32.173428, 35.342419, 28.541584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965609, 35.249393, 28.465702>,  <31.619246, 35.094353, 28.339233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965609, 35.249393, 28.465702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298391, -0.907576, 0.295412,
		0.401453, -0.161457, -0.901536,
		0.865909, 0.387604, 0.316171,
		32.225380, 35.365673, 28.560553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064621, 34.552105, 28.486595>,  <31.619246, 35.094353, 28.339233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064621, 34.552105, 28.486595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341927, 34.810955, 28.613478>,  <32.508308, 34.966263, 28.689608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341927, 34.810955, 28.613478>,  <32.064621, 34.552105, 28.486595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341927, 34.810955, 28.613478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556321, -0.760329, 0.335271,
		0.458143, -0.055963, -0.887115,
		0.693263, 0.647123, 0.317206,
		32.549904, 35.005093, 28.708639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749870, 34.330608, 28.111959>,  <32.064621, 34.552105, 28.486595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749870, 34.330608, 28.111959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782505, 34.524944, 28.460052>,  <32.802086, 34.641544, 28.668909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782505, 34.524944, 28.460052>,  <32.749870, 34.330608, 28.111959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782505, 34.524944, 28.460052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611804, -0.713691, 0.341088,
		0.786791, 0.504585, -0.355463,
		0.081583, 0.485839, 0.870233,
		32.806980, 34.670696, 28.721123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512695, 34.255230, 28.338144>,  <32.749870, 34.330608, 28.111959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512695, 34.255230, 28.338144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295601, 34.349857, 28.660505>,  <33.165344, 34.406635, 28.853922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295601, 34.349857, 28.660505>,  <33.512695, 34.255230, 28.338144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295601, 34.349857, 28.660505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593425, -0.571017, 0.567262,
		0.594381, 0.786113, 0.169522,
		-0.542732, 0.236571, 0.805901,
		33.132782, 34.420830, 28.902275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009003, 34.238972, 28.868816>,  <33.512695, 34.255230, 28.338144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009003, 34.238972, 28.868816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675808, 34.222992, 29.089554>,  <33.475891, 34.213402, 29.221996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675808, 34.222992, 29.089554>,  <34.009003, 34.238972, 28.868816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675808, 34.222992, 29.089554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460119, -0.603934, 0.650810,
		0.307277, 0.796032, 0.521453,
		-0.832989, -0.039952, 0.551845,
		33.425911, 34.211006, 29.255108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227013, 34.331940, 29.557468>,  <34.009003, 34.238972, 28.868816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227013, 34.331940, 29.557468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869301, 34.153301, 29.568832>,  <33.654675, 34.046116, 29.575651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869301, 34.153301, 29.568832>,  <34.227013, 34.331940, 29.557468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869301, 34.153301, 29.568832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365204, -0.691658, 0.623085,
		-0.258622, 0.567589, 0.781638,
		-0.894282, -0.446601, 0.028408,
		33.601017, 34.019321, 29.577354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023968, 34.294350, 30.316458>,  <34.227013, 34.331940, 29.557468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023968, 34.294350, 30.316458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842106, 34.011204, 30.100231>,  <33.732990, 33.841316, 29.970495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842106, 34.011204, 30.100231>,  <34.023968, 34.294350, 30.316458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842106, 34.011204, 30.100231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368934, -0.702083, 0.609071,
		-0.810665, 0.077483, 0.580361,
		-0.454655, -0.707867, -0.540568,
		33.705711, 33.798843, 29.938061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603859, 34.957920, 30.479992>,  <34.023968, 34.294350, 30.316458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603859, 34.957920, 30.479992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868313, 34.956669, 30.780096>,  <34.026985, 34.955917, 30.960159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868313, 34.956669, 30.780096>,  <33.603859, 34.957920, 30.479992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868313, 34.956669, 30.780096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105893, 0.989592, 0.097438,
		-0.742757, -0.143867, 0.653922,
		0.661134, -0.003127, 0.750261,
		34.066654, 34.955730, 31.005175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328945, 35.403095, 31.050541>,  <33.603859, 34.957920, 30.479992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328945, 35.403095, 31.050541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725750, 35.392849, 31.099939>,  <33.963833, 35.386703, 31.129578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725750, 35.392849, 31.099939>,  <33.328945, 35.403095, 31.050541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725750, 35.392849, 31.099939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010362, 0.992404, 0.122583,
		-0.125697, -0.120325, 0.984745,
		0.992015, -0.025612, 0.123495,
		34.023354, 35.385166, 31.136988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426479, 35.896709, 31.505129>,  <33.328945, 35.403095, 31.050541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426479, 35.896709, 31.505129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799503, 35.830505, 31.376789>,  <34.023315, 35.790783, 31.299786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799503, 35.830505, 31.376789>,  <33.426479, 35.896709, 31.505129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799503, 35.830505, 31.376789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182428, 0.982946, 0.023187,
		0.311538, -0.080155, 0.946847,
		0.932558, -0.165508, -0.320847,
		34.079269, 35.780853, 31.280535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898479, 36.140034, 31.927801>,  <33.426479, 35.896709, 31.505129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898479, 36.140034, 31.927801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072006, 36.154129, 31.567677>,  <34.176121, 36.162586, 31.351601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072006, 36.154129, 31.567677>,  <33.898479, 36.140034, 31.927801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072006, 36.154129, 31.567677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163689, 0.979524, 0.117210,
		0.886008, -0.198219, 0.419166,
		0.433816, 0.035236, -0.900312,
		34.202152, 36.164700, 31.297583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502834, 36.639500, 31.960737>,  <33.898479, 36.140034, 31.927801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502834, 36.639500, 31.960737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414635, 36.602928, 31.572300>,  <34.361713, 36.580986, 31.339237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414635, 36.602928, 31.572300>,  <34.502834, 36.639500, 31.960737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414635, 36.602928, 31.572300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129747, 0.984000, -0.122103,
		0.966719, -0.152920, -0.205109,
		-0.220499, -0.091427, -0.971093,
		34.348484, 36.575500, 31.280972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945507, 37.020081, 31.670128>,  <34.502834, 36.639500, 31.960737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945507, 37.020081, 31.670128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648140, 36.985844, 31.404799>,  <34.469719, 36.965302, 31.245600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648140, 36.985844, 31.404799>,  <34.945507, 37.020081, 31.670128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648140, 36.985844, 31.404799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087896, 0.970671, -0.223767,
		0.663023, -0.224656, -0.714093,
		-0.743420, -0.085596, -0.663324,
		34.425114, 36.960163, 31.205801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228630, 37.318092, 31.062340>,  <34.945507, 37.020081, 31.670128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228630, 37.318092, 31.062340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829849, 37.338417, 31.038633>,  <34.590580, 37.350613, 31.024408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829849, 37.338417, 31.038633>,  <35.228630, 37.318092, 31.062340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829849, 37.338417, 31.038633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057943, 0.990384, -0.125631,
		0.052315, -0.128681, -0.990305,
		-0.996948, 0.050808, -0.059268,
		34.530766, 37.353661, 31.020853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116043, 37.659008, 30.500238>,  <35.228630, 37.318092, 31.062340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116043, 37.659008, 30.500238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771690, 37.690228, 30.701353>,  <34.565079, 37.708958, 30.822021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771690, 37.690228, 30.701353>,  <35.116043, 37.659008, 30.500238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771690, 37.690228, 30.701353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095379, 0.945893, -0.310144,
		-0.499790, -0.314952, -0.806855,
		-0.860879, 0.078050, 0.502787,
		34.513428, 37.713642, 30.852190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734787, 38.054123, 30.104284>,  <35.116043, 37.659008, 30.500238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734787, 38.054123, 30.104284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510895, 38.082718, 30.434519>,  <34.376560, 38.099876, 30.632660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510895, 38.082718, 30.434519>,  <34.734787, 38.054123, 30.104284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510895, 38.082718, 30.434519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272797, 0.924845, -0.265035,
		-0.782489, -0.373565, -0.498157,
		-0.559726, 0.071491, 0.825588,
		34.342976, 38.104164, 30.682196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054985, 38.289043, 29.929842>,  <34.734787, 38.054123, 30.104284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054985, 38.289043, 29.929842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063271, 38.404499, 30.312729>,  <34.068241, 38.473770, 30.542461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063271, 38.404499, 30.312729>,  <34.054985, 38.289043, 29.929842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063271, 38.404499, 30.312729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425340, 0.869000, -0.252833,
		-0.904796, -0.401906, 0.140765,
		0.020710, 0.288635, 0.957215,
		34.069485, 38.491089, 30.599894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440922, 38.674759, 30.012911>,  <34.054985, 38.289043, 29.929842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440922, 38.674759, 30.012911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671253, 38.773548, 30.324659>,  <33.809452, 38.832821, 30.511709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671253, 38.773548, 30.324659>,  <33.440922, 38.674759, 30.012911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671253, 38.773548, 30.324659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119415, 0.968465, -0.218668,
		-0.808802, 0.032846, 0.587164,
		0.575830, 0.246975, 0.779373,
		33.844002, 38.847641, 30.558472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085552, 39.193386, 30.355558>,  <33.440922, 38.674759, 30.012911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085552, 39.193386, 30.355558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462273, 39.241058, 30.481293>,  <33.688305, 39.269661, 30.556734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462273, 39.241058, 30.481293>,  <33.085552, 39.193386, 30.355558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462273, 39.241058, 30.481293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032472, 0.962927, -0.267801,
		-0.334601, 0.242008, 0.910755,
		0.941800, 0.119181, 0.314337,
		33.744812, 39.276814, 30.575594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108921, 39.785805, 30.743048>,  <33.085552, 39.193386, 30.355558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108921, 39.785805, 30.743048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476921, 39.726017, 30.598127>,  <33.697720, 39.690144, 30.511175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476921, 39.726017, 30.598127>,  <33.108921, 39.785805, 30.743048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476921, 39.726017, 30.598127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010536, 0.914650, -0.404109,
		0.391782, 0.375596, 0.839901,
		0.919998, -0.149474, -0.362301,
		33.752922, 39.681175, 30.489437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491985, 40.439739, 30.841347>,  <33.108921, 39.785805, 30.743048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491985, 40.439739, 30.841347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680172, 40.248230, 30.544853>,  <33.793083, 40.133324, 30.366957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680172, 40.248230, 30.544853>,  <33.491985, 40.439739, 30.841347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680172, 40.248230, 30.544853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159981, 0.872366, -0.461935,
		0.867792, 0.098744, 0.487018,
		0.470471, -0.478777, -0.741235,
		33.821312, 40.104595, 30.322483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094879, 40.911098, 30.712633>,  <33.491985, 40.439739, 30.841347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094879, 40.911098, 30.712633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034267, 40.671181, 30.398363>,  <33.997902, 40.527229, 30.209801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034267, 40.671181, 30.398363>,  <34.094879, 40.911098, 30.712633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034267, 40.671181, 30.398363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185942, 0.763366, -0.618626,
		0.970806, -0.239831, -0.004146,
		-0.151530, -0.599795, -0.785675,
		33.988808, 40.491241, 30.162661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512844, 41.238270, 30.138397>,  <34.094879, 40.911098, 30.712633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512844, 41.238270, 30.138397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276711, 40.989292, 29.932850>,  <34.135029, 40.839905, 29.809521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276711, 40.989292, 29.932850>,  <34.512844, 41.238270, 30.138397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276711, 40.989292, 29.932850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000044, 0.636664, -0.771141,
		0.807158, -0.455210, -0.375873,
		-0.590336, -0.622449, -0.513868,
		34.099609, 40.802559, 29.778690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701992, 41.232204, 29.371965>,  <34.512844, 41.238270, 30.138397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701992, 41.232204, 29.371965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335255, 41.074848, 29.344706>,  <34.115211, 40.980434, 29.328350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335255, 41.074848, 29.344706>,  <34.701992, 41.232204, 29.371965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335255, 41.074848, 29.344706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119266, 0.432761, -0.893584,
		0.381020, -0.811148, -0.443692,
		-0.916842, -0.393391, -0.068148,
		34.060204, 40.956829, 29.324261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591564, 40.859245, 28.720852>,  <34.701992, 41.232204, 29.371965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591564, 40.859245, 28.720852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205360, 40.890518, 28.820192>,  <33.973637, 40.909283, 28.879797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205360, 40.890518, 28.820192>,  <34.591564, 40.859245, 28.720852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205360, 40.890518, 28.820192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217884, 0.279560, -0.935079,
		-0.142540, -0.956939, -0.252883,
		-0.965510, 0.078187, 0.248351,
		33.915707, 40.913975, 28.894697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081150, 40.489368, 28.192719>,  <34.591564, 40.859245, 28.720852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081150, 40.489368, 28.192719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893021, 40.799976, 28.360439>,  <33.780144, 40.986340, 28.461071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893021, 40.799976, 28.360439>,  <34.081150, 40.489368, 28.192719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893021, 40.799976, 28.360439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108472, 0.420660, -0.900710,
		-0.875803, -0.469107, -0.113615,
		-0.470322, 0.776521, 0.419300,
		33.751923, 41.032932, 28.486229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634388, 40.689648, 27.641684>,  <34.081150, 40.489368, 28.192719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634388, 40.689648, 27.641684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646297, 40.990398, 27.905136>,  <33.653442, 41.170849, 28.063208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646297, 40.990398, 27.905136>,  <33.634388, 40.689648, 27.641684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646297, 40.990398, 27.905136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101765, 0.653218, -0.750300,
		-0.994363, 0.089365, -0.057066,
		0.029774, 0.751878, 0.658630,
		33.655228, 41.215961, 28.102726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088684, 41.217598, 27.371761>,  <33.634388, 40.689648, 27.641684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088684, 41.217598, 27.371761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354397, 41.401276, 27.607685>,  <33.513824, 41.511482, 27.749239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354397, 41.401276, 27.607685>,  <33.088684, 41.217598, 27.371761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354397, 41.401276, 27.607685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042227, 0.764743, -0.642950,
		-0.746293, 0.452003, 0.488611,
		0.664277, 0.459196, 0.589809,
		33.553680, 41.539036, 27.784628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716152, 41.758858, 27.392130>,  <33.088684, 41.217598, 27.371761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716152, 41.758858, 27.392130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099449, 41.813496, 27.492615>,  <33.329430, 41.846279, 27.552906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099449, 41.813496, 27.492615>,  <32.716152, 41.758858, 27.392130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099449, 41.813496, 27.492615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033704, 0.818456, -0.573580,
		-0.283952, 0.558097, 0.779678,
		0.958246, 0.136591, 0.251213,
		33.386925, 41.854473, 27.567978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803448, 42.406765, 27.479275>,  <32.716152, 41.758858, 27.392130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803448, 42.406765, 27.479275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190586, 42.321831, 27.425320>,  <33.422867, 42.270870, 27.392946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190586, 42.321831, 27.425320>,  <32.803448, 42.406765, 27.479275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190586, 42.321831, 27.425320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083502, 0.776996, -0.623943,
		0.237292, 0.592615, 0.769740,
		0.967843, -0.212332, -0.134890,
		33.480938, 42.258133, 27.384853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187916, 43.099033, 27.407135>,  <32.803448, 42.406765, 27.479275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187916, 43.099033, 27.407135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429852, 42.815544, 27.261868>,  <33.575012, 42.645451, 27.174707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429852, 42.815544, 27.261868>,  <33.187916, 43.099033, 27.407135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429852, 42.815544, 27.261868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321768, 0.634649, -0.702628,
		0.728449, 0.308119, 0.611902,
		0.604836, -0.708719, -0.363167,
		33.611301, 42.602928, 27.152918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941334, 43.274864, 27.407583>,  <33.187916, 43.099033, 27.407135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941334, 43.274864, 27.407583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913292, 43.008488, 27.110504>,  <33.896465, 42.848660, 26.932257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913292, 43.008488, 27.110504>,  <33.941334, 43.274864, 27.407583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913292, 43.008488, 27.110504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351685, 0.680226, -0.643125,
		0.933490, -0.306282, 0.186517,
		-0.070104, -0.665946, -0.742699,
		33.892262, 42.808704, 26.887695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597542, 43.341305, 27.102787>,  <33.941334, 43.274864, 27.407583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597542, 43.341305, 27.102787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383671, 43.139709, 26.831461>,  <34.255348, 43.018753, 26.668665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383671, 43.139709, 26.831461>,  <34.597542, 43.341305, 27.102787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383671, 43.139709, 26.831461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495267, 0.463491, -0.734769,
		0.684708, -0.728815, 0.001789,
		-0.534682, -0.503989, -0.678315,
		34.223267, 42.988514, 26.627966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076797, 43.093365, 26.534840>,  <34.597542, 43.341305, 27.102787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076797, 43.093365, 26.534840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707859, 43.114742, 26.381781>,  <34.486496, 43.127567, 26.289946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707859, 43.114742, 26.381781>,  <35.076797, 43.093365, 26.534840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707859, 43.114742, 26.381781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327135, 0.634964, -0.699860,
		0.205567, -0.770691, -0.603139,
		-0.922347, 0.053440, -0.382648,
		34.431156, 43.130775, 26.266987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210419, 43.167423, 25.912569>,  <35.076797, 43.093365, 26.534840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210419, 43.167423, 25.912569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826874, 43.277122, 25.941885>,  <34.596748, 43.342941, 25.959475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826874, 43.277122, 25.941885>,  <35.210419, 43.167423, 25.912569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826874, 43.277122, 25.941885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134053, 0.665037, -0.734680,
		-0.250225, -0.694633, -0.674443,
		-0.958863, 0.274246, 0.073291,
		34.539215, 43.359398, 25.963873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858620, 43.270008, 25.222904>,  <35.210419, 43.167423, 25.912569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858620, 43.270008, 25.222904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603909, 43.468372, 25.459066>,  <34.451080, 43.587391, 25.600763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603909, 43.468372, 25.459066>,  <34.858620, 43.270008, 25.222904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603909, 43.468372, 25.459066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083587, 0.716810, -0.692240,
		-0.766502, -0.490155, -0.414998,
		-0.636779, 0.495915, 0.590407,
		34.412876, 43.617146, 25.636189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348877, 43.514874, 24.848303>,  <34.858620, 43.270008, 25.222904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348877, 43.514874, 24.848303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339546, 43.770344, 25.155952>,  <34.333946, 43.923626, 25.340542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339546, 43.770344, 25.155952>,  <34.348877, 43.514874, 24.848303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339546, 43.770344, 25.155952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023209, 0.768779, -0.639093,
		-0.999458, -0.032761, -0.003112,
		-0.023330, 0.638675, 0.769123,
		34.332546, 43.961945, 25.386690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711349, 43.909184, 24.780596>,  <34.348877, 43.514874, 24.848303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711349, 43.909184, 24.780596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970600, 44.123276, 24.997282>,  <34.126152, 44.251732, 25.127295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970600, 44.123276, 24.997282>,  <33.711349, 43.909184, 24.780596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970600, 44.123276, 24.997282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096106, 0.763153, -0.639031,
		-0.755441, 0.362113, 0.546062,
		0.648130, 0.535230, 0.541716,
		34.165039, 44.283844, 25.159798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446072, 44.554890, 24.946165>,  <33.711349, 43.909184, 24.780596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446072, 44.554890, 24.946165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836857, 44.630527, 24.985718>,  <34.071327, 44.675911, 25.009449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836857, 44.630527, 24.985718>,  <33.446072, 44.554890, 24.946165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836857, 44.630527, 24.985718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107826, 0.837335, -0.535950,
		-0.184142, 0.512944, 0.838439,
		0.976967, 0.189096, 0.098880,
		34.129948, 44.687256, 25.015383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534252, 45.280521, 25.057487>,  <33.446072, 44.554890, 24.946165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534252, 45.280521, 25.057487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890511, 45.168583, 24.914135>,  <34.104267, 45.101421, 24.828123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890511, 45.168583, 24.914135>,  <33.534252, 45.280521, 25.057487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890511, 45.168583, 24.914135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017840, 0.766058, -0.642524,
		0.454350, 0.578654, 0.677293,
		0.890645, -0.279847, -0.358381,
		34.157703, 45.084629, 24.806620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734634, 45.880779, 24.821840>,  <33.534252, 45.280521, 25.057487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734634, 45.880779, 24.821840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019871, 45.652363, 24.659155>,  <34.191013, 45.515312, 24.561543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019871, 45.652363, 24.659155>,  <33.734634, 45.880779, 24.821840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019871, 45.652363, 24.659155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161640, 0.698416, -0.697199,
		0.682187, 0.431422, 0.590335,
		0.713087, -0.571042, -0.406716,
		34.233795, 45.481049, 24.537140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330391, 46.343304, 24.810240>,  <33.734634, 45.880779, 24.821840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330391, 46.343304, 24.810240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377987, 46.054779, 24.537315>,  <34.406544, 45.881664, 24.373560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377987, 46.054779, 24.537315>,  <34.330391, 46.343304, 24.810240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377987, 46.054779, 24.537315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169198, 0.691874, -0.701913,
		0.978372, -0.031923, 0.204372,
		0.118993, -0.721312, -0.682312,
		34.413685, 45.838387, 24.332623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875179, 46.620407, 24.420668>,  <34.330391, 46.343304, 24.810240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875179, 46.620407, 24.420668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679241, 46.352371, 24.197586>,  <34.561680, 46.191551, 24.063736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679241, 46.352371, 24.197586>,  <34.875179, 46.620407, 24.420668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679241, 46.352371, 24.197586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015177, 0.646168, -0.763044,
		0.871677, -0.365310, -0.326693,
		-0.489846, -0.670086, -0.557706,
		34.532288, 46.151344, 24.030273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131306, 46.662506, 23.673271>,  <34.875179, 46.620407, 24.420668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131306, 46.662506, 23.673271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792126, 46.451126, 23.656683>,  <34.588615, 46.324299, 23.646730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792126, 46.451126, 23.656683>,  <35.131306, 46.662506, 23.673271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792126, 46.451126, 23.656683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204418, 0.398184, -0.894239,
		0.489071, -0.749794, -0.445666,
		-0.847952, -0.528448, -0.041469,
		34.537739, 46.292591, 23.644243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089027, 46.334412, 22.968906>,  <35.131306, 46.662506, 23.673271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089027, 46.334412, 22.968906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727959, 46.421558, 23.117350>,  <34.511318, 46.473846, 23.206415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727959, 46.421558, 23.117350>,  <35.089027, 46.334412, 22.968906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727959, 46.421558, 23.117350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243606, 0.452197, -0.858006,
		-0.354746, -0.864900, -0.355110,
		-0.902669, 0.217867, 0.371110,
		34.457157, 46.486919, 23.228683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791691, 46.055962, 22.704048>,  <35.089027, 46.334412, 22.968906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791691, 46.055962, 22.704048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159004, 46.165787, 22.589947>,  <36.379391, 46.231682, 22.521486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159004, 46.165787, 22.589947>,  <35.791691, 46.055962, 22.704048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159004, 46.165787, 22.589947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384445, -0.790561, 0.476671,
		-0.094633, -0.547384, -0.831514,
		0.918285, 0.274562, -0.285252,
		36.434490, 46.248154, 22.504372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154339, 45.434341, 22.523058>,  <35.791691, 46.055962, 22.704048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154339, 45.434341, 22.523058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420166, 45.701778, 22.656523>,  <36.579662, 45.862240, 22.736601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420166, 45.701778, 22.656523>,  <36.154339, 45.434341, 22.523058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420166, 45.701778, 22.656523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361848, -0.678638, 0.639153,
		0.653769, -0.304027, -0.692931,
		0.664569, 0.668595, 0.333661,
		36.619537, 45.902355, 22.756620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735844, 45.088936, 22.673660>,  <36.154339, 45.434341, 22.523058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735844, 45.088936, 22.673660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815361, 45.421608, 22.881041>,  <36.863071, 45.621212, 23.005468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815361, 45.421608, 22.881041>,  <36.735844, 45.088936, 22.673660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815361, 45.421608, 22.881041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384029, -0.552806, 0.739545,
		0.901668, 0.052087, -0.429281,
		0.198789, 0.831680, 0.518450,
		36.874996, 45.671112, 23.036575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418648, 45.009983, 22.934410>,  <36.735844, 45.088936, 22.673660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418648, 45.009983, 22.934410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228809, 45.276695, 23.164253>,  <37.114906, 45.436722, 23.302158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228809, 45.276695, 23.164253>,  <37.418648, 45.009983, 22.934410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228809, 45.276695, 23.164253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366856, -0.443566, 0.817720,
		0.800112, 0.598881, -0.034098,
		-0.474592, 0.666776, 0.574606,
		37.086433, 45.476727, 23.336636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908237, 45.343475, 23.389042>,  <37.418648, 45.009983, 22.934410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908237, 45.343475, 23.389042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543365, 45.367226, 23.551229>,  <37.324444, 45.381477, 23.648542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543365, 45.367226, 23.551229>,  <37.908237, 45.343475, 23.389042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543365, 45.367226, 23.551229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377586, -0.262728, 0.887920,
		0.159250, 0.963041, 0.217235,
		-0.912178, 0.059377, 0.405471,
		37.269711, 45.385040, 23.672871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987106, 45.508209, 24.140587>,  <37.908237, 45.343475, 23.389042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987106, 45.508209, 24.140587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605366, 45.389786, 24.156378>,  <37.376320, 45.318733, 24.165852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605366, 45.389786, 24.156378>,  <37.987106, 45.508209, 24.140587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605366, 45.389786, 24.156378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179965, -0.464512, 0.867088,
		-0.238368, 0.834614, 0.496589,
		-0.954355, -0.296055, 0.039477,
		37.319057, 45.300968, 24.168221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861851, 45.508827, 24.793264>,  <37.987106, 45.508209, 24.140587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861851, 45.508827, 24.793264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577866, 45.259930, 24.661346>,  <37.407475, 45.110592, 24.582195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577866, 45.259930, 24.661346>,  <37.861851, 45.508827, 24.793264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577866, 45.259930, 24.661346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148726, -0.590216, 0.793427,
		-0.688353, 0.514256, 0.511576,
		-0.709965, -0.622243, -0.329794,
		37.364876, 45.073257, 24.562408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778259, 45.012367, 25.343342>,  <37.861851, 45.508827, 24.793264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778259, 45.012367, 25.343342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530003, 44.845490, 25.077785>,  <37.381050, 44.745361, 24.918451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530003, 44.845490, 25.077785>,  <37.778259, 45.012367, 25.343342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530003, 44.845490, 25.077785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082684, -0.807155, 0.584521,
		-0.779723, 0.417671, 0.466458,
		-0.620641, -0.417195, -0.663892,
		37.343811, 44.720329, 24.878618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070816, 44.882980, 25.654800>,  <37.778259, 45.012367, 25.343342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070816, 44.882980, 25.654800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116108, 44.613922, 25.362303>,  <37.143284, 44.452488, 25.186804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116108, 44.613922, 25.362303>,  <37.070816, 44.882980, 25.654800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116108, 44.613922, 25.362303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263352, -0.729974, 0.630702,
		-0.958032, 0.121162, -0.259797,
		0.113228, -0.672650, -0.731246,
		37.150078, 44.412128, 25.142929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737804, 44.372192, 25.908915>,  <37.070816, 44.882980, 25.654800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737804, 44.372192, 25.908915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938042, 44.186951, 25.616354>,  <37.058182, 44.075806, 25.440817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938042, 44.186951, 25.616354>,  <36.737804, 44.372192, 25.908915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938042, 44.186951, 25.616354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015107, -0.849426, 0.527491,
		-0.865556, -0.253005, -0.432206,
		0.500585, -0.463102, -0.731404,
		37.088219, 44.048019, 25.396935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253056, 43.894840, 25.681561>,  <36.737804, 44.372192, 25.908915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253056, 43.894840, 25.681561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632473, 43.782948, 25.622206>,  <36.860123, 43.715813, 25.586592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632473, 43.782948, 25.622206>,  <36.253056, 43.894840, 25.681561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632473, 43.782948, 25.622206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150122, -0.809864, 0.567084,
		-0.278806, -0.515626, -0.810183,
		0.948541, -0.279733, -0.148388,
		36.917034, 43.699028, 25.577690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135441, 43.222790, 25.774431>,  <36.253056, 43.894840, 25.681561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135441, 43.222790, 25.774431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533501, 43.261990, 25.770857>,  <36.772335, 43.285511, 25.768713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533501, 43.261990, 25.770857>,  <36.135441, 43.222790, 25.774431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533501, 43.261990, 25.770857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086607, -0.829074, 0.552391,
		0.046728, -0.550484, -0.833537,
		0.995146, 0.098002, -0.008934,
		36.832043, 43.291389, 25.768177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459068, 42.614716, 25.370451>,  <36.135441, 43.222790, 25.774431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459068, 42.614716, 25.370451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700356, 42.798916, 25.630932>,  <36.845127, 42.909435, 25.787220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700356, 42.798916, 25.630932>,  <36.459068, 42.614716, 25.370451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700356, 42.798916, 25.630932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107444, -0.762118, 0.638461,
		0.790307, -0.455098, -0.410244,
		0.603217, 0.460502, 0.651204,
		36.881321, 42.937065, 25.826294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837498, 42.092041, 25.703539>,  <36.459068, 42.614716, 25.370451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837498, 42.092041, 25.703539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876667, 42.386356, 25.971575>,  <36.900169, 42.562946, 26.132397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876667, 42.386356, 25.971575>,  <36.837498, 42.092041, 25.703539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876667, 42.386356, 25.971575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015495, -0.674371, 0.738230,
		0.995073, -0.061905, -0.077437,
		0.097921, 0.735793, 0.670090,
		36.906044, 42.607094, 26.172602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379974, 41.811989, 26.162964>,  <36.837498, 42.092041, 25.703539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379974, 41.811989, 26.162964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204773, 42.105499, 26.370705>,  <37.099651, 42.281605, 26.495348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204773, 42.105499, 26.370705>,  <37.379974, 41.811989, 26.162964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204773, 42.105499, 26.370705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104512, -0.532233, 0.840122,
		0.892879, 0.422252, 0.156429,
		-0.438001, 0.733779, 0.519350,
		37.073372, 42.325634, 26.526510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773300, 41.859463, 26.767332>,  <37.379974, 41.811989, 26.162964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773300, 41.859463, 26.767332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414265, 42.013233, 26.853636>,  <37.198845, 42.105495, 26.905418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414265, 42.013233, 26.853636>,  <37.773300, 41.859463, 26.767332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414265, 42.013233, 26.853636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014025, -0.514094, 0.857619,
		0.440610, 0.766764, 0.466837,
		-0.897589, 0.384423, 0.215761,
		37.144989, 42.128559, 26.918364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906555, 41.888702, 27.523724>,  <37.773300, 41.859463, 26.767332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906555, 41.888702, 27.523724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524223, 41.917282, 27.409678>,  <37.294827, 41.934429, 27.341249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524223, 41.917282, 27.409678>,  <37.906555, 41.888702, 27.523724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524223, 41.917282, 27.409678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270584, -0.592764, 0.758562,
		-0.114806, 0.802201, 0.585912,
		-0.955826, 0.071451, -0.285115,
		37.237476, 41.938717, 27.324142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537643, 42.048744, 28.102808>,  <37.906555, 41.888702, 27.523724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537643, 42.048744, 28.102808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250477, 41.886623, 27.876421>,  <37.078175, 41.789352, 27.740589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250477, 41.886623, 27.876421>,  <37.537643, 42.048744, 28.102808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250477, 41.886623, 27.876421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256933, -0.601346, 0.756550,
		-0.646975, 0.688559, 0.327583,
		-0.717920, -0.405302, -0.565969,
		37.035099, 41.765034, 27.706631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885284, 41.999947, 28.530817>,  <37.537643, 42.048744, 28.102808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885284, 41.999947, 28.530817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805103, 41.740486, 28.237133>,  <36.756992, 41.584808, 28.060923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805103, 41.740486, 28.237133>,  <36.885284, 41.999947, 28.530817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805103, 41.740486, 28.237133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381784, -0.638456, 0.668294,
		-0.902252, 0.414273, -0.119663,
		-0.200457, -0.648654, -0.734210,
		36.744965, 41.545891, 28.016870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308407, 41.801167, 28.767994>,  <36.885284, 41.999947, 28.530817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308407, 41.801167, 28.767994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422863, 41.527874, 28.499275>,  <36.491539, 41.363899, 28.338043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422863, 41.527874, 28.499275>,  <36.308407, 41.801167, 28.767994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422863, 41.527874, 28.499275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305821, -0.729565, 0.611726,
		-0.908072, 0.030407, -0.417708,
		0.286144, -0.683236, -0.671797,
		36.508705, 41.322903, 28.297737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753830, 41.263157, 28.489046>,  <36.308407, 41.801167, 28.767994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753830, 41.263157, 28.489046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124947, 41.113995, 28.493998>,  <36.347614, 41.024498, 28.496969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124947, 41.113995, 28.493998>,  <35.753830, 41.263157, 28.489046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124947, 41.113995, 28.493998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335840, -0.820204, 0.463117,
		-0.162543, -0.433833, -0.886211,
		0.927789, -0.372901, 0.012380,
		36.403282, 41.002125, 28.497711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586590, 40.610706, 28.456848>,  <35.753830, 41.263157, 28.489046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586590, 40.610706, 28.456848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977356, 40.617573, 28.542017>,  <36.211815, 40.621693, 28.593119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977356, 40.617573, 28.542017>,  <35.586590, 40.610706, 28.456848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977356, 40.617573, 28.542017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111247, -0.810031, 0.575737,
		0.182357, -0.586135, -0.789425,
		0.976919, 0.017169, 0.212921,
		36.270432, 40.622723, 28.605894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793491, 39.887508, 28.589731>,  <35.586590, 40.610706, 28.456848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793491, 39.887508, 28.589731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087643, 40.105740, 28.750511>,  <36.264133, 40.236679, 28.846979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087643, 40.105740, 28.750511>,  <35.793491, 39.887508, 28.589731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087643, 40.105740, 28.750511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043698, -0.630091, 0.775291,
		0.676245, -0.552569, -0.487196,
		0.735380, 0.545576, 0.401950,
		36.308258, 40.269413, 28.871096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365498, 39.418118, 28.734919>,  <35.793491, 39.887508, 28.589731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365498, 39.418118, 28.734919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353497, 39.747501, 28.961548>,  <36.346294, 39.945133, 29.097527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353497, 39.747501, 28.961548>,  <36.365498, 39.418118, 28.734919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353497, 39.747501, 28.961548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400534, -0.509426, 0.761615,
		0.915790, 0.249785, -0.314540,
		-0.030005, 0.823464, 0.566575,
		36.344494, 39.994541, 29.131521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052277, 39.280827, 29.209339>,  <36.365498, 39.418118, 28.734919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052277, 39.280827, 29.209339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855377, 39.589569, 29.370302>,  <36.737236, 39.774815, 29.466881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855377, 39.589569, 29.370302>,  <37.052277, 39.280827, 29.209339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855377, 39.589569, 29.370302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371183, -0.232028, 0.899103,
		0.787346, 0.591950, -0.172283,
		-0.492249, 0.771854, 0.402408,
		36.707703, 39.821125, 29.491024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505791, 39.677601, 29.705099>,  <37.052277, 39.280827, 29.209339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505791, 39.677601, 29.705099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123508, 39.741310, 29.804098>,  <36.894138, 39.779537, 29.863497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123508, 39.741310, 29.804098>,  <37.505791, 39.677601, 29.705099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123508, 39.741310, 29.804098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222488, -0.159518, 0.961797,
		0.192669, 0.974262, 0.117016,
		-0.955708, 0.159274, 0.247496,
		36.836796, 39.789093, 29.878347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524105, 40.038559, 30.299549>,  <37.505791, 39.677601, 29.705099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524105, 40.038559, 30.299549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141212, 39.922909, 30.303818>,  <36.911476, 39.853519, 30.306379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141212, 39.922909, 30.303818>,  <37.524105, 40.038559, 30.299549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141212, 39.922909, 30.303818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036406, -0.083784, 0.995819,
		-0.287021, 0.953618, 0.090726,
		-0.957232, -0.289123, 0.010670,
		36.854042, 39.836170, 30.307018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298756, 40.397461, 30.841299>,  <37.524105, 40.038559, 30.299549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298756, 40.397461, 30.841299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056808, 40.084118, 30.784044>,  <36.911640, 39.896111, 30.749691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056808, 40.084118, 30.784044>,  <37.298756, 40.397461, 30.841299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056808, 40.084118, 30.784044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094466, -0.107890, 0.989664,
		-0.790705, 0.612135, -0.008741,
		-0.604865, -0.783358, -0.143135,
		36.875347, 39.849110, 30.741104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997692, 40.192665, 31.471258>,  <37.298756, 40.397461, 30.841299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997692, 40.192665, 31.471258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905182, 39.856068, 31.275955>,  <36.849674, 39.654110, 31.158773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905182, 39.856068, 31.275955>,  <36.997692, 40.192665, 31.471258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905182, 39.856068, 31.275955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131838, -0.524342, 0.841240,
		-0.963914, 0.130187, 0.232209,
		-0.231275, -0.841497, -0.488257,
		36.835800, 39.603619, 31.129478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392704, 39.898609, 31.803896>,  <36.997692, 40.192665, 31.471258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392704, 39.898609, 31.803896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597275, 39.608261, 31.619919>,  <36.720016, 39.434052, 31.509533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597275, 39.608261, 31.619919>,  <36.392704, 39.898609, 31.803896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597275, 39.608261, 31.619919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145220, -0.454531, 0.878813,
		-0.846966, -0.516244, -0.127049,
		0.511430, -0.725875, -0.459941,
		36.750706, 39.390499, 31.481937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125092, 39.221161, 32.095161>,  <36.392704, 39.898609, 31.803896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125092, 39.221161, 32.095161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490692, 39.164295, 31.943163>,  <36.710052, 39.130177, 31.851965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490692, 39.164295, 31.943163>,  <36.125092, 39.221161, 32.095161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490692, 39.164295, 31.943163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208295, -0.639320, 0.740191,
		-0.348166, -0.755685, -0.554726,
		0.913998, -0.142162, -0.379995,
		36.764893, 39.121647, 31.829165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315166, 38.430386, 32.159878>,  <36.125092, 39.221161, 32.095161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315166, 38.430386, 32.159878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665859, 38.620415, 32.129810>,  <36.876274, 38.734432, 32.111771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665859, 38.620415, 32.129810>,  <36.315166, 38.430386, 32.159878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665859, 38.620415, 32.129810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422878, -0.686888, 0.591066,
		0.229170, -0.549991, -0.803113,
		0.876730, 0.475073, -0.075165,
		36.928879, 38.762936, 32.107262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817829, 37.904903, 32.052917>,  <36.315166, 38.430386, 32.159878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817829, 37.904903, 32.052917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059681, 38.199570, 32.174076>,  <37.204792, 38.376369, 32.246773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059681, 38.199570, 32.174076>,  <36.817829, 37.904903, 32.052917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059681, 38.199570, 32.174076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488665, -0.643377, 0.589298,
		0.628995, -0.208289, -0.748986,
		0.604625, 0.736669, 0.302898,
		37.241070, 38.420570, 32.264946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520332, 37.541702, 32.125877>,  <36.817829, 37.904903, 32.052917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520332, 37.541702, 32.125877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543938, 37.893147, 32.315430>,  <37.558102, 38.104012, 32.429161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543938, 37.893147, 32.315430>,  <37.520332, 37.541702, 32.125877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543938, 37.893147, 32.315430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700027, -0.374850, 0.607823,
		0.711673, 0.295859, -0.637172,
		0.059014, 0.878609, 0.473881,
		37.561642, 38.156731, 32.457592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308033, 37.704430, 32.131645>,  <37.520332, 37.541702, 32.125877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308033, 37.704430, 32.131645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117054, 37.888344, 32.431149>,  <38.002468, 37.998692, 32.610851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117054, 37.888344, 32.431149>,  <38.308033, 37.704430, 32.131645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117054, 37.888344, 32.431149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701848, -0.313128, 0.639812,
		0.528634, 0.830993, -0.173197,
		-0.477446, 0.459785, 0.748761,
		37.973820, 38.026279, 32.655777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781216, 38.055260, 32.443714>,  <38.308033, 37.704430, 32.131645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781216, 38.055260, 32.443714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504505, 38.029865, 32.731438>,  <38.338478, 38.014629, 32.904072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504505, 38.029865, 32.731438>,  <38.781216, 38.055260, 32.443714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504505, 38.029865, 32.731438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692354, -0.341318, 0.635726,
		0.205151, 0.937801, 0.280074,
		-0.691779, -0.063490, 0.719312,
		38.296970, 38.010818, 32.947231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018307, 38.373993, 33.019379>,  <38.781216, 38.055260, 32.443714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018307, 38.373993, 33.019379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756760, 38.109188, 33.165909>,  <38.599831, 37.950306, 33.253826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756760, 38.109188, 33.165909>,  <39.018307, 38.373993, 33.019379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756760, 38.109188, 33.165909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646533, -0.237400, 0.725008,
		-0.393000, 0.710900, 0.583243,
		-0.653870, -0.662014, 0.366322,
		38.560600, 37.910583, 33.275806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108921, 38.326286, 33.655643>,  <39.018307, 38.373993, 33.019379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108921, 38.326286, 33.655643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867542, 38.007729, 33.639599>,  <38.722713, 37.816593, 33.629971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867542, 38.007729, 33.639599>,  <39.108921, 38.326286, 33.655643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867542, 38.007729, 33.639599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605477, -0.490360, 0.626853,
		-0.518893, 0.353983, 0.778104,
		-0.603446, -0.796394, -0.040116,
		38.686508, 37.768810, 33.627563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030552, 38.111477, 34.343571>,  <39.108921, 38.326286, 33.655643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030552, 38.111477, 34.343571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937069, 37.782787, 34.135670>,  <38.880978, 37.585571, 34.010929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937069, 37.782787, 34.135670>,  <39.030552, 38.111477, 34.343571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937069, 37.782787, 34.135670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500172, -0.560012, 0.660466,
		-0.833791, -0.105608, 0.541885,
		-0.233711, -0.821726, -0.519755,
		38.866955, 37.536270, 33.979744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762165, 37.691734, 34.817261>,  <39.030552, 38.111477, 34.343571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762165, 37.691734, 34.817261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887371, 37.455345, 34.519863>,  <38.962494, 37.313511, 34.341427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887371, 37.455345, 34.519863>,  <38.762165, 37.691734, 34.817261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887371, 37.455345, 34.519863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560160, -0.517300, 0.647010,
		-0.766972, -0.618994, 0.169117,
		0.313011, -0.590971, -0.743490,
		38.981274, 37.278053, 34.296818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825432, 37.003933, 35.187840>,  <38.762165, 37.691734, 34.817261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825432, 37.003933, 35.187840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046124, 36.987991, 34.854610>,  <39.178539, 36.978428, 34.654675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046124, 36.987991, 34.854610>,  <38.825432, 37.003933, 35.187840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046124, 36.987991, 34.854610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678358, -0.559663, 0.476033,
		-0.485211, -0.827761, -0.281747,
		0.551725, -0.039851, -0.833074,
		39.211639, 36.976036, 34.604687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982925, 36.222054, 35.034630>,  <38.825432, 37.003933, 35.187840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982925, 36.222054, 35.034630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270035, 36.474632, 34.917278>,  <39.442299, 36.626179, 34.846867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270035, 36.474632, 34.917278>,  <38.982925, 36.222054, 35.034630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270035, 36.474632, 34.917278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692701, -0.604963, 0.392665,
		0.070465, -0.485068, -0.871633,
		0.717775, 0.631450, -0.293378,
		39.485367, 36.664066, 34.829266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502537, 35.793953, 34.801792>,  <38.982925, 36.222054, 35.034630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502537, 35.793953, 34.801792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701836, 36.136665, 34.854977>,  <39.821415, 36.342293, 34.886887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701836, 36.136665, 34.854977>,  <39.502537, 35.793953, 34.801792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701836, 36.136665, 34.854977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724357, -0.495613, 0.479244,
		0.476501, -0.142475, -0.867553,
		0.498251, 0.856778, 0.132958,
		39.851311, 36.393700, 34.894863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189308, 35.585590, 34.743690>,  <39.502537, 35.793953, 34.801792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189308, 35.585590, 34.743690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217506, 35.931385, 34.942768>,  <40.234425, 36.138863, 35.062214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217506, 35.931385, 34.942768>,  <40.189308, 35.585590, 34.743690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217506, 35.931385, 34.942768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803827, -0.344672, 0.484834,
		0.590672, 0.365877, -0.719195,
		0.070496, 0.864486, 0.497690,
		40.238655, 36.190731, 35.092075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896114, 35.675041, 34.565113>,  <40.189308, 35.585590, 34.743690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896114, 35.675041, 34.565113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749805, 35.841969, 34.897873>,  <40.662022, 35.942123, 35.097530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749805, 35.841969, 34.897873>,  <40.896114, 35.675041, 34.565113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749805, 35.841969, 34.897873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823209, -0.271947, 0.498370,
		0.434211, 0.867117, -0.244068,
		-0.365772, 0.417316, 0.831900,
		40.640076, 35.967163, 35.147442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500549, 35.978184, 34.887081>,  <40.896114, 35.675041, 34.565113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500549, 35.978184, 34.887081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218063, 35.916416, 35.163464>,  <41.048573, 35.879356, 35.329292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218063, 35.916416, 35.163464>,  <41.500549, 35.978184, 34.887081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218063, 35.916416, 35.163464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705320, -0.238274, 0.667644,
		0.061542, 0.958844, 0.277184,
		-0.706212, -0.154415, 0.690956,
		41.006199, 35.870090, 35.370750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816135, 36.323280, 35.482594>,  <41.500549, 35.978184, 34.887081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816135, 36.323280, 35.482594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512875, 36.132328, 35.660271>,  <41.330917, 36.017757, 35.766876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512875, 36.132328, 35.660271>,  <41.816135, 36.323280, 35.482594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512875, 36.132328, 35.660271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591326, -0.216222, 0.776905,
		-0.274839, 0.851676, 0.446220,
		-0.758154, -0.477385, 0.444192,
		41.285427, 35.989113, 35.793530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741219, 36.562737, 36.191681>,  <41.816135, 36.323280, 35.482594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741219, 36.562737, 36.191681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570435, 36.201038, 36.188896>,  <41.467964, 35.984020, 36.187225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570435, 36.201038, 36.188896>,  <41.741219, 36.562737, 36.191681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570435, 36.201038, 36.188896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431614, -0.210553, 0.877141,
		-0.794615, 0.371499, 0.480182,
		-0.426961, -0.904243, -0.006965,
		41.442345, 35.929764, 36.186806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358807, 36.446873, 36.827953>,  <41.741219, 36.562737, 36.191681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358807, 36.446873, 36.827953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423664, 36.074078, 36.698277>,  <41.462578, 35.850399, 36.620472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423664, 36.074078, 36.698277>,  <41.358807, 36.446873, 36.827953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423664, 36.074078, 36.698277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460782, -0.219006, 0.860068,
		-0.872576, -0.288836, 0.393934,
		0.162145, -0.931992, -0.324190,
		41.472309, 35.794479, 36.601021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723812, 36.130318, 37.287163>,  <41.358807, 36.446873, 36.827953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723812, 36.130318, 37.287163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688122, 35.803169, 37.059784>,  <41.666706, 35.606880, 36.923359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688122, 35.803169, 37.059784>,  <41.723812, 36.130318, 37.287163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688122, 35.803169, 37.059784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731369, -0.441223, 0.520022,
		-0.676120, -0.369342, 0.637532,
		-0.089228, -0.817868, -0.568445,
		41.661354, 35.557808, 36.889252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268364, 35.662632, 37.688770>,  <41.723812, 36.130318, 37.287163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268364, 35.662632, 37.688770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485302, 35.421188, 37.455013>,  <41.615463, 35.276321, 37.314758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485302, 35.421188, 37.455013>,  <41.268364, 35.662632, 37.688770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485302, 35.421188, 37.455013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252811, -0.546089, 0.798670,
		-0.801216, -0.580896, -0.143569,
		0.542346, -0.603611, -0.584393,
		41.648006, 35.240105, 37.279697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013454, 34.862385, 37.811138>,  <41.268364, 35.662632, 37.688770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013454, 34.862385, 37.811138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387630, 34.921051, 37.682495>,  <41.612137, 34.956249, 37.605309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387630, 34.921051, 37.682495>,  <41.013454, 34.862385, 37.811138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387630, 34.921051, 37.682495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330545, -0.685317, 0.648907,
		-0.125233, -0.713323, -0.689555,
		0.935444, 0.146665, -0.321610,
		41.668262, 34.965050, 37.586014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165520, 34.183289, 37.532101>,  <41.013454, 34.862385, 37.811138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165520, 34.183289, 37.532101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504402, 34.352589, 37.660534>,  <41.707733, 34.454170, 37.737595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504402, 34.352589, 37.660534>,  <41.165520, 34.183289, 37.532101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504402, 34.352589, 37.660534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229212, -0.836451, 0.497807,
		0.479269, -0.348150, -0.805663,
		0.847209, 0.423251, 0.321085,
		41.758564, 34.479565, 37.756859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640446, 33.634197, 37.537178>,  <41.165520, 34.183289, 37.532101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640446, 33.634197, 37.537178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800072, 33.913662, 37.774704>,  <41.895847, 34.081341, 37.917221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800072, 33.913662, 37.774704>,  <41.640446, 33.634197, 37.537178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800072, 33.913662, 37.774704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388380, -0.715450, 0.580768,
		0.830606, -0.001139, -0.556859,
		0.399067, 0.698663, 0.593815,
		41.919792, 34.123260, 37.952847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416622, 33.565903, 37.568188>,  <41.640446, 33.634197, 37.537178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416622, 33.565903, 37.568188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297970, 33.740143, 37.908131>,  <42.226780, 33.844688, 38.112099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297970, 33.740143, 37.908131>,  <42.416622, 33.565903, 37.568188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297970, 33.740143, 37.908131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602185, -0.605379, 0.520470,
		0.741205, 0.666160, -0.082741,
		-0.296627, 0.435600, 0.849862,
		42.208981, 33.870823, 38.163090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984692, 33.608921, 37.985142>,  <42.416622, 33.565903, 37.568188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984692, 33.608921, 37.985142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.696819, 33.602604, 38.262794>,  <42.524097, 33.598812, 38.429386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.696819, 33.602604, 38.262794>,  <42.984692, 33.608921, 37.985142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696819, 33.602604, 38.262794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602587, -0.510832, 0.613139,
		0.344898, 0.859535, 0.377153,
		-0.719676, -0.015797, 0.694130,
		42.480915, 33.597866, 38.471035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415668, 33.613651, 38.478069>,  <42.984692, 33.608921, 37.985142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415668, 33.613651, 38.478069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056435, 33.517281, 38.625256>,  <42.840893, 33.459457, 38.713566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056435, 33.517281, 38.625256>,  <43.415668, 33.613651, 38.478069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056435, 33.517281, 38.625256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430239, -0.654906, 0.621283,
		0.091297, 0.716277, 0.691818,
		-0.898087, -0.240926, 0.367961,
		42.787010, 33.445004, 38.735645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516304, 33.673370, 39.140686>,  <43.415668, 33.613651, 38.478069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516304, 33.673370, 39.140686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195469, 33.438164, 39.098934>,  <43.002968, 33.297039, 39.073883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195469, 33.438164, 39.098934>,  <43.516304, 33.673370, 39.140686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195469, 33.438164, 39.098934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296228, -0.543485, 0.785413,
		-0.518564, 0.599048, 0.610109,
		-0.802085, -0.588018, -0.104377,
		42.954842, 33.261757, 39.067619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.245045, 33.609001, 39.850620>,  <43.516304, 33.673370, 39.140686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.245045, 33.609001, 39.850620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116066, 33.286213, 39.652699>,  <43.038681, 33.092541, 39.533947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116066, 33.286213, 39.652699>,  <43.245045, 33.609001, 39.850620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116066, 33.286213, 39.652699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344833, -0.586944, 0.732520,
		-0.881544, 0.065572, 0.467527,
		-0.322445, -0.806967, -0.494806,
		43.019333, 33.044121, 39.504257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692135, 33.248108, 40.232418>,  <43.245045, 33.609001, 39.850620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692135, 33.248108, 40.232418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934872, 33.033848, 39.997532>,  <43.080513, 32.905293, 39.856602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934872, 33.033848, 39.997532>,  <42.692135, 33.248108, 40.232418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934872, 33.033848, 39.997532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458997, -0.366989, 0.809099,
		-0.648897, -0.760524, 0.023159,
		0.606840, -0.535652, -0.587216,
		43.116924, 32.873154, 39.821365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645321, 32.448624, 40.381958>,  <42.692135, 33.248108, 40.232418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645321, 32.448624, 40.381958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992348, 32.566193, 40.221493>,  <43.200565, 32.636734, 40.125214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992348, 32.566193, 40.221493>,  <42.645321, 32.448624, 40.381958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992348, 32.566193, 40.221493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491110, -0.379307, 0.784179,
		0.078324, -0.877346, -0.473424,
		0.867569, 0.293923, -0.401165,
		43.252617, 32.654369, 40.101143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059906, 32.099052, 40.830429>,  <42.645321, 32.448624, 40.381958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059906, 32.099052, 40.830429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339504, 32.267700, 40.599380>,  <43.507263, 32.368889, 40.460751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339504, 32.267700, 40.599380>,  <43.059906, 32.099052, 40.830429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339504, 32.267700, 40.599380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713556, -0.464696, 0.524305,
		-0.047361, -0.778650, -0.625669,
		0.698995, 0.421618, -0.577619,
		43.549202, 32.394184, 40.426094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384190, 31.711946, 40.299522>,  <43.059906, 32.099052, 40.830429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384190, 31.711946, 40.299522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.658566, 31.972813, 40.428616>,  <43.823193, 32.129333, 40.506073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.658566, 31.972813, 40.428616>,  <43.384190, 31.711946, 40.299522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658566, 31.972813, 40.428616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546468, -0.754566, 0.363323,
		0.480472, -0.072855, -0.873978,
		0.685944, 0.652167, 0.322735,
		43.864349, 32.168465, 40.525436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.043816, 31.600178, 39.983242>,  <43.384190, 31.711946, 40.299522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.043816, 31.600178, 39.983242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044334, 31.734180, 40.360126>,  <44.044647, 31.814583, 40.586258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044334, 31.734180, 40.360126>,  <44.043816, 31.600178, 39.983242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.044334, 31.734180, 40.360126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474533, -0.829580, 0.294305,
		0.880237, 0.446731, -0.160048,
		0.001297, 0.335006, 0.942215,
		44.044724, 31.834682, 40.642792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750851, 32.108742, 39.576916>,  <44.043816, 31.600178, 39.983242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750851, 32.108742, 39.576916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362564, 32.110584, 39.672989>,  <43.129593, 32.111691, 39.730633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362564, 32.110584, 39.672989>,  <43.750851, 32.108742, 39.576916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362564, 32.110584, 39.672989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171411, 0.687209, -0.705948,
		-0.168303, -0.726445, -0.666297,
		-0.970717, 0.004602, 0.240180,
		43.071350, 32.111965, 39.745041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.283550, 31.947050, 38.967545>,  <43.750851, 32.108742, 39.576916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.283550, 31.947050, 38.967545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115456, 32.195999, 39.231682>,  <43.014599, 32.345367, 39.390163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115456, 32.195999, 39.231682>,  <43.283550, 31.947050, 38.967545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115456, 32.195999, 39.231682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264403, 0.612162, -0.745218,
		-0.868041, -0.487763, -0.092694,
		-0.420233, 0.622371, 0.660347,
		42.989388, 32.382710, 39.429787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594341, 32.056889, 38.755402>,  <43.283550, 31.947050, 38.967545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594341, 32.056889, 38.755402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721313, 32.355812, 38.988903>,  <42.797497, 32.535164, 39.129005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721313, 32.355812, 38.988903>,  <42.594341, 32.056889, 38.755402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721313, 32.355812, 38.988903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372541, 0.664374, -0.647935,
		-0.872037, -0.011796, 0.489297,
		0.317433, 0.747307, 0.583754,
		42.816544, 32.580006, 39.164028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002487, 32.390064, 38.886421>,  <42.594341, 32.056889, 38.755402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002487, 32.390064, 38.886421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277145, 32.668720, 38.969578>,  <42.441940, 32.835915, 39.019474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277145, 32.668720, 38.969578>,  <42.002487, 32.390064, 38.886421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277145, 32.668720, 38.969578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549939, 0.684757, -0.478200,
		-0.475489, 0.214023, 0.853290,
		0.686642, 0.696636, 0.207894,
		42.483139, 32.877712, 39.031944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697968, 32.932079, 39.290188>,  <42.002487, 32.390064, 38.886421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697968, 32.932079, 39.290188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013489, 33.103004, 39.113464>,  <42.202801, 33.205559, 39.007431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013489, 33.103004, 39.113464>,  <41.697968, 32.932079, 39.290188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013489, 33.103004, 39.113464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566270, 0.784751, -0.252001,
		0.239026, 0.448961, 0.860988,
		0.788799, 0.427317, -0.441809,
		42.250130, 33.231201, 38.980923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630417, 33.661957, 39.354504>,  <41.697968, 32.932079, 39.290188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630417, 33.661957, 39.354504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888767, 33.652420, 39.049274>,  <42.043777, 33.646698, 38.866138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888767, 33.652420, 39.049274>,  <41.630417, 33.661957, 39.354504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888767, 33.652420, 39.049274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328939, 0.893289, -0.306324,
		0.688945, 0.448851, 0.569111,
		0.645874, -0.023837, -0.763072,
		42.082531, 33.645267, 38.820354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774548, 34.344204, 39.300865>,  <41.630417, 33.661957, 39.354504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774548, 34.344204, 39.300865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897236, 34.190685, 38.952469>,  <41.970848, 34.098576, 38.743431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897236, 34.190685, 38.952469>,  <41.774548, 34.344204, 39.300865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897236, 34.190685, 38.952469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356414, 0.802206, -0.478993,
		0.882549, 0.457350, 0.109261,
		0.306717, -0.383793, -0.870992,
		41.989250, 34.075546, 38.691170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118019, 34.857948, 39.021694>,  <41.774548, 34.344204, 39.300865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118019, 34.857948, 39.021694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041023, 34.623898, 38.706589>,  <41.994827, 34.483467, 38.517525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041023, 34.623898, 38.706589>,  <42.118019, 34.857948, 39.021694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041023, 34.623898, 38.706589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352564, 0.790412, -0.500948,
		0.915777, 0.181312, -0.358438,
		-0.192486, -0.585129, -0.787765,
		41.983276, 34.448360, 38.470261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670368, 35.090134, 38.553505>,  <42.118019, 34.857948, 39.021694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670368, 35.090134, 38.553505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462791, 34.800491, 38.371792>,  <42.338245, 34.626705, 38.262764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462791, 34.800491, 38.371792>,  <42.670368, 35.090134, 38.553505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462791, 34.800491, 38.371792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027885, 0.545497, -0.837649,
		0.854352, -0.422027, -0.303275,
		-0.518946, -0.724104, -0.454279,
		42.307106, 34.583260, 38.235508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938263, 34.844967, 37.979008>,  <42.670368, 35.090134, 38.553505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938263, 34.844967, 37.979008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565865, 34.720657, 37.902401>,  <42.342426, 34.646072, 37.856438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565865, 34.720657, 37.902401>,  <42.938263, 34.844967, 37.979008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565865, 34.720657, 37.902401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026521, 0.580828, -0.813594,
		0.364076, -0.752370, -0.548988,
		-0.930991, -0.310770, -0.191512,
		42.286568, 34.627426, 37.844948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781208, 34.678055, 37.186909>,  <42.938263, 34.844967, 37.979008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781208, 34.678055, 37.186909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405109, 34.730816, 37.312477>,  <42.179451, 34.762474, 37.387817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405109, 34.730816, 37.312477>,  <42.781208, 34.678055, 37.186909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405109, 34.730816, 37.312477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254968, 0.338319, -0.905832,
		-0.225689, -0.931741, -0.284470,
		-0.940242, 0.131906, 0.313919,
		42.123035, 34.770386, 37.406654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375053, 34.432041, 36.607876>,  <42.781208, 34.678055, 37.186909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375053, 34.432041, 36.607876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141315, 34.676090, 36.821903>,  <42.001072, 34.822517, 36.950317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141315, 34.676090, 36.821903>,  <42.375053, 34.432041, 36.607876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141315, 34.676090, 36.821903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396207, 0.360921, -0.844249,
		-0.708208, -0.705330, 0.030831,
		-0.584347, 0.610119, 0.535064,
		41.966011, 34.859127, 36.982422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130829, 34.933079, 36.147362>,  <42.375053, 34.432041, 36.607876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130829, 34.933079, 36.147362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877785, 34.982262, 36.453220>,  <41.725960, 35.011772, 36.636734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877785, 34.982262, 36.453220>,  <42.130829, 34.933079, 36.147362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877785, 34.982262, 36.453220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463576, 0.730792, -0.501039,
		-0.620404, -0.671435, -0.405307,
		-0.632610, 0.122956, 0.764648,
		41.688004, 35.019150, 36.682613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437637, 34.829124, 35.885094>,  <42.130829, 34.933079, 36.147362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437637, 34.829124, 35.885094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431229, 35.086952, 36.190845>,  <41.427383, 35.241650, 36.374294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431229, 35.086952, 36.190845>,  <41.437637, 34.829124, 35.885094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431229, 35.086952, 36.190845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543830, 0.635891, -0.547624,
		-0.839043, -0.424465, 0.340348,
		-0.016023, 0.644571, 0.764377,
		41.426422, 35.280323, 36.420158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692749, 34.862907, 36.147659>,  <41.437637, 34.829124, 35.885094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692749, 34.862907, 36.147659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925797, 35.187698, 36.161831>,  <41.065624, 35.382572, 36.170334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925797, 35.187698, 36.161831>,  <40.692749, 34.862907, 36.147659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925797, 35.187698, 36.161831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586887, 0.450467, -0.672788,
		-0.562246, 0.371185, 0.738987,
		0.582618, 0.811974, 0.035429,
		41.100582, 35.431290, 36.172459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267120, 35.355869, 36.311478>,  <40.692749, 34.862907, 36.147659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267120, 35.355869, 36.311478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580143, 35.553532, 36.160000>,  <40.767956, 35.672131, 36.069115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580143, 35.553532, 36.160000>,  <40.267120, 35.355869, 36.311478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580143, 35.553532, 36.160000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616266, 0.528451, -0.583914,
		-0.088424, 0.690324, 0.718076,
		0.782558, 0.494158, -0.378696,
		40.814911, 35.701778, 36.046391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979332, 36.026249, 36.176048>,  <40.267120, 35.355869, 36.311478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979332, 36.026249, 36.176048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321217, 36.019268, 35.968521>,  <40.526348, 36.015079, 35.844006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321217, 36.019268, 35.968521>,  <39.979332, 36.026249, 36.176048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321217, 36.019268, 35.968521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428857, 0.539399, -0.724659,
		0.292497, 0.841870, 0.453543,
		0.854709, -0.017456, -0.518814,
		40.577629, 36.014030, 35.812878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208359, 36.745842, 36.101517>,  <39.979332, 36.026249, 36.176048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208359, 36.745842, 36.101517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339348, 36.515186, 35.802116>,  <40.417942, 36.376793, 35.622475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339348, 36.515186, 35.802116>,  <40.208359, 36.745842, 36.101517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339348, 36.515186, 35.802116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428096, 0.615658, -0.661589,
		0.842315, 0.537083, -0.045243,
		0.327474, -0.576635, -0.748501,
		40.437592, 36.342197, 35.577564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602364, 37.188820, 35.714104>,  <40.208359, 36.745842, 36.101517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602364, 37.188820, 35.714104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442059, 36.886108, 35.507538>,  <40.345875, 36.704483, 35.383598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442059, 36.886108, 35.507538>,  <40.602364, 37.188820, 35.714104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442059, 36.886108, 35.507538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390451, 0.650985, -0.650973,
		0.828815, -0.059254, -0.556376,
		-0.400765, -0.756774, -0.516410,
		40.321831, 36.659077, 35.352615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590088, 37.413647, 34.985096>,  <40.602364, 37.188820, 35.714104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590088, 37.413647, 34.985096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361263, 37.085682, 34.976162>,  <40.223969, 36.888905, 34.970802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361263, 37.085682, 34.976162>,  <40.590088, 37.413647, 34.985096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361263, 37.085682, 34.976162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612371, 0.445059, -0.653394,
		0.545668, -0.360097, -0.756688,
		-0.572056, -0.819910, -0.022342,
		40.189648, 36.839710, 34.969460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511242, 37.301476, 34.284504>,  <40.590088, 37.413647, 34.985096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511242, 37.301476, 34.284504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188457, 37.124607, 34.441116>,  <39.994785, 37.018486, 34.535084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188457, 37.124607, 34.441116>,  <40.511242, 37.301476, 34.284504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188457, 37.124607, 34.441116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582566, 0.486948, -0.650767,
		0.097096, -0.753237, -0.650543,
		-0.806963, -0.442171, 0.391530,
		39.946369, 36.991955, 34.558575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570740, 38.058155, 34.331093>,  <40.511242, 37.301476, 34.284504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570740, 38.058155, 34.331093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296646, 38.322273, 34.208153>,  <40.132191, 38.480743, 34.134388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296646, 38.322273, 34.208153>,  <40.570740, 38.058155, 34.331093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296646, 38.322273, 34.208153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478986, 0.726456, 0.492782,
		0.548657, 0.190456, -0.814065,
		-0.685236, 0.660294, -0.307349,
		40.091076, 38.520363, 34.115948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946487, 38.623756, 34.001747>,  <40.570740, 38.058155, 34.331093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946487, 38.623756, 34.001747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591679, 38.742519, 34.143188>,  <40.378792, 38.813778, 34.228054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591679, 38.742519, 34.143188>,  <40.946487, 38.623756, 34.001747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591679, 38.742519, 34.143188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430231, 0.809490, 0.399534,
		-0.167614, 0.506528, -0.845775,
		-0.887021, 0.296911, 0.353606,
		40.325573, 38.831593, 34.249271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468872, 38.590939, 33.543396>,  <40.946487, 38.623756, 34.001747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468872, 38.590939, 33.543396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566811, 38.961555, 33.657635>,  <41.625576, 39.183926, 33.726177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566811, 38.961555, 33.657635>,  <41.468872, 38.590939, 33.543396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566811, 38.961555, 33.657635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953366, -0.176466, -0.244851,
		-0.176466, 0.332235, -0.926542,
		0.244851, 0.926542, 0.285601,
		41.640266, 39.239517, 33.743317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777874, 39.147190, 33.002655>,  <41.468872, 38.590939, 33.543396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777874, 39.147190, 33.002655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919724, 39.185200, 33.374722>,  <42.004833, 39.208004, 33.597961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919724, 39.185200, 33.374722>,  <41.777874, 39.147190, 33.002655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919724, 39.185200, 33.374722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910797, -0.260030, -0.320677,
		0.211399, 0.960914, -0.178760,
		0.354626, 0.095024, 0.930167,
		42.026112, 39.213707, 33.653770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375031, 39.619068, 33.105827>,  <41.777874, 39.147190, 33.002655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375031, 39.619068, 33.105827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373775, 39.316925, 33.367950>,  <42.373024, 39.135639, 33.525223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373775, 39.316925, 33.367950>,  <42.375031, 39.619068, 33.105827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373775, 39.316925, 33.367950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955818, -0.194891, -0.220068,
		0.293943, 0.625665, 0.722593,
		-0.003137, -0.755355, 0.655309,
		42.372833, 39.090317, 33.564545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880928, 39.714703, 33.657204>,  <42.375031, 39.619068, 33.105827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880928, 39.714703, 33.657204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.823368, 39.332355, 33.554752>,  <42.788834, 39.102947, 33.493282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.823368, 39.332355, 33.554752>,  <42.880928, 39.714703, 33.657204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.823368, 39.332355, 33.554752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982396, -0.106828, -0.153248,
		0.119124, -0.273672, 0.954418,
		-0.143898, -0.955872, -0.256129,
		42.780197, 39.045593, 33.477913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222477, 39.316998, 34.107765>,  <42.880928, 39.714703, 33.657204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222477, 39.316998, 34.107765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199490, 39.132107, 33.753807>,  <43.185696, 39.021172, 33.541431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199490, 39.132107, 33.753807>,  <43.222477, 39.316998, 34.107765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199490, 39.132107, 33.753807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998347, -0.025511, -0.051511,
		0.001235, -0.886395, 0.462928,
		-0.057469, -0.462226, -0.884898,
		43.182247, 38.993439, 33.488338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.734280, 38.801182, 34.086182>,  <43.222477, 39.316998, 34.107765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.734280, 38.801182, 34.086182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.668850, 38.916393, 33.708763>,  <43.629593, 38.985519, 33.482311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.668850, 38.916393, 33.708763>,  <43.734280, 38.801182, 34.086182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.668850, 38.916393, 33.708763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949857, -0.212372, -0.229500,
		-0.266486, -0.933775, -0.238850,
		-0.163577, 0.288031, -0.943547,
		43.619778, 39.002804, 33.425697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014118, 38.276886, 33.692806>,  <43.734280, 38.801182, 34.086182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014118, 38.276886, 33.692806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989208, 38.599461, 33.457596>,  <43.974262, 38.793007, 33.316467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989208, 38.599461, 33.457596>,  <44.014118, 38.276886, 33.692806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989208, 38.599461, 33.457596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979680, -0.063160, -0.190364,
		-0.190657, -0.587935, -0.786119,
		-0.062271, 0.806439, -0.588030,
		43.970528, 38.841393, 33.281185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.236336, 38.066528, 32.971951>,  <44.014118, 38.276886, 33.692806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.236336, 38.066528, 32.971951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317139, 38.433578, 33.108864>,  <44.365620, 38.653809, 33.191010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317139, 38.433578, 33.108864>,  <44.236336, 38.066528, 32.971951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317139, 38.433578, 33.108864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966038, -0.129185, -0.223789,
		-0.161137, 0.375860, -0.912559,
		0.202003, 0.917627, 0.342279,
		44.377739, 38.708866, 33.211548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.763214, 38.353771, 32.510838>,  <44.236336, 38.066528, 32.971951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.763214, 38.353771, 32.510838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.781151, 38.523708, 32.872501>,  <44.791912, 38.625671, 33.089500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.781151, 38.523708, 32.872501>,  <44.763214, 38.353771, 32.510838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781151, 38.523708, 32.872501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995615, -0.093384, -0.005498,
		0.082098, 0.900437, -0.427168,
		0.044841, 0.424843, 0.904156,
		44.794601, 38.651161, 33.143749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.081154, 37.634949, 32.375175>,  <44.763214, 38.353771, 32.510838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.081154, 37.634949, 32.375175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.463879, 37.692322, 32.274029>,  <45.693512, 37.726746, 32.213341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.463879, 37.692322, 32.274029>,  <45.081154, 37.634949, 32.375175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.463879, 37.692322, 32.274029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252187, -0.842218, 0.476520,
		-0.144618, -0.519708, -0.842015,
		0.956811, 0.143432, -0.252864,
		45.750923, 37.735352, 32.198170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.183475, 36.942795, 32.151970>,  <45.081154, 37.634949, 32.375175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.183475, 36.942795, 32.151970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484566, 37.157158, 32.304916>,  <45.665218, 37.285774, 32.396687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484566, 37.157158, 32.304916>,  <45.183475, 36.942795, 32.151970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484566, 37.157158, 32.304916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371954, -0.825424, 0.424647,
		0.543188, -0.177419, -0.820651,
		0.752726, 0.535908, 0.382369,
		45.710384, 37.317932, 32.419628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.510277, 36.396282, 32.285007>,  <45.183475, 36.942795, 32.151970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.510277, 36.396282, 32.285007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.718880, 36.686382, 32.464802>,  <45.844040, 36.860443, 32.572678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.718880, 36.686382, 32.464802>,  <45.510277, 36.396282, 32.285007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.718880, 36.686382, 32.464802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608946, -0.685364, 0.399325,
		0.597674, 0.065462, -0.799062,
		0.521508, 0.725252, 0.449487,
		45.875332, 36.903957, 32.599648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.932076, 36.030231, 32.680145>,  <45.510277, 36.396282, 32.285007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.932076, 36.030231, 32.680145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.096256, 36.378780, 32.787651>,  <46.194763, 36.587910, 32.852154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.096256, 36.378780, 32.787651>,  <45.932076, 36.030231, 32.680145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.096256, 36.378780, 32.787651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575496, -0.476156, 0.664890,
		0.707343, -0.118232, -0.696912,
		0.410450, 0.871376, 0.268764,
		46.219391, 36.640194, 32.868279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.511936, 35.907318, 32.973026>,  <45.932076, 36.030231, 32.680145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.511936, 35.907318, 32.973026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.462780, 36.261047, 33.153194>,  <46.433289, 36.473286, 33.261295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.462780, 36.261047, 33.153194>,  <46.511936, 35.907318, 32.973026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.462780, 36.261047, 33.153194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733673, -0.224679, 0.641283,
		0.668298, 0.409267, -0.621190,
		-0.122888, 0.884319, 0.450421,
		46.425915, 36.526344, 33.288322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.159645, 36.142910, 33.163628>,  <46.511936, 35.907318, 32.973026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.159645, 36.142910, 33.163628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892078, 36.284855, 33.424892>,  <46.731537, 36.370022, 33.581654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892078, 36.284855, 33.424892>,  <47.159645, 36.142910, 33.163628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892078, 36.284855, 33.424892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647055, -0.154538, 0.746617,
		0.365885, 0.922058, -0.126242,
		-0.668915, 0.354862, 0.653166,
		46.691402, 36.391312, 33.620842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.488503, 36.538029, 33.646847>,  <47.159645, 36.142910, 33.163628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.488503, 36.538029, 33.646847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.174541, 36.391102, 33.846447>,  <46.986164, 36.302944, 33.966206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.174541, 36.391102, 33.846447>,  <47.488503, 36.538029, 33.646847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.174541, 36.391102, 33.846447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594574, -0.219868, 0.773395,
		-0.174370, 0.903733, 0.390975,
		-0.784906, -0.367320, 0.498998,
		46.939072, 36.280907, 33.996147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.348267, 36.614826, 34.442570>,  <47.488503, 36.538029, 33.646847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.348267, 36.614826, 34.442570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.207584, 36.258705, 34.326870>,  <47.123177, 36.045033, 34.257450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.207584, 36.258705, 34.326870>,  <47.348267, 36.614826, 34.442570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.207584, 36.258705, 34.326870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638349, -0.454101, 0.621532,
		-0.684700, 0.033954, 0.728033,
		-0.351704, -0.890303, -0.289248,
		47.102074, 35.991615, 34.240097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.212307, 36.278336, 35.034218>,  <47.348267, 36.614826, 34.442570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.212307, 36.278336, 35.034218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.312378, 36.044167, 34.725754>,  <47.372421, 35.903664, 34.540676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.312378, 36.044167, 34.725754>,  <47.212307, 36.278336, 35.034218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.312378, 36.044167, 34.725754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632362, -0.504335, 0.588017,
		-0.733164, -0.634761, 0.244028,
		0.250179, -0.585427, -0.771159,
		47.387432, 35.868538, 34.494408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.427887, 35.695267, 35.458481>,  <47.212307, 36.278336, 35.034218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.427887, 35.695267, 35.458481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.555637, 35.657719, 35.081295>,  <47.632286, 35.635189, 34.854984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.555637, 35.657719, 35.081295>,  <47.427887, 35.695267, 35.458481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.555637, 35.657719, 35.081295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751369, -0.581278, 0.312346,
		-0.577447, -0.808272, -0.115114,
		0.319373, -0.093870, -0.942968,
		47.651447, 35.629559, 34.798405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.364773, 34.951485, 35.343895>,  <47.427887, 35.695267, 35.458481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.364773, 34.951485, 35.343895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.628555, 35.177837, 35.145947>,  <47.786823, 35.313648, 35.027176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.628555, 35.177837, 35.145947>,  <47.364773, 34.951485, 35.343895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.628555, 35.177837, 35.145947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748477, -0.555546, 0.362149,
		-0.069992, -0.609221, -0.789906,
		0.659458, 0.565878, -0.494871,
		47.826393, 35.347599, 34.997486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.324162, 40.003357, 26.091455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.047508, 39.773464, 25.916494>,  <37.881516, 39.635529, 25.811518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.047508, 39.773464, 25.916494>,  <38.324162, 40.003357, 26.091455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047508, 39.773464, 25.916494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050524, -0.565628, 0.823111,
		-0.720476, 0.591393, 0.362172,
		-0.691637, -0.574734, -0.437401,
		37.840015, 39.601044, 25.785275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866505, 39.889725, 26.580357>,  <38.324162, 40.003357, 26.091455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866505, 39.889725, 26.580357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.761005, 39.578468, 26.352343>,  <37.697704, 39.391716, 26.215534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.761005, 39.578468, 26.352343>,  <37.866505, 39.889725, 26.580357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761005, 39.578468, 26.352343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065001, -0.603953, 0.794365,
		-0.962399, 0.172460, 0.209871,
		-0.263748, -0.778138, -0.570033,
		37.681881, 39.345028, 26.181332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333424, 39.587162, 26.928764>,  <37.866505, 39.889725, 26.580357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333424, 39.587162, 26.928764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.491886, 39.311218, 26.686394>,  <37.586964, 39.145653, 26.540972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.491886, 39.311218, 26.686394>,  <37.333424, 39.587162, 26.928764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491886, 39.311218, 26.686394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036803, -0.647457, 0.761212,
		-0.917444, -0.323862, -0.231108,
		0.396160, -0.689864, -0.605925,
		37.610733, 39.104259, 26.504616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987404, 38.978287, 27.106216>,  <37.333424, 39.587162, 26.928764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987404, 38.978287, 27.106216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.316135, 38.851490, 26.916853>,  <37.513374, 38.775414, 26.803234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.316135, 38.851490, 26.916853>,  <36.987404, 38.978287, 27.106216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316135, 38.851490, 26.916853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164903, -0.663017, 0.730216,
		-0.545347, -0.678180, -0.492615,
		0.821829, -0.316987, -0.473408,
		37.562683, 38.756393, 26.774830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927322, 38.340004, 27.032457>,  <36.987404, 38.978287, 27.106216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927322, 38.340004, 27.032457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.324844, 38.361557, 26.993559>,  <37.563358, 38.374489, 26.970221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.324844, 38.361557, 26.993559>,  <36.927322, 38.340004, 27.032457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324844, 38.361557, 26.993559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099005, -0.826859, 0.553626,
		-0.050579, -0.559822, -0.827068,
		0.993801, 0.053882, -0.097247,
		37.622986, 38.377720, 26.964384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141521, 37.664761, 27.103945>,  <36.927322, 38.340004, 27.032457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141521, 37.664761, 27.103945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.463444, 37.894554, 27.163633>,  <37.656597, 38.032429, 27.199446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.463444, 37.894554, 27.163633>,  <37.141521, 37.664761, 27.103945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463444, 37.894554, 27.163633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333638, -0.645784, 0.686767,
		0.490898, -0.502926, -0.711396,
		0.804801, 0.574481, 0.149219,
		37.704884, 38.066898, 27.208399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676727, 37.198238, 27.026058>,  <37.141521, 37.664761, 27.103945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676727, 37.198238, 27.026058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813931, 37.505573, 27.242205>,  <37.896252, 37.689976, 27.371893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813931, 37.505573, 27.242205>,  <37.676727, 37.198238, 27.026058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813931, 37.505573, 27.242205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274515, -0.632148, 0.724590,
		0.898324, -0.100203, -0.427754,
		0.343010, 0.768342, 0.540366,
		37.916832, 37.736076, 27.404314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349163, 36.956673, 27.272638>,  <37.676727, 37.198238, 27.026058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349163, 36.956673, 27.272638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.232685, 37.249165, 27.519379>,  <38.162800, 37.424660, 27.667423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.232685, 37.249165, 27.519379>,  <38.349163, 36.956673, 27.272638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232685, 37.249165, 27.519379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131803, -0.607977, 0.782938,
		0.947540, 0.309291, 0.080662,
		-0.291196, 0.731234, 0.616849,
		38.145325, 37.468536, 27.704433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685505, 36.810768, 27.940668>,  <38.349163, 36.956673, 27.272638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685505, 36.810768, 27.940668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.399757, 37.068771, 28.049213>,  <38.228310, 37.223576, 28.114342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.399757, 37.068771, 28.049213>,  <38.685505, 36.810768, 27.940668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399757, 37.068771, 28.049213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078900, -0.311075, 0.947104,
		0.695309, 0.697991, 0.171331,
		-0.714367, 0.645012, 0.271365,
		38.185448, 37.262276, 28.130623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915272, 37.010429, 28.565834>,  <38.685505, 36.810768, 27.940668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915272, 37.010429, 28.565834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520679, 37.075336, 28.556707>,  <38.283924, 37.114281, 28.551231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520679, 37.075336, 28.556707>,  <38.915272, 37.010429, 28.565834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520679, 37.075336, 28.556707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086206, -0.395498, 0.914412,
		0.139352, 0.904020, 0.404140,
		-0.986483, 0.162264, -0.022819,
		38.224735, 37.124016, 28.549862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791618, 37.254364, 29.196608>,  <38.915272, 37.010429, 28.565834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791618, 37.254364, 29.196608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.426624, 37.135395, 29.084246>,  <38.207626, 37.064014, 29.016829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.426624, 37.135395, 29.084246>,  <38.791618, 37.254364, 29.196608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426624, 37.135395, 29.084246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164532, -0.361860, 0.917598,
		-0.374561, 0.883515, 0.281258,
		-0.912487, -0.297421, -0.280905,
		38.152878, 37.046169, 28.999973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407993, 37.383743, 29.825912>,  <38.791618, 37.254364, 29.196608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407993, 37.383743, 29.825912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.195141, 37.135906, 29.595108>,  <38.067429, 36.987206, 29.456625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.195141, 37.135906, 29.595108>,  <38.407993, 37.383743, 29.825912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195141, 37.135906, 29.595108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288960, -0.507688, 0.811637,
		-0.795825, 0.598632, 0.091120,
		-0.532132, -0.619591, -0.577012,
		38.035500, 36.950027, 29.422005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720795, 37.448685, 30.105936>,  <38.407993, 37.383743, 29.825912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720795, 37.448685, 30.105936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778397, 37.094650, 29.928904>,  <37.812958, 36.882229, 29.822685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778397, 37.094650, 29.928904>,  <37.720795, 37.448685, 30.105936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778397, 37.094650, 29.928904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330595, -0.464576, 0.821508,
		-0.932721, 0.028010, -0.359510,
		0.144009, -0.885090, -0.442579,
		37.821598, 36.829124, 29.796129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250954, 37.072914, 30.501429>,  <37.720795, 37.448685, 30.105936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250954, 37.072914, 30.501429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456676, 36.790154, 30.307199>,  <37.580109, 36.620499, 30.190662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456676, 36.790154, 30.307199>,  <37.250954, 37.072914, 30.501429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456676, 36.790154, 30.307199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165349, -0.637309, 0.752660,
		-0.841515, -0.306810, -0.444657,
		0.514307, -0.706898, -0.485575,
		37.610970, 36.578083, 30.161528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784203, 36.531723, 30.507111>,  <37.250954, 37.072914, 30.501429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784203, 36.531723, 30.507111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124588, 36.336861, 30.428593>,  <37.328819, 36.219944, 30.381481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124588, 36.336861, 30.428593>,  <36.784203, 36.531723, 30.507111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124588, 36.336861, 30.428593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229462, -0.681023, 0.695381,
		-0.472442, -0.546704, -0.691313,
		0.850967, -0.487157, -0.196296,
		37.379879, 36.190712, 30.369703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662029, 35.832310, 30.577148>,  <36.784203, 36.531723, 30.507111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662029, 35.832310, 30.577148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.053940, 35.889252, 30.633392>,  <37.289085, 35.923416, 30.667139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.053940, 35.889252, 30.633392>,  <36.662029, 35.832310, 30.577148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053940, 35.889252, 30.633392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003194, -0.691507, 0.722363,
		0.200064, -0.708204, -0.677068,
		0.979778, 0.142356, 0.140608,
		37.347874, 35.931957, 30.675575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908894, 35.160713, 30.576042>,  <36.662029, 35.832310, 30.577148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908894, 35.160713, 30.576042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.178776, 35.382671, 30.770716>,  <37.340706, 35.515846, 30.887520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.178776, 35.382671, 30.770716>,  <36.908894, 35.160713, 30.576042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178776, 35.382671, 30.770716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202046, -0.773052, 0.601305,
		0.709894, -0.307371, -0.633698,
		0.674705, 0.554899, 0.486682,
		37.381187, 35.549141, 30.916719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595161, 34.747936, 30.647917>,  <36.908894, 35.160713, 30.576042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595161, 34.747936, 30.647917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.602634, 35.034492, 30.926895>,  <37.607117, 35.206429, 31.094282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.602634, 35.034492, 30.926895>,  <37.595161, 34.747936, 30.647917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602634, 35.034492, 30.926895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237428, -0.680791, 0.692929,
		0.971225, 0.152650, -0.182809,
		0.018679, 0.716395, 0.697445,
		37.608238, 35.249413, 31.136129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046917, 34.420238, 31.117788>,  <37.595161, 34.747936, 30.647917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046917, 34.420238, 31.117788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.871284, 34.713314, 31.325781>,  <37.765903, 34.889160, 31.450577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.871284, 34.713314, 31.325781>,  <38.046917, 34.420238, 31.117788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871284, 34.713314, 31.325781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051729, -0.557178, 0.828780,
		0.896957, 0.390800, 0.206745,
		-0.439081, 0.732686, 0.519980,
		37.739559, 34.933121, 31.481775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473160, 34.541904, 31.655178>,  <38.046917, 34.420238, 31.117788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473160, 34.541904, 31.655178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.113567, 34.677391, 31.766251>,  <37.897812, 34.758682, 31.832895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.113567, 34.677391, 31.766251>,  <38.473160, 34.541904, 31.655178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113567, 34.677391, 31.766251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091636, -0.474512, 0.875466,
		0.428296, 0.812473, 0.395538,
		-0.898980, 0.338713, 0.277683,
		37.843872, 34.779003, 31.849556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590050, 34.801384, 32.362968>,  <38.473160, 34.541904, 31.655178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590050, 34.801384, 32.362968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196129, 34.743454, 32.324635>,  <37.959774, 34.708694, 32.301636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196129, 34.743454, 32.324635>,  <38.590050, 34.801384, 32.362968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196129, 34.743454, 32.324635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026096, -0.422154, 0.906149,
		-0.171689, 0.894881, 0.411960,
		-0.984806, -0.144825, -0.095832,
		37.900688, 34.700005, 32.295883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250244, 35.134464, 32.627548>,  <38.590050, 34.801384, 32.362968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250244, 35.134464, 32.627548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.435825, 35.436180, 32.813362>,  <39.547173, 35.617210, 32.924850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.435825, 35.436180, 32.813362>,  <39.250244, 35.134464, 32.627548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435825, 35.436180, 32.813362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052769, 0.546991, -0.835473,
		-0.884289, 0.363104, 0.293580,
		0.463949, 0.754292, 0.464537,
		39.575008, 35.662468, 32.952724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878616, 35.760292, 32.542019>,  <39.250244, 35.134464, 32.627548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878616, 35.760292, 32.542019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.260422, 35.854763, 32.614815>,  <39.489506, 35.911446, 32.658493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.260422, 35.854763, 32.614815>,  <38.878616, 35.760292, 32.542019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260422, 35.854763, 32.614815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050962, 0.472147, -0.880045,
		-0.293774, 0.849291, 0.438635,
		0.954515, 0.236181, 0.181987,
		39.546776, 35.925617, 32.669411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015385, 36.518864, 32.337299>,  <38.878616, 35.760292, 32.542019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015385, 36.518864, 32.337299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.395103, 36.394737, 32.357464>,  <39.622932, 36.320259, 32.369560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.395103, 36.394737, 32.357464>,  <39.015385, 36.518864, 32.337299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395103, 36.394737, 32.357464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211090, 0.510325, -0.833672,
		0.232982, 0.802041, 0.549954,
		0.949295, -0.310320, 0.050407,
		39.679893, 36.301640, 32.372585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483227, 37.098476, 32.299137>,  <39.015385, 36.518864, 32.337299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483227, 37.098476, 32.299137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.662857, 36.782795, 32.131573>,  <39.770634, 36.593388, 32.031033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.662857, 36.782795, 32.131573>,  <39.483227, 37.098476, 32.299137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662857, 36.782795, 32.131573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306665, 0.576509, -0.757360,
		0.839218, 0.211646, 0.500918,
		0.449075, -0.789204, -0.418913,
		39.797581, 36.546032, 32.005898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176689, 37.295025, 32.136395>,  <39.483227, 37.098476, 32.299137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176689, 37.295025, 32.136395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.119228, 36.970943, 31.909088>,  <40.084751, 36.776493, 31.772703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.119228, 36.970943, 31.909088>,  <40.176689, 37.295025, 32.136395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119228, 36.970943, 31.909088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484787, 0.442996, -0.754146,
		0.862755, -0.383824, 0.329140,
		-0.143651, -0.810206, -0.568270,
		40.076134, 36.727882, 31.738607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752419, 37.263302, 31.719759>,  <40.176689, 37.295025, 32.136395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752419, 37.263302, 31.719759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.507679, 37.009029, 31.531485>,  <40.360836, 36.856464, 31.418520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.507679, 37.009029, 31.531485>,  <40.752419, 37.263302, 31.719759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507679, 37.009029, 31.531485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304235, 0.360159, -0.881888,
		0.730123, -0.682783, -0.026967,
		-0.611851, -0.635683, -0.470687,
		40.324123, 36.818325, 31.390278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091103, 37.090931, 31.163031>,  <40.752419, 37.263302, 31.719759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091103, 37.090931, 31.163031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.744808, 36.927868, 31.046881>,  <40.537033, 36.830029, 30.977190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.744808, 36.927868, 31.046881>,  <41.091103, 37.090931, 31.163031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744808, 36.927868, 31.046881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169531, 0.307024, -0.936480,
		0.470918, -0.859970, -0.196690,
		-0.865734, -0.407661, -0.290375,
		40.485088, 36.805569, 30.959768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140060, 36.525558, 30.554296>,  <41.091103, 37.090931, 31.163031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140060, 36.525558, 30.554296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.784527, 36.708847, 30.555422>,  <40.571205, 36.818821, 30.556097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.784527, 36.708847, 30.555422>,  <41.140060, 36.525558, 30.554296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784527, 36.708847, 30.555422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150966, 0.298619, -0.942357,
		-0.432646, -0.837175, -0.334598,
		-0.888834, 0.458220, 0.002811,
		40.517876, 36.846313, 30.556265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854439, 36.260571, 29.988386>,  <41.140060, 36.525558, 30.554296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854439, 36.260571, 29.988386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.641327, 36.590405, 30.064495>,  <40.513458, 36.788307, 30.110161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.641327, 36.590405, 30.064495>,  <40.854439, 36.260571, 29.988386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641327, 36.590405, 30.064495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111403, 0.291223, -0.950147,
		-0.838890, -0.485021, -0.247019,
		-0.532779, 0.824587, 0.190271,
		40.481495, 36.837780, 30.121576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545208, 36.401928, 29.291800>,  <40.854439, 36.260571, 29.988386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545208, 36.401928, 29.291800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.483299, 36.733276, 29.507149>,  <40.446156, 36.932087, 29.636358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.483299, 36.733276, 29.507149>,  <40.545208, 36.401928, 29.291800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483299, 36.733276, 29.507149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077819, 0.553469, -0.829226,
		-0.984881, -0.086441, -0.150122,
		-0.154767, 0.828372, 0.538375,
		40.436871, 36.981789, 29.668661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941086, 36.764400, 29.001076>,  <40.545208, 36.401928, 29.291800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941086, 36.764400, 29.001076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.146221, 37.045776, 29.197918>,  <40.269302, 37.214603, 29.316023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.146221, 37.045776, 29.197918>,  <39.941086, 36.764400, 29.001076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146221, 37.045776, 29.197918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099061, 0.617882, -0.780006,
		-0.852752, 0.351267, 0.386556,
		0.512836, 0.703444, 0.492103,
		40.300072, 37.256809, 29.345549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562012, 37.420113, 29.072002>,  <39.941086, 36.764400, 29.001076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562012, 37.420113, 29.072002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.944763, 37.532780, 29.100439>,  <40.174412, 37.600380, 29.117502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.944763, 37.532780, 29.100439>,  <39.562012, 37.420113, 29.072002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944763, 37.532780, 29.100439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175704, 0.756039, -0.630503,
		-0.231341, 0.590821, 0.772924,
		0.956875, 0.281667, 0.071093,
		40.231827, 37.617279, 29.121767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520969, 38.211342, 29.237614>,  <39.562012, 37.420113, 29.072002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520969, 38.211342, 29.237614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.890839, 38.120949, 29.115034>,  <40.112759, 38.066711, 29.041487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.890839, 38.120949, 29.115034>,  <39.520969, 38.211342, 29.237614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890839, 38.120949, 29.115034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044173, 0.863063, -0.503161,
		0.378192, 0.451722, 0.808033,
		0.924673, -0.225984, -0.306450,
		40.168240, 38.053154, 29.023100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833473, 38.848942, 29.404758>,  <39.520969, 38.211342, 29.237614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833473, 38.848942, 29.404758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.088703, 38.656082, 29.164627>,  <40.241840, 38.540367, 29.020548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.088703, 38.656082, 29.164627>,  <39.833473, 38.848942, 29.404758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088703, 38.656082, 29.164627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243229, 0.865968, -0.436967,
		0.730548, 0.132800, 0.669824,
		0.638075, -0.482146, -0.600330,
		40.280125, 38.511440, 28.984528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349884, 39.283829, 29.259068>,  <39.833473, 38.848942, 29.404758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349884, 39.283829, 29.259068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.404785, 39.036053, 28.949886>,  <40.437725, 38.887386, 28.764378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.404785, 39.036053, 28.949886>,  <40.349884, 39.283829, 29.259068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404785, 39.036053, 28.949886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241540, 0.777710, -0.580368,
		0.960636, -0.107044, 0.256360,
		0.137249, -0.619443, -0.772951,
		40.445961, 38.850220, 28.718000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858841, 39.599529, 28.853237>,  <40.349884, 39.283829, 29.259068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858841, 39.599529, 28.853237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.725700, 39.324524, 28.595081>,  <40.645817, 39.159519, 28.440187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.725700, 39.324524, 28.595081>,  <40.858841, 39.599529, 28.853237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725700, 39.324524, 28.595081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191996, 0.620669, -0.760202,
		0.923225, -0.376950, -0.074592,
		-0.332855, -0.687516, -0.645391,
		40.625843, 39.118271, 28.401464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383953, 39.440281, 28.318987>,  <40.858841, 39.599529, 28.853237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383953, 39.440281, 28.318987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.022228, 39.373569, 28.161810>,  <40.805195, 39.333542, 28.067503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.022228, 39.373569, 28.161810>,  <41.383953, 39.440281, 28.318987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022228, 39.373569, 28.161810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242189, 0.557565, -0.794019,
		0.351514, -0.813208, -0.463822,
		-0.904313, -0.166776, -0.392942,
		40.750935, 39.323536, 28.043928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474480, 39.277260, 27.645027>,  <41.383953, 39.440281, 28.318987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474480, 39.277260, 27.645027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.104065, 39.415920, 27.704737>,  <40.881817, 39.499115, 27.740562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.104065, 39.415920, 27.704737>,  <41.474480, 39.277260, 27.645027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104065, 39.415920, 27.704737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175295, 0.745292, -0.643282,
		-0.334244, -0.569539, -0.750937,
		-0.926041, 0.346649, 0.149272,
		40.826252, 39.519917, 27.749517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200294, 39.302139, 26.987707>,  <41.474480, 39.277260, 27.645027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200294, 39.302139, 26.987707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.937813, 39.547989, 27.162809>,  <40.780323, 39.695499, 27.267870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.937813, 39.547989, 27.162809>,  <41.200294, 39.302139, 26.987707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937813, 39.547989, 27.162809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065199, 0.531780, -0.844369,
		-0.751758, -0.582623, -0.308885,
		-0.656208, 0.614622, 0.437756,
		40.740952, 39.732376, 27.294136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.579247, 39.414097, 26.377121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.530621, 39.665493, 26.684423>,  <40.501446, 39.816330, 26.868805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.530621, 39.665493, 26.684423>,  <40.579247, 39.414097, 26.377121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530621, 39.665493, 26.684423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468691, 0.645929, -0.602581,
		-0.874957, -0.433329, 0.216046,
		-0.121565, 0.628492, 0.768258,
		40.494152, 39.854042, 26.914902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950596, 39.595276, 26.282352>,  <40.579247, 39.414097, 26.377121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950596, 39.595276, 26.282352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.083881, 39.907883, 26.493334>,  <40.163853, 40.095448, 26.619923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.083881, 39.907883, 26.493334>,  <39.950596, 39.595276, 26.282352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083881, 39.907883, 26.493334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397423, 0.623718, -0.673076,
		-0.855000, 0.014654, 0.518421,
		0.333212, 0.781512, 0.527455,
		40.183846, 40.142338, 26.651569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345173, 40.112717, 26.388693>,  <39.950596, 39.595276, 26.282352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345173, 40.112717, 26.388693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.698948, 40.295555, 26.426296>,  <39.911213, 40.405258, 26.448858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.698948, 40.295555, 26.426296>,  <39.345173, 40.112717, 26.388693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698948, 40.295555, 26.426296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323841, 0.746223, -0.581617,
		-0.336006, 0.483959, 0.808012,
		0.884436, 0.457094, 0.094010,
		39.964279, 40.432682, 26.454498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015369, 40.688347, 26.551981>,  <39.345173, 40.112717, 26.388693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015369, 40.688347, 26.551981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.394039, 40.749863, 26.438728>,  <39.621239, 40.786774, 26.370777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.394039, 40.749863, 26.438728>,  <39.015369, 40.688347, 26.551981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394039, 40.749863, 26.438728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308556, 0.685757, -0.659189,
		0.092784, 0.711397, 0.696638,
		0.946670, 0.153789, -0.283133,
		39.678040, 40.795998, 26.353788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076702, 41.345348, 26.620232>,  <39.015369, 40.688347, 26.551981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076702, 41.345348, 26.620232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377869, 41.249287, 26.375135>,  <39.558567, 41.191650, 26.228079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377869, 41.249287, 26.375135>,  <39.076702, 41.345348, 26.620232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377869, 41.249287, 26.375135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320561, 0.679304, -0.660141,
		0.574774, 0.693448, 0.434471,
		0.752912, -0.240157, -0.612738,
		39.603741, 41.177238, 26.191315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397408, 41.943970, 26.533960>,  <39.076702, 41.345348, 26.620232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397408, 41.943970, 26.533960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.473801, 41.686646, 26.237398>,  <39.519638, 41.532253, 26.059462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.473801, 41.686646, 26.237398>,  <39.397408, 41.943970, 26.533960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473801, 41.686646, 26.237398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333894, 0.667692, -0.665358,
		0.923060, 0.374625, -0.087276,
		0.190986, -0.643307, -0.741404,
		39.531097, 41.493652, 26.014977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576969, 42.297558, 25.988550>,  <39.397408, 41.943970, 26.533960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576969, 42.297558, 25.988550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.528770, 41.965042, 25.771502>,  <39.499851, 41.765533, 25.641273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.528770, 41.965042, 25.771502>,  <39.576969, 42.297558, 25.988550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528770, 41.965042, 25.771502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262027, 0.553852, -0.790310,
		0.957508, 0.046949, -0.284559,
		-0.120500, -0.831290, -0.542620,
		39.492622, 41.715656, 25.608715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989933, 42.367294, 25.360737>,  <39.576969, 42.297558, 25.988550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989933, 42.367294, 25.360737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.721809, 42.084145, 25.271656>,  <39.560936, 41.914253, 25.218208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.721809, 42.084145, 25.271656>,  <39.989933, 42.367294, 25.360737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721809, 42.084145, 25.271656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050616, 0.343016, -0.937965,
		0.740355, -0.617452, -0.265756,
		-0.670307, -0.707879, -0.222701,
		39.520718, 41.871780, 25.204845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178417, 42.123062, 24.755472>,  <39.989933, 42.367294, 25.360737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178417, 42.123062, 24.755472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.784485, 42.058857, 24.781849>,  <39.548126, 42.020332, 24.797674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.784485, 42.058857, 24.781849>,  <40.178417, 42.123062, 24.755472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784485, 42.058857, 24.781849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133652, 0.459245, -0.878198,
		0.110680, -0.873687, -0.473730,
		-0.984828, -0.160514, 0.065941,
		39.489037, 42.010704, 24.801632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053944, 41.934605, 24.112610>,  <40.178417, 42.123062, 24.755472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053944, 41.934605, 24.112610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.695175, 42.032761, 24.259752>,  <39.479916, 42.091656, 24.348038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.695175, 42.032761, 24.259752>,  <40.053944, 41.934605, 24.112610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695175, 42.032761, 24.259752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207843, 0.500316, -0.840527,
		-0.390306, -0.830340, -0.397739,
		-0.896918, 0.245395, 0.367857,
		39.426098, 42.106380, 24.370110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487152, 41.746494, 23.623508>,  <40.053944, 41.934605, 24.112610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487152, 41.746494, 23.623508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.346664, 42.040928, 23.854967>,  <39.262371, 42.217587, 23.993841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.346664, 42.040928, 23.854967>,  <39.487152, 41.746494, 23.623508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346664, 42.040928, 23.854967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371834, 0.457537, -0.807712,
		-0.859294, -0.498842, 0.113006,
		-0.351216, 0.736082, 0.578645,
		39.241299, 42.261753, 24.028561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881149, 41.837109, 23.337008>,  <39.487152, 41.746494, 23.623508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881149, 41.837109, 23.337008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.956520, 42.174747, 23.537806>,  <39.001743, 42.377331, 23.658285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.956520, 42.174747, 23.537806>,  <38.881149, 41.837109, 23.337008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956520, 42.174747, 23.537806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286011, 0.536159, -0.794186,
		-0.939518, 0.006067, 0.342445,
		0.188423, 0.844095, 0.501996,
		39.013046, 42.427975, 23.688404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155811, 42.303547, 23.374910>,  <38.881149, 41.837109, 23.337008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155811, 42.303547, 23.374910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.482075, 42.525433, 23.440626>,  <38.677834, 42.658566, 23.480057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.482075, 42.525433, 23.440626>,  <38.155811, 42.303547, 23.374910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482075, 42.525433, 23.440626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379657, 0.727510, -0.571480,
		-0.436532, 0.403759, 0.804002,
		0.815660, 0.554714, 0.164292,
		38.726772, 42.691845, 23.489914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915436, 42.967560, 23.375261>,  <38.155811, 42.303547, 23.374910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915436, 42.967560, 23.375261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.304813, 43.025784, 23.304581>,  <38.538441, 43.060719, 23.262173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.304813, 43.025784, 23.304581>,  <37.915436, 42.967560, 23.375261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304813, 43.025784, 23.304581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226187, 0.730682, -0.644161,
		0.035352, 0.667021, 0.744200,
		0.973442, 0.145556, -0.176703,
		38.596848, 43.069450, 23.251570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850399, 43.592556, 23.110788>,  <37.915436, 42.967560, 23.375261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850399, 43.592556, 23.110788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.218147, 43.476177, 23.004879>,  <38.438797, 43.406349, 22.941334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.218147, 43.476177, 23.004879>,  <37.850399, 43.592556, 23.110788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218147, 43.476177, 23.004879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000321, 0.673615, -0.739082,
		0.393386, 0.679407, 0.619397,
		0.919373, -0.290944, -0.264772,
		38.493958, 43.388893, 22.925447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326046, 44.164757, 23.139946>,  <37.850399, 43.592556, 23.110788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326046, 44.164757, 23.139946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.481781, 43.891457, 22.892855>,  <38.575222, 43.727478, 22.744600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.481781, 43.891457, 22.892855>,  <38.326046, 44.164757, 23.139946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481781, 43.891457, 22.892855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169374, 0.712313, -0.681119,
		0.905390, 0.160556, 0.393052,
		0.389334, -0.683251, -0.617728,
		38.598579, 43.686481, 22.707537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892071, 44.539356, 22.887630>,  <38.326046, 44.164757, 23.139946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892071, 44.539356, 22.887630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.790676, 44.240341, 22.642054>,  <38.729839, 44.060932, 22.494707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.790676, 44.240341, 22.642054>,  <38.892071, 44.539356, 22.887630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790676, 44.240341, 22.642054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047366, 0.624320, -0.779732,
		0.966178, -0.226732, -0.122849,
		-0.253487, -0.747541, -0.613944,
		38.714630, 44.016079, 22.457870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267712, 44.695370, 22.314713>,  <38.892071, 44.539356, 22.887630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267712, 44.695370, 22.314713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.017155, 44.420799, 22.166952>,  <38.866821, 44.256058, 22.078295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.017155, 44.420799, 22.166952>,  <39.267712, 44.695370, 22.314713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017155, 44.420799, 22.166952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086743, 0.409569, -0.908146,
		0.774668, -0.600897, -0.197008,
		-0.626391, -0.686423, -0.369403,
		38.829239, 44.214874, 22.056131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516605, 44.542992, 21.648518>,  <39.267712, 44.695370, 22.314713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516605, 44.542992, 21.648518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.129581, 44.441959, 21.646244>,  <38.897366, 44.381340, 21.644880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.129581, 44.441959, 21.646244>,  <39.516605, 44.542992, 21.648518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129581, 44.441959, 21.646244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101447, 0.409015, -0.906871,
		0.231382, -0.876875, -0.421369,
		-0.967559, -0.252580, -0.005682,
		38.839314, 44.366184, 21.644539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384315, 44.272430, 20.984152>,  <39.516605, 44.542992, 21.648518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384315, 44.272430, 20.984152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.024418, 44.354599, 21.138174>,  <38.808479, 44.403900, 21.230587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.024418, 44.354599, 21.138174>,  <39.384315, 44.272430, 20.984152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024418, 44.354599, 21.138174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248061, 0.485205, -0.838476,
		-0.359068, -0.849930, -0.385603,
		-0.899742, 0.205417, 0.385056,
		38.754494, 44.416225, 21.253691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829582, 44.009182, 20.541092>,  <39.384315, 44.272430, 20.984152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829582, 44.009182, 20.541092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.700455, 44.331825, 20.739149>,  <38.622978, 44.525414, 20.857985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.700455, 44.331825, 20.739149>,  <38.829582, 44.009182, 20.541092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700455, 44.331825, 20.739149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327363, 0.395705, -0.858051,
		-0.888045, -0.439084, 0.136315,
		-0.322815, 0.806612, 0.495144,
		38.603611, 44.573811, 20.887691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242737, 44.053749, 20.322672>,  <38.829582, 44.009182, 20.541092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242737, 44.053749, 20.322672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.333408, 44.414490, 20.469795>,  <38.387810, 44.630932, 20.558069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.333408, 44.414490, 20.469795>,  <38.242737, 44.053749, 20.322672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333408, 44.414490, 20.469795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146943, 0.404983, -0.902439,
		-0.962821, 0.150517, 0.224321,
		0.226679, 0.901850, 0.367809,
		38.401413, 44.685043, 20.580137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731876, 44.510254, 20.028521>,  <38.242737, 44.053749, 20.322672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731876, 44.510254, 20.028521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057121, 44.711689, 20.145304>,  <38.252270, 44.832550, 20.215374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057121, 44.711689, 20.145304>,  <37.731876, 44.510254, 20.028521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057121, 44.711689, 20.145304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034476, 0.459017, -0.887759,
		-0.581079, 0.731917, 0.355873,
		0.813117, 0.503589, 0.291958,
		38.301056, 44.862766, 20.232891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437588, 44.239407, 19.415890>,  <37.731876, 44.510254, 20.028521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437588, 44.239407, 19.415890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833912, 44.204330, 19.457100>,  <38.071705, 44.183285, 19.481825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833912, 44.204330, 19.457100>,  <37.437588, 44.239407, 19.415890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833912, 44.204330, 19.457100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115443, 0.945048, -0.305873,
		-0.070542, 0.314954, 0.946482,
		0.990806, -0.087688, 0.103024,
		38.131153, 44.178024, 19.488007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034775, 43.643291, 19.218119>,  <37.437588, 44.239407, 19.415890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034775, 43.643291, 19.218119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.806393, 43.387070, 19.012711>,  <36.669365, 43.233337, 18.889465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.806393, 43.387070, 19.012711>,  <37.034775, 43.643291, 19.218119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806393, 43.387070, 19.012711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194711, -0.501998, 0.842666,
		-0.797559, 0.581110, 0.161894,
		-0.570952, -0.640554, -0.513522,
		36.635105, 43.194904, 18.858654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362923, 43.749226, 19.435852>,  <37.034775, 43.643291, 19.218119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362923, 43.749226, 19.435852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371559, 43.384972, 19.270792>,  <36.376740, 43.166420, 19.171755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371559, 43.384972, 19.270792>,  <36.362923, 43.749226, 19.435852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371559, 43.384972, 19.270792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268375, -0.402879, 0.875022,
		-0.963072, 0.091852, -0.253091,
		0.021592, -0.910633, -0.412652,
		36.378036, 43.111782, 19.146996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813572, 43.380272, 19.701288>,  <36.362923, 43.749226, 19.435852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813572, 43.380272, 19.701288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049023, 43.079136, 19.583471>,  <36.190292, 42.898457, 19.512781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049023, 43.079136, 19.583471>,  <35.813572, 43.380272, 19.701288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049023, 43.079136, 19.583471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204994, -0.491447, 0.846438,
		-0.781982, -0.437856, -0.443606,
		0.588627, -0.752836, -0.294545,
		36.225609, 42.853287, 19.495108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416107, 42.745136, 19.939779>,  <35.813572, 43.380272, 19.701288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416107, 42.745136, 19.939779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.789455, 42.617950, 19.873192>,  <36.013466, 42.541637, 19.833239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.789455, 42.617950, 19.873192>,  <35.416107, 42.745136, 19.939779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789455, 42.617950, 19.873192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073631, -0.284321, 0.955898,
		-0.351272, -0.904467, -0.241965,
		0.933374, -0.317964, -0.166471,
		36.069466, 42.522560, 19.823250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484005, 42.181572, 20.263628>,  <35.416107, 42.745136, 19.939779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484005, 42.181572, 20.263628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.877869, 42.233746, 20.217279>,  <36.114189, 42.265049, 20.189470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.877869, 42.233746, 20.217279>,  <35.484005, 42.181572, 20.263628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877869, 42.233746, 20.217279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168907, -0.546336, 0.820358,
		0.043699, -0.827348, -0.559987,
		0.984663, 0.130434, -0.115870,
		36.173267, 42.272877, 20.182518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773262, 41.535175, 20.453979>,  <35.484005, 42.181572, 20.263628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773262, 41.535175, 20.453979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.069603, 41.800655, 20.495222>,  <36.247410, 41.959946, 20.519968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.069603, 41.800655, 20.495222>,  <35.773262, 41.535175, 20.453979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069603, 41.800655, 20.495222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349426, -0.511953, 0.784733,
		0.573616, -0.545345, -0.611198,
		0.740855, 0.663704, 0.103107,
		36.291859, 41.999767, 20.526154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338970, 41.183071, 20.565693>,  <35.773262, 41.535175, 20.453979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338970, 41.183071, 20.565693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.405281, 41.552792, 20.703203>,  <36.445068, 41.774624, 20.785709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.405281, 41.552792, 20.703203>,  <36.338970, 41.183071, 20.565693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405281, 41.552792, 20.703203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237788, -0.375778, 0.895683,
		0.957066, -0.066736, -0.282083,
		0.165775, 0.924304, 0.343775,
		36.455013, 41.830082, 20.806335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035942, 41.122257, 20.801746>,  <36.338970, 41.183071, 20.565693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035942, 41.122257, 20.801746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.857922, 41.435711, 20.975109>,  <36.751110, 41.623783, 21.079126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.857922, 41.435711, 20.975109>,  <37.035942, 41.122257, 20.801746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857922, 41.435711, 20.975109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260555, -0.349728, 0.899890,
		0.856762, 0.513424, -0.048533,
		-0.445052, 0.783636, 0.433409,
		36.724407, 41.670803, 21.105131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550465, 41.277607, 21.330921>,  <37.035942, 41.122257, 20.801746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550465, 41.277607, 21.330921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.226986, 41.480556, 21.449970>,  <37.032898, 41.602325, 21.521399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.226986, 41.480556, 21.449970>,  <37.550465, 41.277607, 21.330921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226986, 41.480556, 21.449970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301166, -0.077483, 0.950419,
		0.505282, 0.858233, -0.090145,
		-0.808696, 0.507378, 0.297621,
		36.984379, 41.632771, 21.539257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740002, 41.717293, 21.798931>,  <37.550465, 41.277607, 21.330921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740002, 41.717293, 21.798931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.348488, 41.679642, 21.871725>,  <37.113579, 41.657051, 21.915401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.348488, 41.679642, 21.871725>,  <37.740002, 41.717293, 21.798931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348488, 41.679642, 21.871725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197529, -0.197659, 0.960163,
		-0.054405, 0.975742, 0.212058,
		-0.978786, -0.094125, 0.181983,
		37.054852, 41.651405, 21.926319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553226, 42.186428, 22.469196>,  <37.740002, 41.717293, 21.798931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553226, 42.186428, 22.469196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281197, 41.899662, 22.407837>,  <37.117977, 41.727604, 22.371021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281197, 41.899662, 22.407837>,  <37.553226, 42.186428, 22.469196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281197, 41.899662, 22.407837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060697, -0.153460, 0.986289,
		-0.730623, 0.680065, 0.060851,
		-0.680079, -0.716912, -0.153399,
		37.077171, 41.684589, 22.361816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141335, 42.259052, 22.984310>,  <37.553226, 42.186428, 22.469196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141335, 42.259052, 22.984310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.090878, 41.877472, 22.875450>,  <37.060604, 41.648525, 22.810135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.090878, 41.877472, 22.875450>,  <37.141335, 42.259052, 22.984310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090878, 41.877472, 22.875450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032697, -0.270193, 0.962251,
		-0.991473, 0.130283, 0.002892,
		-0.126146, -0.953951, -0.272149,
		37.053032, 41.591286, 22.793806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693539, 42.009583, 23.548437>,  <37.141335, 42.259052, 22.984310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693539, 42.009583, 23.548437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.831047, 41.687767, 23.354721>,  <36.913551, 41.494678, 23.238491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.831047, 41.687767, 23.354721>,  <36.693539, 42.009583, 23.548437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831047, 41.687767, 23.354721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005463, -0.514000, 0.857773,
		-0.939037, -0.297525, -0.172304,
		0.343773, -0.804539, -0.484290,
		36.934177, 41.446404, 23.209435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391403, 41.307194, 23.870764>,  <36.693539, 42.009583, 23.548437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391403, 41.307194, 23.870764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.721371, 41.185741, 23.680054>,  <36.919350, 41.112869, 23.565628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.721371, 41.185741, 23.680054>,  <36.391403, 41.307194, 23.870764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721371, 41.185741, 23.680054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295982, -0.486566, 0.821978,
		-0.481536, -0.819193, -0.311523,
		0.824935, -0.303607, -0.476765,
		36.968845, 41.094650, 23.537022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416458, 40.539612, 23.851801>,  <36.391403, 41.307194, 23.870764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416458, 40.539612, 23.851801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798347, 40.637646, 23.784357>,  <37.027481, 40.696468, 23.743891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798347, 40.637646, 23.784357>,  <36.416458, 40.539612, 23.851801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798347, 40.637646, 23.784357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289436, -0.634324, 0.716841,
		0.068735, -0.733189, -0.676543,
		0.954727, 0.245087, -0.168611,
		37.084766, 40.711170, 23.733774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751564, 39.938309, 23.862249>,  <36.416458, 40.539612, 23.851801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751564, 39.938309, 23.862249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.059834, 40.183044, 23.933491>,  <37.244793, 40.329884, 23.976236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.059834, 40.183044, 23.933491>,  <36.751564, 39.938309, 23.862249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059834, 40.183044, 23.933491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326142, -0.618834, 0.714616,
		0.547447, -0.492646, -0.676463,
		0.770671, 0.611837, 0.178106,
		37.291035, 40.366596, 23.986923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331680, 39.623306, 23.858614>,  <36.751564, 39.938309, 23.862249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331680, 39.623306, 23.858614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.457458, 39.941601, 24.065659>,  <37.532925, 40.132580, 24.189884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.457458, 39.941601, 24.065659>,  <37.331680, 39.623306, 23.858614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457458, 39.941601, 24.065659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282321, -0.598988, 0.749339,
		0.906321, -0.089495, -0.413004,
		0.314446, 0.795741, 0.517610,
		37.551792, 40.180325, 24.220942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022385, 39.493763, 24.077881>,  <37.331680, 39.623306, 23.858614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022385, 39.493763, 24.077881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872768, 39.770592, 24.324825>,  <37.782997, 39.936687, 24.472992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872768, 39.770592, 24.324825>,  <38.022385, 39.493763, 24.077881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872768, 39.770592, 24.324825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439353, -0.454007, 0.775143,
		0.816737, 0.561176, -0.134243,
		-0.374045, 0.692068, 0.617359,
		37.760555, 39.978210, 24.510033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485996, 39.589062, 24.527880>,  <38.022385, 39.493763, 24.077881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485996, 39.589062, 24.527880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.162579, 39.714783, 24.726864>,  <37.968529, 39.790215, 24.846254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.162579, 39.714783, 24.726864>,  <38.485996, 39.589062, 24.527880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162579, 39.714783, 24.726864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287131, -0.527187, 0.799768,
		0.513626, 0.789485, 0.336008,
		-0.808545, 0.314303, 0.497463,
		37.920013, 39.809074, 24.876102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723392, 39.845070, 25.174147>,  <38.485996, 39.589062, 24.527880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723392, 39.845070, 25.174147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.341473, 39.728874, 25.199362>,  <38.112320, 39.659157, 25.214491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.341473, 39.728874, 25.199362>,  <38.723392, 39.845070, 25.174147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341473, 39.728874, 25.199362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222395, -0.557414, 0.799894,
		-0.197220, 0.777759, 0.596821,
		-0.954801, -0.290485, 0.063037,
		38.055031, 39.641727, 25.218273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.486435, 37.841927, 28.770607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.100929, 37.899681, 28.860332>,  <40.869625, 37.934334, 28.914167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.100929, 37.899681, 28.860332>,  <41.486435, 37.841927, 28.770607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100929, 37.899681, 28.860332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104532, -0.569211, 0.815520,
		0.245434, 0.809414, 0.533490,
		-0.963761, 0.144389, 0.224313,
		40.811802, 37.942997, 28.927626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451710, 37.938175, 29.496912>,  <41.486435, 37.841927, 28.770607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451710, 37.938175, 29.496912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.078945, 37.845882, 29.384987>,  <40.855286, 37.790504, 29.317831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.078945, 37.845882, 29.384987>,  <41.451710, 37.938175, 29.496912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078945, 37.845882, 29.384987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057922, -0.666932, 0.742863,
		-0.358023, 0.708493, 0.608159,
		-0.931915, -0.230736, -0.279814,
		40.799370, 37.776661, 29.301043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002159, 38.144093, 30.037037>,  <41.451710, 37.938175, 29.496912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002159, 38.144093, 30.037037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.802498, 37.865410, 29.830950>,  <40.682701, 37.698200, 29.707296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.802498, 37.865410, 29.830950>,  <41.002159, 38.144093, 30.037037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802498, 37.865410, 29.830950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144174, -0.519524, 0.842204,
		-0.854437, 0.494668, 0.158875,
		-0.499151, -0.696705, -0.515219,
		40.652752, 37.656399, 29.676384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312149, 38.091145, 30.363314>,  <41.002159, 38.144093, 30.037037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312149, 38.091145, 30.363314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.329685, 37.749660, 30.155750>,  <40.340206, 37.544769, 30.031212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.329685, 37.749660, 30.155750>,  <40.312149, 38.091145, 30.363314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329685, 37.749660, 30.155750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431500, -0.484643, 0.760874,
		-0.901047, 0.190548, -0.389623,
		0.043845, -0.853706, -0.518907,
		40.342838, 37.493549, 30.000078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661903, 37.802544, 30.374727>,  <40.312149, 38.091145, 30.363314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661903, 37.802544, 30.374727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.921005, 37.511002, 30.286022>,  <40.076466, 37.336075, 30.232800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.921005, 37.511002, 30.286022>,  <39.661903, 37.802544, 30.374727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921005, 37.511002, 30.286022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331253, -0.531577, 0.779550,
		-0.686067, -0.431496, -0.585768,
		0.647753, -0.728860, -0.221763,
		40.115330, 37.292343, 30.219494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317253, 37.196560, 30.467512>,  <39.661903, 37.802544, 30.374727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317253, 37.196560, 30.467512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.702343, 37.091419, 30.493017>,  <39.933399, 37.028336, 30.508320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.702343, 37.091419, 30.493017>,  <39.317253, 37.196560, 30.467512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702343, 37.091419, 30.493017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201812, -0.541129, 0.816365,
		-0.180075, -0.798806, -0.574006,
		0.962728, -0.262849, 0.063765,
		39.991161, 37.012566, 30.512146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300335, 36.504860, 30.661860>,  <39.317253, 37.196560, 30.467512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300335, 36.504860, 30.661860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.679142, 36.603458, 30.744221>,  <39.906425, 36.662617, 30.793636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.679142, 36.603458, 30.744221>,  <39.300335, 36.504860, 30.661860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679142, 36.603458, 30.744221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030424, -0.569352, 0.821531,
		0.319734, -0.784270, -0.531687,
		0.947019, 0.246496, 0.205901,
		39.963249, 36.677406, 30.805990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658287, 35.886856, 30.808640>,  <39.300335, 36.504860, 30.661860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658287, 35.886856, 30.808640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.872044, 36.174500, 30.986319>,  <40.000298, 36.347084, 31.092926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.872044, 36.174500, 30.986319>,  <39.658287, 35.886856, 30.808640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872044, 36.174500, 30.986319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038144, -0.545511, 0.837236,
		0.844377, -0.430466, -0.318945,
		0.534389, 0.719109, 0.444197,
		40.032360, 36.390232, 31.119577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167809, 35.573635, 31.125793>,  <39.658287, 35.886856, 30.808640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167809, 35.573635, 31.125793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.143112, 35.927841, 31.309988>,  <40.128296, 36.140366, 31.420506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.143112, 35.927841, 31.309988>,  <40.167809, 35.573635, 31.125793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143112, 35.927841, 31.309988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251765, -0.460266, 0.851334,
		0.965817, -0.063373, 0.251360,
		-0.061741, 0.885516, 0.460488,
		40.124592, 36.193497, 31.448133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479038, 35.455498, 31.724674>,  <40.167809, 35.573635, 31.125793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479038, 35.455498, 31.724674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.266937, 35.789207, 31.785097>,  <40.139675, 35.989433, 31.821350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.266937, 35.789207, 31.785097>,  <40.479038, 35.455498, 31.724674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266937, 35.789207, 31.785097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127293, -0.254486, 0.958662,
		0.838228, 0.489106, 0.241139,
		-0.530254, 0.834273, 0.151057,
		40.107861, 36.039490, 31.830414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809044, 35.773102, 32.224964>,  <40.479038, 35.455498, 31.724674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809044, 35.773102, 32.224964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.444340, 35.926315, 32.284264>,  <40.225517, 36.018242, 32.319843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.444340, 35.926315, 32.284264>,  <40.809044, 35.773102, 32.224964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444340, 35.926315, 32.284264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066852, -0.494530, 0.866586,
		0.405243, 0.780209, 0.476500,
		-0.911762, 0.383033, 0.148246,
		40.170811, 36.041225, 32.328739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784950, 36.011169, 32.956169>,  <40.809044, 35.773102, 32.224964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784950, 36.011169, 32.956169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.401997, 35.983025, 32.844128>,  <40.172222, 35.966137, 32.776901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.401997, 35.983025, 32.844128>,  <40.784950, 36.011169, 32.956169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401997, 35.983025, 32.844128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249018, -0.290131, 0.924020,
		-0.146279, 0.954397, 0.260247,
		-0.957388, -0.070359, -0.280102,
		40.114780, 35.961918, 32.760098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433712, 36.455433, 33.402149>,  <40.784950, 36.011169, 32.956169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433712, 36.455433, 33.402149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.183765, 36.178020, 33.258732>,  <40.033798, 36.011574, 33.172680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.183765, 36.178020, 33.258732>,  <40.433712, 36.455433, 33.402149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183765, 36.178020, 33.258732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355488, -0.156137, 0.921547,
		-0.695104, 0.703304, -0.148977,
		-0.624867, -0.693530, -0.358548,
		39.996304, 35.969963, 33.151169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835175, 36.637634, 33.739216>,  <40.433712, 36.455433, 33.402149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835175, 36.637634, 33.739216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.860489, 36.260456, 33.608467>,  <39.875679, 36.034149, 33.530018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.860489, 36.260456, 33.608467>,  <39.835175, 36.637634, 33.739216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860489, 36.260456, 33.608467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219033, -0.332667, 0.917255,
		-0.973663, 0.013544, -0.227591,
		0.063289, -0.942947, -0.326872,
		39.879475, 35.977573, 33.510406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286366, 36.525414, 33.300091>,  <39.835175, 36.637634, 33.739216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286366, 36.525414, 33.300091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.169895, 36.711826, 33.634285>,  <39.100014, 36.823673, 33.834801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.169895, 36.711826, 33.634285>,  <39.286366, 36.525414, 33.300091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169895, 36.711826, 33.634285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806662, 0.349904, -0.476303,
		-0.514311, -0.812638, 0.274048,
		-0.291171, 0.466032, 0.835484,
		39.082542, 36.851635, 33.884930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629463, 36.556923, 33.156548>,  <39.286366, 36.525414, 33.300091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629463, 36.556923, 33.156548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.677860, 36.855614, 33.418159>,  <38.706898, 37.034828, 33.575127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.677860, 36.855614, 33.418159>,  <38.629463, 36.556923, 33.156548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677860, 36.855614, 33.418159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704110, 0.528989, -0.473709,
		-0.699708, -0.403197, 0.589781,
		0.120989, 0.746728, 0.654033,
		38.714157, 37.079632, 33.614368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940025, 36.753441, 33.450092>,  <38.629463, 36.556923, 33.156548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940025, 36.753441, 33.450092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.178596, 37.067520, 33.516720>,  <38.321739, 37.255966, 33.556698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.178596, 37.067520, 33.516720>,  <37.940025, 36.753441, 33.450092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178596, 37.067520, 33.516720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652541, 0.595157, -0.469018,
		-0.467407, 0.171040, 0.867339,
		0.596424, 0.785196, 0.166570,
		38.357525, 37.303078, 33.566692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512592, 37.275101, 33.729927>,  <37.940025, 36.753441, 33.450092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512592, 37.275101, 33.729927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.828674, 37.476986, 33.590878>,  <38.018322, 37.598118, 33.507446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.828674, 37.476986, 33.590878>,  <37.512592, 37.275101, 33.729927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828674, 37.476986, 33.590878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608704, 0.580554, -0.540775,
		-0.071118, 0.638925, 0.765975,
		0.790204, 0.504711, -0.347628,
		38.065735, 37.628399, 33.486588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335526, 37.981339, 33.817375>,  <37.512592, 37.275101, 33.729927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335526, 37.981339, 33.817375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.634518, 37.971340, 33.551849>,  <37.813911, 37.965340, 33.392532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.634518, 37.971340, 33.551849>,  <37.335526, 37.981339, 33.817375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634518, 37.971340, 33.551849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592609, 0.426423, -0.683357,
		0.300148, 0.904178, 0.303929,
		0.747479, -0.024997, -0.663815,
		37.858761, 37.963840, 33.352703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235565, 38.557579, 33.592178>,  <37.335526, 37.981339, 33.817375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235565, 38.557579, 33.592178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.470119, 38.384384, 33.318340>,  <37.610851, 38.280468, 33.154037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.470119, 38.384384, 33.318340>,  <37.235565, 38.557579, 33.592178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470119, 38.384384, 33.318340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543052, 0.416962, -0.728860,
		0.601040, 0.799164, 0.009364,
		0.586383, -0.432989, -0.684599,
		37.646034, 38.254486, 33.112961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555233, 39.177795, 33.210793>,  <37.235565, 38.557579, 33.592178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555233, 39.177795, 33.210793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.558247, 38.849911, 32.981701>,  <37.560055, 38.653179, 32.844246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.558247, 38.849911, 32.981701>,  <37.555233, 39.177795, 33.210793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558247, 38.849911, 32.981701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425420, 0.515704, -0.743685,
		0.904965, 0.249256, -0.344834,
		0.007536, -0.819708, -0.572732,
		37.560509, 38.604000, 32.809883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894997, 39.528362, 32.540699>,  <37.555233, 39.177795, 33.210793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894997, 39.528362, 32.540699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.704437, 39.185452, 32.462601>,  <37.590103, 38.979706, 32.415741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.704437, 39.185452, 32.462601>,  <37.894997, 39.528362, 32.540699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704437, 39.185452, 32.462601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294419, 0.364787, -0.883316,
		0.828469, -0.363327, -0.426183,
		-0.476399, -0.857277, -0.195245,
		37.561516, 38.928268, 32.404026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082253, 39.268829, 31.861000>,  <37.894997, 39.528362, 32.540699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082253, 39.268829, 31.861000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.729355, 39.094761, 31.932858>,  <37.517616, 38.990322, 31.975973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.729355, 39.094761, 31.932858>,  <38.082253, 39.268829, 31.861000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729355, 39.094761, 31.932858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348599, 0.347369, -0.870525,
		0.316412, -0.830645, -0.458162,
		-0.882249, -0.435160, 0.179650,
		37.464680, 38.964211, 31.986752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931225, 38.806030, 31.339558>,  <38.082253, 39.268829, 31.861000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931225, 38.806030, 31.339558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.582668, 38.925957, 31.494883>,  <37.373535, 38.997913, 31.588078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.582668, 38.925957, 31.494883>,  <37.931225, 38.806030, 31.339558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582668, 38.925957, 31.494883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320636, 0.251017, -0.913336,
		-0.371304, -0.920381, -0.122603,
		-0.871393, 0.299815, 0.388311,
		37.321251, 39.015900, 31.611376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456589, 38.501251, 30.880131>,  <37.931225, 38.806030, 31.339558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456589, 38.501251, 30.880131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.244400, 38.774624, 31.080738>,  <37.117088, 38.938648, 31.201101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.244400, 38.774624, 31.080738>,  <37.456589, 38.501251, 30.880131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244400, 38.774624, 31.080738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388842, 0.329531, -0.860355,
		-0.753262, -0.651404, 0.090942,
		-0.530470, 0.683434, 0.501517,
		37.085258, 38.979652, 31.231194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779896, 38.477032, 30.533648>,  <37.456589, 38.501251, 30.880131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779896, 38.477032, 30.533648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.799118, 38.826607, 30.727114>,  <36.810650, 39.036350, 30.843193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.799118, 38.826607, 30.727114>,  <36.779896, 38.477032, 30.533648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799118, 38.826607, 30.727114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582671, 0.417826, -0.697076,
		-0.811286, -0.248318, 0.529295,
		0.048057, 0.873933, 0.483664,
		36.813534, 39.088787, 30.872213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035370, 38.811661, 30.545040>,  <36.779896, 38.477032, 30.533648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035370, 38.811661, 30.545040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.279739, 39.123928, 30.597691>,  <36.426361, 39.311291, 30.629280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.279739, 39.123928, 30.597691>,  <36.035370, 38.811661, 30.545040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279739, 39.123928, 30.597691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469260, 0.490977, -0.733987,
		-0.637629, 0.386641, 0.666286,
		0.610921, 0.780673, 0.131626,
		36.463017, 39.358131, 30.637178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621651, 39.458626, 30.507481>,  <36.035370, 38.811661, 30.545040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621651, 39.458626, 30.507481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.997810, 39.581448, 30.449020>,  <36.223507, 39.655140, 30.413944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.997810, 39.581448, 30.449020>,  <35.621651, 39.458626, 30.507481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997810, 39.581448, 30.449020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270041, 0.413070, -0.869742,
		-0.206684, 0.857376, 0.471369,
		0.940404, 0.307051, -0.146152,
		36.279930, 39.673561, 30.405174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988434, 39.493172, 30.928179>,  <35.621651, 39.458626, 30.507481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988434, 39.493172, 30.928179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.606030, 39.424152, 30.833298>,  <34.376587, 39.382740, 30.776369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.606030, 39.424152, 30.833298>,  <34.988434, 39.493172, 30.928179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606030, 39.424152, 30.833298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065625, -0.914004, 0.400363,
		-0.285885, 0.367186, 0.885124,
		-0.956014, -0.172544, -0.237203,
		34.319225, 39.372391, 30.762136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742378, 39.172977, 31.483166>,  <34.988434, 39.493172, 30.928179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742378, 39.172977, 31.483166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.480801, 39.083965, 31.193935>,  <34.323853, 39.030560, 31.020397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.480801, 39.083965, 31.193935>,  <34.742378, 39.172977, 31.483166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480801, 39.083965, 31.193935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046006, -0.942297, 0.331602,
		-0.755142, 0.250115, 0.605972,
		-0.653945, -0.222528, -0.723075,
		34.284618, 39.017208, 30.977013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233093, 38.754433, 31.845387>,  <34.742378, 39.172977, 31.483166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233093, 38.754433, 31.845387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.166874, 38.673504, 31.459297>,  <34.127140, 38.624947, 31.227644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.166874, 38.673504, 31.459297>,  <34.233093, 38.754433, 31.845387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166874, 38.673504, 31.459297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103491, -0.976890, 0.187017,
		-0.980756, -0.068931, 0.182666,
		-0.165553, -0.202322, -0.965224,
		34.117207, 38.612808, 31.169729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714344, 38.135811, 31.787058>,  <34.233093, 38.754433, 31.845387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714344, 38.135811, 31.787058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.917152, 38.122543, 31.442541>,  <34.038837, 38.114582, 31.235830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.917152, 38.122543, 31.442541>,  <33.714344, 38.135811, 31.787058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917152, 38.122543, 31.442541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120667, -0.986688, 0.109028,
		-0.853443, -0.159210, -0.496273,
		0.507025, -0.033165, -0.861293,
		34.069260, 38.112595, 31.184153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282757, 37.721806, 31.345715>,  <33.714344, 38.135811, 31.787058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282757, 37.721806, 31.345715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.659313, 37.701378, 31.212345>,  <33.885246, 37.689121, 31.132324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.659313, 37.701378, 31.212345>,  <33.282757, 37.721806, 31.345715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659313, 37.701378, 31.212345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020171, -0.995227, 0.095481,
		-0.336708, -0.083160, -0.937930,
		0.941393, -0.051069, -0.333423,
		33.941730, 37.686058, 31.112318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280975, 37.340679, 30.650223>,  <33.282757, 37.721806, 31.345715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280975, 37.340679, 30.650223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.661457, 37.349583, 30.773329>,  <33.889748, 37.354923, 30.847193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.661457, 37.349583, 30.773329>,  <33.280975, 37.340679, 30.650223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661457, 37.349583, 30.773329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072850, -0.985397, -0.153903,
		0.299844, 0.168813, -0.938933,
		0.951203, 0.022255, 0.307763,
		33.946819, 37.356258, 30.865658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533062, 36.784992, 30.212372>,  <33.280975, 37.340679, 30.650223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533062, 36.784992, 30.212372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.815689, 36.854473, 30.486771>,  <33.985264, 36.896164, 30.651411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.815689, 36.854473, 30.486771>,  <33.533062, 36.784992, 30.212372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815689, 36.854473, 30.486771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275377, -0.960486, -0.040425,
		0.651870, 0.217471, -0.726479,
		0.706564, 0.173704, 0.685998,
		34.027657, 36.906586, 30.692570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115150, 36.483795, 30.037619>,  <33.533062, 36.784992, 30.212372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115150, 36.483795, 30.037619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.167686, 36.519386, 30.432552>,  <34.199207, 36.540741, 30.669514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.167686, 36.519386, 30.432552>,  <34.115150, 36.483795, 30.037619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167686, 36.519386, 30.432552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179830, -0.981578, 0.064542,
		0.974890, 0.169076, -0.144921,
		0.131339, 0.088983, 0.987336,
		34.207088, 36.546082, 30.728754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649204, 36.023533, 30.093279>,  <34.115150, 36.483795, 30.037619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649204, 36.023533, 30.093279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.488106, 36.076954, 30.455484>,  <34.391445, 36.109005, 30.672808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.488106, 36.076954, 30.455484>,  <34.649204, 36.023533, 30.093279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488106, 36.076954, 30.455484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163879, -0.962791, 0.214889,
		0.900520, 0.234941, 0.365878,
		-0.402750, 0.133552, 0.905514,
		34.367279, 36.117020, 30.727139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061501, 35.572510, 30.520916>,  <34.649204, 36.023533, 30.093279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061501, 35.572510, 30.520916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.769917, 35.662041, 30.779690>,  <34.594967, 35.715759, 30.934954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.769917, 35.662041, 30.779690>,  <35.061501, 35.572510, 30.520916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769917, 35.662041, 30.779690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112567, -0.892980, 0.435793,
		0.675242, 0.390498, 0.625747,
		-0.728956, 0.223827, 0.646935,
		34.551231, 35.729187, 30.973770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269295, 35.513000, 31.270069>,  <35.061501, 35.572510, 30.520916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269295, 35.513000, 31.270069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.873985, 35.453629, 31.255779>,  <34.636799, 35.418007, 31.247206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.873985, 35.453629, 31.255779>,  <35.269295, 35.513000, 31.270069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873985, 35.453629, 31.255779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120951, -0.904027, 0.410007,
		-0.093151, 0.400880, 0.911382,
		-0.988278, -0.148425, -0.035724,
		34.577503, 35.409100, 31.245062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008995, 35.049046, 31.860643>,  <35.269295, 35.513000, 31.270069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008995, 35.049046, 31.860643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.719509, 35.018444, 31.586304>,  <34.545818, 35.000084, 31.421700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.719509, 35.018444, 31.586304>,  <35.008995, 35.049046, 31.860643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719509, 35.018444, 31.586304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000508, -0.993895, 0.110327,
		-0.690101, 0.079497, 0.719334,
		-0.723713, -0.076502, -0.685848,
		34.502396, 34.995495, 31.380548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.263767, 42.311962, 28.502768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054363, 42.054642, 28.279301>,  <33.928722, 41.900249, 28.145220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054363, 42.054642, 28.279301>,  <34.263767, 42.311962, 28.502768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054363, 42.054642, 28.279301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223468, -0.529073, 0.818623,
		-0.822194, 0.553399, 0.133218,
		-0.523507, -0.643297, -0.558668,
		33.897312, 41.861652, 28.111700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667259, 42.232742, 28.870089>,  <34.263767, 42.311962, 28.502768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667259, 42.232742, 28.870089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641491, 41.902943, 28.645218>,  <33.626030, 41.705063, 28.510296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641491, 41.902943, 28.645218>,  <33.667259, 42.232742, 28.870089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641491, 41.902943, 28.645218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176196, -0.545099, 0.819647,
		-0.982245, 0.151857, -0.110157,
		-0.064423, -0.824504, -0.562177,
		33.622166, 41.655590, 28.476564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050266, 41.899239, 29.086819>,  <33.667259, 42.232742, 28.870089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050266, 41.899239, 29.086819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301128, 41.638405, 28.916428>,  <33.451645, 41.481903, 28.814192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301128, 41.638405, 28.916428>,  <33.050266, 41.899239, 29.086819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301128, 41.638405, 28.916428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100289, -0.609955, 0.786065,
		-0.772413, -0.450262, -0.447932,
		0.627153, -0.652089, -0.425980,
		33.489273, 41.442780, 28.788633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752655, 41.237892, 29.322693>,  <33.050266, 41.899239, 29.086819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752655, 41.237892, 29.322693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117878, 41.161381, 29.178616>,  <33.337013, 41.115475, 29.092169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117878, 41.161381, 29.178616>,  <32.752655, 41.237892, 29.322693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117878, 41.161381, 29.178616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116382, -0.724253, 0.679641,
		-0.390873, -0.662471, -0.639023,
		0.913057, -0.191283, -0.360191,
		33.391796, 41.103996, 29.070559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834045, 40.504375, 29.224073>,  <32.752655, 41.237892, 29.322693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834045, 40.504375, 29.224073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205559, 40.643917, 29.274145>,  <33.428467, 40.727642, 29.304188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205559, 40.643917, 29.274145>,  <32.834045, 40.504375, 29.224073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205559, 40.643917, 29.274145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218042, -0.787410, 0.576580,
		0.299710, -0.508221, -0.807394,
		0.928780, 0.348852, 0.125181,
		33.484192, 40.748573, 29.311699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331375, 39.938541, 29.198708>,  <32.834045, 40.504375, 29.224073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331375, 39.938541, 29.198708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543865, 40.215916, 29.393419>,  <33.671360, 40.382339, 29.510246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543865, 40.215916, 29.393419>,  <33.331375, 39.938541, 29.198708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543865, 40.215916, 29.393419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407378, -0.712837, 0.570883,
		0.742862, -0.104964, -0.661165,
		0.531224, 0.693431, 0.486779,
		33.703232, 40.423946, 29.539454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036629, 39.819004, 29.028702>,  <33.331375, 39.938541, 29.198708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036629, 39.819004, 29.028702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998440, 40.006313, 29.380066>,  <33.975525, 40.118698, 29.590885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998440, 40.006313, 29.380066>,  <34.036629, 39.819004, 29.028702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998440, 40.006313, 29.380066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279208, -0.834420, 0.475169,
		0.955472, 0.290626, -0.051078,
		-0.095476, 0.468273, 0.878410,
		33.969795, 40.146793, 29.643589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505314, 39.528553, 29.420612>,  <34.036629, 39.819004, 29.028702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505314, 39.528553, 29.420612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309868, 39.715858, 29.715090>,  <34.192600, 39.828243, 29.891777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309868, 39.715858, 29.715090>,  <34.505314, 39.528553, 29.420612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309868, 39.715858, 29.715090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106308, -0.805538, 0.582930,
		0.866001, 0.363090, 0.343815,
		-0.488612, 0.468267, 0.736196,
		34.163284, 39.856339, 29.935949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954933, 39.519890, 29.988279>,  <34.505314, 39.528553, 29.420612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954933, 39.519890, 29.988279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589043, 39.557838, 30.145390>,  <34.369507, 39.580608, 30.239655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589043, 39.557838, 30.145390>,  <34.954933, 39.519890, 29.988279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589043, 39.557838, 30.145390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180246, -0.774175, 0.606766,
		0.361639, 0.625822, 0.691060,
		-0.914729, 0.094870, 0.392773,
		34.314625, 39.586300, 30.263222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558537, 40.020504, 30.046619>,  <34.954933, 39.519890, 29.988279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558537, 40.020504, 30.046619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956146, 39.976902, 30.048725>,  <36.194714, 39.950741, 30.049990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956146, 39.976902, 30.048725>,  <35.558537, 40.020504, 30.046619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956146, 39.976902, 30.048725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066836, 0.569906, -0.818987,
		0.086276, 0.814447, 0.573788,
		0.994027, -0.109009, 0.005265,
		36.254353, 39.944199, 30.050304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987583, 40.634109, 30.135412>,  <35.558537, 40.020504, 30.046619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987583, 40.634109, 30.135412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209930, 40.386055, 29.913982>,  <36.343338, 40.237225, 29.781124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209930, 40.386055, 29.913982>,  <35.987583, 40.634109, 30.135412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209930, 40.386055, 29.913982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059207, 0.634712, -0.770477,
		0.829158, 0.461060, 0.316100,
		0.555869, -0.620132, -0.553575,
		36.376690, 40.200016, 29.747910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659409, 41.005638, 29.878767>,  <35.987583, 40.634109, 30.135412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659409, 41.005638, 29.878767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572025, 40.690945, 29.647829>,  <36.519596, 40.502129, 29.509266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572025, 40.690945, 29.647829>,  <36.659409, 41.005638, 29.878767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572025, 40.690945, 29.647829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188175, 0.546570, -0.815998,
		0.957531, -0.286906, 0.028639,
		-0.218461, -0.786732, -0.577346,
		36.506485, 40.454926, 29.474625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229492, 40.965084, 29.472919>,  <36.659409, 41.005638, 29.878767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229492, 40.965084, 29.472919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965416, 40.738194, 29.275984>,  <36.806969, 40.602058, 29.157822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965416, 40.738194, 29.275984>,  <37.229492, 40.965084, 29.472919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965416, 40.738194, 29.275984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250344, 0.451836, -0.856255,
		0.708148, -0.688548, -0.156297,
		-0.660193, -0.567227, -0.492340,
		36.767357, 40.568024, 29.128283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584290, 40.795155, 28.843622>,  <37.229492, 40.965084, 29.472919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584290, 40.795155, 28.843622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191982, 40.728302, 28.803310>,  <36.956596, 40.688190, 28.779123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191982, 40.728302, 28.803310>,  <37.584290, 40.795155, 28.843622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191982, 40.728302, 28.803310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023464, 0.411667, -0.911032,
		0.193745, -0.895879, -0.399829,
		-0.980771, -0.167127, -0.100780,
		36.897751, 40.678165, 28.773077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471184, 40.388233, 28.206091>,  <37.584290, 40.795155, 28.843622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471184, 40.388233, 28.206091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145287, 40.602257, 28.295441>,  <36.949749, 40.730671, 28.349051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145287, 40.602257, 28.295441>,  <37.471184, 40.388233, 28.206091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145287, 40.602257, 28.295441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089234, 0.496371, -0.863512,
		-0.572910, -0.683611, -0.452162,
		-0.814746, 0.535063, 0.223375,
		36.900864, 40.762775, 28.362453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018234, 40.359783, 27.647940>,  <37.471184, 40.388233, 28.206091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018234, 40.359783, 27.647940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850536, 40.671120, 27.834879>,  <36.749916, 40.857922, 27.947042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850536, 40.671120, 27.834879>,  <37.018234, 40.359783, 27.647940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850536, 40.671120, 27.834879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056601, 0.536181, -0.842203,
		-0.906106, -0.326639, -0.268847,
		-0.419247, 0.778342, 0.467349,
		36.724762, 40.904621, 27.975084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627892, 40.632797, 27.108606>,  <37.018234, 40.359783, 27.647940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627892, 40.632797, 27.108606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673347, 40.924389, 27.378622>,  <36.700623, 41.099342, 27.540632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673347, 40.924389, 27.378622>,  <36.627892, 40.632797, 27.108606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673347, 40.924389, 27.378622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070866, 0.671765, -0.737367,
		-0.990991, 0.131633, 0.024681,
		0.113642, 0.728975, 0.675041,
		36.707439, 41.143082, 27.581135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180637, 41.205288, 26.886028>,  <36.627892, 40.632797, 27.108606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180637, 41.205288, 26.886028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450836, 41.361668, 27.136103>,  <36.612957, 41.455494, 27.286148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450836, 41.361668, 27.136103>,  <36.180637, 41.205288, 26.886028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450836, 41.361668, 27.136103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153882, 0.754462, -0.638049,
		-0.721122, 0.527209, 0.449481,
		0.675502, 0.390945, 0.625188,
		36.653488, 41.478951, 27.323660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968060, 41.973633, 27.031139>,  <36.180637, 41.205288, 26.886028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968060, 41.973633, 27.031139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360699, 41.944393, 27.101706>,  <36.596283, 41.926849, 27.144045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360699, 41.944393, 27.101706>,  <35.968060, 41.973633, 27.031139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360699, 41.944393, 27.101706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138415, 0.908811, -0.393579,
		-0.131560, 0.410755, 0.902204,
		0.981597, -0.073099, 0.176417,
		36.655178, 41.922462, 27.154631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080322, 42.663086, 27.319088>,  <35.968060, 41.973633, 27.031139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080322, 42.663086, 27.319088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425365, 42.506493, 27.190933>,  <36.632389, 42.412537, 27.114040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425365, 42.506493, 27.190933>,  <36.080322, 42.663086, 27.319088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425365, 42.506493, 27.190933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123184, 0.776824, -0.617552,
		0.490649, 0.493238, 0.718318,
		0.862606, -0.391486, -0.320389,
		36.684147, 42.389046, 27.094816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456455, 43.254333, 27.245348>,  <36.080322, 42.663086, 27.319088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456455, 43.254333, 27.245348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632298, 42.970577, 27.024982>,  <36.737804, 42.800323, 26.892763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632298, 42.970577, 27.024982>,  <36.456455, 43.254333, 27.245348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632298, 42.970577, 27.024982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164462, 0.666564, -0.727080,
		0.883005, 0.229025, 0.409694,
		0.439606, -0.709394, -0.550914,
		36.764179, 42.757759, 26.859709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075306, 43.574322, 27.002707>,  <36.456455, 43.254333, 27.245348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075306, 43.574322, 27.002707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022537, 43.277351, 26.739981>,  <36.990875, 43.099171, 26.582346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022537, 43.277351, 26.739981>,  <37.075306, 43.574322, 27.002707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022537, 43.277351, 26.739981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219985, 0.624155, -0.749692,
		0.966543, -0.243386, 0.080985,
		-0.131917, -0.742424, -0.656813,
		36.982964, 43.054623, 26.542936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600727, 43.543991, 26.627823>,  <37.075306, 43.574322, 27.002707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600727, 43.543991, 26.627823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342751, 43.380043, 26.369814>,  <37.187965, 43.281673, 26.215008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342751, 43.380043, 26.369814>,  <37.600727, 43.543991, 26.627823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342751, 43.380043, 26.369814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327754, 0.614113, -0.717943,
		0.690383, -0.674440, -0.261729,
		-0.644941, -0.409873, -0.645023,
		37.149269, 43.257080, 26.176308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.026566, 39.201881, 23.925835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.952847, 39.577633, 24.041487>,  <34.908615, 39.803085, 24.110878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.952847, 39.577633, 24.041487>,  <35.026566, 39.201881, 23.925835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952847, 39.577633, 24.041487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276824, -0.232648, 0.932332,
		0.943081, 0.251866, -0.217167,
		-0.184300, 0.939382, 0.289129,
		34.897556, 39.859447, 24.128225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631622, 39.377590, 24.287500>,  <35.026566, 39.201881, 23.925835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631622, 39.377590, 24.287500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.335552, 39.615948, 24.412117>,  <35.157909, 39.758961, 24.486887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.335552, 39.615948, 24.412117>,  <35.631622, 39.377590, 24.287500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335552, 39.615948, 24.412117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228912, -0.212341, 0.950006,
		0.632255, 0.774482, 0.020761,
		-0.740171, 0.595893, 0.311542,
		35.113503, 39.794716, 24.505579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951797, 39.761570, 24.899502>,  <35.631622, 39.377590, 24.287500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951797, 39.761570, 24.899502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.557140, 39.818169, 24.931787>,  <35.320347, 39.852127, 24.951159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.557140, 39.818169, 24.931787>,  <35.951797, 39.761570, 24.899502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557140, 39.818169, 24.931787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050397, -0.206039, 0.977245,
		0.154909, 0.968260, 0.196156,
		-0.986643, 0.141498, 0.080714,
		35.261147, 39.860619, 24.956001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924644, 40.169727, 25.488892>,  <35.951797, 39.761570, 24.899502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924644, 40.169727, 25.488892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.584282, 39.970032, 25.423504>,  <35.380066, 39.850216, 25.384272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.584282, 39.970032, 25.423504>,  <35.924644, 40.169727, 25.488892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584282, 39.970032, 25.423504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011457, -0.293474, 0.955898,
		-0.525191, 0.815253, 0.244000,
		-0.850907, -0.499234, -0.163470,
		35.329010, 39.820263, 25.374462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586708, 40.285172, 26.121294>,  <35.924644, 40.169727, 25.488892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586708, 40.285172, 26.121294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.369743, 39.997364, 25.947824>,  <35.239563, 39.824680, 25.843742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.369743, 39.997364, 25.947824>,  <35.586708, 40.285172, 26.121294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369743, 39.997364, 25.947824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018852, -0.505657, 0.862529,
		-0.839899, 0.476024, 0.260712,
		-0.542415, -0.719522, -0.433675,
		35.207020, 39.781506, 25.817722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185669, 40.003765, 26.703226>,  <35.586708, 40.285172, 26.121294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185669, 40.003765, 26.703226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.149563, 39.721325, 26.422293>,  <35.127899, 39.551861, 26.253733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.149563, 39.721325, 26.422293>,  <35.185669, 40.003765, 26.703226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149563, 39.721325, 26.422293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120208, -0.692334, 0.711494,
		-0.988636, 0.148653, -0.022383,
		-0.090269, -0.706099, -0.702335,
		35.122482, 39.509495, 26.211592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585716, 39.557442, 26.869497>,  <35.185669, 40.003765, 26.703226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585716, 39.557442, 26.869497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.856983, 39.359673, 26.652008>,  <35.019745, 39.241009, 26.521515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.856983, 39.359673, 26.652008>,  <34.585716, 39.557442, 26.869497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856983, 39.359673, 26.652008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014469, -0.730724, 0.682520,
		-0.734771, -0.470726, -0.488394,
		0.678161, -0.494429, -0.543725,
		35.060432, 39.211346, 26.488892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275063, 38.926277, 26.860928>,  <34.585716, 39.557442, 26.869497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275063, 38.926277, 26.860928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.655224, 38.863853, 26.753311>,  <34.883320, 38.826401, 26.688742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.655224, 38.863853, 26.753311>,  <34.275063, 38.926277, 26.860928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655224, 38.863853, 26.753311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047997, -0.928235, 0.368884,
		-0.307300, -0.337675, -0.889687,
		0.950402, -0.156060, -0.269039,
		34.940346, 38.817036, 26.672600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268227, 38.240059, 26.677612>,  <34.275063, 38.926277, 26.860928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268227, 38.240059, 26.677612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.647446, 38.344021, 26.751001>,  <34.874977, 38.406399, 26.795034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.647446, 38.344021, 26.751001>,  <34.268227, 38.240059, 26.677612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647446, 38.344021, 26.751001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149361, -0.872817, 0.464631,
		0.280899, -0.413087, -0.866288,
		0.948044, 0.259904, 0.183474,
		34.931858, 38.421993, 26.806044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669434, 37.667358, 26.493876>,  <34.268227, 38.240059, 26.677612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669434, 37.667358, 26.493876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.931751, 37.863609, 26.723389>,  <35.089142, 37.981358, 26.861097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.931751, 37.863609, 26.723389>,  <34.669434, 37.667358, 26.493876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931751, 37.863609, 26.723389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378196, -0.871291, 0.312763,
		0.653380, 0.011895, -0.756937,
		0.655792, 0.490623, 0.573782,
		35.128490, 38.010796, 26.895523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253422, 37.272911, 26.430132>,  <34.669434, 37.667358, 26.493876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253422, 37.272911, 26.430132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.320316, 37.495659, 26.755568>,  <35.360451, 37.629307, 26.950829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.320316, 37.495659, 26.755568>,  <35.253422, 37.272911, 26.430132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320316, 37.495659, 26.755568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452683, -0.776452, 0.438406,
		0.875849, 0.294981, -0.381935,
		0.167233, 0.556873, 0.813588,
		35.370487, 37.662720, 26.999643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989838, 37.135376, 26.614971>,  <35.253422, 37.272911, 26.430132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989838, 37.135376, 26.614971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.804512, 37.270893, 26.942522>,  <35.693317, 37.352203, 27.139053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.804512, 37.270893, 26.942522>,  <35.989838, 37.135376, 26.614971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804512, 37.270893, 26.942522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436425, -0.716990, 0.543561,
		0.771280, 0.609219, 0.184335,
		-0.463314, 0.338789, 0.818879,
		35.665520, 37.372528, 27.188185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465069, 36.962166, 27.215115>,  <35.989838, 37.135376, 26.614971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465069, 36.962166, 27.215115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.100655, 37.052654, 27.353010>,  <35.882008, 37.106945, 27.435747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.100655, 37.052654, 27.353010>,  <36.465069, 36.962166, 27.215115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100655, 37.052654, 27.353010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084271, -0.716271, 0.692715,
		0.403631, 0.660137, 0.633483,
		-0.911033, 0.226217, 0.344740,
		35.827343, 37.120518, 27.456432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548168, 37.109562, 28.011387>,  <36.465069, 36.962166, 27.215115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548168, 37.109562, 28.011387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.177944, 36.995525, 27.911741>,  <35.955811, 36.927101, 27.851954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.177944, 36.995525, 27.911741>,  <36.548168, 37.109562, 28.011387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177944, 36.995525, 27.911741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128072, -0.854973, 0.502612,
		-0.356278, 0.433293, 0.827842,
		-0.925561, -0.285093, -0.249116,
		35.900276, 36.909996, 27.837006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967361, 37.432838, 28.510515>,  <36.548168, 37.109562, 28.011387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967361, 37.432838, 28.510515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.354393, 37.343922, 28.558491>,  <37.586613, 37.290573, 28.587276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.354393, 37.343922, 28.558491>,  <36.967361, 37.432838, 28.510515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354393, 37.343922, 28.558491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215418, 0.478280, -0.851377,
		0.131890, 0.849608, 0.510657,
		0.967574, -0.222293, 0.119941,
		37.644665, 37.277233, 28.594473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326736, 38.063873, 28.696396>,  <36.967361, 37.432838, 28.510515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326736, 38.063873, 28.696396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.585983, 37.823650, 28.509090>,  <37.741531, 37.679516, 28.396708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.585983, 37.823650, 28.509090>,  <37.326736, 38.063873, 28.696396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585983, 37.823650, 28.509090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243036, 0.745854, -0.620190,
		0.721718, 0.288151, 0.629359,
		0.648118, -0.600559, -0.468265,
		37.780418, 37.643482, 28.368610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745056, 38.508343, 28.407343>,  <37.326736, 38.063873, 28.696396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745056, 38.508343, 28.407343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.876038, 38.193874, 28.197693>,  <37.954624, 38.005192, 28.071903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.876038, 38.193874, 28.197693>,  <37.745056, 38.508343, 28.407343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876038, 38.193874, 28.197693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169323, 0.594551, -0.786028,
		0.929573, 0.168638, 0.327803,
		0.327450, -0.786175, -0.524124,
		37.974274, 37.958023, 28.040455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464813, 38.692600, 28.063555>,  <37.745056, 38.508343, 28.407343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464813, 38.692600, 28.063555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.255203, 38.410637, 27.872347>,  <38.129436, 38.241459, 27.757622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.255203, 38.410637, 27.872347>,  <38.464813, 38.692600, 28.063555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255203, 38.410637, 27.872347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032442, 0.544323, -0.838248,
		0.851085, -0.454770, -0.262370,
		-0.524024, -0.704908, -0.478019,
		38.097996, 38.199165, 27.728941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766991, 38.774303, 27.396538>,  <38.464813, 38.692600, 28.063555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766991, 38.774303, 27.396538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.437363, 38.551987, 27.352699>,  <38.239586, 38.418598, 27.326397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.437363, 38.551987, 27.352699>,  <38.766991, 38.774303, 27.396538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437363, 38.551987, 27.352699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208621, 0.477611, -0.853443,
		0.526683, -0.680428, -0.509533,
		-0.824065, -0.555793, -0.109598,
		38.190144, 38.385250, 27.319820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870182, 38.473511, 26.836651>,  <38.766991, 38.774303, 27.396538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870182, 38.473511, 26.836651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.473335, 38.472061, 26.886763>,  <38.235229, 38.471191, 26.916830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.473335, 38.472061, 26.886763>,  <38.870182, 38.473511, 26.836651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473335, 38.472061, 26.886763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116390, 0.397407, -0.910231,
		-0.046488, -0.917636, -0.394695,
		-0.992115, -0.003624, 0.125278,
		38.175701, 38.470974, 26.924347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629528, 38.494812, 26.156401>,  <38.870182, 38.473511, 26.836651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629528, 38.494812, 26.156401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.289482, 38.552715, 26.358927>,  <38.085457, 38.587456, 26.480442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.289482, 38.552715, 26.358927>,  <38.629528, 38.494812, 26.156401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289482, 38.552715, 26.358927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393726, 0.463769, -0.793661,
		-0.349700, -0.874050, -0.337262,
		-0.850111, 0.144754, 0.506317,
		38.034447, 38.596142, 26.510822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088696, 38.184212, 25.715527>,  <38.629528, 38.494812, 26.156401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088696, 38.184212, 25.715527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.961842, 38.479694, 25.953430>,  <37.885731, 38.656982, 26.096172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.961842, 38.479694, 25.953430>,  <38.088696, 38.184212, 25.715527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961842, 38.479694, 25.953430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410974, 0.458146, -0.788164,
		-0.854710, -0.494382, 0.158297,
		-0.317131, 0.738708, 0.594759,
		37.866703, 38.701305, 26.131859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489887, 38.387894, 25.374849>,  <38.088696, 38.184212, 25.715527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489887, 38.387894, 25.374849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.557102, 38.692196, 25.625614>,  <37.597431, 38.874775, 25.776073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.557102, 38.692196, 25.625614>,  <37.489887, 38.387894, 25.374849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557102, 38.692196, 25.625614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345952, 0.641017, -0.685138,
		-0.923081, -0.101750, 0.370902,
		0.168042, 0.760752, 0.626911,
		37.607513, 38.920422, 25.813688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935448, 38.814548, 25.323938>,  <37.489887, 38.387894, 25.374849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935448, 38.814548, 25.323938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.250072, 39.037628, 25.429981>,  <37.438847, 39.171478, 25.493607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.250072, 39.037628, 25.429981>,  <36.935448, 38.814548, 25.323938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250072, 39.037628, 25.429981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233096, 0.665714, -0.708867,
		-0.571822, 0.495775, 0.653626,
		0.786566, 0.557703, 0.265107,
		37.486042, 39.204941, 25.509514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733356, 39.466526, 25.408657>,  <36.935448, 38.814548, 25.323938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733356, 39.466526, 25.408657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.123352, 39.523594, 25.340496>,  <37.357349, 39.557835, 25.299599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.123352, 39.523594, 25.340496>,  <36.733356, 39.466526, 25.408657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123352, 39.523594, 25.340496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221664, 0.679608, -0.699284,
		0.016038, 0.719568, 0.694237,
		0.974991, 0.142672, -0.170402,
		37.415848, 39.566395, 25.289375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814308, 40.200737, 25.432978>,  <36.733356, 39.466526, 25.408657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814308, 40.200737, 25.432978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.159752, 40.095741, 25.260801>,  <37.367020, 40.032745, 25.157495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.159752, 40.095741, 25.260801>,  <36.814308, 40.200737, 25.432978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159752, 40.095741, 25.260801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157014, 0.671283, -0.724379,
		0.479090, 0.693165, 0.538511,
		0.863608, -0.262489, -0.430442,
		37.418835, 40.016994, 25.131668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205212, 40.860142, 25.319290>,  <36.814308, 40.200737, 25.432978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205212, 40.860142, 25.319290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.364727, 40.587574, 25.073811>,  <37.460438, 40.424034, 24.926523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.364727, 40.587574, 25.073811>,  <37.205212, 40.860142, 25.319290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364727, 40.587574, 25.073811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086081, 0.638448, -0.764836,
		0.912992, 0.357839, 0.195952,
		0.398793, -0.681421, -0.613701,
		37.484364, 40.383148, 24.889700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779137, 41.243950, 24.929358>,  <37.205212, 40.860142, 25.319290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779137, 41.243950, 24.929358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.670830, 40.921398, 24.719048>,  <37.605846, 40.727867, 24.592861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.670830, 40.921398, 24.719048>,  <37.779137, 41.243950, 24.929358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670830, 40.921398, 24.719048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010053, 0.548518, -0.836078,
		0.962592, -0.221097, -0.156628,
		-0.270768, -0.806377, -0.525776,
		37.589600, 40.679485, 24.561316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505547, 41.087914, 24.936352>,  <37.779137, 41.243950, 24.929358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505547, 41.087914, 24.936352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.805309, 41.335739, 25.029753>,  <38.985168, 41.484436, 25.085793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.805309, 41.335739, 25.029753>,  <38.505547, 41.087914, 24.936352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805309, 41.335739, 25.029753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219442, -0.565147, 0.795270,
		0.624686, -0.544742, -0.559485,
		0.749408, 0.619569, 0.233500,
		39.030132, 41.521610, 25.099802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155144, 40.665440, 24.945021>,  <38.505547, 41.087914, 24.936352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155144, 40.665440, 24.945021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.246220, 40.992081, 25.157175>,  <39.300865, 41.188065, 25.284468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.246220, 40.992081, 25.157175>,  <39.155144, 40.665440, 24.945021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246220, 40.992081, 25.157175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544487, -0.558354, 0.625919,
		0.807273, 0.146270, -0.571766,
		0.227694, 0.816606, 0.530386,
		39.314529, 41.237064, 25.316292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929466, 40.666187, 25.017384>,  <39.155144, 40.665440, 24.945021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929466, 40.666187, 25.017384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.777740, 40.883568, 25.316925>,  <39.686703, 41.013996, 25.496649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.777740, 40.883568, 25.316925>,  <39.929466, 40.666187, 25.017384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777740, 40.883568, 25.316925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596137, -0.475426, 0.646986,
		0.707628, 0.691832, -0.143633,
		-0.379319, 0.543451, 0.748851,
		39.663944, 41.046604, 25.541580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587246, 40.772255, 25.432617>,  <39.929466, 40.666187, 25.017384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587246, 40.772255, 25.432617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.305134, 40.913376, 25.678581>,  <40.135868, 40.998051, 25.826160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.305134, 40.913376, 25.678581>,  <40.587246, 40.772255, 25.432617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305134, 40.913376, 25.678581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459302, -0.433320, 0.775419,
		0.540024, 0.829315, 0.143567,
		-0.705277, 0.352804, 0.614909,
		40.093552, 41.019218, 25.863054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936138, 41.119457, 26.000050>,  <40.587246, 40.772255, 25.432617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936138, 41.119457, 26.000050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.568352, 40.991032, 26.090826>,  <40.347679, 40.913975, 26.145292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.568352, 40.991032, 26.090826>,  <40.936138, 41.119457, 26.000050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568352, 40.991032, 26.090826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357731, -0.443656, 0.821705,
		-0.163138, 0.836712, 0.522781,
		-0.919464, -0.321066, 0.226941,
		40.292511, 40.894711, 26.158909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984135, 41.156864, 26.734079>,  <40.936138, 41.119457, 26.000050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984135, 41.156864, 26.734079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.670921, 40.928917, 26.634392>,  <40.482994, 40.792149, 26.574579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.670921, 40.928917, 26.634392>,  <40.984135, 41.156864, 26.734079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670921, 40.928917, 26.634392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192466, -0.603025, 0.774156,
		-0.591450, 0.558225, 0.581869,
		-0.783035, -0.569865, -0.249220,
		40.436012, 40.757957, 26.559626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603844, 41.144398, 27.307087>,  <40.984135, 41.156864, 26.734079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603844, 41.144398, 27.307087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.492771, 40.818134, 27.104074>,  <40.426128, 40.622375, 26.982267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.492771, 40.818134, 27.104074>,  <40.603844, 41.144398, 27.307087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492771, 40.818134, 27.104074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112302, -0.552246, 0.826083,
		-0.954086, 0.172393, 0.244950,
		-0.277684, -0.815662, -0.507530,
		40.409466, 40.573437, 26.951815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056858, 40.807949, 27.622366>,  <40.603844, 41.144398, 27.307087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056858, 40.807949, 27.622366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.205509, 40.518684, 27.389494>,  <40.294701, 40.345127, 27.249771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.205509, 40.518684, 27.389494>,  <40.056858, 40.807949, 27.622366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205509, 40.518684, 27.389494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057048, -0.643693, 0.763155,
		-0.926629, -0.250395, -0.280467,
		0.371625, -0.723161, -0.582180,
		40.316998, 40.301735, 27.214840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700783, 40.253906, 27.726093>,  <40.056858, 40.807949, 27.622366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700783, 40.253906, 27.726093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.019688, 40.066048, 27.574409>,  <40.211033, 39.953331, 27.483398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.019688, 40.066048, 27.574409>,  <39.700783, 40.253906, 27.726093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019688, 40.066048, 27.574409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087619, -0.711600, 0.697100,
		-0.597236, -0.522547, -0.608484,
		0.797265, -0.469648, -0.379208,
		40.258865, 39.925152, 27.460648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516499, 39.586880, 27.708796>,  <39.700783, 40.253906, 27.726093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516499, 39.586880, 27.708796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.915413, 39.571899, 27.683428>,  <40.154762, 39.562912, 27.668207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.915413, 39.571899, 27.683428>,  <39.516499, 39.586880, 27.708796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915413, 39.571899, 27.683428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008505, -0.796774, 0.604218,
		-0.073158, -0.603116, -0.794291,
		0.997284, -0.037448, -0.063420,
		40.214600, 39.560665, 27.664402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624023, 38.931782, 27.567448>,  <39.516499, 39.586880, 27.708796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624023, 38.931782, 27.567448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.954086, 39.086674, 27.731966>,  <40.152126, 39.179611, 27.830677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.954086, 39.086674, 27.731966>,  <39.624023, 38.931782, 27.567448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954086, 39.086674, 27.731966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042015, -0.768136, 0.638907,
		0.563336, -0.509919, -0.650104,
		0.825159, 0.387234, 0.411294,
		40.201633, 39.202843, 27.855354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009937, 38.388893, 27.530624>,  <39.624023, 38.931782, 27.567448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009937, 38.388893, 27.530624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.156372, 38.627930, 27.815964>,  <40.244232, 38.771351, 27.987167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.156372, 38.627930, 27.815964>,  <40.009937, 38.388893, 27.530624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156372, 38.627930, 27.815964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191376, -0.798526, 0.570729,
		0.910690, -0.072419, -0.406694,
		0.366087, 0.597589, 0.713350,
		40.266197, 38.807205, 28.029968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717548, 38.101799, 27.703457>,  <40.009937, 38.388893, 27.530624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717548, 38.101799, 27.703457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.605778, 38.321712, 28.018330>,  <40.538715, 38.453659, 28.207254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.605778, 38.321712, 28.018330>,  <40.717548, 38.101799, 27.703457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605778, 38.321712, 28.018330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145463, -0.786138, 0.600689,
		0.949085, 0.282354, 0.139693,
		-0.279425, 0.549785, 0.787184,
		40.521950, 38.486649, 28.254484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169670, 37.936569, 28.138479>,  <40.717548, 38.101799, 27.703457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169670, 37.936569, 28.138479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.891548, 38.104160, 28.372065>,  <40.724674, 38.204716, 28.512215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.891548, 38.104160, 28.372065>,  <41.169670, 37.936569, 28.138479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891548, 38.104160, 28.372065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127923, -0.727392, 0.674194,
		0.707240, 0.543472, 0.452162,
		-0.695304, 0.418975, 0.583962,
		40.682957, 38.229855, 28.547253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.109390, 43.415840, 25.936239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.728714, 43.342285, 25.837875>,  <37.500309, 43.298153, 25.778856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.728714, 43.342285, 25.837875>,  <38.109390, 43.415840, 25.936239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728714, 43.342285, 25.837875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059784, 0.674563, -0.735792,
		0.301182, -0.714948, -0.630982,
		-0.951691, -0.183885, -0.245909,
		37.443207, 43.287121, 25.764103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110886, 43.339497, 25.264322>,  <38.109390, 43.415840, 25.936239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110886, 43.339497, 25.264322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.727581, 43.433857, 25.328936>,  <37.497601, 43.490475, 25.367704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.727581, 43.433857, 25.328936>,  <38.110886, 43.339497, 25.264322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727581, 43.433857, 25.328936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028688, 0.641475, -0.766607,
		-0.284463, -0.729973, -0.621466,
		-0.958257, 0.235900, 0.161534,
		37.440105, 43.504627, 25.377396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731079, 43.404888, 24.584930>,  <38.110886, 43.339497, 25.264322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731079, 43.404888, 24.584930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.479908, 43.617172, 24.812632>,  <37.329205, 43.744541, 24.949253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.479908, 43.617172, 24.812632>,  <37.731079, 43.404888, 24.584930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479908, 43.617172, 24.812632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054717, 0.699522, -0.712513,
		-0.776343, -0.478557, -0.410213,
		-0.627931, 0.530709, 0.569254,
		37.291527, 43.776386, 24.983408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228123, 43.594349, 24.110100>,  <37.731079, 43.404888, 24.584930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228123, 43.594349, 24.110100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.200397, 43.834667, 24.428656>,  <37.183762, 43.978859, 24.619789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.200397, 43.834667, 24.428656>,  <37.228123, 43.594349, 24.110100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200397, 43.834667, 24.428656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122238, 0.787180, -0.604488,
		-0.990077, -0.139250, 0.018876,
		-0.069316, 0.600797, 0.796391,
		37.179604, 44.014908, 24.667572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721939, 44.003284, 23.945135>,  <37.228123, 43.594349, 24.110100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721939, 44.003284, 23.945135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.892052, 44.216835, 24.237467>,  <36.994118, 44.344967, 24.412867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.892052, 44.216835, 24.237467>,  <36.721939, 44.003284, 23.945135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892052, 44.216835, 24.237467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062072, 0.822796, -0.564938,
		-0.902930, 0.194893, 0.383058,
		0.425281, 0.533876, 0.730830,
		37.019634, 44.376999, 24.456717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267620, 44.468903, 24.135523>,  <36.721939, 44.003284, 23.945135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267620, 44.468903, 24.135523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.615173, 44.629292, 24.251637>,  <36.823704, 44.725525, 24.321304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.615173, 44.629292, 24.251637>,  <36.267620, 44.468903, 24.135523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615173, 44.629292, 24.251637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211882, 0.831227, -0.513972,
		-0.447381, 0.385075, 0.807197,
		0.868882, 0.400972, 0.290285,
		36.875839, 44.749584, 24.338722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089897, 45.090134, 24.054533>,  <36.267620, 44.468903, 24.135523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089897, 45.090134, 24.054533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.483192, 45.144157, 24.103521>,  <36.719170, 45.176571, 24.132915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.483192, 45.144157, 24.103521>,  <36.089897, 45.090134, 24.054533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483192, 45.144157, 24.103521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021398, 0.752576, -0.658158,
		-0.181063, 0.644506, 0.742852,
		0.983239, 0.135064, 0.122472,
		36.778164, 45.184677, 24.140263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134548, 45.741184, 24.255478>,  <36.089897, 45.090134, 24.054533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134548, 45.741184, 24.255478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.472145, 45.624287, 24.075583>,  <36.674706, 45.554150, 23.967646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.472145, 45.624287, 24.075583>,  <36.134548, 45.741184, 24.255478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472145, 45.624287, 24.075583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180197, 0.635277, -0.750968,
		0.505172, 0.714856, 0.483511,
		0.843997, -0.292241, -0.449739,
		36.725346, 45.536613, 23.940660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554588, 46.337517, 24.176683>,  <36.134548, 45.741184, 24.255478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554588, 46.337517, 24.176683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.711273, 46.073246, 23.920536>,  <36.805283, 45.914684, 23.766848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.711273, 46.073246, 23.920536>,  <36.554588, 46.337517, 24.176683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711273, 46.073246, 23.920536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091729, 0.664478, -0.741657,
		0.915506, 0.349254, 0.199678,
		0.391708, -0.660675, -0.640370,
		36.828785, 45.875042, 23.728426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996876, 46.698074, 23.740719>,  <36.554588, 46.337517, 24.176683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996876, 46.698074, 23.740719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.954956, 46.371563, 23.513487>,  <36.929806, 46.175655, 23.377148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.954956, 46.371563, 23.513487>,  <36.996876, 46.698074, 23.740719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954956, 46.371563, 23.513487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241040, 0.575041, -0.781811,
		0.964840, 0.054996, -0.257019,
		-0.104800, -0.816274, -0.568079,
		36.923515, 46.126682, 23.343063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396561, 46.860325, 23.196005>,  <36.996876, 46.698074, 23.740719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396561, 46.860325, 23.196005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.143799, 46.572563, 23.080662>,  <36.992142, 46.399906, 23.011456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.143799, 46.572563, 23.080662>,  <37.396561, 46.860325, 23.196005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143799, 46.572563, 23.080662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279960, 0.558805, -0.780615,
		0.722713, -0.412548, -0.554518,
		-0.631908, -0.719404, -0.288358,
		36.954227, 46.356743, 22.994154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660370, 46.591496, 22.433975>,  <37.396561, 46.860325, 23.196005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660370, 46.591496, 22.433975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.269306, 46.511837, 22.460897>,  <37.034668, 46.464043, 22.477051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.269306, 46.511837, 22.460897>,  <37.660370, 46.591496, 22.433975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269306, 46.511837, 22.460897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174192, 0.588257, -0.789690,
		0.117668, -0.783770, -0.609803,
		-0.977656, -0.199144, 0.067307,
		36.976009, 46.452095, 22.481089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441975, 46.541683, 21.716078>,  <37.660370, 46.591496, 22.433975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441975, 46.541683, 21.716078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.108902, 46.611454, 21.926300>,  <36.909058, 46.653316, 22.052433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.108902, 46.611454, 21.926300>,  <37.441975, 46.541683, 21.716078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108902, 46.611454, 21.926300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220322, 0.766372, -0.603434,
		-0.508029, -0.618262, -0.599716,
		-0.832686, 0.174431, 0.525555,
		36.859097, 46.663784, 22.083967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181194, 46.445538, 21.312706>,  <37.441975, 46.541683, 21.716078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181194, 46.445538, 21.312706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.441933, 46.372810, 21.607199>,  <38.598377, 46.329174, 21.783895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.441933, 46.372810, 21.607199>,  <38.181194, 46.445538, 21.312706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441933, 46.372810, 21.607199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750456, -0.014934, 0.660752,
		-0.109143, -0.983218, -0.146182,
		0.651846, -0.181820, 0.736232,
		38.637486, 46.318268, 21.828068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651237, 45.905537, 21.039268>,  <38.181194, 46.445538, 21.312706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651237, 45.905537, 21.039268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.546432, 45.541134, 20.911882>,  <38.483551, 45.322495, 20.835451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.546432, 45.541134, 20.911882>,  <38.651237, 45.905537, 21.039268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546432, 45.541134, 20.911882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123147, -0.358857, 0.925233,
		-0.957176, 0.203202, 0.206212,
		-0.262010, -0.911005, -0.318466,
		38.467831, 45.267834, 20.816343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013458, 45.542282, 21.475895>,  <38.651237, 45.905537, 21.039268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013458, 45.542282, 21.475895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.242268, 45.256477, 21.314768>,  <38.379555, 45.084995, 21.218092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.242268, 45.256477, 21.314768>,  <38.013458, 45.542282, 21.475895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242268, 45.256477, 21.314768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038269, -0.513814, 0.857048,
		-0.819341, -0.474839, -0.321259,
		0.572027, -0.714509, -0.402817,
		38.413876, 45.042126, 21.193922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664349, 44.960636, 21.723993>,  <38.013458, 45.542282, 21.475895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664349, 44.960636, 21.723993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.004341, 44.797710, 21.590347>,  <38.208336, 44.699955, 21.510160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.004341, 44.797710, 21.590347>,  <37.664349, 44.960636, 21.723993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004341, 44.797710, 21.590347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033210, -0.591529, 0.805600,
		-0.525768, -0.695839, -0.489260,
		0.849979, -0.407311, -0.334116,
		38.259335, 44.675518, 21.490112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544025, 44.135944, 21.780779>,  <37.664349, 44.960636, 21.723993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544025, 44.135944, 21.780779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.938950, 44.184673, 21.740028>,  <38.175903, 44.213913, 21.715578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.938950, 44.184673, 21.740028>,  <37.544025, 44.135944, 21.780779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938950, 44.184673, 21.740028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158335, -0.804667, 0.572225,
		-0.012264, -0.581093, -0.813745,
		0.987309, 0.121826, -0.101876,
		38.235142, 44.221222, 21.709465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835598, 43.456589, 21.749155>,  <37.544025, 44.135944, 21.780779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835598, 43.456589, 21.749155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.155079, 43.688206, 21.814617>,  <38.346767, 43.827175, 21.853893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.155079, 43.688206, 21.814617>,  <37.835598, 43.456589, 21.749155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155079, 43.688206, 21.814617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386256, -0.701921, 0.598425,
		0.461384, -0.414754, -0.784286,
		0.798706, 0.579038, 0.163654,
		38.394691, 43.861916, 21.863714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425365, 43.056026, 21.647985>,  <37.835598, 43.456589, 21.749155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425365, 43.056026, 21.647985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.527180, 43.334812, 21.916149>,  <38.588268, 43.502083, 22.077047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.527180, 43.334812, 21.916149>,  <38.425365, 43.056026, 21.647985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527180, 43.334812, 21.916149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289635, -0.716361, 0.634775,
		0.922672, 0.032602, -0.384205,
		0.254534, 0.696968, 0.670408,
		38.603539, 43.543903, 22.117271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062595, 42.733200, 21.889385>,  <38.425365, 43.056026, 21.647985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062595, 42.733200, 21.889385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.960152, 43.032196, 22.134552>,  <38.898685, 43.211594, 22.281652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.960152, 43.032196, 22.134552>,  <39.062595, 42.733200, 21.889385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960152, 43.032196, 22.134552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356774, -0.516200, 0.778621,
		0.898398, 0.418085, -0.134480,
		-0.256111, 0.747491, 0.612915,
		38.883320, 43.256443, 22.318426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602135, 42.862583, 22.401060>,  <39.062595, 42.733200, 21.889385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602135, 42.862583, 22.401060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.286938, 43.044323, 22.567257>,  <39.097820, 43.153366, 22.666975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.286938, 43.044323, 22.567257>,  <39.602135, 42.862583, 22.401060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286938, 43.044323, 22.567257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239130, -0.396010, 0.886563,
		0.567344, 0.797964, 0.203406,
		-0.787996, 0.454345, 0.415491,
		39.050537, 43.180626, 22.691904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819065, 43.290321, 23.017262>,  <39.602135, 42.862583, 22.401060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819065, 43.290321, 23.017262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.431427, 43.225048, 23.091270>,  <39.198845, 43.185883, 23.135675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.431427, 43.225048, 23.091270>,  <39.819065, 43.290321, 23.017262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431427, 43.225048, 23.091270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228016, -0.306117, 0.924284,
		-0.094192, 0.937903, 0.333865,
		-0.969091, -0.163187, 0.185023,
		39.140701, 43.176090, 23.146778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660355, 43.529987, 23.681969>,  <39.819065, 43.290321, 23.017262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660355, 43.529987, 23.681969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.387634, 43.244480, 23.617867>,  <39.224003, 43.073177, 23.579405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.387634, 43.244480, 23.617867>,  <39.660355, 43.529987, 23.681969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387634, 43.244480, 23.617867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098697, -0.306820, 0.946636,
		-0.724845, 0.629604, 0.279638,
		-0.681805, -0.713764, -0.160258,
		39.183094, 43.030350, 23.569790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233543, 43.543053, 24.343416>,  <39.660355, 43.529987, 23.681969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233543, 43.543053, 24.343416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.156315, 43.202671, 24.148027>,  <39.109978, 42.998444, 24.030794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.156315, 43.202671, 24.148027>,  <39.233543, 43.543053, 24.343416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156315, 43.202671, 24.148027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068728, -0.484889, 0.871871,
		-0.978775, 0.201904, 0.035133,
		-0.193069, -0.850951, -0.488474,
		39.098392, 42.947384, 24.001486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696091, 43.208134, 24.800034>,  <39.233543, 43.543053, 24.343416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696091, 43.208134, 24.800034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.863846, 42.926849, 24.570389>,  <38.964497, 42.758080, 24.432602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.863846, 42.926849, 24.570389>,  <38.696091, 43.208134, 24.800034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863846, 42.926849, 24.570389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122212, -0.670395, 0.731871,
		-0.899544, -0.236773, -0.367095,
		0.419386, -0.703214, -0.574113,
		38.989662, 42.715885, 24.398155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343033, 42.573402, 24.832582>,  <38.696091, 43.208134, 24.800034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343033, 42.573402, 24.832582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.678749, 42.413292, 24.685411>,  <38.880180, 42.317226, 24.597109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.678749, 42.413292, 24.685411>,  <38.343033, 42.573402, 24.832582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678749, 42.413292, 24.685411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043264, -0.723758, 0.688697,
		-0.541958, -0.562099, -0.624761,
		0.839291, -0.400274, -0.367927,
		38.930538, 42.293209, 24.575033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204266, 41.830875, 24.710659>,  <38.343033, 42.573402, 24.832582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204266, 41.830875, 24.710659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.594807, 41.893784, 24.769997>,  <38.829132, 41.931526, 24.805599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.594807, 41.893784, 24.769997>,  <38.204266, 41.830875, 24.710659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594807, 41.893784, 24.769997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051070, -0.498964, 0.865117,
		0.210073, -0.852234, -0.479132,
		0.976351, 0.157268, 0.148343,
		38.887711, 41.940964, 24.814499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292759, 41.265812, 24.186106>,  <38.204266, 41.830875, 24.710659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292759, 41.265812, 24.186106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.985863, 41.012753, 24.143951>,  <37.801727, 40.860916, 24.118660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.985863, 41.012753, 24.143951>,  <38.292759, 41.265812, 24.186106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985863, 41.012753, 24.143951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137895, 0.323187, -0.936234,
		0.626364, -0.703782, -0.335200,
		-0.767238, -0.632646, -0.105384,
		37.755692, 40.822960, 24.112335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302876, 41.149799, 23.472536>,  <38.292759, 41.265812, 24.186106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302876, 41.149799, 23.472536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.938824, 41.010277, 23.561972>,  <37.720390, 40.926563, 23.615633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.938824, 41.010277, 23.561972>,  <38.302876, 41.149799, 23.472536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938824, 41.010277, 23.561972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314939, 0.231786, -0.920374,
		0.269218, -0.908076, -0.320812,
		-0.910129, -0.348817, 0.223588,
		37.665783, 40.905632, 23.629049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047955, 40.779751, 22.966753>,  <38.302876, 41.149799, 23.472536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047955, 40.779751, 22.966753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.699162, 40.847408, 23.150511>,  <37.489887, 40.888000, 23.260765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.699162, 40.847408, 23.150511>,  <38.047955, 40.779751, 22.966753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699162, 40.847408, 23.150511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407755, 0.268350, -0.872768,
		-0.270899, -0.948356, -0.165028,
		-0.871980, 0.169141, 0.459392,
		37.437569, 40.898151, 23.288328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413738, 40.471142, 22.535698>,  <38.047955, 40.779751, 22.966753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413738, 40.471142, 22.535698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.278061, 40.771553, 22.762295>,  <37.196655, 40.951797, 22.898252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.278061, 40.771553, 22.762295>,  <37.413738, 40.471142, 22.535698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278061, 40.771553, 22.762295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443326, 0.403512, -0.800400,
		-0.829707, -0.522627, 0.196082,
		-0.339189, 0.751026, 0.566490,
		37.176304, 40.996861, 22.932241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628731, 40.479767, 22.427683>,  <37.413738, 40.471142, 22.535698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628731, 40.479767, 22.427683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.750034, 40.835941, 22.563423>,  <36.822819, 41.049644, 22.644867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.750034, 40.835941, 22.563423>,  <36.628731, 40.479767, 22.427683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750034, 40.835941, 22.563423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481317, 0.450491, -0.751925,
		-0.822415, 0.064694, 0.565198,
		0.303262, 0.890434, 0.339352,
		36.841011, 41.103073, 22.665230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049095, 40.885212, 22.329062>,  <36.628731, 40.479767, 22.427683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049095, 40.885212, 22.329062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.366451, 41.128502, 22.338778>,  <36.556866, 41.274475, 22.344606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.366451, 41.128502, 22.338778>,  <36.049095, 40.885212, 22.329062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366451, 41.128502, 22.338778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341431, 0.477699, -0.809462,
		-0.503940, 0.633927, 0.586670,
		0.793391, 0.608227, 0.024289,
		36.604469, 41.310970, 22.346064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808029, 41.586899, 22.242241>,  <36.049095, 40.885212, 22.329062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808029, 41.586899, 22.242241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.194977, 41.611156, 22.143845>,  <36.427147, 41.625710, 22.084806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.194977, 41.611156, 22.143845>,  <35.808029, 41.586899, 22.242241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194977, 41.611156, 22.143845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230719, 0.612009, -0.756449,
		0.104675, 0.788523, 0.606032,
		0.967374, 0.060642, -0.245989,
		36.485188, 41.629349, 22.070047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275776, 42.188351, 22.317049>,  <35.808029, 41.586899, 22.242241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275776, 42.188351, 22.317049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.916607, 42.022072, 22.259182>,  <34.701107, 41.922306, 22.224463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.916607, 42.022072, 22.259182>,  <35.275776, 42.188351, 22.317049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916607, 42.022072, 22.259182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096803, -0.507141, 0.856410,
		-0.429374, 0.754986, 0.495615,
		-0.897924, -0.415697, -0.144668,
		34.647228, 41.897362, 22.215782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971115, 42.210930, 22.959051>,  <35.275776, 42.188351, 22.317049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971115, 42.210930, 22.959051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.774220, 41.923477, 22.762571>,  <34.656082, 41.751007, 22.644684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.774220, 41.923477, 22.762571>,  <34.971115, 42.210930, 22.959051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774220, 41.923477, 22.762571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082507, -0.600274, 0.795527,
		-0.866542, 0.351060, 0.354769,
		-0.492236, -0.718629, -0.491198,
		34.626549, 41.707890, 22.615211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363602, 41.999935, 23.326736>,  <34.971115, 42.210930, 22.959051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363602, 41.999935, 23.326736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.446136, 41.702019, 23.072899>,  <34.495659, 41.523270, 22.920597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.446136, 41.702019, 23.072899>,  <34.363602, 41.999935, 23.326736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446136, 41.702019, 23.072899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154065, -0.665188, 0.730608,
		-0.966276, -0.052984, -0.252000,
		0.206338, -0.744793, -0.634592,
		34.508038, 41.478580, 22.882521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870914, 41.442833, 23.420752>,  <34.363602, 41.999935, 23.326736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870914, 41.442833, 23.420752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.150833, 41.239697, 23.219799>,  <34.318783, 41.117817, 23.099228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.150833, 41.239697, 23.219799>,  <33.870914, 41.442833, 23.420752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150833, 41.239697, 23.219799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061611, -0.657747, 0.750715,
		-0.711683, -0.556298, -0.428999,
		0.699795, -0.507840, -0.502381,
		34.360771, 41.087345, 23.069086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700428, 40.746365, 23.573051>,  <33.870914, 41.442833, 23.420752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700428, 40.746365, 23.573051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067341, 40.725372, 23.415148>,  <34.287491, 40.712776, 23.320406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067341, 40.725372, 23.415148>,  <33.700428, 40.746365, 23.573051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067341, 40.725372, 23.415148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211982, -0.774819, 0.595584,
		-0.337125, -0.630001, -0.699603,
		0.917284, -0.052483, -0.394760,
		34.342525, 40.709629, 23.296721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808975, 40.012154, 23.595451>,  <33.700428, 40.746365, 23.573051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808975, 40.012154, 23.595451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.157341, 40.208561, 23.587450>,  <34.366360, 40.326405, 23.582649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.157341, 40.208561, 23.587450>,  <33.808975, 40.012154, 23.595451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157341, 40.208561, 23.587450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345698, -0.583215, 0.735087,
		0.349279, -0.647115, -0.677678,
		0.870918, 0.491022, -0.020002,
		34.418617, 40.355869, 23.581450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236694, 39.527199, 23.765984>,  <33.808975, 40.012154, 23.595451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236694, 39.527199, 23.765984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.452934, 39.859749, 23.817474>,  <34.582676, 40.059280, 23.848368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.452934, 39.859749, 23.817474>,  <34.236694, 39.527199, 23.765984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452934, 39.859749, 23.817474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501323, -0.441225, 0.744309,
		0.675597, -0.337838, -0.655312,
		0.540596, 0.831376, 0.128725,
		34.615112, 40.109161, 23.856092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.236336, 46.601719, 23.638435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.608543, 46.553001, 23.500273>,  <33.831867, 46.523769, 23.417376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.608543, 46.553001, 23.500273>,  <33.236336, 46.601719, 23.638435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608543, 46.553001, 23.500273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172350, -0.686526, 0.706384,
		-0.323165, -0.716832, -0.617832,
		0.930516, -0.121795, -0.345407,
		33.887699, 46.516464, 23.396650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343243, 45.853848, 23.508492>,  <33.236336, 46.601719, 23.638435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343243, 45.853848, 23.508492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.707550, 46.011993, 23.556143>,  <33.926132, 46.106880, 23.584734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.707550, 46.011993, 23.556143>,  <33.343243, 45.853848, 23.508492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707550, 46.011993, 23.556143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235877, -0.734937, 0.635790,
		0.338922, -0.550956, -0.762613,
		0.910765, 0.395366, 0.119129,
		33.980782, 46.130604, 23.591881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891422, 45.358345, 23.283001>,  <33.343243, 45.853848, 23.508492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891422, 45.358345, 23.283001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.093449, 45.598991, 23.530540>,  <34.214664, 45.743378, 23.679064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.093449, 45.598991, 23.530540>,  <33.891422, 45.358345, 23.283001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093449, 45.598991, 23.530540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363298, -0.798594, 0.479856,
		0.782897, -0.017531, -0.621904,
		0.505062, 0.601614, 0.618848,
		34.244968, 45.779476, 23.716194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531990, 45.004627, 23.376139>,  <33.891422, 45.358345, 23.283001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531990, 45.004627, 23.376139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.507137, 45.271790, 23.672798>,  <34.492226, 45.432087, 23.850794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.507137, 45.271790, 23.672798>,  <34.531990, 45.004627, 23.376139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507137, 45.271790, 23.672798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311513, -0.692984, 0.650179,
		0.948208, 0.271429, -0.165007,
		-0.062130, 0.667907, 0.741647,
		34.488499, 45.472160, 23.895292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151253, 44.856911, 23.915956>,  <34.531990, 45.004627, 23.376139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151253, 44.856911, 23.915956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.847771, 45.035023, 24.106152>,  <34.665680, 45.141891, 24.220268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.847771, 45.035023, 24.106152>,  <35.151253, 44.856911, 23.915956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847771, 45.035023, 24.106152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131161, -0.610547, 0.781044,
		0.638093, 0.654948, 0.404821,
		-0.758705, 0.445282, 0.475490,
		34.620159, 45.168606, 24.248798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333347, 44.664089, 24.533409>,  <35.151253, 44.856911, 23.915956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333347, 44.664089, 24.533409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.972298, 44.805973, 24.630938>,  <34.755669, 44.891106, 24.689455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.972298, 44.805973, 24.630938>,  <35.333347, 44.664089, 24.533409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972298, 44.805973, 24.630938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090341, -0.709962, 0.698421,
		0.420844, 0.608384, 0.672874,
		-0.902623, 0.354714, 0.243822,
		34.701511, 44.912388, 24.704084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396957, 44.816456, 25.268919>,  <35.333347, 44.664089, 24.533409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396957, 44.816456, 25.268919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.005363, 44.796246, 25.189892>,  <34.770409, 44.784119, 25.142475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.005363, 44.796246, 25.189892>,  <35.396957, 44.816456, 25.268919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005363, 44.796246, 25.189892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123771, -0.622744, 0.772574,
		-0.162070, 0.780793, 0.603404,
		-0.978986, -0.050527, -0.197567,
		34.711666, 44.781086, 25.130621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958000, 44.935577, 25.940001>,  <35.396957, 44.816456, 25.268919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958000, 44.935577, 25.940001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.726933, 44.731331, 25.685263>,  <34.588291, 44.608784, 25.532419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.726933, 44.731331, 25.685263>,  <34.958000, 44.935577, 25.940001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726933, 44.731331, 25.685263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278236, -0.610293, 0.741705,
		-0.767387, 0.605654, 0.210476,
		-0.577669, -0.510613, -0.636846,
		34.553631, 44.578148, 25.494209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322010, 44.768955, 26.352329>,  <34.958000, 44.935577, 25.940001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322010, 44.768955, 26.352329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.306358, 44.523636, 26.036777>,  <34.296967, 44.376442, 25.847446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.306358, 44.523636, 26.036777>,  <34.322010, 44.768955, 26.352329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306358, 44.523636, 26.036777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386845, -0.718623, 0.577869,
		-0.921314, 0.327787, -0.209131,
		-0.039131, -0.613300, -0.788880,
		34.294621, 44.339645, 25.800114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715103, 44.359730, 26.410509>,  <34.322010, 44.768955, 26.352329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715103, 44.359730, 26.410509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.935646, 44.122444, 26.175867>,  <34.067974, 43.980072, 26.035082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.935646, 44.122444, 26.175867>,  <33.715103, 44.359730, 26.410509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935646, 44.122444, 26.175867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288632, -0.795351, 0.533018,
		-0.782736, -0.124584, -0.609756,
		0.551376, -0.593207, -0.586591,
		34.101055, 43.944481, 25.999886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317032, 43.817013, 26.150171>,  <33.715103, 44.359730, 26.410509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317032, 43.817013, 26.150171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.686237, 43.673401, 26.094818>,  <33.907761, 43.587234, 26.061605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.686237, 43.673401, 26.094818>,  <33.317032, 43.817013, 26.150171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686237, 43.673401, 26.094818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270697, -0.861498, 0.429586,
		-0.273452, -0.359052, -0.892360,
		0.923010, -0.359030, -0.138384,
		33.963139, 43.565693, 26.053303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245945, 43.229454, 25.717367>,  <33.317032, 43.817013, 26.150171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245945, 43.229454, 25.717367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.584515, 43.198807, 25.928152>,  <33.787659, 43.180420, 26.054623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.584515, 43.198807, 25.928152>,  <33.245945, 43.229454, 25.717367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584515, 43.198807, 25.928152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325079, -0.858143, 0.397384,
		0.421760, -0.507661, -0.751264,
		0.846429, -0.076620, 0.526961,
		33.838444, 43.175819, 26.086241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397667, 42.828384, 25.125416>,  <33.245945, 43.229454, 25.717367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397667, 42.828384, 25.125416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.146358, 42.559803, 24.968231>,  <32.995571, 42.398655, 24.873920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.146358, 42.559803, 24.968231>,  <33.397667, 42.828384, 25.125416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146358, 42.559803, 24.968231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039542, 0.476886, -0.878075,
		0.776987, -0.567210, -0.273065,
		-0.628274, -0.671455, -0.392963,
		32.957878, 42.358368, 24.850342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776405, 42.688858, 24.467852>,  <33.397667, 42.828384, 25.125416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776405, 42.688858, 24.467852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.386131, 42.601276, 24.463930>,  <33.151966, 42.548729, 24.461576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.386131, 42.601276, 24.463930>,  <33.776405, 42.688858, 24.467852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386131, 42.601276, 24.463930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113177, 0.541638, -0.832958,
		0.187687, -0.811596, -0.553249,
		-0.975686, -0.218951, -0.009804,
		33.093426, 42.535591, 24.460989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648685, 42.454262, 23.880344>,  <33.776405, 42.688858, 24.467852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648685, 42.454262, 23.880344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.301674, 42.600742, 24.014973>,  <33.093468, 42.688633, 24.095751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.301674, 42.600742, 24.014973>,  <33.648685, 42.454262, 23.880344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301674, 42.600742, 24.014973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082123, 0.561940, -0.823091,
		-0.490553, -0.741699, -0.457428,
		-0.867533, 0.366205, 0.336573,
		33.041412, 42.710602, 24.115944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125858, 42.326542, 23.356726>,  <33.648685, 42.454262, 23.880344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125858, 42.326542, 23.356726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.979000, 42.631863, 23.569359>,  <32.890884, 42.815056, 23.696939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.979000, 42.631863, 23.569359>,  <33.125858, 42.326542, 23.356726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979000, 42.631863, 23.569359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102366, 0.534867, -0.838712,
		-0.924514, -0.362344, -0.118238,
		-0.367144, 0.763298, 0.531584,
		32.868858, 42.860851, 23.728834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772884, 42.606682, 22.888418>,  <33.125858, 42.326542, 23.356726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772884, 42.606682, 22.888418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.725292, 42.882492, 23.174187>,  <32.696739, 43.047977, 23.345648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.725292, 42.882492, 23.174187>,  <32.772884, 42.606682, 22.888418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725292, 42.882492, 23.174187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374678, 0.635155, -0.675422,
		-0.919490, -0.348038, 0.182781,
		-0.118978, 0.689527, 0.714420,
		32.689598, 43.089352, 23.388514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081055, 42.942093, 22.856577>,  <32.772884, 42.606682, 22.888418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081055, 42.942093, 22.856577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.336819, 43.205570, 23.015209>,  <32.490276, 43.363655, 23.110390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.336819, 43.205570, 23.015209>,  <32.081055, 42.942093, 22.856577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336819, 43.205570, 23.015209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349012, 0.708260, -0.613643,
		-0.685084, 0.253960, 0.682762,
		0.639414, 0.658689, 0.396583,
		32.528645, 43.403175, 23.134184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708052, 43.628689, 22.876795>,  <32.081055, 42.942093, 22.856577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708052, 43.628689, 22.876795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.104214, 43.683952, 22.878237>,  <32.341911, 43.717110, 22.879103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.104214, 43.683952, 22.878237>,  <31.708052, 43.628689, 22.876795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104214, 43.683952, 22.878237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109423, 0.799833, -0.590164,
		-0.084418, 0.584106, 0.807276,
		0.990404, 0.138155, 0.003606,
		32.401337, 43.725399, 22.879318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768900, 44.343845, 22.975883>,  <31.708052, 43.628689, 22.876795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768900, 44.343845, 22.975883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.117413, 44.223888, 22.820480>,  <32.326519, 44.151917, 22.727240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.117413, 44.223888, 22.820480>,  <31.768900, 44.343845, 22.975883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117413, 44.223888, 22.820480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014312, 0.775737, -0.630894,
		0.490578, 0.555245, 0.671592,
		0.871280, -0.299891, -0.388506,
		32.378796, 44.133923, 22.703928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158474, 45.001743, 22.816504>,  <31.768900, 44.343845, 22.975883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158474, 45.001743, 22.816504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.353912, 44.725517, 22.603186>,  <32.471176, 44.559784, 22.475195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.353912, 44.725517, 22.603186>,  <32.158474, 45.001743, 22.816504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353912, 44.725517, 22.603186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013863, 0.604997, -0.796107,
		0.872402, 0.396365, 0.286024,
		0.488592, -0.690561, -0.533295,
		32.500488, 44.518349, 22.443197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859158, 45.306290, 22.556587>,  <32.158474, 45.001743, 22.816504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859158, 45.306290, 22.556587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.758869, 45.015644, 22.300722>,  <32.698696, 44.841255, 22.147203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.758869, 45.015644, 22.300722>,  <32.859158, 45.306290, 22.556587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758869, 45.015644, 22.300722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234410, 0.595537, -0.768367,
		0.939250, -0.342589, 0.021012,
		-0.250721, -0.726614, -0.639664,
		32.683655, 44.797661, 22.108822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457699, 45.294510, 22.141756>,  <32.859158, 45.306290, 22.556587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457699, 45.294510, 22.141756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.155743, 45.140415, 21.929443>,  <32.974567, 45.047958, 21.802055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.155743, 45.140415, 21.929443>,  <33.457699, 45.294510, 22.141756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155743, 45.140415, 21.929443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267381, 0.558217, -0.785431,
		0.598875, -0.734833, -0.318384,
		-0.754888, -0.385245, -0.530783,
		32.929276, 45.024841, 21.770208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731518, 45.326984, 21.498100>,  <33.457699, 45.294510, 22.141756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731518, 45.326984, 21.498100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.369980, 45.225365, 21.360390>,  <33.153057, 45.164391, 21.277763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.369980, 45.225365, 21.360390>,  <33.731518, 45.326984, 21.498100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369980, 45.225365, 21.360390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217229, 0.420751, -0.880784,
		0.368616, -0.870878, -0.325106,
		-0.903844, -0.254049, -0.344275,
		33.098827, 45.149151, 21.257107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829536, 45.262577, 20.849804>,  <33.731518, 45.326984, 21.498100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829536, 45.262577, 20.849804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.435600, 45.331032, 20.861080>,  <33.199238, 45.372105, 20.867846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.435600, 45.331032, 20.861080>,  <33.829536, 45.262577, 20.849804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435600, 45.331032, 20.861080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079416, 0.589446, -0.803895,
		-0.154193, -0.789472, -0.594103,
		-0.984844, 0.171136, 0.028192,
		33.140148, 45.382374, 20.869537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455032, 44.624611, 20.923065>,  <33.829536, 45.262577, 20.849804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455032, 44.624611, 20.923065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.500385, 44.411591, 20.587559>,  <33.527596, 44.283779, 20.386255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.500385, 44.411591, 20.587559>,  <33.455032, 44.624611, 20.923065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500385, 44.411591, 20.587559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289149, -0.789983, 0.540665,
		-0.950546, -0.303831, 0.064417,
		0.113382, -0.532553, -0.838768,
		33.534401, 44.251823, 20.335928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223244, 43.932056, 21.104898>,  <33.455032, 44.624611, 20.923065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223244, 43.932056, 21.104898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.458069, 43.876225, 20.785933>,  <33.598965, 43.842724, 20.594553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.458069, 43.876225, 20.785933>,  <33.223244, 43.932056, 21.104898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458069, 43.876225, 20.785933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379569, -0.822580, 0.423425,
		-0.715040, -0.551253, -0.429927,
		0.587064, -0.139579, -0.797417,
		33.634190, 43.834351, 20.546707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133045, 43.220112, 20.866383>,  <33.223244, 43.932056, 21.104898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133045, 43.220112, 20.866383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.479851, 43.366783, 20.731428>,  <33.687935, 43.454788, 20.650455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.479851, 43.366783, 20.731428>,  <33.133045, 43.220112, 20.866383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479851, 43.366783, 20.731428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461929, -0.845361, 0.268301,
		-0.186830, -0.388468, -0.902323,
		0.867015, 0.366683, -0.337384,
		33.739956, 43.476788, 20.630213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405273, 42.701202, 20.394382>,  <33.133045, 43.220112, 20.866383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405273, 42.701202, 20.394382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.698544, 42.911491, 20.566927>,  <33.874504, 43.037666, 20.670454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.698544, 42.911491, 20.566927>,  <33.405273, 42.701202, 20.394382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698544, 42.911491, 20.566927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455035, -0.850651, 0.263318,
		0.505368, 0.003226, -0.862898,
		0.733175, 0.525721, 0.431360,
		33.918495, 43.069206, 20.696335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851425, 42.170334, 20.517572>,  <33.405273, 42.701202, 20.394382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851425, 42.170334, 20.517572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.020348, 42.470863, 20.720423>,  <34.121700, 42.651180, 20.842133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.020348, 42.470863, 20.720423>,  <33.851425, 42.170334, 20.517572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020348, 42.470863, 20.720423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364906, -0.653034, 0.663619,
		0.829761, -0.095196, -0.549941,
		0.422304, 0.751321, 0.507124,
		34.147038, 42.696259, 20.872561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546219, 42.055355, 20.557693>,  <33.851425, 42.170334, 20.517572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546219, 42.055355, 20.557693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.438850, 42.287483, 20.865248>,  <34.374428, 42.426758, 21.049780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.438850, 42.287483, 20.865248>,  <34.546219, 42.055355, 20.557693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438850, 42.287483, 20.865248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298674, -0.708704, 0.639165,
		0.915829, 0.401212, 0.016908,
		-0.268424, 0.580316, 0.768884,
		34.358322, 42.461578, 21.095913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127357, 42.094658, 21.060236>,  <34.546219, 42.055355, 20.557693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127357, 42.094658, 21.060236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.792656, 42.168083, 21.266594>,  <34.591835, 42.212139, 21.390408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.792656, 42.168083, 21.266594>,  <35.127357, 42.094658, 21.060236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792656, 42.168083, 21.266594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309544, -0.618591, 0.722169,
		0.451688, 0.763970, 0.460789,
		-0.836756, 0.183561, 0.515893,
		34.541630, 42.223152, 21.421362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331352, 41.842304, 21.697386>,  <35.127357, 42.094658, 21.060236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331352, 41.842304, 21.697386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.945435, 41.928211, 21.758118>,  <34.713886, 41.979755, 21.794558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.945435, 41.928211, 21.758118>,  <35.331352, 41.842304, 21.697386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945435, 41.928211, 21.758118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016767, -0.626321, 0.779385,
		0.262478, 0.749399, 0.607871,
		-0.964792, 0.214763, 0.151830,
		34.655998, 41.992641, 21.803667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889450, 42.226906, 21.944553>,  <35.331352, 41.842304, 21.697386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889450, 42.226906, 21.944553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.228565, 42.053856, 21.821856>,  <36.432034, 41.950024, 21.748238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.228565, 42.053856, 21.821856>,  <35.889450, 42.226906, 21.944553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228565, 42.053856, 21.821856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135070, 0.383180, -0.913744,
		0.512848, 0.816093, 0.266420,
		0.847787, -0.432627, -0.306743,
		36.482903, 41.924068, 21.729832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312286, 42.734638, 21.702417>,  <35.889450, 42.226906, 21.944553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312286, 42.734638, 21.702417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.416782, 42.401581, 21.507086>,  <36.479481, 42.201748, 21.389887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.416782, 42.401581, 21.507086>,  <36.312286, 42.734638, 21.702417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416782, 42.401581, 21.507086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067819, 0.520481, -0.851176,
		0.962890, 0.189240, 0.192437,
		0.261236, -0.832639, -0.488331,
		36.495152, 42.151791, 21.360586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743217, 43.058029, 21.207890>,  <36.312286, 42.734638, 21.702417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743217, 43.058029, 21.207890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.654716, 42.682243, 21.103237>,  <36.601616, 42.456772, 21.040445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.654716, 42.682243, 21.103237>,  <36.743217, 43.058029, 21.207890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654716, 42.682243, 21.103237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168031, 0.227544, -0.959161,
		0.960631, -0.256182, 0.107514,
		-0.221255, -0.939465, -0.261632,
		36.588341, 42.400402, 21.024748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236450, 42.938457, 20.711010>,  <36.743217, 43.058029, 21.207890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236450, 42.938457, 20.711010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.949062, 42.666809, 20.650881>,  <36.776630, 42.503822, 20.614803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.949062, 42.666809, 20.650881>,  <37.236450, 42.938457, 20.711010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949062, 42.666809, 20.650881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026598, 0.242784, -0.969716,
		0.695046, -0.692716, -0.192496,
		-0.718473, -0.679117, -0.150321,
		36.733521, 42.463074, 20.605785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451546, 42.492355, 20.193182>,  <37.236450, 42.938457, 20.711010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451546, 42.492355, 20.193182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.055328, 42.438702, 20.181601>,  <36.817600, 42.406509, 20.174652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.055328, 42.438702, 20.181601>,  <37.451546, 42.492355, 20.193182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055328, 42.438702, 20.181601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013694, 0.113336, -0.993462,
		0.136543, -0.984460, -0.110427,
		-0.990539, -0.134139, -0.028956,
		36.758167, 42.398460, 20.172915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370857, 42.303139, 19.565107>,  <37.451546, 42.492355, 20.193182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370857, 42.303139, 19.565107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.981178, 42.353565, 19.639990>,  <36.747372, 42.383823, 19.684919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.981178, 42.353565, 19.639990>,  <37.370857, 42.303139, 19.565107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981178, 42.353565, 19.639990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163460, 0.177842, -0.970388,
		-0.155632, -0.975950, -0.152645,
		-0.974197, 0.126072, 0.187206,
		36.688919, 42.391388, 19.696152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976330, 41.833359, 19.150768>,  <37.370857, 42.303139, 19.565107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976330, 41.833359, 19.150768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.773781, 42.163738, 19.249884>,  <36.652252, 42.361965, 19.309353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.773781, 42.163738, 19.249884>,  <36.976330, 41.833359, 19.150768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773781, 42.163738, 19.249884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097365, 0.230751, -0.968129,
		-0.856799, -0.514362, -0.036428,
		-0.506375, 0.825945, 0.247789,
		36.621868, 42.411522, 19.324221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595596, 41.943954, 18.638220>,  <36.976330, 41.833359, 19.150768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595596, 41.943954, 18.638220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.537891, 42.306255, 18.797623>,  <36.503269, 42.523636, 18.893265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.537891, 42.306255, 18.797623>,  <36.595596, 41.943954, 18.638220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537891, 42.306255, 18.797623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003683, 0.403206, -0.915102,
		-0.989533, -0.130544, -0.061502,
		-0.144259, 0.905750, 0.398505,
		36.494614, 42.577980, 18.917173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981800, 42.115074, 18.248308>,  <36.595596, 41.943954, 18.638220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981800, 42.115074, 18.248308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.202076, 42.414391, 18.396255>,  <36.334240, 42.593983, 18.485023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.202076, 42.414391, 18.396255>,  <35.981800, 42.115074, 18.248308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202076, 42.414391, 18.396255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062586, 0.478875, -0.875650,
		-0.832363, 0.459060, 0.310542,
		0.550686, 0.748294, 0.369867,
		36.367283, 42.638878, 18.507215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.655956, 34.068172, 32.748993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.969627, 33.913952, 32.943485>,  <37.157829, 33.821419, 33.060181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.969627, 33.913952, 32.943485>,  <36.655956, 34.068172, 32.748993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969627, 33.913952, 32.943485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406208, 0.273419, 0.871916,
		-0.469110, -0.881246, 0.057796,
		0.784175, -0.385548, 0.486233,
		37.204880, 33.798286, 33.089355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691811, 34.472630, 32.015556>,  <36.655956, 34.068172, 32.748993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691811, 34.472630, 32.015556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.052479, 34.576038, 32.154209>,  <37.268879, 34.638084, 32.237400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.052479, 34.576038, 32.154209>,  <36.691811, 34.472630, 32.015556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052479, 34.576038, 32.154209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017615, 0.778987, -0.626792,
		-0.432065, 0.571266, 0.697836,
		0.901670, 0.258522, 0.346636,
		37.322979, 34.653595, 32.258202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694683, 35.214577, 32.261482>,  <36.691811, 34.472630, 32.015556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694683, 35.214577, 32.261482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055134, 35.083778, 32.147610>,  <37.271404, 35.005299, 32.079285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055134, 35.083778, 32.147610>,  <36.694683, 35.214577, 32.261482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055134, 35.083778, 32.147610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079714, 0.770387, -0.632574,
		0.426163, 0.547337, 0.720283,
		0.901127, -0.326997, -0.284680,
		37.325474, 34.985680, 32.062206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118996, 35.728142, 32.354458>,  <36.694683, 35.214577, 32.261482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118996, 35.728142, 32.354458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.290890, 35.504444, 32.070889>,  <37.394028, 35.370224, 31.900747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.290890, 35.504444, 32.070889>,  <37.118996, 35.728142, 32.354458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290890, 35.504444, 32.070889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291162, 0.828999, -0.477478,
		0.854723, -0.001221, 0.519083,
		0.429736, -0.559249, -0.708920,
		37.419811, 35.336670, 31.858212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740025, 36.097385, 32.093857>,  <37.118996, 35.728142, 32.354458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740025, 36.097385, 32.093857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.717884, 35.853024, 31.777948>,  <37.704601, 35.706406, 31.588404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.717884, 35.853024, 31.777948>,  <37.740025, 36.097385, 32.093857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717884, 35.853024, 31.777948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213422, 0.765463, -0.607057,
		0.975391, -0.202156, 0.088010,
		-0.055351, -0.610901, -0.789770,
		37.701279, 35.669754, 31.541018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234699, 36.336189, 31.453630>,  <37.740025, 36.097385, 32.093857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234699, 36.336189, 31.453630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.979549, 36.074924, 31.290409>,  <37.826462, 35.918167, 31.192476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.979549, 36.074924, 31.290409>,  <38.234699, 36.336189, 31.453630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979549, 36.074924, 31.290409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009468, 0.536449, -0.843880,
		0.770086, -0.534422, -0.348368,
		-0.637869, -0.653159, -0.408052,
		37.788189, 35.878979, 31.167994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609245, 36.191242, 30.854218>,  <38.234699, 36.336189, 31.453630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609245, 36.191242, 30.854218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.220406, 36.113998, 30.800941>,  <37.987103, 36.067654, 30.768976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.220406, 36.113998, 30.800941>,  <38.609245, 36.191242, 30.854218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220406, 36.113998, 30.800941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082341, 0.250762, -0.964541,
		0.219652, -0.948594, -0.227865,
		-0.972097, -0.193101, -0.133188,
		37.928776, 36.056065, 30.760984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550003, 35.562061, 30.254238>,  <38.609245, 36.191242, 30.854218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550003, 35.562061, 30.254238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.206322, 35.764568, 30.283812>,  <38.000114, 35.886074, 30.301556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.206322, 35.764568, 30.283812>,  <38.550003, 35.562061, 30.254238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206322, 35.764568, 30.283812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176087, 0.428273, -0.886327,
		-0.480385, -0.748513, -0.457119,
		-0.859199, 0.506271, 0.073933,
		37.948563, 35.916451, 30.305992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400673, 35.710934, 29.560633>,  <38.550003, 35.562061, 30.254238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400673, 35.710934, 29.560633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.137390, 35.958267, 29.732410>,  <37.979420, 36.106667, 29.835478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.137390, 35.958267, 29.732410>,  <38.400673, 35.710934, 29.560633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137390, 35.958267, 29.732410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060163, 0.525412, -0.848718,
		-0.750425, -0.584473, -0.308632,
		-0.658211, 0.618332, 0.429446,
		37.939926, 36.143768, 29.861244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847836, 35.767879, 29.040518>,  <38.400673, 35.710934, 29.560633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847836, 35.767879, 29.040518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.825413, 36.072041, 29.299330>,  <37.811958, 36.254536, 29.454617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.825413, 36.072041, 29.299330>,  <37.847836, 35.767879, 29.040518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825413, 36.072041, 29.299330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173381, 0.630787, -0.756337,
		-0.983258, -0.154583, 0.096477,
		-0.056061, 0.760402, 0.647029,
		37.808594, 36.300159, 29.493439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164295, 36.115509, 28.934139>,  <37.847836, 35.767879, 29.040518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164295, 36.115509, 28.934139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.427586, 36.386127, 29.066219>,  <37.585560, 36.548496, 29.145468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.427586, 36.386127, 29.066219>,  <37.164295, 36.115509, 28.934139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427586, 36.386127, 29.066219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119512, 0.526962, -0.841444,
		-0.743277, 0.514393, 0.427713,
		0.658222, 0.676543, 0.330202,
		37.625053, 36.589092, 29.165279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925068, 36.794357, 28.965841>,  <37.164295, 36.115509, 28.934139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925068, 36.794357, 28.965841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.317760, 36.854214, 28.918831>,  <37.553375, 36.890129, 28.890625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.317760, 36.854214, 28.918831>,  <36.925068, 36.794357, 28.965841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317760, 36.854214, 28.918831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179148, 0.518789, -0.835921,
		-0.064118, 0.841704, 0.536119,
		0.981731, 0.149642, -0.117526,
		37.612278, 36.899105, 28.883574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156288, 36.845779, 28.685112>,  <36.925068, 36.794357, 28.965841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156288, 36.845779, 28.685112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.983788, 36.679962, 28.364569>,  <35.880287, 36.580471, 28.172243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.983788, 36.679962, 28.364569>,  <36.156288, 36.845779, 28.685112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983788, 36.679962, 28.364569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151383, -0.842360, 0.517215,
		-0.889440, 0.344363, 0.300517,
		-0.431254, -0.414539, -0.801360,
		35.854412, 36.555599, 28.124161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653236, 36.359215, 29.013081>,  <36.156288, 36.845779, 28.685112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653236, 36.359215, 29.013081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667931, 36.235497, 28.632978>,  <35.676746, 36.161266, 28.404917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667931, 36.235497, 28.632978>,  <35.653236, 36.359215, 29.013081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667931, 36.235497, 28.632978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115759, -0.945815, 0.303371,
		-0.992598, 0.098857, -0.070546,
		0.036733, -0.309292, -0.950257,
		35.678951, 36.142708, 28.347900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932304, 35.960602, 28.840010>,  <35.653236, 36.359215, 29.013081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932304, 35.960602, 28.840010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.240990, 35.860550, 28.606123>,  <35.426201, 35.800518, 28.465792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.240990, 35.860550, 28.606123>,  <34.932304, 35.960602, 28.840010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240990, 35.860550, 28.606123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060265, -0.944034, 0.324297,
		-0.633108, -0.215027, -0.743598,
		0.771714, -0.250128, -0.584716,
		35.472504, 35.785511, 28.430708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808784, 35.280766, 28.689653>,  <34.932304, 35.960602, 28.840010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808784, 35.280766, 28.689653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.184513, 35.290962, 28.552818>,  <35.409950, 35.297081, 28.470716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.184513, 35.290962, 28.552818>,  <34.808784, 35.280766, 28.689653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184513, 35.290962, 28.552818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148969, -0.928607, 0.339849,
		-0.309001, -0.370188, -0.876059,
		0.939322, 0.025492, -0.342087,
		35.466309, 35.298611, 28.450191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955204, 34.673302, 28.392721>,  <34.808784, 35.280766, 28.689653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955204, 34.673302, 28.392721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318787, 34.817215, 28.476959>,  <35.536938, 34.903564, 28.527502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318787, 34.817215, 28.476959>,  <34.955204, 34.673302, 28.392721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318787, 34.817215, 28.476959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298344, -0.914228, 0.274185,
		0.291179, -0.186393, -0.938335,
		0.908959, 0.359783, 0.210595,
		35.591473, 34.925152, 28.540138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450336, 34.364105, 27.907761>,  <34.955204, 34.673302, 28.392721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450336, 34.364105, 27.907761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.615437, 34.471752, 28.255833>,  <35.714497, 34.536339, 28.464676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.615437, 34.471752, 28.255833>,  <35.450336, 34.364105, 27.907761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615437, 34.471752, 28.255833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246058, -0.952780, 0.177950,
		0.876981, 0.140666, -0.459476,
		0.412748, 0.269117, 0.870181,
		35.739262, 34.552486, 28.516888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955143, 33.777851, 27.975559>,  <35.450336, 34.364105, 27.907761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955143, 33.777851, 27.975559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.927505, 33.963158, 28.328968>,  <35.910923, 34.074341, 28.541014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.927505, 33.963158, 28.328968>,  <35.955143, 33.777851, 27.975559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927505, 33.963158, 28.328968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072054, -0.881008, 0.467583,
		0.995004, 0.095970, 0.027495,
		-0.069097, 0.463266, 0.883521,
		35.906776, 34.102139, 28.594025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566433, 33.470974, 28.435934>,  <35.955143, 33.777851, 27.975559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566433, 33.470974, 28.435934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.336826, 33.666130, 28.698982>,  <36.199062, 33.783222, 28.856812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.336826, 33.666130, 28.698982>,  <36.566433, 33.470974, 28.435934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336826, 33.666130, 28.698982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118546, -0.844165, 0.522813,
		0.810214, 0.222147, 0.542405,
		-0.574021, 0.487890, 0.657619,
		36.164619, 33.812496, 28.896269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734257, 33.180824, 29.085997>,  <36.566433, 33.470974, 28.435934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734257, 33.180824, 29.085997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.374928, 33.336884, 29.166800>,  <36.159332, 33.430519, 29.215281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.374928, 33.336884, 29.166800>,  <36.734257, 33.180824, 29.085997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374928, 33.336884, 29.166800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252800, -0.835066, 0.488628,
		0.359327, 0.387876, 0.848785,
		-0.898319, 0.390149, 0.202007,
		36.105431, 33.453930, 29.227402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588829, 33.179111, 29.881445>,  <36.734257, 33.180824, 29.085997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588829, 33.179111, 29.881445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.251511, 33.163399, 29.667040>,  <36.049118, 33.153973, 29.538397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.251511, 33.163399, 29.667040>,  <36.588829, 33.179111, 29.881445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251511, 33.163399, 29.667040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400575, -0.618977, 0.675579,
		-0.358316, 0.784426, 0.506246,
		-0.843297, -0.039282, -0.536011,
		35.998520, 33.151615, 29.506237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995995, 33.212952, 30.363693>,  <36.588829, 33.179111, 29.881445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995995, 33.212952, 30.363693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848991, 33.059158, 30.024965>,  <35.760788, 32.966881, 29.821728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848991, 33.059158, 30.024965>,  <35.995995, 33.212952, 30.363693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848991, 33.059158, 30.024965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497319, -0.688177, 0.528287,
		-0.785881, 0.615292, 0.061701,
		-0.367512, -0.384485, -0.846821,
		35.738739, 32.943813, 29.770920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367416, 32.887238, 30.594757>,  <35.995995, 33.212952, 30.363693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367416, 32.887238, 30.594757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339569, 32.744820, 30.222010>,  <35.322861, 32.659367, 29.998362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339569, 32.744820, 30.222010>,  <35.367416, 32.887238, 30.594757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339569, 32.744820, 30.222010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460616, -0.817123, 0.346617,
		-0.884865, 0.453365, -0.107116,
		-0.069617, -0.356049, -0.931871,
		35.318684, 32.638004, 29.942448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670837, 32.659691, 30.527472>,  <35.367416, 32.887238, 30.594757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670837, 32.659691, 30.527472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.868595, 32.454437, 30.246824>,  <34.987251, 32.331284, 30.078436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.868595, 32.454437, 30.246824>,  <34.670837, 32.659691, 30.527472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868595, 32.454437, 30.246824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655221, -0.750397, 0.087114,
		-0.571192, 0.416645, -0.707210,
		0.494393, -0.513138, -0.701616,
		35.016914, 32.300495, 30.036339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119831, 32.257290, 30.194109>,  <34.670837, 32.659691, 30.527472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119831, 32.257290, 30.194109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.481743, 32.098198, 30.133196>,  <34.698891, 32.002743, 30.096647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.481743, 32.098198, 30.133196>,  <34.119831, 32.257290, 30.194109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481743, 32.098198, 30.133196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387188, -0.917110, 0.094839,
		-0.177382, -0.026846, -0.983776,
		0.904777, -0.397729, -0.152284,
		34.753178, 31.978880, 30.087511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235146, 32.743732, 29.626099>,  <34.119831, 32.257290, 30.194109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235146, 32.743732, 29.626099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907043, 32.751476, 29.854767>,  <33.710182, 32.756123, 29.991968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907043, 32.751476, 29.854767>,  <34.235146, 32.743732, 29.626099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907043, 32.751476, 29.854767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320960, 0.811683, -0.488013,
		-0.473464, -0.583778, -0.659572,
		-0.820254, 0.019360, 0.571672,
		33.660969, 32.757286, 30.026268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661427, 32.805759, 29.234215>,  <34.235146, 32.743732, 29.626099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661427, 32.805759, 29.234215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593754, 32.953949, 29.599537>,  <33.553150, 33.042862, 29.818731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593754, 32.953949, 29.599537>,  <33.661427, 32.805759, 29.234215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593754, 32.953949, 29.599537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328422, 0.852513, -0.406646,
		-0.929256, -0.368747, -0.022560,
		-0.169183, 0.370469, 0.913307,
		33.542999, 33.065090, 29.873529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937263, 33.000046, 29.332878>,  <33.661427, 32.805759, 29.234215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937263, 33.000046, 29.332878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.171230, 33.243305, 29.547550>,  <33.311611, 33.389259, 29.676353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.171230, 33.243305, 29.547550>,  <32.937263, 33.000046, 29.332878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171230, 33.243305, 29.547550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534939, 0.786617, -0.308341,
		-0.609677, -0.106736, 0.785430,
		0.584922, 0.608146, 0.536680,
		33.346706, 33.425751, 29.708553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443455, 33.465038, 29.663254>,  <32.937263, 33.000046, 29.332878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443455, 33.465038, 29.663254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.799160, 33.645943, 29.635939>,  <33.012585, 33.754486, 29.619549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.799160, 33.645943, 29.635939>,  <32.443455, 33.465038, 29.663254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799160, 33.645943, 29.635939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434213, 0.787825, -0.436797,
		-0.143746, 0.418081, 0.896965,
		0.889267, 0.452261, -0.068290,
		33.065941, 33.781620, 29.615452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323814, 34.106617, 29.939562>,  <32.443455, 33.465038, 29.663254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323814, 34.106617, 29.939562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.656757, 34.136852, 29.719936>,  <32.856522, 34.154991, 29.588161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.656757, 34.136852, 29.719936>,  <32.323814, 34.106617, 29.939562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656757, 34.136852, 29.719936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358258, 0.829248, -0.428951,
		0.422886, 0.553746, 0.717309,
		0.832357, 0.075584, -0.549061,
		32.906464, 34.159527, 29.555218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529350, 34.782272, 29.995232>,  <32.323814, 34.106617, 29.939562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529350, 34.782272, 29.995232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.713257, 34.653446, 29.664200>,  <32.823601, 34.576149, 29.465580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.713257, 34.653446, 29.664200>,  <32.529350, 34.782272, 29.995232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713257, 34.653446, 29.664200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338923, 0.797738, -0.498743,
		0.820823, 0.509789, 0.257613,
		0.459762, -0.322069, -0.827581,
		32.851185, 34.556824, 29.415926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907593, 35.357563, 29.823668>,  <32.529350, 34.782272, 29.995232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907593, 35.357563, 29.823668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.891800, 35.145844, 29.484661>,  <32.882324, 35.018810, 29.281258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.891800, 35.145844, 29.484661>,  <32.907593, 35.357563, 29.823668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891800, 35.145844, 29.484661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184680, 0.837428, -0.514401,
		0.982005, 0.136211, -0.130813,
		-0.039480, -0.529303, -0.847514,
		32.879955, 34.987053, 29.230408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244743, 35.829288, 29.430962>,  <32.907593, 35.357563, 29.823668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244743, 35.829288, 29.430962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.066261, 35.587112, 29.167343>,  <32.959171, 35.441807, 29.009172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.066261, 35.587112, 29.167343>,  <33.244743, 35.829288, 29.430962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066261, 35.587112, 29.167343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231824, 0.789484, -0.568307,
		0.864381, -0.100801, -0.492630,
		-0.446209, -0.605437, -0.659047,
		32.932400, 35.405479, 28.969629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425964, 35.945904, 28.774570>,  <33.244743, 35.829288, 29.430962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425964, 35.945904, 28.774570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.071724, 35.769726, 28.715620>,  <32.859180, 35.664021, 28.680250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.071724, 35.769726, 28.715620>,  <33.425964, 35.945904, 28.774570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071724, 35.769726, 28.715620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305894, 0.791901, -0.528510,
		0.349485, -0.422968, -0.836037,
		-0.885601, -0.440445, -0.147374,
		32.806046, 35.637592, 28.671408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339390, 35.931328, 28.071434>,  <33.425964, 35.945904, 28.774570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339390, 35.931328, 28.071434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967621, 35.887615, 28.212418>,  <32.744560, 35.861389, 28.297007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967621, 35.887615, 28.212418>,  <33.339390, 35.931328, 28.071434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967621, 35.887615, 28.212418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332624, 0.661679, -0.671969,
		-0.159780, -0.741781, -0.651331,
		-0.929425, -0.109281, 0.352457,
		32.688793, 35.854832, 28.318155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009422, 35.854996, 27.487310>,  <33.339390, 35.931328, 28.071434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009422, 35.854996, 27.487310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.726357, 35.949219, 27.753763>,  <32.556519, 36.005753, 27.913635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.726357, 35.949219, 27.753763>,  <33.009422, 35.854996, 27.487310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726357, 35.949219, 27.753763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411112, 0.629486, -0.659343,
		-0.574634, -0.740445, -0.348621,
		-0.707660, 0.235559, 0.666131,
		32.514057, 36.019886, 27.953602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353889, 35.787766, 27.157272>,  <33.009422, 35.854996, 27.487310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353889, 35.787766, 27.157272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.298435, 36.060318, 27.444746>,  <32.265163, 36.223850, 27.617229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.298435, 36.060318, 27.444746>,  <32.353889, 35.787766, 27.157272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298435, 36.060318, 27.444746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208520, 0.689340, -0.693780,
		-0.968143, -0.246041, 0.046515,
		-0.138633, 0.681377, 0.718684,
		32.256844, 36.264732, 27.660351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668518, 36.096573, 26.963388>,  <32.353889, 35.787766, 27.157272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668518, 36.096573, 26.963388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.861982, 36.346344, 27.208715>,  <31.978062, 36.496208, 27.355911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.861982, 36.346344, 27.208715>,  <31.668518, 36.096573, 26.963388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861982, 36.346344, 27.208715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217752, 0.764546, -0.606674,
		-0.847735, 0.159874, 0.505753,
		0.483662, 0.624428, 0.613319,
		32.007080, 36.533672, 27.392712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191774, 36.685406, 27.039112>,  <31.668518, 36.096573, 26.963388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191774, 36.685406, 27.039112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.551275, 36.811947, 27.160543>,  <31.766975, 36.887871, 27.233402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.551275, 36.811947, 27.160543>,  <31.191774, 36.685406, 27.039112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551275, 36.811947, 27.160543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122053, 0.845539, -0.519776,
		-0.421123, 0.430098, 0.798543,
		0.898754, 0.316355, 0.303581,
		31.820902, 36.906853, 27.251617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091585, 37.387096, 27.324638>,  <31.191774, 36.685406, 27.039112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091585, 37.387096, 27.324638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.480778, 37.354305, 27.238306>,  <31.714294, 37.334629, 27.186506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.480778, 37.354305, 27.238306>,  <31.091585, 37.387096, 27.324638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480778, 37.354305, 27.238306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015064, 0.910303, -0.413667,
		0.230383, 0.405743, 0.884475,
		0.972983, -0.081978, -0.215831,
		31.772673, 37.329712, 27.173557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345930, 37.980591, 27.686285>,  <31.091585, 37.387096, 27.324638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345930, 37.980591, 27.686285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.613066, 37.856312, 27.415743>,  <31.773348, 37.781746, 27.253418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.613066, 37.856312, 27.415743>,  <31.345930, 37.980591, 27.686285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613066, 37.856312, 27.415743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047496, 0.924645, -0.377858,
		0.742787, 0.220225, 0.632272,
		0.667841, -0.310698, -0.676354,
		31.813417, 37.763103, 27.212837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930820, 38.456757, 27.715485>,  <31.345930, 37.980591, 27.686285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930820, 38.456757, 27.715485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.962540, 38.290810, 27.352917>,  <31.981571, 38.191242, 27.135376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.962540, 38.290810, 27.352917>,  <31.930820, 38.456757, 27.715485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962540, 38.290810, 27.352917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180623, 0.900212, -0.396224,
		0.980350, -0.132300, 0.146321,
		0.079300, -0.414867, -0.906420,
		31.986330, 38.166351, 27.080990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482185, 38.679405, 27.474455>,  <31.930820, 38.456757, 27.715485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482185, 38.679405, 27.474455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308136, 38.551628, 27.137735>,  <32.203709, 38.474960, 26.935703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308136, 38.551628, 27.137735>,  <32.482185, 38.679405, 27.474455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308136, 38.551628, 27.137735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277255, 0.841975, -0.462825,
		0.856621, -0.434777, -0.277793,
		-0.435120, -0.319447, -0.841798,
		32.177601, 38.455795, 26.885197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949650, 38.787342, 26.982941>,  <32.482185, 38.679405, 27.474455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949650, 38.787342, 26.982941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.592739, 38.758255, 26.804705>,  <32.378593, 38.740803, 26.697763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.592739, 38.758255, 26.804705>,  <32.949650, 38.787342, 26.982941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592739, 38.758255, 26.804705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192441, 0.831547, -0.521053,
		0.408416, -0.550675, -0.727979,
		-0.892280, -0.072713, -0.445590,
		32.325054, 38.736443, 26.671028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088776, 38.888092, 26.378363>,  <32.949650, 38.787342, 26.982941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088776, 38.888092, 26.378363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695694, 38.962097, 26.375271>,  <32.459843, 39.006500, 26.373417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695694, 38.962097, 26.375271>,  <33.088776, 38.888092, 26.378363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695694, 38.962097, 26.375271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177539, 0.929525, -0.323208,
		-0.052614, -0.318990, -0.946297,
		-0.982706, 0.185010, -0.007727,
		32.400883, 39.017601, 26.372953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963825, 39.104607, 25.630775>,  <33.088776, 38.888092, 26.378363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963825, 39.104607, 25.630775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.652710, 39.249958, 25.835911>,  <32.466042, 39.337170, 25.958992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.652710, 39.249958, 25.835911>,  <32.963825, 39.104607, 25.630775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652710, 39.249958, 25.835911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140229, 0.895691, -0.421987,
		-0.612687, -0.256301, -0.747613,
		-0.777786, 0.363383, 0.512838,
		32.419373, 39.358974, 25.989761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692951, 39.617435, 25.251976>,  <32.963825, 39.104607, 25.630775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692951, 39.617435, 25.251976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474792, 39.706165, 25.575293>,  <32.343899, 39.759403, 25.769283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474792, 39.706165, 25.575293>,  <32.692951, 39.617435, 25.251976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474792, 39.706165, 25.575293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058622, 0.951888, -0.300787,
		-0.836127, -0.211431, -0.506151,
		-0.545394, 0.221824, 0.808294,
		32.311172, 39.772713, 25.817781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112091, 39.876690, 25.023432>,  <32.692951, 39.617435, 25.251976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112091, 39.876690, 25.023432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.186543, 39.998848, 25.396975>,  <32.231213, 40.072144, 25.621099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.186543, 39.998848, 25.396975>,  <32.112091, 39.876690, 25.023432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186543, 39.998848, 25.396975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017750, 0.949266, -0.313973,
		-0.982364, 0.075017, 0.171269,
		0.186133, 0.305396, 0.933857,
		32.242382, 40.090466, 25.677132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661207, 40.483089, 25.213545>,  <32.112091, 39.876690, 25.023432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661207, 40.483089, 25.213545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.996143, 40.482719, 25.432217>,  <32.197105, 40.482498, 25.563419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.996143, 40.482719, 25.432217>,  <31.661207, 40.483089, 25.213545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996143, 40.482719, 25.432217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275118, 0.864849, -0.419937,
		-0.472409, 0.502032, 0.724426,
		0.837341, -0.000920, 0.546680,
		32.247345, 40.482445, 25.596220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430820, 41.056145, 25.622530>,  <31.661207, 40.483089, 25.213545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430820, 41.056145, 25.622530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.823149, 41.021065, 25.692156>,  <32.058544, 41.000015, 25.733931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.823149, 41.021065, 25.692156>,  <31.430820, 41.056145, 25.622530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823149, 41.021065, 25.692156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140509, 0.937071, -0.319616,
		-0.135079, 0.337944, 0.931422,
		0.980821, -0.087700, 0.174063,
		32.117393, 40.994755, 25.744375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706017, 41.667347, 25.880690>,  <31.430820, 41.056145, 25.622530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706017, 41.667347, 25.880690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.008835, 41.470043, 25.709305>,  <32.190525, 41.351662, 25.606474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.008835, 41.470043, 25.709305>,  <31.706017, 41.667347, 25.880690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008835, 41.470043, 25.709305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340226, 0.857467, -0.386000,
		0.557788, 0.146447, 0.816961,
		0.757046, -0.493258, -0.428460,
		32.235950, 41.322067, 25.580767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178234, 42.093727, 25.932686>,  <31.706017, 41.667347, 25.880690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178234, 42.093727, 25.932686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.360542, 41.866280, 25.658766>,  <32.469925, 41.729813, 25.494413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.360542, 41.866280, 25.658766>,  <32.178234, 42.093727, 25.932686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360542, 41.866280, 25.658766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144762, 0.806462, -0.573292,
		0.878249, 0.162155, 0.449872,
		0.455767, -0.568617, -0.684800,
		32.497272, 41.695694, 25.453325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863491, 42.407967, 25.698223>,  <32.178234, 42.093727, 25.932686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863491, 42.407967, 25.698223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.785366, 42.167004, 25.388655>,  <32.738491, 42.022427, 25.202913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.785366, 42.167004, 25.388655>,  <32.863491, 42.407967, 25.698223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785366, 42.167004, 25.388655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189090, 0.751181, -0.632434,
		0.962339, -0.269865, -0.032808,
		-0.195316, -0.602412, -0.773919,
		32.726772, 41.986279, 25.156479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476997, 42.328396, 25.776739>,  <32.863491, 42.407967, 25.698223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476997, 42.328396, 25.776739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705547, 42.542366, 26.025700>,  <33.842678, 42.670750, 26.175076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705547, 42.542366, 26.025700>,  <33.476997, 42.328396, 25.776739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705547, 42.542366, 26.025700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033563, -0.772985, 0.633536,
		0.820001, -0.341099, -0.459620,
		0.571378, 0.534926, 0.622400,
		33.876961, 42.702843, 26.212420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958706, 41.855286, 26.003672>,  <33.476997, 42.328396, 25.776739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958706, 41.855286, 26.003672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.924976, 42.140194, 26.282400>,  <33.904739, 42.311138, 26.449638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.924976, 42.140194, 26.282400>,  <33.958706, 41.855286, 26.003672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924976, 42.140194, 26.282400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032599, -0.696968, 0.716362,
		0.995905, 0.083121, 0.035551,
		-0.084323, 0.712269, 0.696823,
		33.899681, 42.353874, 26.491447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413471, 41.719521, 26.523533>,  <33.958706, 41.855286, 26.003672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413471, 41.719521, 26.523533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.162930, 41.968639, 26.711067>,  <34.012604, 42.118111, 26.823587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.162930, 41.968639, 26.711067>,  <34.413471, 41.719521, 26.523533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162930, 41.968639, 26.711067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000231, -0.601280, 0.799039,
		0.779538, 0.500590, 0.376471,
		-0.626355, 0.622794, 0.468836,
		33.975021, 42.155479, 26.851717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657272, 41.789223, 27.143080>,  <34.413471, 41.719521, 26.523533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657272, 41.789223, 27.143080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.313347, 41.969074, 27.239868>,  <34.106991, 42.076984, 27.297941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.313347, 41.969074, 27.239868>,  <34.657272, 41.789223, 27.143080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313347, 41.969074, 27.239868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000135, -0.474097, 0.880473,
		0.510603, 0.757013, 0.407697,
		-0.859817, 0.449627, 0.241973,
		34.055401, 42.103962, 27.312460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661568, 42.110218, 27.822706>,  <34.657272, 41.789223, 27.143080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661568, 42.110218, 27.822706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.275639, 42.036091, 27.748110>,  <34.044083, 41.991615, 27.703352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.275639, 42.036091, 27.748110>,  <34.661568, 42.110218, 27.822706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275639, 42.036091, 27.748110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070649, -0.500499, 0.862850,
		-0.253237, 0.845671, 0.469800,
		-0.964821, -0.185315, -0.186490,
		33.986191, 41.980495, 27.692163>
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
