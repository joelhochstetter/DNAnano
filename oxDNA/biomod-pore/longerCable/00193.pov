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
	<23.939871, 34.729263, 34.962513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223089, 34.982037, 35.088581>,  <24.393021, 35.133701, 35.164223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223089, 34.982037, 35.088581>,  <23.939871, 34.729263, 34.962513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.223089, 34.982037, 35.088581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384342, 0.719276, -0.578726,
		-0.592410, 0.288632, 0.752158,
		0.708048, 0.631929, 0.315173,
		24.435503, 35.171616, 35.183132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.294374, 34.309765, 34.369457>,  <23.939871, 34.729263, 34.962513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.294374, 34.309765, 34.369457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.585443, 34.583931, 34.380062>,  <24.760084, 34.748428, 34.386425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.585443, 34.583931, 34.380062>,  <24.294374, 34.309765, 34.369457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.585443, 34.583931, 34.380062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561093, -0.617027, 0.551773,
		0.394548, -0.386636, -0.833573,
		0.727672, 0.685413, 0.026508,
		24.803745, 34.789555, 34.388016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.956335, 34.061119, 34.095596>,  <24.294374, 34.309765, 34.369457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.956335, 34.061119, 34.095596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016695, 34.364555, 34.349136>,  <25.052912, 34.546616, 34.501259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016695, 34.364555, 34.349136>,  <24.956335, 34.061119, 34.095596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.016695, 34.364555, 34.349136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624463, -0.570213, 0.533763,
		0.766338, 0.315271, -0.559759,
		0.150902, 0.758592, 0.633851,
		25.061966, 34.592133, 34.539291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596619, 34.289780, 34.085327>,  <24.956335, 34.061119, 34.095596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596619, 34.289780, 34.085327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471455, 34.370640, 34.456535>,  <25.396357, 34.419155, 34.679260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471455, 34.370640, 34.456535>,  <25.596619, 34.289780, 34.085327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471455, 34.370640, 34.456535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879802, -0.306416, 0.363399,
		0.357822, 0.930185, -0.081974,
		-0.312910, 0.202153, 0.928020,
		25.377583, 34.431286, 34.734940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100281, 34.762794, 34.088997>,  <25.596619, 34.289780, 34.085327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100281, 34.762794, 34.088997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077835, 34.449718, 33.841045>,  <26.064367, 34.261871, 33.692276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077835, 34.449718, 33.841045>,  <26.100281, 34.762794, 34.088997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077835, 34.449718, 33.841045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593658, 0.473027, -0.651011,
		0.802758, -0.404527, 0.438106,
		-0.056115, -0.782690, -0.619877,
		26.061001, 34.214912, 33.655083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817432, 34.607521, 33.879353>,  <26.100281, 34.762794, 34.088997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817432, 34.607521, 33.879353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560036, 34.473549, 33.604038>,  <26.405598, 34.393166, 33.438850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560036, 34.473549, 33.604038>,  <26.817432, 34.607521, 33.879353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.560036, 34.473549, 33.604038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541572, 0.436239, -0.718607,
		0.540944, -0.835173, -0.099325,
		-0.643491, -0.334934, -0.688287,
		26.366989, 34.373070, 33.397552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820568, 35.253262, 33.425484>,  <26.817432, 34.607521, 33.879353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.820568, 35.253262, 33.425484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146133, 35.048973, 33.314705>,  <27.341473, 34.926399, 33.248238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146133, 35.048973, 33.314705>,  <26.820568, 35.253262, 33.425484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146133, 35.048973, 33.314705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199411, 0.202159, -0.958836,
		0.545690, 0.835638, 0.062696,
		0.813915, -0.510725, -0.276951,
		27.390308, 34.895756, 33.231621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220934, 35.662071, 32.790890>,  <26.820568, 35.253262, 33.425484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220934, 35.662071, 32.790890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315641, 35.273945, 32.810570>,  <27.372467, 35.041069, 32.822380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315641, 35.273945, 32.810570>,  <27.220934, 35.662071, 32.790890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315641, 35.273945, 32.810570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058595, -0.036290, -0.997622,
		0.969797, 0.239090, 0.048264,
		0.236770, -0.970319, 0.049203,
		27.386673, 34.982849, 32.825329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586308, 35.570576, 32.212715>,  <27.220934, 35.662071, 32.790890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586308, 35.570576, 32.212715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506994, 35.189297, 32.304020>,  <27.459406, 34.960529, 32.358803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506994, 35.189297, 32.304020>,  <27.586308, 35.570576, 32.212715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506994, 35.189297, 32.304020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182692, -0.192863, -0.964068,
		0.962968, -0.232862, -0.135899,
		-0.198285, -0.953194, 0.228263,
		27.447510, 34.903339, 32.372498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977243, 35.253418, 31.762529>,  <27.586308, 35.570576, 32.212715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977243, 35.253418, 31.762529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709322, 34.978848, 31.875799>,  <27.548569, 34.814106, 31.943760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709322, 34.978848, 31.875799>,  <27.977243, 35.253418, 31.762529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709322, 34.978848, 31.875799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188967, -0.211228, -0.958996,
		0.718092, -0.695848, 0.011770,
		-0.669802, -0.686424, 0.283174,
		27.508381, 34.772919, 31.960751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045330, 34.732204, 31.316166>,  <27.977243, 35.253418, 31.762529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045330, 34.732204, 31.316166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686529, 34.652298, 31.473890>,  <27.471249, 34.604355, 31.568525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686529, 34.652298, 31.473890>,  <28.045330, 34.732204, 31.316166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686529, 34.652298, 31.473890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337262, -0.267329, -0.902657,
		0.285732, -0.942671, 0.172421,
		-0.897002, -0.199767, 0.394311,
		27.417429, 34.592369, 31.592184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702517, 34.341648, 30.859867>,  <28.045330, 34.732204, 31.316166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702517, 34.341648, 30.859867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390583, 34.488735, 31.062504>,  <27.203423, 34.576988, 31.184086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390583, 34.488735, 31.062504>,  <27.702517, 34.341648, 30.859867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390583, 34.488735, 31.062504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583490, -0.133917, -0.801003,
		-0.226710, -0.920241, 0.318998,
		-0.779835, 0.367727, 0.506592,
		27.156631, 34.599052, 31.214481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188940, 33.979050, 30.550560>,  <27.702517, 34.341648, 30.859867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188940, 33.979050, 30.550560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041800, 34.324638, 30.688101>,  <26.953516, 34.531994, 30.770624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041800, 34.324638, 30.688101>,  <27.188940, 33.979050, 30.550560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041800, 34.324638, 30.688101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666242, 0.013085, -0.745621,
		-0.648697, -0.503364, 0.570803,
		-0.367850, 0.863975, 0.343850,
		26.931444, 34.583832, 30.791256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512150, 33.898743, 30.650311>,  <27.188940, 33.979050, 30.550560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512150, 33.898743, 30.650311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599226, 34.280361, 30.567938>,  <26.651472, 34.509331, 30.518515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599226, 34.280361, 30.567938>,  <26.512150, 33.898743, 30.650311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599226, 34.280361, 30.567938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568460, -0.047576, -0.821334,
		-0.793387, 0.295862, 0.531980,
		0.217692, 0.954045, -0.205932,
		26.664534, 34.566574, 30.506159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.901119, 34.445213, 30.684298>,  <26.512150, 33.898743, 30.650311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.901119, 34.445213, 30.684298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183235, 34.521786, 30.411264>,  <26.352505, 34.567730, 30.247444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183235, 34.521786, 30.411264>,  <25.901119, 34.445213, 30.684298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183235, 34.521786, 30.411264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682919, -0.074901, -0.726644,
		-0.190232, 0.978643, 0.077908,
		0.705290, 0.191436, -0.682582,
		26.394821, 34.579216, 30.206490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133305, 34.571739, 31.409315>,  <25.901119, 34.445213, 30.684298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.133305, 34.571739, 31.409315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508209, 34.437069, 31.373119>,  <26.733152, 34.356266, 31.351402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508209, 34.437069, 31.373119>,  <26.133305, 34.571739, 31.409315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508209, 34.437069, 31.373119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236011, 0.421729, 0.875468,
		-0.256587, -0.841899, 0.474730,
		0.937263, -0.336675, -0.090487,
		26.789389, 34.336067, 31.345974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214617, 34.420700, 32.068718>,  <26.133305, 34.571739, 31.409315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214617, 34.420700, 32.068718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582191, 34.461575, 31.916340>,  <26.802736, 34.486099, 31.824913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582191, 34.461575, 31.916340>,  <26.214617, 34.420700, 32.068718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582191, 34.461575, 31.916340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358191, 0.188088, 0.914507,
		0.165093, -0.976822, 0.136241,
		0.918936, 0.102179, -0.380941,
		26.857872, 34.492229, 31.802057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580521, 33.956905, 32.383739>,  <26.214617, 34.420700, 32.068718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580521, 33.956905, 32.383739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880110, 34.189186, 32.256100>,  <27.059864, 34.328556, 32.179516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880110, 34.189186, 32.256100>,  <26.580521, 33.956905, 32.383739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880110, 34.189186, 32.256100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314208, 0.112728, 0.942637,
		0.583362, -0.806274, -0.098031,
		0.748974, 0.580701, -0.319099,
		27.104801, 34.363396, 32.160370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119362, 33.710590, 32.628300>,  <26.580521, 33.956905, 32.383739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119362, 33.710590, 32.628300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218985, 34.088470, 32.542957>,  <27.278759, 34.315197, 32.491753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218985, 34.088470, 32.542957>,  <27.119362, 33.710590, 32.628300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218985, 34.088470, 32.542957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280270, 0.140565, 0.949574,
		0.927048, -0.296296, -0.229761,
		0.249059, 0.944696, -0.213353,
		27.293703, 34.371880, 32.478951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871004, 33.805538, 32.886665>,  <27.119362, 33.710590, 32.628300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871004, 33.805538, 32.886665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701992, 34.166752, 32.855682>,  <27.600584, 34.383480, 32.837093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701992, 34.166752, 32.855682>,  <27.871004, 33.805538, 32.886665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701992, 34.166752, 32.855682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404779, 0.264476, 0.875332,
		0.810938, 0.338503, -0.477278,
		-0.422531, 0.903033, -0.077454,
		27.575233, 34.437660, 32.832447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428152, 34.353565, 32.971558>,  <27.871004, 33.805538, 32.886665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428152, 34.353565, 32.971558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059231, 34.465420, 33.078259>,  <27.837877, 34.532532, 33.142281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059231, 34.465420, 33.078259>,  <28.428152, 34.353565, 32.971558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059231, 34.465420, 33.078259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353012, 0.328678, 0.875987,
		0.157279, 0.902095, -0.401855,
		-0.922305, 0.279634, 0.266756,
		27.782539, 34.549309, 33.158287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080750, 34.277008, 33.411747>,  <28.428152, 34.353565, 32.971558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080750, 34.277008, 33.411747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395306, 34.473602, 33.262062>,  <29.584040, 34.591560, 33.172253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395306, 34.473602, 33.262062>,  <29.080750, 34.277008, 33.411747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395306, 34.473602, 33.262062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607219, -0.726306, 0.322126,
		-0.113472, -0.480545, -0.869598,
		0.786390, 0.491484, -0.374211,
		29.631222, 34.621048, 33.149799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292402, 33.717049, 33.140900>,  <29.080750, 34.277008, 33.411747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292402, 33.717049, 33.140900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596106, 33.973503, 33.185570>,  <29.778328, 34.127377, 33.212372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596106, 33.973503, 33.185570>,  <29.292402, 33.717049, 33.140900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596106, 33.973503, 33.185570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647889, -0.760846, -0.036786,
		0.061381, 0.100282, -0.993064,
		0.759258, 0.641137, 0.111673,
		29.823883, 34.165844, 33.219070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842495, 33.699886, 32.621910>,  <29.292402, 33.717049, 33.140900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842495, 33.699886, 32.621910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995771, 33.825386, 32.969410>,  <30.087738, 33.900684, 33.177910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995771, 33.825386, 32.969410>,  <29.842495, 33.699886, 32.621910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995771, 33.825386, 32.969410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649012, -0.760691, -0.011544,
		0.657227, 0.568252, -0.495118,
		0.383192, 0.313750, 0.868749,
		30.110729, 33.919510, 33.230034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587515, 33.829762, 32.554821>,  <29.842495, 33.699886, 32.621910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587515, 33.829762, 32.554821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461527, 33.684532, 32.905586>,  <30.385935, 33.597397, 33.116047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461527, 33.684532, 32.905586>,  <30.587515, 33.829762, 32.554821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461527, 33.684532, 32.905586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614781, -0.781951, -0.102937,
		0.723076, 0.506687, 0.469500,
		-0.314969, -0.363071, 0.876912,
		30.367037, 33.575611, 33.168659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195885, 33.859520, 33.095844>,  <30.587515, 33.829762, 32.554821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195885, 33.859520, 33.095844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924101, 33.568432, 33.133263>,  <30.761030, 33.393780, 33.155712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924101, 33.568432, 33.133263>,  <31.195885, 33.859520, 33.095844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924101, 33.568432, 33.133263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714040, -0.685172, -0.143827,
		0.168761, -0.030930, 0.985172,
		-0.679460, -0.727725, 0.093545,
		30.720263, 33.350113, 33.161327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247622, 33.514179, 33.777225>,  <31.195885, 33.859520, 33.095844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247622, 33.514179, 33.777225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111048, 33.302280, 33.466667>,  <31.029104, 33.175140, 33.280331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111048, 33.302280, 33.466667>,  <31.247622, 33.514179, 33.777225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111048, 33.302280, 33.466667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794664, -0.603820, 0.062530,
		-0.501928, -0.595624, 0.627137,
		-0.341433, -0.529749, -0.776395,
		31.008617, 33.143356, 33.233749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811903, 33.065216, 33.487465>,  <31.247622, 33.514179, 33.777225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811903, 33.065216, 33.487465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071465, 32.873348, 33.251213>,  <32.227200, 32.758228, 33.109463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071465, 32.873348, 33.251213>,  <31.811903, 33.065216, 33.487465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071465, 32.873348, 33.251213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750831, -0.529371, -0.394992,
		-0.123198, 0.699776, -0.703659,
		0.648903, -0.479667, -0.590631,
		32.266136, 32.729446, 33.074024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718473, 33.233894, 32.777191>,  <31.811903, 33.065216, 33.487465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718473, 33.233894, 32.777191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864902, 32.861710, 32.783195>,  <31.952759, 32.638397, 32.786797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864902, 32.861710, 32.783195>,  <31.718473, 33.233894, 32.777191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864902, 32.861710, 32.783195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824467, -0.331764, -0.458461,
		0.431562, 0.155453, -0.888588,
		0.366071, -0.930466, 0.015011,
		31.974724, 32.582569, 32.787697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938854, 33.081390, 32.102673>,  <31.718473, 33.233894, 32.777191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938854, 33.081390, 32.102673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799660, 32.774265, 32.317848>,  <31.716143, 32.589993, 32.446953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799660, 32.774265, 32.317848>,  <31.938854, 33.081390, 32.102673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799660, 32.774265, 32.317848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606891, -0.252851, -0.753491,
		0.714556, -0.588672, -0.377988,
		-0.347985, -0.767809, 0.537936,
		31.695265, 32.543922, 32.479229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091396, 32.417240, 31.680843>,  <31.938854, 33.081390, 32.102673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091396, 32.417240, 31.680843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766245, 32.378036, 31.910496>,  <31.571154, 32.354515, 32.048286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766245, 32.378036, 31.910496>,  <32.091396, 32.417240, 31.680843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766245, 32.378036, 31.910496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578269, 0.018125, -0.815644,
		0.069540, -0.995020, -0.071413,
		-0.812877, -0.098016, 0.574129,
		31.522383, 32.348633, 32.082733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814171, 31.819942, 31.455544>,  <32.091396, 32.417240, 31.680843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814171, 31.819942, 31.455544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548487, 32.088936, 31.586136>,  <31.389076, 32.250332, 31.664492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548487, 32.088936, 31.586136>,  <31.814171, 31.819942, 31.455544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548487, 32.088936, 31.586136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496454, -0.070297, -0.865212,
		-0.558892, -0.736764, 0.380550,
		-0.664209, 0.672485, 0.326481,
		31.349224, 32.290680, 31.684080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102266, 31.568630, 31.312437>,  <31.814171, 31.819942, 31.455544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102266, 31.568630, 31.312437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069796, 31.965441, 31.351009>,  <31.050314, 32.203526, 31.374153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069796, 31.965441, 31.351009>,  <31.102266, 31.568630, 31.312437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069796, 31.965441, 31.351009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442069, 0.050879, -0.895537,
		-0.893301, -0.115324, 0.434413,
		-0.081175, 0.992024, 0.096431,
		31.045443, 32.263046, 31.379938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413485, 31.873987, 31.194771>,  <31.102266, 31.568630, 31.312437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413485, 31.873987, 31.194771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673767, 32.153961, 31.077007>,  <30.829937, 32.321945, 31.006350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673767, 32.153961, 31.077007>,  <30.413485, 31.873987, 31.194771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673767, 32.153961, 31.077007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496636, 0.099008, -0.862293,
		-0.574399, 0.707312, 0.412038,
		0.650706, 0.699933, -0.294407,
		30.868979, 32.363941, 30.988686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611961, 32.070873, 30.497213>,  <30.413485, 31.873987, 31.194771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611961, 32.070873, 30.497213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383640, 32.396164, 30.542557>,  <30.246649, 32.591339, 30.569763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383640, 32.396164, 30.542557>,  <30.611961, 32.070873, 30.497213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383640, 32.396164, 30.542557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577873, 0.299799, 0.759068,
		0.583309, 0.498783, -0.641067,
		-0.570801, 0.813226, 0.113358,
		30.212400, 32.640133, 30.576565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016005, 32.699657, 30.447020>,  <30.611961, 32.070873, 30.497213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016005, 32.699657, 30.447020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694918, 32.761238, 30.677479>,  <30.502266, 32.798187, 30.815754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694918, 32.761238, 30.677479>,  <31.016005, 32.699657, 30.447020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694918, 32.761238, 30.677479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596339, 0.215412, 0.773290,
		-0.005063, 0.964312, -0.264720,
		-0.802717, 0.153948, 0.576147,
		30.454103, 32.807423, 30.850323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240246, 33.344391, 30.918287>,  <31.016005, 32.699657, 30.447020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240246, 33.344391, 30.918287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987217, 33.065392, 31.052952>,  <30.835400, 32.897991, 31.133751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987217, 33.065392, 31.052952>,  <31.240246, 33.344391, 30.918287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987217, 33.065392, 31.052952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610865, -0.182100, 0.770508,
		-0.476124, 0.693059, 0.541271,
		-0.632573, -0.697502, 0.336664,
		30.797445, 32.856140, 31.153952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057358, 33.506962, 31.620407>,  <31.240246, 33.344391, 30.918287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057358, 33.506962, 31.620407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048740, 33.115482, 31.538748>,  <31.043570, 32.880592, 31.489752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048740, 33.115482, 31.538748>,  <31.057358, 33.506962, 31.620407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048740, 33.115482, 31.538748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377192, -0.197063, 0.904926,
		-0.925884, -0.057510, 0.373404,
		-0.021541, -0.978702, -0.204150,
		31.042278, 32.821873, 31.477503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598553, 33.158806, 32.196217>,  <31.057358, 33.506962, 31.620407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598553, 33.158806, 32.196217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860220, 32.917164, 32.014175>,  <31.017220, 32.772179, 31.904951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860220, 32.917164, 32.014175>,  <30.598553, 33.158806, 32.196217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860220, 32.917164, 32.014175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441025, -0.184167, 0.878396,
		-0.614462, -0.775329, 0.145952,
		0.654166, -0.604110, -0.455103,
		31.056469, 32.735931, 31.877645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704159, 32.763470, 32.750935>,  <30.598553, 33.158806, 32.196217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704159, 32.763470, 32.750935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762386, 32.491241, 32.463703>,  <30.797323, 32.327904, 32.291363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762386, 32.491241, 32.463703>,  <30.704159, 32.763470, 32.750935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762386, 32.491241, 32.463703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685036, -0.454338, 0.569475,
		-0.713817, -0.574810, 0.400074,
		0.145571, -0.680566, -0.718080,
		30.806057, 32.287071, 32.248280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597664, 31.939262, 32.941475>,  <30.704159, 32.763470, 32.750935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597664, 31.939262, 32.941475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874651, 32.077251, 32.688026>,  <31.040844, 32.160046, 32.535957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874651, 32.077251, 32.688026>,  <30.597664, 31.939262, 32.941475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874651, 32.077251, 32.688026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719503, -0.265767, 0.641625,
		0.052947, -0.900201, -0.432245,
		0.692468, 0.344974, -0.633625,
		31.082392, 32.180744, 32.497940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238874, 31.476334, 33.117390>,  <30.597664, 31.939262, 32.941475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238874, 31.476334, 33.117390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376120, 31.804977, 32.935299>,  <31.458467, 32.002163, 32.826042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376120, 31.804977, 32.935299>,  <31.238874, 31.476334, 33.117390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376120, 31.804977, 32.935299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830886, -0.039454, 0.555042,
		0.438066, -0.568687, -0.696200,
		0.343113, 0.821607, -0.455231,
		31.479053, 32.051460, 32.798729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949461, 31.380033, 33.059822>,  <31.238874, 31.476334, 33.117390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949461, 31.380033, 33.059822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899656, 31.772736, 33.002338>,  <31.869774, 32.008358, 32.967850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899656, 31.772736, 33.002338>,  <31.949461, 31.380033, 33.059822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899656, 31.772736, 33.002338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763502, 0.187303, 0.618047,
		0.633689, -0.032767, -0.772894,
		-0.124514, 0.981756, -0.143709,
		31.862303, 32.067261, 32.959225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584911, 31.618557, 32.734077>,  <31.949461, 31.380033, 33.059822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584911, 31.618557, 32.734077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393135, 31.890867, 32.955593>,  <32.278069, 32.054253, 33.088501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393135, 31.890867, 32.955593>,  <32.584911, 31.618557, 32.734077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393135, 31.890867, 32.955593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752350, -0.006016, 0.658736,
		0.451784, 0.732467, -0.509297,
		-0.479439, 0.680776, 0.553790,
		32.249302, 32.095100, 33.121731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164009, 32.005421, 32.925423>,  <32.584911, 31.618557, 32.734077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164009, 32.005421, 32.925423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832645, 32.062485, 33.142082>,  <32.633827, 32.096722, 33.272079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832645, 32.062485, 33.142082>,  <33.164009, 32.005421, 32.925423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832645, 32.062485, 33.142082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553909, 0.065014, 0.830035,
		0.083197, 0.987634, -0.132878,
		-0.828410, 0.142658, 0.541651,
		32.584122, 32.105282, 33.304577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252922, 32.488979, 33.482944>,  <33.164009, 32.005421, 32.925423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252922, 32.488979, 33.482944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932186, 32.299294, 33.628365>,  <32.739742, 32.185482, 33.715618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932186, 32.299294, 33.628365>,  <33.252922, 32.488979, 33.482944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932186, 32.299294, 33.628365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288728, 0.225188, 0.930552,
		-0.523150, 0.851122, -0.043645,
		-0.801842, -0.474217, 0.363549,
		32.691635, 32.157028, 33.737431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731644, 32.962154, 33.885921>,  <33.252922, 32.488979, 33.482944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731644, 32.962154, 33.885921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715706, 32.591957, 34.036591>,  <32.706142, 32.369839, 34.126991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715706, 32.591957, 34.036591>,  <32.731644, 32.962154, 33.885921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715706, 32.591957, 34.036591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298601, 0.348717, 0.888389,
		-0.953546, 0.147873, 0.262457,
		-0.039845, -0.925489, 0.376672,
		32.703751, 32.314312, 34.149593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299976, 32.944378, 34.522015>,  <32.731644, 32.962154, 33.885921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299976, 32.944378, 34.522015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587345, 32.667946, 34.553734>,  <32.759766, 32.502087, 34.572765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587345, 32.667946, 34.553734>,  <32.299976, 32.944378, 34.522015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587345, 32.667946, 34.553734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301271, 0.411869, 0.860000,
		-0.626986, -0.593949, 0.504096,
		0.718418, -0.691077, 0.079296,
		32.802872, 32.460621, 34.577522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370667, 32.811058, 35.214245>,  <32.299976, 32.944378, 34.522015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370667, 32.811058, 35.214245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717178, 32.719349, 35.036709>,  <32.925087, 32.664326, 34.930187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717178, 32.719349, 35.036709>,  <32.370667, 32.811058, 35.214245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717178, 32.719349, 35.036709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499399, 0.374857, 0.781078,
		-0.012700, -0.898286, 0.439227,
		0.866279, -0.229269, -0.443842,
		32.977062, 32.650570, 34.903557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843708, 32.313942, 35.516014>,  <32.370667, 32.811058, 35.214245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843708, 32.313942, 35.516014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075527, 32.614529, 35.389893>,  <33.214619, 32.794880, 35.314220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075527, 32.614529, 35.389893>,  <32.843708, 32.313942, 35.516014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075527, 32.614529, 35.389893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218764, 0.229242, 0.948467,
		0.785026, -0.618660, -0.031537,
		0.579549, 0.751470, -0.315302,
		33.249393, 32.839970, 35.295303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633385, 32.383472, 35.686058>,  <32.843708, 32.313942, 35.516014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633385, 32.383472, 35.686058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529510, 32.765339, 35.627842>,  <33.467186, 32.994457, 35.592911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529510, 32.765339, 35.627842>,  <33.633385, 32.383472, 35.686058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529510, 32.765339, 35.627842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203872, 0.201512, 0.958034,
		0.943928, 0.219115, -0.246958,
		-0.259685, 0.954663, -0.145541,
		33.451607, 33.051739, 35.584179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381512, 32.684795, 35.396214>,  <33.633385, 32.383472, 35.686058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381512, 32.684795, 35.396214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048435, 32.831196, 35.562424>,  <33.848587, 32.919037, 35.662151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048435, 32.831196, 35.562424>,  <34.381512, 32.684795, 35.396214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048435, 32.831196, 35.562424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553470, -0.527049, -0.644897,
		-0.017027, -0.766985, 0.641440,
		-0.832696, 0.365998, 0.415528,
		33.798626, 32.940994, 35.687080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778954, 32.191570, 35.858219>,  <34.381512, 32.684795, 35.396214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778954, 32.191570, 35.858219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598343, 31.891167, 35.665508>,  <34.489975, 31.710926, 35.549881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598343, 31.891167, 35.665508>,  <34.778954, 32.191570, 35.858219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598343, 31.891167, 35.665508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093508, 0.497156, -0.862608,
		0.887345, -0.434540, -0.154254,
		-0.451526, -0.751007, -0.481781,
		34.462887, 31.665865, 35.520973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136200, 31.895605, 35.220760>,  <34.778954, 32.191570, 35.858219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136200, 31.895605, 35.220760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738152, 31.859619, 35.204544>,  <34.499321, 31.838028, 35.194817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738152, 31.859619, 35.204544>,  <35.136200, 31.895605, 35.220760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738152, 31.859619, 35.204544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016831, 0.559564, -0.828617,
		0.097228, -0.823891, -0.558347,
		-0.995120, -0.089962, -0.040538,
		34.439617, 31.832630, 35.192383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702393, 31.973515, 34.738056>,  <35.136200, 31.895605, 35.220760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702393, 31.973515, 34.738056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034378, 32.115967, 34.566322>,  <36.233570, 32.201439, 34.463284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034378, 32.115967, 34.566322>,  <35.702393, 31.973515, 34.738056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034378, 32.115967, 34.566322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536150, -0.296882, 0.790192,
		0.153949, -0.886020, -0.437341,
		0.829965, 0.356130, -0.429335,
		36.283367, 32.222805, 34.437523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227249, 31.507996, 34.925285>,  <35.702393, 31.973515, 34.738056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227249, 31.507996, 34.925285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396992, 31.856901, 34.828060>,  <36.498837, 32.066246, 34.769726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396992, 31.856901, 34.828060>,  <36.227249, 31.507996, 34.925285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396992, 31.856901, 34.828060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665427, -0.118353, 0.737020,
		0.614110, -0.474495, -0.630653,
		0.424352, 0.872265, -0.243060,
		36.524296, 32.118580, 34.755142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939682, 31.326693, 34.831913>,  <36.227249, 31.507996, 34.925285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939682, 31.326693, 34.831913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916138, 31.717472, 34.913994>,  <36.902012, 31.951941, 34.963242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916138, 31.717472, 34.913994>,  <36.939682, 31.326693, 34.831913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916138, 31.717472, 34.913994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720846, -0.100607, 0.685755,
		0.690592, 0.188282, -0.698307,
		-0.058861, 0.976948, 0.205200,
		36.898479, 32.010555, 34.975555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563545, 31.680128, 34.773693>,  <36.939682, 31.326693, 34.831913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563545, 31.680128, 34.773693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328575, 31.857338, 35.044590>,  <37.187592, 31.963665, 35.207130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328575, 31.857338, 35.044590>,  <37.563545, 31.680128, 34.773693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328575, 31.857338, 35.044590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572230, -0.364379, 0.734698,
		0.572264, 0.819119, -0.039467,
		-0.587424, 0.443025, 0.677246,
		37.152348, 31.990246, 35.247765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939102, 32.279041, 35.212151>,  <37.563545, 31.680128, 34.773693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939102, 32.279041, 35.212151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629059, 32.109798, 35.399845>,  <37.443031, 32.008251, 35.512463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629059, 32.109798, 35.399845>,  <37.939102, 32.279041, 35.212151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629059, 32.109798, 35.399845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617795, -0.351905, 0.703201,
		-0.132406, 0.834949, 0.534162,
		-0.775111, -0.423111, 0.469233,
		37.396526, 31.982864, 35.540615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948025, 32.435902, 35.935593>,  <37.939102, 32.279041, 35.212151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948025, 32.435902, 35.935593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758049, 32.087738, 35.883713>,  <37.644062, 31.878839, 35.852585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758049, 32.087738, 35.883713>,  <37.948025, 32.435902, 35.935593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758049, 32.087738, 35.883713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662457, -0.450639, 0.598394,
		-0.579293, 0.198283, 0.790635,
		-0.474942, -0.870407, -0.129697,
		37.615566, 31.826616, 35.844803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676678, 32.241013, 36.641987>,  <37.948025, 32.435902, 35.935593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676678, 32.241013, 36.641987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792267, 31.949884, 36.393223>,  <37.861622, 31.775208, 36.243965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792267, 31.949884, 36.393223>,  <37.676678, 32.241013, 36.641987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792267, 31.949884, 36.393223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743710, -0.238389, 0.624553,
		-0.602819, -0.642999, 0.472400,
		0.288972, -0.727821, -0.621910,
		37.878960, 31.731539, 36.206650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004536, 32.278286, 36.310097>,  <37.676678, 32.241013, 36.641987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004536, 32.278286, 36.310097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190434, 32.374413, 35.969212>,  <37.301971, 32.432087, 35.764683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190434, 32.374413, 35.969212>,  <37.004536, 32.278286, 36.310097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190434, 32.374413, 35.969212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882095, 0.042028, -0.469193,
		-0.076937, 0.969785, 0.231512,
		0.464746, 0.240314, -0.852209,
		37.329857, 32.446507, 35.713551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594879, 32.789066, 35.912464>,  <37.004536, 32.278286, 36.310097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594879, 32.789066, 35.912464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850136, 32.639545, 35.643227>,  <37.003288, 32.549831, 35.481686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850136, 32.639545, 35.643227>,  <36.594879, 32.789066, 35.912464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850136, 32.639545, 35.643227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698897, 0.085512, -0.710092,
		0.322992, 0.923557, -0.206682,
		0.638137, -0.373804, -0.673091,
		37.041576, 32.527405, 35.441299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691090, 33.290745, 35.216011>,  <36.594879, 32.789066, 35.912464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691090, 33.290745, 35.216011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785427, 32.913982, 35.120346>,  <36.842030, 32.687927, 35.062946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785427, 32.913982, 35.120346>,  <36.691090, 33.290745, 35.216011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785427, 32.913982, 35.120346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621993, 0.042779, -0.781854,
		0.746660, 0.333154, -0.575766,
		0.235847, -0.941901, -0.239160,
		36.856182, 32.631413, 35.048599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905308, 33.321701, 34.528812>,  <36.691090, 33.290745, 35.216011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905308, 33.321701, 34.528812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809898, 32.938568, 34.592888>,  <36.752651, 32.708687, 34.631332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809898, 32.938568, 34.592888>,  <36.905308, 33.321701, 34.528812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809898, 32.938568, 34.592888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458139, -0.034456, -0.888213,
		0.856280, -0.285247, -0.430603,
		-0.238523, -0.957834, 0.160187,
		36.738342, 32.651218, 34.640945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336708, 32.924225, 34.050156>,  <36.905308, 33.321701, 34.528812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336708, 32.924225, 34.050156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998363, 32.743023, 34.162800>,  <36.795357, 32.634300, 34.230385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998363, 32.743023, 34.162800>,  <37.336708, 32.924225, 34.050156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998363, 32.743023, 34.162800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369946, 0.117903, -0.921542,
		0.384265, -0.883675, -0.267318,
		-0.845861, -0.453009, 0.281606,
		36.744606, 32.607121, 34.247280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047733, 32.588123, 33.437496>,  <37.336708, 32.924225, 34.050156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047733, 32.588123, 33.437496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737206, 32.601337, 33.689285>,  <36.550888, 32.609264, 33.840359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737206, 32.601337, 33.689285>,  <37.047733, 32.588123, 33.437496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737206, 32.601337, 33.689285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628338, 0.038936, -0.776965,
		-0.050178, -0.998695, -0.009468,
		-0.776321, 0.033038, 0.629472,
		36.504311, 32.611248, 33.878128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642361, 32.095474, 33.223095>,  <37.047733, 32.588123, 33.437496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642361, 32.095474, 33.223095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405392, 32.366016, 33.398178>,  <36.263210, 32.528343, 33.503227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405392, 32.366016, 33.398178>,  <36.642361, 32.095474, 33.223095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405392, 32.366016, 33.398178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574716, 0.025939, -0.817942,
		-0.564572, -0.736119, 0.373345,
		-0.592419, 0.676355, 0.437704,
		36.227665, 32.568924, 33.529488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007202, 31.807646, 33.312504>,  <36.642361, 32.095474, 33.223095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007202, 31.807646, 33.312504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962502, 32.204144, 33.284370>,  <35.935680, 32.442043, 33.267490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962502, 32.204144, 33.284370>,  <36.007202, 31.807646, 33.312504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962502, 32.204144, 33.284370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458194, -0.114207, -0.881485,
		-0.881799, -0.066281, 0.466944,
		-0.111753, 0.991244, -0.070338,
		35.928974, 32.501518, 33.263268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328415, 31.875151, 33.148426>,  <36.007202, 31.807646, 33.312504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328415, 31.875151, 33.148426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488403, 32.218090, 33.018826>,  <35.584396, 32.423855, 32.941063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488403, 32.218090, 33.018826>,  <35.328415, 31.875151, 33.148426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488403, 32.218090, 33.018826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576412, -0.039549, -0.816201,
		-0.712582, 0.513216, 0.478367,
		0.399969, 0.857348, -0.324006,
		35.608395, 32.475296, 32.921623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741817, 32.116508, 32.803082>,  <35.328415, 31.875151, 33.148426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741817, 32.116508, 32.803082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037560, 32.339951, 32.652718>,  <35.215004, 32.474018, 32.562500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037560, 32.339951, 32.652718>,  <34.741817, 32.116508, 32.803082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037560, 32.339951, 32.652718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504302, 0.089515, -0.858875,
		-0.446126, 0.824586, 0.347892,
		0.739358, 0.558609, -0.375906,
		35.259365, 32.507534, 32.539948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397221, 32.771152, 32.487244>,  <34.741817, 32.116508, 32.803082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397221, 32.771152, 32.487244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754490, 32.699650, 32.322182>,  <34.968853, 32.656750, 32.223145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754490, 32.699650, 32.322182>,  <34.397221, 32.771152, 32.487244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754490, 32.699650, 32.322182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400488, 0.101219, -0.910695,
		0.204558, 0.978673, 0.018818,
		0.893177, -0.178754, -0.412652,
		35.022442, 32.646023, 32.198387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363392, 33.240452, 31.940714>,  <34.397221, 32.771152, 32.487244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363392, 33.240452, 31.940714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651951, 32.980030, 31.846304>,  <34.825089, 32.823776, 31.789658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651951, 32.980030, 31.846304>,  <34.363392, 33.240452, 31.940714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651951, 32.980030, 31.846304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249338, 0.073775, -0.965602,
		0.646074, 0.755436, -0.109112,
		0.721401, -0.651056, -0.236023,
		34.868370, 32.784714, 31.775497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420410, 33.524635, 31.328186>,  <34.363392, 33.240452, 31.940714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420410, 33.524635, 31.328186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618862, 33.177372, 31.323160>,  <34.737934, 32.969013, 31.320145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618862, 33.177372, 31.323160>,  <34.420410, 33.524635, 31.328186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618862, 33.177372, 31.323160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176170, -0.086485, -0.980553,
		0.850185, 0.488700, -0.195851,
		0.496135, -0.868155, -0.012566,
		34.767704, 32.916927, 31.319391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077057, 33.615517, 30.778465>,  <34.420410, 33.524635, 31.328186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077057, 33.615517, 30.778465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989651, 33.231441, 30.848076>,  <34.937206, 33.000996, 30.889843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989651, 33.231441, 30.848076>,  <35.077057, 33.615517, 30.778465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989651, 33.231441, 30.848076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224105, -0.124192, -0.966620,
		0.949751, -0.250224, -0.188045,
		-0.218518, -0.960190, 0.174028,
		34.924095, 32.943386, 30.900284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382568, 33.222443, 30.207590>,  <35.077057, 33.615517, 30.778465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382568, 33.222443, 30.207590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095707, 32.979656, 30.344570>,  <34.923588, 32.833984, 30.426758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095707, 32.979656, 30.344570>,  <35.382568, 33.222443, 30.207590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095707, 32.979656, 30.344570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298092, -0.177002, -0.937983,
		0.629941, -0.774764, -0.053994,
		-0.717158, -0.606969, 0.342451,
		34.880558, 32.797565, 30.447306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315964, 32.776470, 29.665998>,  <35.382568, 33.222443, 30.207590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315964, 32.776470, 29.665998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996449, 32.706112, 29.896126>,  <34.804737, 32.663898, 30.034203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996449, 32.706112, 29.896126>,  <35.315964, 32.776470, 29.665998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996449, 32.706112, 29.896126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570243, -0.083381, -0.817234,
		0.191716, -0.980872, -0.033697,
		-0.798792, -0.175892, 0.575320,
		34.756809, 32.653343, 30.068722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026257, 32.166443, 29.388605>,  <35.315964, 32.776470, 29.665998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026257, 32.166443, 29.388605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749554, 32.365810, 29.597622>,  <34.583534, 32.485432, 29.723032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749554, 32.365810, 29.597622>,  <35.026257, 32.166443, 29.388605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749554, 32.365810, 29.597622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644479, -0.099680, -0.758097,
		-0.325766, -0.861184, 0.390178,
		-0.691754, 0.498424, 0.522542,
		34.542027, 32.515335, 29.754385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412106, 31.804611, 29.283157>,  <35.026257, 32.166443, 29.388605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412106, 31.804611, 29.283157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314781, 32.177738, 29.389481>,  <34.256386, 32.401615, 29.453274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314781, 32.177738, 29.389481>,  <34.412106, 31.804611, 29.283157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314781, 32.177738, 29.389481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536917, 0.098698, -0.837842,
		-0.807788, -0.346571, 0.476830,
		-0.243310, 0.932817, 0.265807,
		34.241787, 32.457584, 29.469223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655342, 31.921556, 29.095516>,  <34.412106, 31.804611, 29.283157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655342, 31.921556, 29.095516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776588, 32.298706, 29.150812>,  <33.849339, 32.524994, 29.183989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776588, 32.298706, 29.150812>,  <33.655342, 31.921556, 29.095516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776588, 32.298706, 29.150812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537302, 0.288906, -0.792363,
		-0.787035, 0.165906, 0.594180,
		0.303120, 0.942872, 0.138238,
		33.867523, 32.581570, 29.192284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100853, 32.315315, 29.115299>,  <33.655342, 31.921556, 29.095516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100853, 32.315315, 29.115299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381153, 32.576260, 28.999804>,  <33.549335, 32.732826, 28.930506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381153, 32.576260, 28.999804>,  <33.100853, 32.315315, 29.115299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381153, 32.576260, 28.999804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555418, 0.244879, -0.794698,
		-0.447722, 0.717260, 0.533932,
		0.700754, 0.652359, -0.288741,
		33.591381, 32.771969, 28.913181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812271, 32.969059, 29.068506>,  <33.100853, 32.315315, 29.115299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812271, 32.969059, 29.068506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134396, 32.968605, 28.831364>,  <33.327671, 32.968334, 28.689079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134396, 32.968605, 28.831364>,  <32.812271, 32.969059, 29.068506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134396, 32.968605, 28.831364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555107, 0.349683, -0.754704,
		0.208166, 0.936867, 0.280974,
		0.805309, -0.001133, -0.592854,
		33.375988, 32.968266, 28.653507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809082, 33.525154, 28.704473>,  <32.812271, 32.969059, 29.068506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809082, 33.525154, 28.704473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045803, 33.300999, 28.472704>,  <33.187836, 33.166504, 28.333641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045803, 33.300999, 28.472704>,  <32.809082, 33.525154, 28.704473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045803, 33.300999, 28.472704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487406, 0.323758, -0.810936,
		0.642035, 0.762327, -0.081538,
		0.591799, -0.560391, -0.579426,
		33.223343, 33.132881, 28.298876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015644, 34.069424, 28.286674>,  <32.809082, 33.525154, 28.704473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015644, 34.069424, 28.286674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053013, 33.706467, 28.122770>,  <33.075436, 33.488693, 28.024427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053013, 33.706467, 28.122770>,  <33.015644, 34.069424, 28.286674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053013, 33.706467, 28.122770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516431, 0.307703, -0.799136,
		0.851218, 0.286271, -0.439861,
		0.093423, -0.907396, -0.409761,
		33.081039, 33.434246, 27.999842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135078, 34.302940, 27.554846>,  <33.015644, 34.069424, 28.286674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135078, 34.302940, 27.554846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082340, 33.909405, 27.506395>,  <33.050697, 33.673283, 27.477325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082340, 33.909405, 27.506395>,  <33.135078, 34.302940, 27.554846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082340, 33.909405, 27.506395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403919, 0.164913, -0.899807,
		0.905243, -0.069713, -0.419136,
		-0.131849, -0.983841, -0.121128,
		33.042786, 33.614254, 27.470057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356129, 34.086449, 26.909046>,  <33.135078, 34.302940, 27.554846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356129, 34.086449, 26.909046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083099, 33.817509, 27.023615>,  <32.919281, 33.656143, 27.092356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083099, 33.817509, 27.023615>,  <33.356129, 34.086449, 26.909046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083099, 33.817509, 27.023615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367341, -0.023167, -0.929798,
		0.631788, -0.739867, -0.231170,
		-0.682571, -0.672354, 0.286421,
		32.878326, 33.615803, 27.109541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281616, 33.611366, 26.343103>,  <33.356129, 34.086449, 26.909046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281616, 33.611366, 26.343103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947479, 33.518433, 26.542389>,  <32.746998, 33.462673, 26.661961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947479, 33.518433, 26.542389>,  <33.281616, 33.611366, 26.343103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947479, 33.518433, 26.542389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511700, -0.002581, -0.859160,
		0.200902, -0.972632, -0.116731,
		-0.835345, -0.232338, 0.498214,
		32.696877, 33.448730, 26.691853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018402, 33.011181, 26.033937>,  <33.281616, 33.611366, 26.343103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018402, 33.011181, 26.033937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728901, 33.214680, 26.220427>,  <32.555202, 33.336777, 26.332321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728901, 33.214680, 26.220427>,  <33.018402, 33.011181, 26.033937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728901, 33.214680, 26.220427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517870, 0.046092, -0.854217,
		-0.456067, -0.859683, 0.230104,
		-0.723750, 0.508745, 0.466225,
		32.511776, 33.367302, 26.360294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542923, 32.606777, 25.864380>,  <33.018402, 33.011181, 26.033937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542923, 32.606777, 25.864380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354511, 32.944061, 25.968016>,  <32.241463, 33.146431, 26.030197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354511, 32.944061, 25.968016>,  <32.542923, 32.606777, 25.864380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354511, 32.944061, 25.968016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534754, -0.039360, -0.844091,
		-0.701549, -0.536139, 0.469450,
		-0.471028, 0.843211, 0.259090,
		32.213203, 33.197025, 26.045742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913990, 32.459732, 25.595228>,  <32.542923, 32.606777, 25.864380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913990, 32.459732, 25.595228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928473, 32.857632, 25.633512>,  <31.937162, 33.096371, 25.656483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928473, 32.857632, 25.633512>,  <31.913990, 32.459732, 25.595228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928473, 32.857632, 25.633512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521323, 0.100510, -0.847420,
		-0.852591, -0.019214, 0.522225,
		0.036206, 0.994750, 0.095710,
		31.939335, 33.156055, 25.662226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210703, 32.752605, 25.599142>,  <31.913990, 32.459732, 25.595228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210703, 32.752605, 25.599142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442400, 33.066799, 25.511976>,  <31.581419, 33.255318, 25.459677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442400, 33.066799, 25.511976>,  <31.210703, 32.752605, 25.599142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442400, 33.066799, 25.511976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558679, 0.187880, -0.807823,
		-0.593593, 0.589670, 0.547664,
		0.579244, 0.785487, -0.217913,
		31.616173, 33.302444, 25.446602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762562, 33.350666, 25.633102>,  <31.210703, 32.752605, 25.599142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762562, 33.350666, 25.633102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085802, 33.452778, 25.420759>,  <31.279745, 33.514046, 25.293354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085802, 33.452778, 25.420759>,  <30.762562, 33.350666, 25.633102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085802, 33.452778, 25.420759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583990, 0.465038, -0.665353,
		0.077018, 0.847686, 0.524877,
		0.808099, 0.255279, -0.530857,
		31.328232, 33.529362, 25.261501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666700, 34.084732, 25.430000>,  <30.762562, 33.350666, 25.633102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666700, 34.084732, 25.430000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932411, 33.953693, 25.161249>,  <31.091837, 33.875069, 24.999998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932411, 33.953693, 25.161249>,  <30.666700, 34.084732, 25.430000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932411, 33.953693, 25.161249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275250, 0.728486, -0.627332,
		0.694965, 0.601655, 0.393744,
		0.664275, -0.327596, -0.671878,
		31.131693, 33.855415, 24.959686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938948, 34.678905, 25.269053>,  <30.666700, 34.084732, 25.430000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938948, 34.678905, 25.269053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030325, 34.448322, 24.955236>,  <31.085152, 34.309971, 24.766947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030325, 34.448322, 24.955236>,  <30.938948, 34.678905, 25.269053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030325, 34.448322, 24.955236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261155, 0.740030, -0.619801,
		0.937876, 0.346478, 0.018510,
		0.228445, -0.576462, -0.784541,
		31.098858, 34.275383, 24.719873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170382, 35.216091, 24.799864>,  <30.938948, 34.678905, 25.269053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170382, 35.216091, 24.799864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098057, 34.884727, 24.587809>,  <31.054661, 34.685909, 24.460575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098057, 34.884727, 24.587809>,  <31.170382, 35.216091, 24.799864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098057, 34.884727, 24.587809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247860, 0.560007, -0.790542,
		0.951773, -0.011540, -0.306586,
		-0.180813, -0.828407, -0.530139,
		31.043812, 34.636204, 24.428766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310444, 35.431099, 24.166927>,  <31.170382, 35.216091, 24.799864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310444, 35.431099, 24.166927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121283, 35.091534, 24.072515>,  <31.007786, 34.887794, 24.015869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121283, 35.091534, 24.072515>,  <31.310444, 35.431099, 24.166927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121283, 35.091534, 24.072515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432388, 0.456990, -0.777304,
		0.767725, -0.265535, -0.583172,
		-0.472905, -0.848912, -0.236028,
		30.979410, 34.836861, 24.001707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377687, 35.179825, 23.444544>,  <31.310444, 35.431099, 24.166927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377687, 35.179825, 23.444544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049046, 34.980293, 23.554913>,  <30.851860, 34.860573, 23.621134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049046, 34.980293, 23.554913>,  <31.377687, 35.179825, 23.444544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049046, 34.980293, 23.554913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498792, 0.394731, -0.771618,
		0.275989, -0.771594, -0.573125,
		-0.821606, -0.498829, 0.275924,
		30.802565, 34.830643, 23.637690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131647, 34.797661, 22.879061>,  <31.377687, 35.179825, 23.444544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131647, 34.797661, 22.879061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834253, 34.881702, 23.133017>,  <30.655817, 34.932129, 23.285391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834253, 34.881702, 23.133017>,  <31.131647, 34.797661, 22.879061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834253, 34.881702, 23.133017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491005, 0.473043, -0.731535,
		-0.454028, -0.855621, -0.248539,
		-0.743486, 0.210104, 0.634889,
		30.611208, 34.944733, 23.323483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535385, 34.833813, 22.531256>,  <31.131647, 34.797661, 22.879061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535385, 34.833813, 22.531256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397158, 35.027416, 22.852831>,  <30.314222, 35.143578, 23.045776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397158, 35.027416, 22.852831>,  <30.535385, 34.833813, 22.531256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397158, 35.027416, 22.852831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482186, 0.643380, -0.594609,
		-0.805034, -0.593125, 0.011052,
		-0.345567, 0.484009, 0.803939,
		30.293488, 35.172619, 23.094013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922747, 35.033443, 22.323753>,  <30.535385, 34.833813, 22.531256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922747, 35.033443, 22.323753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954681, 35.268028, 22.646168>,  <29.973843, 35.408779, 22.839617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954681, 35.268028, 22.646168>,  <29.922747, 35.033443, 22.323753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954681, 35.268028, 22.646168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535946, 0.707047, -0.461353,
		-0.840469, -0.395159, 0.370758,
		0.079836, 0.586459, 0.806035,
		29.978632, 35.443966, 22.887978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306566, 35.219807, 22.549639>,  <29.922747, 35.033443, 22.323753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306566, 35.219807, 22.549639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552652, 35.510723, 22.671333>,  <29.700304, 35.685272, 22.744350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552652, 35.510723, 22.671333>,  <29.306566, 35.219807, 22.549639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552652, 35.510723, 22.671333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575634, 0.678093, -0.456985,
		-0.538662, 0.106014, 0.835825,
		0.615214, 0.727290, 0.304238,
		29.737217, 35.728909, 22.762606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840401, 35.731792, 22.574055>,  <29.306566, 35.219807, 22.549639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840401, 35.731792, 22.574055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182318, 35.928169, 22.641356>,  <29.387468, 36.045994, 22.681736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182318, 35.928169, 22.641356>,  <28.840401, 35.731792, 22.574055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182318, 35.928169, 22.641356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379384, 0.812348, -0.442898,
		-0.354115, 0.314753, 0.880643,
		0.854793, 0.490939, 0.168252,
		29.438755, 36.075451, 22.691832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679132, 36.306866, 22.839809>,  <28.840401, 35.731792, 22.574055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679132, 36.306866, 22.839809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040991, 36.396027, 22.694521>,  <29.258106, 36.449524, 22.607347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040991, 36.396027, 22.694521>,  <28.679132, 36.306866, 22.839809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040991, 36.396027, 22.694521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318157, 0.920307, -0.227623,
		0.283535, 0.321479, 0.903471,
		0.904646, 0.222906, -0.363220,
		29.312386, 36.462898, 22.585554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840128, 36.981354, 23.150059>,  <28.679132, 36.306866, 22.839809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840128, 36.981354, 23.150059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059526, 36.936275, 22.818649>,  <29.191166, 36.909229, 22.619804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059526, 36.936275, 22.818649>,  <28.840128, 36.981354, 23.150059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059526, 36.936275, 22.818649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383897, 0.846324, -0.369267,
		0.742816, 0.520609, 0.420939,
		0.548495, -0.112700, -0.828524,
		29.224075, 36.902466, 22.570091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904682, 37.652020, 22.903160>,  <28.840128, 36.981354, 23.150059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904682, 37.652020, 22.903160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024239, 37.444359, 22.582874>,  <29.095972, 37.319763, 22.390703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024239, 37.444359, 22.582874>,  <28.904682, 37.652020, 22.903160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024239, 37.444359, 22.582874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311200, 0.740173, -0.596069,
		0.902119, 0.427342, 0.059669,
		0.298891, -0.519156, -0.800713,
		29.113905, 37.288612, 22.342661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321787, 38.055977, 22.531376>,  <28.904682, 37.652020, 22.903160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321787, 38.055977, 22.531376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198757, 37.796310, 22.253101>,  <29.124939, 37.640511, 22.086136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198757, 37.796310, 22.253101>,  <29.321787, 38.055977, 22.531376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198757, 37.796310, 22.253101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401882, 0.751345, -0.523422,
		0.862490, 0.118594, -0.491982,
		-0.307574, -0.649165, -0.695689,
		29.106485, 37.601562, 22.044395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296680, 38.547314, 21.916285>,  <29.321787, 38.055977, 22.531376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296680, 38.547314, 21.916285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091373, 38.215439, 21.828487>,  <28.968189, 38.016315, 21.775808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091373, 38.215439, 21.828487>,  <29.296680, 38.547314, 21.916285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091373, 38.215439, 21.828487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536096, 0.509671, -0.672931,
		0.670192, -0.227723, -0.706389,
		-0.513268, -0.829685, -0.219496,
		28.937393, 37.966534, 21.762638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153814, 38.558331, 21.161674>,  <29.296680, 38.547314, 21.916285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153814, 38.558331, 21.161674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873951, 38.306599, 21.296980>,  <28.706032, 38.155560, 21.378164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873951, 38.306599, 21.296980>,  <29.153814, 38.558331, 21.161674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873951, 38.306599, 21.296980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654812, 0.375412, -0.655962,
		0.285825, -0.680451, -0.674752,
		-0.699660, -0.629327, 0.338266,
		28.664053, 38.117802, 21.398458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912136, 38.227554, 20.528309>,  <29.153814, 38.558331, 21.161674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912136, 38.227554, 20.528309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648672, 38.206249, 20.828529>,  <28.490593, 38.193466, 21.008661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648672, 38.206249, 20.828529>,  <28.912136, 38.227554, 20.528309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648672, 38.206249, 20.828529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702608, 0.400503, -0.588166,
		-0.269271, -0.914746, -0.301218,
		-0.658662, -0.053263, 0.750552,
		28.451073, 38.190269, 21.053696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264608, 37.808224, 20.325678>,  <28.912136, 38.227554, 20.528309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264608, 37.808224, 20.325678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187685, 38.063923, 20.623503>,  <28.141531, 38.217342, 20.802198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187685, 38.063923, 20.623503>,  <28.264608, 37.808224, 20.325678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187685, 38.063923, 20.623503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611207, 0.515567, -0.600513,
		-0.767752, -0.570567, 0.291567,
		-0.192310, 0.639253, 0.744562,
		28.129992, 38.255699, 20.846872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588427, 37.755852, 19.938110>,  <28.264608, 37.808224, 20.325678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588427, 37.755852, 19.938110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189905, 37.788803, 19.928400>,  <26.950792, 37.808575, 19.922573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189905, 37.788803, 19.928400>,  <27.588427, 37.755852, 19.938110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189905, 37.788803, 19.928400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085121, 0.984731, -0.151855,
		0.011397, -0.153361, -0.988104,
		-0.996305, 0.082378, -0.024277,
		26.891014, 37.813515, 19.921118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412697, 38.152195, 19.386385>,  <27.588427, 37.755852, 19.938110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412697, 38.152195, 19.386385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111483, 38.206470, 19.643919>,  <26.930754, 38.239037, 19.798439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111483, 38.206470, 19.643919>,  <27.412697, 38.152195, 19.386385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111483, 38.206470, 19.643919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160714, 0.986798, -0.020001,
		-0.638048, 0.088411, -0.764904,
		-0.753038, 0.135692, 0.643833,
		26.885571, 38.247177, 19.837069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932705, 38.561382, 19.166636>,  <27.412697, 38.152195, 19.386385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932705, 38.561382, 19.166636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934704, 38.575645, 19.566376>,  <26.935904, 38.584206, 19.806221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934704, 38.575645, 19.566376>,  <26.932705, 38.561382, 19.166636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934704, 38.575645, 19.566376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334783, 0.941635, -0.035275,
		-0.942282, 0.334742, -0.007231,
		0.004999, 0.035660, 0.999352,
		26.936203, 38.586342, 19.866180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467516, 39.193771, 19.253479>,  <26.932705, 38.561382, 19.166636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467516, 39.193771, 19.253479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748318, 39.093884, 19.520262>,  <26.916800, 39.033951, 19.680330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748318, 39.093884, 19.520262>,  <26.467516, 39.193771, 19.253479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748318, 39.093884, 19.520262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285500, 0.956642, 0.057675,
		-0.652439, 0.149927, 0.742863,
		0.702006, -0.249717, 0.666955,
		26.958920, 39.018967, 19.720348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395386, 39.708485, 19.731798>,  <26.467516, 39.193771, 19.253479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.395386, 39.708485, 19.731798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752886, 39.548683, 19.813387>,  <26.967386, 39.452805, 19.862341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752886, 39.548683, 19.813387>,  <26.395386, 39.708485, 19.731798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752886, 39.548683, 19.813387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340282, 0.900131, 0.271978,
		-0.292258, -0.173673, 0.940438,
		0.893752, -0.399502, 0.203973,
		27.021011, 39.428833, 19.874578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777817, 39.827225, 20.439974>,  <26.395386, 39.708485, 19.731798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777817, 39.827225, 20.439974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029673, 39.794994, 20.130896>,  <27.180786, 39.775658, 19.945448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029673, 39.794994, 20.130896>,  <26.777817, 39.827225, 20.439974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029673, 39.794994, 20.130896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364179, 0.909169, 0.201953,
		0.686241, -0.408557, 0.601793,
		0.629641, -0.080572, -0.772697,
		27.218565, 39.770824, 19.899086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423397, 39.769794, 20.705894>,  <26.777817, 39.827225, 20.439974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423397, 39.769794, 20.705894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423981, 39.952271, 20.349941>,  <27.424332, 40.061756, 20.136370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423981, 39.952271, 20.349941>,  <27.423397, 39.769794, 20.705894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423981, 39.952271, 20.349941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327656, 0.840541, 0.431431,
		0.944796, -0.292206, -0.148245,
		0.001461, 0.456188, -0.889882,
		27.424419, 40.089127, 20.082977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953617, 39.808838, 21.240589>,  <27.423397, 39.769794, 20.705894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953617, 39.808838, 21.240589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650009, 39.733795, 21.489971>,  <26.467844, 39.688770, 21.639601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650009, 39.733795, 21.489971>,  <26.953617, 39.808838, 21.240589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650009, 39.733795, 21.489971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638976, -0.030950, 0.768604,
		-0.124898, 0.981757, 0.143366,
		-0.759019, -0.187605, 0.623453,
		26.422304, 39.677513, 21.677008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893087, 40.319111, 21.854490>,  <26.953617, 39.808838, 21.240589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893087, 40.319111, 21.854490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752193, 39.953350, 21.934298>,  <26.667658, 39.733894, 21.982182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752193, 39.953350, 21.934298>,  <26.893087, 40.319111, 21.854490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752193, 39.953350, 21.934298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625438, -0.071385, 0.777002,
		-0.696246, 0.398474, 0.597043,
		-0.352235, -0.914397, 0.199519,
		26.646523, 39.679031, 21.994154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592752, 40.323048, 22.546940>,  <26.893087, 40.319111, 21.854490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.592752, 40.323048, 22.546940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740280, 39.971737, 22.425215>,  <26.828796, 39.760952, 22.352180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740280, 39.971737, 22.425215>,  <26.592752, 40.323048, 22.546940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740280, 39.971737, 22.425215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674458, 0.027589, 0.737797,
		-0.639593, -0.477359, 0.602535,
		0.368817, -0.878275, -0.304313,
		26.850925, 39.708256, 22.333921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691757, 39.923794, 23.116663>,  <26.592752, 40.323048, 22.546940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691757, 39.923794, 23.116663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918047, 39.745434, 22.839211>,  <27.053822, 39.638416, 22.672739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918047, 39.745434, 22.839211>,  <26.691757, 39.923794, 23.116663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918047, 39.745434, 22.839211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716350, -0.150860, 0.681237,
		-0.408406, -0.882277, 0.234077,
		0.565726, -0.445903, -0.693632,
		27.087765, 39.611664, 22.631121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.842659, 39.340050, 23.407940>,  <26.691757, 39.923794, 23.116663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.842659, 39.340050, 23.407940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124144, 39.437649, 23.141029>,  <27.293034, 39.496208, 22.980883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124144, 39.437649, 23.141029>,  <26.842659, 39.340050, 23.407940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124144, 39.437649, 23.141029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706016, -0.134965, 0.695217,
		0.079571, -0.960339, -0.267240,
		0.703712, 0.243995, -0.667275,
		27.335257, 39.510845, 22.940847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307699, 38.847172, 23.429955>,  <26.842659, 39.340050, 23.407940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307699, 38.847172, 23.429955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498297, 39.184433, 23.330318>,  <27.612656, 39.386791, 23.270536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498297, 39.184433, 23.330318>,  <27.307699, 38.847172, 23.429955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498297, 39.184433, 23.330318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664336, -0.159724, 0.730169,
		0.575859, -0.513400, -0.636245,
		0.476492, 0.843154, -0.249092,
		27.641245, 39.437378, 23.255590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001654, 38.613106, 23.564005>,  <27.307699, 38.847172, 23.429955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001654, 38.613106, 23.564005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997149, 39.013046, 23.558819>,  <27.994446, 39.253010, 23.555708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997149, 39.013046, 23.558819>,  <28.001654, 38.613106, 23.564005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997149, 39.013046, 23.558819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744163, 0.017041, 0.667781,
		0.667903, -0.002129, -0.744245,
		-0.011261, 0.999853, -0.012965,
		27.993771, 39.313004, 23.554930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699648, 38.847294, 23.403290>,  <28.001654, 38.613106, 23.564005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699648, 38.847294, 23.403290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507860, 39.153175, 23.575491>,  <28.392788, 39.336704, 23.678812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507860, 39.153175, 23.575491>,  <28.699648, 38.847294, 23.403290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507860, 39.153175, 23.575491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696639, 0.033346, 0.716647,
		0.533669, 0.643516, -0.548712,
		-0.479471, 0.764706, 0.430502,
		28.364019, 39.382587, 23.704641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141376, 39.415764, 23.594385>,  <28.699648, 38.847294, 23.403290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141376, 39.415764, 23.594385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824085, 39.487522, 23.827145>,  <28.633711, 39.530579, 23.966801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824085, 39.487522, 23.827145>,  <29.141376, 39.415764, 23.594385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824085, 39.487522, 23.827145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603186, 0.100609, 0.791230,
		0.083398, 0.978619, -0.188015,
		-0.793229, 0.179395, 0.581898,
		28.586117, 39.541340, 24.001715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362461, 40.002220, 23.939722>,  <29.141376, 39.415764, 23.594385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362461, 40.002220, 23.939722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057640, 39.831757, 24.134724>,  <28.874746, 39.729477, 24.251724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057640, 39.831757, 24.134724>,  <29.362461, 40.002220, 23.939722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057640, 39.831757, 24.134724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450180, 0.192458, 0.871951,
		-0.465415, 0.883938, 0.045185,
		-0.762054, -0.426161, 0.487504,
		28.829023, 39.703907, 24.280975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199757, 40.438633, 24.501856>,  <29.362461, 40.002220, 23.939722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199757, 40.438633, 24.501856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072014, 40.071369, 24.595661>,  <28.995369, 39.851009, 24.651945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072014, 40.071369, 24.595661>,  <29.199757, 40.438633, 24.501856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072014, 40.071369, 24.595661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703632, -0.063987, 0.707678,
		-0.634754, 0.391014, 0.666480,
		-0.319358, -0.918158, 0.234514,
		28.976206, 39.795921, 24.666016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114071, 40.431194, 25.290628>,  <29.199757, 40.438633, 24.501856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114071, 40.431194, 25.290628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120594, 40.049980, 25.169661>,  <29.124508, 39.821251, 25.097080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120594, 40.049980, 25.169661>,  <29.114071, 40.431194, 25.290628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120594, 40.049980, 25.169661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521386, -0.249978, 0.815884,
		-0.853165, -0.170982, 0.492823,
		0.016307, -0.953035, -0.302420,
		29.125486, 39.764069, 25.078934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947636, 40.054722, 25.916674>,  <29.114071, 40.431194, 25.290628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947636, 40.054722, 25.916674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145733, 39.815083, 25.665016>,  <29.264591, 39.671299, 25.514023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145733, 39.815083, 25.665016>,  <28.947636, 40.054722, 25.916674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145733, 39.815083, 25.665016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553675, -0.340400, 0.759981,
		-0.669460, -0.724717, 0.163123,
		0.495244, -0.599094, -0.629142,
		29.294306, 39.635353, 25.476274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109900, 39.475899, 26.320427>,  <28.947636, 40.054722, 25.916674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109900, 39.475899, 26.320427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371340, 39.449009, 26.018888>,  <29.528204, 39.432873, 25.837965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371340, 39.449009, 26.018888>,  <29.109900, 39.475899, 26.320427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371340, 39.449009, 26.018888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675618, -0.397073, 0.621187,
		-0.341091, -0.915322, -0.214110,
		0.653603, -0.067225, -0.753846,
		29.567421, 39.428841, 25.792734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192905, 38.809681, 26.222197>,  <29.109900, 39.475899, 26.320427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192905, 38.809681, 26.222197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518223, 38.987835, 26.072430>,  <29.713413, 39.094727, 25.982569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518223, 38.987835, 26.072430>,  <29.192905, 38.809681, 26.222197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518223, 38.987835, 26.072430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577836, -0.542735, 0.609544,
		0.068273, -0.712089, -0.698762,
		0.813292, 0.445385, -0.374417,
		29.762211, 39.121452, 25.960104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718994, 38.359562, 26.115343>,  <29.192905, 38.809681, 26.222197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718994, 38.359562, 26.115343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939075, 38.693451, 26.124407>,  <30.071125, 38.893784, 26.129845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939075, 38.693451, 26.124407>,  <29.718994, 38.359562, 26.115343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939075, 38.693451, 26.124407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707074, -0.480157, 0.519130,
		0.444210, -0.269606, -0.854395,
		0.550204, 0.834723, 0.022659,
		30.104137, 38.943867, 26.131205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346762, 38.043697, 25.966242>,  <29.718994, 38.359562, 26.115343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346762, 38.043697, 25.966242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406546, 38.412674, 26.108652>,  <30.442415, 38.634060, 26.194099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406546, 38.412674, 26.108652>,  <30.346762, 38.043697, 25.966242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406546, 38.412674, 26.108652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686907, -0.355862, 0.633657,
		0.711211, 0.149852, -0.686821,
		0.149459, 0.922446, 0.356028,
		30.451384, 38.689407, 26.215460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046080, 38.046265, 26.172251>,  <30.346762, 38.043697, 25.966242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046080, 38.046265, 26.172251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904812, 38.376923, 26.347490>,  <30.820051, 38.575317, 26.452635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904812, 38.376923, 26.347490>,  <31.046080, 38.046265, 26.172251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904812, 38.376923, 26.347490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494855, -0.232349, 0.837337,
		0.793971, 0.512519, -0.327009,
		-0.353170, 0.826643, 0.438101,
		30.798861, 38.624916, 26.478920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602934, 38.121868, 26.658726>,  <31.046080, 38.046265, 26.172251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602934, 38.121868, 26.658726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316704, 38.362099, 26.801418>,  <31.144966, 38.506237, 26.887033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316704, 38.362099, 26.801418>,  <31.602934, 38.121868, 26.658726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316704, 38.362099, 26.801418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366729, -0.111653, 0.923604,
		0.594525, 0.791734, -0.140352,
		-0.715577, 0.600576, 0.356732,
		31.102030, 38.542271, 26.908438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979578, 38.700432, 26.964148>,  <31.602934, 38.121868, 26.658726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979578, 38.700432, 26.964148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628632, 38.654045, 27.150387>,  <31.418064, 38.626213, 27.262131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628632, 38.654045, 27.150387>,  <31.979578, 38.700432, 26.964148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628632, 38.654045, 27.150387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471601, -0.029565, 0.881316,
		-0.088441, 0.992813, 0.080631,
		-0.877366, -0.115971, 0.465596,
		31.365421, 38.619255, 27.290066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079235, 38.971157, 27.609547>,  <31.979578, 38.700432, 26.964148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079235, 38.971157, 27.609547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724571, 38.807381, 27.695517>,  <31.511772, 38.709114, 27.747099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724571, 38.807381, 27.695517>,  <32.079235, 38.971157, 27.609547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724571, 38.807381, 27.695517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185505, 0.110802, 0.976376,
		-0.423583, 0.905583, -0.022290,
		-0.886660, -0.409441, 0.214924,
		31.458572, 38.684547, 27.759995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799807, 39.372868, 28.148199>,  <32.079235, 38.971157, 27.609547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799807, 39.372868, 28.148199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616640, 39.017319, 28.154167>,  <31.506741, 38.803989, 28.157749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616640, 39.017319, 28.154167>,  <31.799807, 39.372868, 28.148199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616640, 39.017319, 28.154167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111247, -0.040642, 0.992961,
		-0.882006, 0.456355, 0.117494,
		-0.457918, -0.888869, 0.014922,
		31.479265, 38.750656, 28.158644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511497, 39.380138, 28.798412>,  <31.799807, 39.372868, 28.148199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511497, 39.380138, 28.798412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456629, 38.997986, 28.693771>,  <31.423708, 38.768696, 28.630987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456629, 38.997986, 28.693771>,  <31.511497, 39.380138, 28.798412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456629, 38.997986, 28.693771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029348, -0.267902, 0.962999,
		-0.990113, 0.124418, 0.064787,
		-0.137171, -0.955379, -0.261602,
		31.415478, 38.711372, 28.615292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934824, 39.020813, 29.269136>,  <31.511497, 39.380138, 28.798412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934824, 39.020813, 29.269136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213865, 38.767006, 29.136030>,  <31.381290, 38.614723, 29.056166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213865, 38.767006, 29.136030>,  <30.934824, 39.020813, 29.269136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213865, 38.767006, 29.136030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081422, -0.391229, 0.916685,
		-0.711842, -0.666578, -0.221259,
		0.697605, -0.634519, -0.332767,
		31.423147, 38.576649, 29.036200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944530, 38.572598, 29.789343>,  <30.934824, 39.020813, 29.269136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944530, 38.572598, 29.789343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264589, 38.430202, 29.596245>,  <31.456625, 38.344765, 29.480387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264589, 38.430202, 29.596245>,  <30.944530, 38.572598, 29.789343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264589, 38.430202, 29.596245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312655, -0.439306, 0.842174,
		-0.511876, -0.824793, -0.240207,
		0.800143, -0.355987, -0.482746,
		31.504633, 38.323406, 29.451422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940367, 37.795033, 29.769855>,  <30.944530, 38.572598, 29.789343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940367, 37.795033, 29.769855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319931, 37.902489, 29.703646>,  <31.547670, 37.966965, 29.663919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319931, 37.902489, 29.703646>,  <30.940367, 37.795033, 29.769855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319931, 37.902489, 29.703646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295304, -0.571209, 0.765843,
		0.111192, -0.775597, -0.621358,
		0.948911, 0.268645, -0.165523,
		31.604605, 37.983082, 29.653988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323645, 37.120335, 29.621399>,  <30.940367, 37.795033, 29.769855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323645, 37.120335, 29.621399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556572, 37.419037, 29.749935>,  <31.696327, 37.598259, 29.827057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556572, 37.419037, 29.749935>,  <31.323645, 37.120335, 29.621399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556572, 37.419037, 29.749935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123684, -0.472051, 0.872851,
		0.803498, -0.468531, -0.367245,
		0.582316, 0.746757, 0.321343,
		31.731268, 37.643063, 29.846338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881088, 36.779198, 29.606524>,  <31.323645, 37.120335, 29.621399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881088, 36.779198, 29.606524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934309, 37.103107, 29.835104>,  <31.966242, 37.297455, 29.972252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934309, 37.103107, 29.835104>,  <31.881088, 36.779198, 29.606524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934309, 37.103107, 29.835104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315779, -0.581166, 0.750019,
		0.939458, 0.080663, -0.333035,
		0.133050, 0.809777, 0.571453,
		31.974224, 37.346039, 30.006540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549744, 36.621895, 29.904718>,  <31.881088, 36.779198, 29.606524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549744, 36.621895, 29.904718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391853, 36.913540, 30.128355>,  <32.297119, 37.088528, 30.262537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391853, 36.913540, 30.128355>,  <32.549744, 36.621895, 29.904718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391853, 36.913540, 30.128355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526829, -0.318930, 0.787867,
		0.752758, 0.605535, -0.258231,
		-0.394724, 0.729116, 0.559090,
		32.273438, 37.132275, 30.296082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105373, 36.980450, 30.313673>,  <32.549744, 36.621895, 29.904718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105373, 36.980450, 30.313673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757957, 37.059845, 30.495331>,  <32.549507, 37.107483, 30.604326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757957, 37.059845, 30.495331>,  <33.105373, 36.980450, 30.313673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757957, 37.059845, 30.495331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361917, -0.372039, 0.854753,
		0.338614, 0.906748, 0.251295,
		-0.868537, 0.198484, 0.454145,
		32.497395, 37.119389, 30.631575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224781, 37.324642, 30.910494>,  <33.105373, 36.980450, 30.313673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224781, 37.324642, 30.910494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866570, 37.161892, 30.982592>,  <32.651642, 37.064243, 31.025850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866570, 37.161892, 30.982592>,  <33.224781, 37.324642, 30.910494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866570, 37.161892, 30.982592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302449, -0.259369, 0.917198,
		-0.326434, 0.875889, 0.355330,
		-0.895525, -0.406874, 0.180245,
		32.597912, 37.039829, 31.036665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996502, 37.543861, 31.587536>,  <33.224781, 37.324642, 30.910494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996502, 37.543861, 31.587536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779831, 37.212540, 31.530260>,  <32.649830, 37.013748, 31.495893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779831, 37.212540, 31.530260>,  <32.996502, 37.543861, 31.587536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779831, 37.212540, 31.530260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209312, -0.297889, 0.931370,
		-0.814112, 0.474527, 0.334732,
		-0.541673, -0.828304, -0.143191,
		32.617329, 36.964050, 31.487303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647266, 37.476543, 32.256424>,  <32.996502, 37.543861, 31.587536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647266, 37.476543, 32.256424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616104, 37.124889, 32.068363>,  <32.597408, 36.913895, 31.955526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616104, 37.124889, 32.068363>,  <32.647266, 37.476543, 32.256424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616104, 37.124889, 32.068363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140606, -0.476564, 0.867823,
		-0.986996, 0.001499, 0.160738,
		-0.077903, -0.879139, -0.470156,
		32.592731, 36.861149, 31.927317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165257, 37.112480, 32.595932>,  <32.647266, 37.476543, 32.256424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165257, 37.112480, 32.595932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375546, 36.834381, 32.399876>,  <32.501720, 36.667522, 32.282242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375546, 36.834381, 32.399876>,  <32.165257, 37.112480, 32.595932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375546, 36.834381, 32.399876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182892, -0.470339, 0.863326,
		-0.830760, -0.543517, -0.120114,
		0.525726, -0.695249, -0.490144,
		32.533264, 36.625805, 32.252834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109211, 36.416393, 33.038517>,  <32.165257, 37.112480, 32.595932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109211, 36.416393, 33.038517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382324, 36.356571, 32.752457>,  <32.546192, 36.320679, 32.580818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382324, 36.356571, 32.752457>,  <32.109211, 36.416393, 33.038517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382324, 36.356571, 32.752457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555724, -0.529154, 0.641223,
		-0.474321, -0.835243, -0.278188,
		0.682781, -0.149550, -0.715154,
		32.587158, 36.311707, 32.537910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302437, 35.689247, 33.062969>,  <32.109211, 36.416393, 33.038517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302437, 35.689247, 33.062969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613167, 35.880478, 32.899029>,  <32.799606, 35.995216, 32.800667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613167, 35.880478, 32.899029>,  <32.302437, 35.689247, 33.062969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613167, 35.880478, 32.899029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623706, -0.494475, 0.605380,
		0.086761, -0.725902, -0.682304,
		0.776829, 0.478080, -0.409849,
		32.846214, 36.023903, 32.776073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731686, 35.191551, 32.851658>,  <32.302437, 35.689247, 33.062969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731686, 35.191551, 32.851658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965813, 35.513988, 32.886578>,  <33.106289, 35.707451, 32.907528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965813, 35.513988, 32.886578>,  <32.731686, 35.191551, 32.851658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965813, 35.513988, 32.886578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534440, -0.464535, 0.706103,
		0.609739, -0.366635, -0.702708,
		0.585314, 0.806093, 0.087300,
		33.141407, 35.755817, 32.912769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439255, 34.926224, 32.901264>,  <32.731686, 35.191551, 32.851658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439255, 34.926224, 32.901264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446365, 35.301785, 33.038750>,  <33.450630, 35.527122, 33.121243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446365, 35.301785, 33.038750>,  <33.439255, 34.926224, 32.901264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446365, 35.301785, 33.038750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707344, -0.254772, 0.659360,
		0.706646, 0.231403, -0.668659,
		0.017777, 0.938906, 0.343715,
		33.451698, 35.583458, 33.141865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250458, 35.187580, 32.881039>,  <33.439255, 34.926224, 32.901264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250458, 35.187580, 32.881039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058273, 35.411667, 33.150944>,  <33.942963, 35.546120, 33.312885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058273, 35.411667, 33.150944>,  <34.250458, 35.187580, 32.881039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058273, 35.411667, 33.150944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775265, -0.088400, 0.625420,
		0.410022, 0.823613, -0.391847,
		-0.480465, 0.560221, 0.674764,
		33.914135, 35.579735, 33.353374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780682, 35.698444, 33.060879>,  <34.250458, 35.187580, 32.881039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780682, 35.698444, 33.060879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502579, 35.671616, 33.347130>,  <34.335716, 35.655518, 33.518879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502579, 35.671616, 33.347130>,  <34.780682, 35.698444, 33.060879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502579, 35.671616, 33.347130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712588, 0.065872, 0.698483,
		-0.093991, 0.995571, 0.002000,
		-0.695258, -0.067076, 0.715623,
		34.294003, 35.651493, 33.561817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066544, 36.026920, 33.616764>,  <34.780682, 35.698444, 33.060879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066544, 36.026920, 33.616764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766457, 35.817673, 33.778511>,  <34.586403, 35.692123, 33.875561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766457, 35.817673, 33.778511>,  <35.066544, 36.026920, 33.616764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766457, 35.817673, 33.778511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599227, -0.279454, 0.750222,
		-0.279454, 0.805140, 0.523120,
		-0.750222, -0.523120, 0.404367,
		34.541389, 35.660736, 33.899822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070511, 36.300678, 34.289314>,  <35.066544, 36.026920, 33.616764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070511, 36.300678, 34.289314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932079, 35.926376, 34.262207>,  <34.849022, 35.701794, 34.245945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932079, 35.926376, 34.262207>,  <35.070511, 36.300678, 34.289314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932079, 35.926376, 34.262207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725986, -0.312846, 0.612430,
		-0.594285, 0.162751, 0.787615,
		-0.346076, -0.935756, -0.067765,
		34.828255, 35.645649, 34.241879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485317, 36.798950, 34.108799>,  <35.070511, 36.300678, 34.289314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485317, 36.798950, 34.108799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855530, 36.935692, 34.043663>,  <36.077660, 37.017738, 34.004581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855530, 36.935692, 34.043663>,  <35.485317, 36.798950, 34.108799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855530, 36.935692, 34.043663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377532, 0.799925, -0.466464,
		-0.029204, 0.493207, 0.869422,
		0.925536, 0.341858, -0.162840,
		36.133190, 37.038250, 33.994812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466400, 37.535343, 34.266159>,  <35.485317, 36.798950, 34.108799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466400, 37.535343, 34.266159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723080, 37.430199, 33.977959>,  <35.877087, 37.367111, 33.805038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723080, 37.430199, 33.977959>,  <35.466400, 37.535343, 34.266159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723080, 37.430199, 33.977959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308345, 0.771741, -0.556182,
		0.702240, 0.579066, 0.414175,
		0.641703, -0.262864, -0.720500,
		35.915592, 37.351341, 33.761810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611164, 38.174660, 33.991760>,  <35.466400, 37.535343, 34.266159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611164, 38.174660, 33.991760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730564, 37.910336, 33.716301>,  <35.802204, 37.751740, 33.551025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730564, 37.910336, 33.716301>,  <35.611164, 38.174660, 33.991760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730564, 37.910336, 33.716301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385022, 0.576847, -0.720420,
		0.873303, 0.480186, -0.082240,
		0.298496, -0.660809, -0.688644,
		35.820114, 37.712093, 33.509708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775883, 38.643536, 33.439201>,  <35.611164, 38.174660, 33.991760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775883, 38.643536, 33.439201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798386, 38.290852, 33.251831>,  <35.811886, 38.079243, 33.139408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798386, 38.290852, 33.251831>,  <35.775883, 38.643536, 33.439201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798386, 38.290852, 33.251831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375220, 0.416103, -0.828292,
		0.925227, 0.222361, -0.307426,
		0.056259, -0.881711, -0.468424,
		35.815262, 38.026337, 33.111305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084831, 38.746407, 32.795918>,  <35.775883, 38.643536, 33.439201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084831, 38.746407, 32.795918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892551, 38.401249, 32.733509>,  <35.777184, 38.194153, 32.696064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892551, 38.401249, 32.733509>,  <36.084831, 38.746407, 32.795918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892551, 38.401249, 32.733509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466359, 0.402249, -0.787848,
		0.742591, -0.305952, -0.595779,
		-0.480695, -0.862895, -0.156023,
		35.748344, 38.142380, 32.686703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279476, 38.450844, 32.084087>,  <36.084831, 38.746407, 32.795918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279476, 38.450844, 32.084087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921783, 38.310333, 32.195049>,  <35.707169, 38.226028, 32.261627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921783, 38.310333, 32.195049>,  <36.279476, 38.450844, 32.084087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921783, 38.310333, 32.195049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412399, 0.405690, -0.815685,
		0.173990, -0.843814, -0.507647,
		-0.894234, -0.351274, 0.277402,
		35.653515, 38.204952, 32.278271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048283, 38.331074, 31.516260>,  <36.279476, 38.450844, 32.084087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048283, 38.331074, 31.516260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706131, 38.300800, 31.721239>,  <35.500839, 38.282635, 31.844227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706131, 38.300800, 31.721239>,  <36.048283, 38.331074, 31.516260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706131, 38.300800, 31.721239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495401, 0.408559, -0.766588,
		-0.151347, -0.909589, -0.386966,
		-0.855378, -0.075682, 0.512446,
		35.449516, 38.278095, 31.874973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582390, 38.001373, 31.024349>,  <36.048283, 38.331074, 31.516260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582390, 38.001373, 31.024349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364689, 38.197308, 31.296776>,  <35.234066, 38.314869, 31.460232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364689, 38.197308, 31.296776>,  <35.582390, 38.001373, 31.024349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364689, 38.197308, 31.296776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471259, 0.493126, -0.731260,
		-0.694047, -0.718949, -0.037547,
		-0.544254, 0.489835, 0.681065,
		35.201412, 38.344257, 31.501095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804214, 37.984581, 30.783087>,  <35.582390, 38.001373, 31.024349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804214, 37.984581, 30.783087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814373, 38.289188, 31.042143>,  <34.820469, 38.471954, 31.197577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814373, 38.289188, 31.042143>,  <34.804214, 37.984581, 30.783087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814373, 38.289188, 31.042143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392500, 0.603424, -0.694135,
		-0.919401, -0.236569, 0.314224,
		0.025399, 0.761522, 0.647641,
		34.821991, 38.517647, 31.236435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070877, 38.234879, 30.800018>,  <34.804214, 37.984581, 30.783087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070877, 38.234879, 30.800018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321388, 38.523357, 30.918442>,  <34.471695, 38.696445, 30.989496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321388, 38.523357, 30.918442>,  <34.070877, 38.234879, 30.800018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321388, 38.523357, 30.918442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444983, 0.642506, -0.623839,
		-0.640132, 0.258953, 0.723308,
		0.626275, 0.721199, 0.296059,
		34.509270, 38.739716, 31.007259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711388, 38.811466, 30.809414>,  <34.070877, 38.234879, 30.800018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711388, 38.811466, 30.809414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083221, 38.957832, 30.791622>,  <34.306320, 39.045650, 30.780947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083221, 38.957832, 30.791622>,  <33.711388, 38.811466, 30.809414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083221, 38.957832, 30.791622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276502, 0.612412, -0.740607,
		-0.243762, 0.700755, 0.670465,
		0.929584, 0.365916, -0.044477,
		34.362095, 39.067608, 30.778278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639179, 39.518028, 30.870249>,  <33.711388, 38.811466, 30.809414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639179, 39.518028, 30.870249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002445, 39.466671, 30.710876>,  <34.220406, 39.435856, 30.615253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002445, 39.466671, 30.710876>,  <33.639179, 39.518028, 30.870249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002445, 39.466671, 30.710876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252389, 0.591405, -0.765859,
		0.333962, 0.796088, 0.504691,
		0.908168, -0.128389, -0.398431,
		34.274895, 39.428154, 30.591347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798714, 40.187988, 30.650309>,  <33.639179, 39.518028, 30.870249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798714, 40.187988, 30.650309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045185, 39.952606, 30.440908>,  <34.193066, 39.811378, 30.315268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045185, 39.952606, 30.440908>,  <33.798714, 40.187988, 30.650309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045185, 39.952606, 30.440908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183806, 0.538880, -0.822085,
		0.765861, 0.602771, 0.223883,
		0.616176, -0.588452, -0.523500,
		34.230038, 39.776070, 30.283859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307076, 40.577858, 30.270891>,  <33.798714, 40.187988, 30.650309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307076, 40.577858, 30.270891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286350, 40.232399, 30.070324>,  <34.273914, 40.025124, 29.949984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286350, 40.232399, 30.070324>,  <34.307076, 40.577858, 30.270891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286350, 40.232399, 30.070324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152435, 0.503050, -0.850708,
		0.986954, 0.032355, -0.157716,
		-0.051814, -0.863651, -0.501420,
		34.270805, 39.973305, 29.919897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605728, 40.781307, 29.558571>,  <34.307076, 40.577858, 30.270891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605728, 40.781307, 29.558571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429996, 40.426758, 29.500151>,  <34.324558, 40.214027, 29.465097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429996, 40.426758, 29.500151>,  <34.605728, 40.781307, 29.558571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429996, 40.426758, 29.500151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319944, 0.306310, -0.896555,
		0.839418, -0.347158, -0.418162,
		-0.439333, -0.886372, -0.146052,
		34.298195, 40.160847, 29.456335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746571, 40.547298, 28.852257>,  <34.605728, 40.781307, 29.558571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746571, 40.547298, 28.852257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392971, 40.405655, 28.974342>,  <34.180813, 40.320667, 29.047594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392971, 40.405655, 28.974342>,  <34.746571, 40.547298, 28.852257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392971, 40.405655, 28.974342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428030, 0.350543, -0.833013,
		0.187984, -0.867023, -0.461447,
		-0.883998, -0.354106, 0.305215,
		34.127773, 40.299423, 29.065907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497368, 40.350533, 28.224907>,  <34.746571, 40.547298, 28.852257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497368, 40.350533, 28.224907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164322, 40.289574, 28.437899>,  <33.964497, 40.252998, 28.565693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164322, 40.289574, 28.437899>,  <34.497368, 40.350533, 28.224907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164322, 40.289574, 28.437899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553693, 0.205498, -0.806967,
		0.013556, -0.966719, -0.255481,
		-0.832611, -0.152397, 0.532480,
		33.914539, 40.243855, 28.597643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065998, 39.892548, 27.834044>,  <34.497368, 40.350533, 28.224907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065998, 39.892548, 27.834044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831112, 40.092316, 28.088842>,  <33.690182, 40.212177, 28.241722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831112, 40.092316, 28.088842>,  <34.065998, 39.892548, 27.834044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831112, 40.092316, 28.088842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640214, 0.194974, -0.743042,
		-0.495287, -0.844136, 0.205245,
		-0.587211, 0.499420, 0.636996,
		33.654949, 40.242142, 28.279942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386703, 39.666264, 27.798565>,  <34.065998, 39.892548, 27.834044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386703, 39.666264, 27.798565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357349, 40.037212, 27.945312>,  <33.339737, 40.259781, 28.033361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357349, 40.037212, 27.945312>,  <33.386703, 39.666264, 27.798565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357349, 40.037212, 27.945312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621270, 0.245252, -0.744228,
		-0.780153, -0.282544, 0.558150,
		-0.073389, 0.927373, 0.366870,
		33.335331, 40.315426, 28.055374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710930, 39.763035, 27.641470>,  <33.386703, 39.666264, 27.798565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710930, 39.763035, 27.641470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863583, 40.123348, 27.724356>,  <32.955173, 40.339539, 27.774086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863583, 40.123348, 27.724356>,  <32.710930, 39.763035, 27.641470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863583, 40.123348, 27.724356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623785, 0.416428, -0.661422,
		-0.682090, 0.123166, 0.720821,
		0.381635, 0.900788, 0.207212,
		32.978073, 40.393585, 27.786520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164173, 40.257427, 27.702492>,  <32.710930, 39.763035, 27.641470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164173, 40.257427, 27.702492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477409, 40.491199, 27.617441>,  <32.665352, 40.631462, 27.566412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477409, 40.491199, 27.617441>,  <32.164173, 40.257427, 27.702492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477409, 40.491199, 27.617441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472027, 0.335940, -0.815068,
		-0.404925, 0.738634, 0.538940,
		0.783088, 0.584435, -0.212624,
		32.712337, 40.666531, 27.553654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856750, 40.953918, 27.531544>,  <32.164173, 40.257427, 27.702492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856750, 40.953918, 27.531544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215279, 40.874474, 27.372967>,  <32.430397, 40.826809, 27.277821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215279, 40.874474, 27.372967>,  <31.856750, 40.953918, 27.531544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215279, 40.874474, 27.372967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405610, -0.006033, -0.914026,
		0.179141, 0.980060, -0.085965,
		0.896320, -0.198608, -0.396441,
		32.484173, 40.814892, 27.254034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909561, 41.386299, 26.945215>,  <31.856750, 40.953918, 27.531544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909561, 41.386299, 26.945215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220421, 41.151279, 26.855040>,  <32.406937, 41.010269, 26.800934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220421, 41.151279, 26.855040>,  <31.909561, 41.386299, 26.945215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220421, 41.151279, 26.855040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253048, 0.036242, -0.966775,
		0.576199, 0.808376, -0.120513,
		0.777150, -0.587549, -0.225441,
		32.453568, 40.975014, 26.787407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247185, 41.727909, 26.390486>,  <31.909561, 41.386299, 26.945215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247185, 41.727909, 26.390486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363907, 41.346275, 26.363417>,  <32.433941, 41.117294, 26.347176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363907, 41.346275, 26.363417>,  <32.247185, 41.727909, 26.390486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363907, 41.346275, 26.363417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176931, 0.015689, -0.984098,
		0.939972, 0.299135, -0.164229,
		0.291802, -0.954082, -0.067674,
		32.451447, 41.060051, 26.343115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600014, 41.575703, 25.664610>,  <32.247185, 41.727909, 26.390486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600014, 41.575703, 25.664610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510269, 41.206738, 25.790352>,  <32.456421, 40.985359, 25.865797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510269, 41.206738, 25.790352>,  <32.600014, 41.575703, 25.664610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510269, 41.206738, 25.790352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209673, -0.269331, -0.939946,
		0.951682, -0.276798, -0.132977,
		-0.224360, -0.922412, 0.314355,
		32.442963, 40.930016, 25.884659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980892, 41.140106, 25.224478>,  <32.600014, 41.575703, 25.664610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980892, 41.140106, 25.224478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685558, 40.917397, 25.376726>,  <32.508358, 40.783772, 25.468075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685558, 40.917397, 25.376726>,  <32.980892, 41.140106, 25.224478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685558, 40.917397, 25.376726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197246, -0.361421, -0.911301,
		0.644950, -0.747918, 0.157028,
		-0.738332, -0.556770, 0.380622,
		32.464058, 40.750366, 25.490913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110542, 40.475071, 24.968599>,  <32.980892, 41.140106, 25.224478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110542, 40.475071, 24.968599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722534, 40.469437, 25.065643>,  <32.489727, 40.466057, 25.123869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722534, 40.469437, 25.065643>,  <33.110542, 40.475071, 24.968599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722534, 40.469437, 25.065643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203076, -0.501367, -0.841066,
		0.133482, -0.865120, 0.483476,
		-0.970022, -0.014085, 0.242609,
		32.431526, 40.465210, 25.138426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866852, 39.867821, 24.817732>,  <33.110542, 40.475071, 24.968599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866852, 39.867821, 24.817732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530376, 40.083885, 24.827698>,  <32.328491, 40.213524, 24.833677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530376, 40.083885, 24.827698>,  <32.866852, 39.867821, 24.817732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530376, 40.083885, 24.827698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277443, -0.391597, -0.877313,
		-0.464137, -0.744899, 0.479272,
		-0.841191, 0.540164, 0.024912,
		32.278019, 40.245934, 24.835171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323322, 39.423237, 24.786066>,  <32.866852, 39.867821, 24.817732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323322, 39.423237, 24.786066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195881, 39.777336, 24.650524>,  <32.119415, 39.989796, 24.569199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195881, 39.777336, 24.650524>,  <32.323322, 39.423237, 24.786066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195881, 39.777336, 24.650524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462789, -0.457256, -0.759436,
		-0.827234, -0.085142, 0.555369,
		-0.318606, 0.885250, -0.338854,
		32.100300, 40.042912, 24.548868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672770, 39.303753, 24.623224>,  <32.323322, 39.423237, 24.786066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672770, 39.303753, 24.623224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763412, 39.644630, 24.434580>,  <31.817799, 39.849155, 24.321394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763412, 39.644630, 24.434580>,  <31.672770, 39.303753, 24.623224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763412, 39.644630, 24.434580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581141, -0.270270, -0.767612,
		-0.781616, 0.448020, 0.433999,
		0.226608, 0.852193, -0.471610,
		31.831394, 39.900288, 24.293097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097345, 39.547424, 24.195101>,  <31.672770, 39.303753, 24.623224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097345, 39.547424, 24.195101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404589, 39.737434, 24.023352>,  <31.588934, 39.851440, 23.920303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404589, 39.737434, 24.023352>,  <31.097345, 39.547424, 24.195101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404589, 39.737434, 24.023352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331137, -0.279246, -0.901316,
		-0.548050, 0.834488, -0.057192,
		0.768108, 0.475028, -0.429371,
		31.635021, 39.879944, 23.894541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857050, 39.964447, 23.621798>,  <31.097345, 39.547424, 24.195101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857050, 39.964447, 23.621798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245399, 39.941380, 23.528780>,  <31.478409, 39.927540, 23.472969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245399, 39.941380, 23.528780>,  <30.857050, 39.964447, 23.621798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245399, 39.941380, 23.528780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233371, -0.007990, -0.972355,
		0.054213, 0.998304, -0.021215,
		0.970875, -0.057665, -0.232542,
		31.536663, 39.924080, 23.459017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857248, 40.205696, 22.925911>,  <30.857050, 39.964447, 23.621798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857248, 40.205696, 22.925911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218351, 40.040691, 22.974678>,  <31.435013, 39.941689, 23.003939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218351, 40.040691, 22.974678>,  <30.857248, 40.205696, 22.925911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218351, 40.040691, 22.974678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037040, -0.207833, -0.977463,
		0.428555, 0.886927, -0.172343,
		0.902756, -0.412512, 0.121920,
		31.489178, 39.916939, 23.011253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389349, 40.612762, 22.557648>,  <30.857248, 40.205696, 22.925911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389349, 40.612762, 22.557648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569822, 40.257088, 22.588043>,  <31.678106, 40.043682, 22.606281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569822, 40.257088, 22.588043>,  <31.389349, 40.612762, 22.557648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569822, 40.257088, 22.588043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020836, -0.095623, -0.995200,
		0.892187, 0.447436, -0.061671,
		0.451185, -0.889189, 0.075991,
		31.705177, 39.990330, 22.610840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907539, 40.647106, 22.130207>,  <31.389349, 40.612762, 22.557648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907539, 40.647106, 22.130207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822592, 40.258881, 22.175663>,  <31.771624, 40.025948, 22.202936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822592, 40.258881, 22.175663>,  <31.907539, 40.647106, 22.130207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822592, 40.258881, 22.175663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228149, -0.063834, -0.971531,
		0.950183, -0.232248, -0.207876,
		-0.212367, -0.970560, 0.113641,
		31.758883, 39.967712, 22.209755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172676, 40.330223, 21.555056>,  <31.907539, 40.647106, 22.130207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172676, 40.330223, 21.555056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952503, 40.020691, 21.680407>,  <31.820398, 39.834972, 21.755617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952503, 40.020691, 21.680407>,  <32.172676, 40.330223, 21.555056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952503, 40.020691, 21.680407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230213, -0.220125, -0.947917,
		0.802511, -0.593910, -0.056982,
		-0.550435, -0.773832, 0.313378,
		31.787373, 39.788540, 21.774420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421700, 39.741970, 21.275118>,  <32.172676, 40.330223, 21.555056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421700, 39.741970, 21.275118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034081, 39.677101, 21.349581>,  <31.801510, 39.638180, 21.394258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034081, 39.677101, 21.349581>,  <32.421700, 39.741970, 21.275118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034081, 39.677101, 21.349581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158713, -0.168374, -0.972862,
		0.189119, -0.972291, 0.137422,
		-0.969043, -0.162176, 0.186158,
		31.743368, 39.628448, 21.405428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220333, 39.346672, 20.704641>,  <32.421700, 39.741970, 21.275118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220333, 39.346672, 20.704641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854654, 39.433323, 20.841644>,  <31.635246, 39.485313, 20.923847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854654, 39.433323, 20.841644>,  <32.220333, 39.346672, 20.704641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854654, 39.433323, 20.841644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347476, 0.015959, -0.937553,
		-0.208563, -0.976125, 0.060682,
		-0.914200, 0.216624, 0.342508,
		31.580395, 39.498310, 20.944397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411366, 39.971119, 20.351044>,  <32.220333, 39.346672, 20.704641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411366, 39.971119, 20.351044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710457, 40.083797, 20.110529>,  <32.889912, 40.151405, 19.966219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710457, 40.083797, 20.110529>,  <32.411366, 39.971119, 20.351044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710457, 40.083797, 20.110529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643218, -0.532080, 0.550601,
		-0.164831, -0.798460, -0.579044,
		0.747730, 0.281695, -0.601288,
		32.934776, 40.168304, 19.930143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759346, 39.379814, 20.064133>,  <32.411366, 39.971119, 20.351044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759346, 39.379814, 20.064133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006939, 39.693836, 20.073412>,  <33.155495, 39.882252, 20.078979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006939, 39.693836, 20.073412>,  <32.759346, 39.379814, 20.064133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006939, 39.693836, 20.073412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654209, -0.531711, 0.537861,
		0.434589, -0.317750, -0.842714,
		0.618986, 0.785060, 0.023200,
		33.192635, 39.929356, 20.080372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411423, 39.029854, 20.099478>,  <32.759346, 39.379814, 20.064133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411423, 39.029854, 20.099478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490486, 39.413380, 20.181072>,  <33.537926, 39.643494, 20.230028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490486, 39.413380, 20.181072>,  <33.411423, 39.029854, 20.099478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490486, 39.413380, 20.181072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741454, -0.282352, 0.608706,
		0.641230, 0.030928, -0.766725,
		0.197660, 0.958812, 0.203984,
		33.549786, 39.701023, 20.242268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199863, 39.110641, 19.947996>,  <33.411423, 39.029854, 20.099478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199863, 39.110641, 19.947996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055832, 39.385345, 20.200567>,  <33.969414, 39.550167, 20.352110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055832, 39.385345, 20.200567>,  <34.199863, 39.110641, 19.947996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055832, 39.385345, 20.200567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621790, -0.327913, 0.711231,
		0.695498, 0.648719, -0.308944,
		-0.360083, 0.686758, 0.631430,
		33.947807, 39.591373, 20.389996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752472, 39.225273, 20.373236>,  <34.199863, 39.110641, 19.947996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752472, 39.225273, 20.373236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459969, 39.400806, 20.582113>,  <34.284466, 39.506126, 20.707439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459969, 39.400806, 20.582113>,  <34.752472, 39.225273, 20.373236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459969, 39.400806, 20.582113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558200, -0.054980, 0.827883,
		0.392014, 0.896884, -0.204753,
		-0.731258, 0.438835, 0.522193,
		34.240593, 39.532455, 20.738771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033974, 39.856316, 20.668560>,  <34.752472, 39.225273, 20.373236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033974, 39.856316, 20.668560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731724, 39.710934, 20.886528>,  <34.550373, 39.623707, 21.017309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731724, 39.710934, 20.886528>,  <35.033974, 39.856316, 20.668560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731724, 39.710934, 20.886528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575231, 0.029682, 0.817452,
		-0.313280, 0.931140, 0.186641,
		-0.755622, -0.363453, 0.544919,
		34.505035, 39.601898, 21.050003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126846, 40.277542, 21.376810>,  <35.033974, 39.856316, 20.668560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126846, 40.277542, 21.376810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899170, 39.957504, 21.452562>,  <34.762562, 39.765480, 21.498014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899170, 39.957504, 21.452562>,  <35.126846, 40.277542, 21.376810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899170, 39.957504, 21.452562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385637, -0.056364, 0.920928,
		-0.726155, 0.597220, 0.340628,
		-0.569195, -0.800095, 0.189381,
		34.728413, 39.717476, 21.509377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805241, 40.430500, 21.993900>,  <35.126846, 40.277542, 21.376810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805241, 40.430500, 21.993900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751022, 40.034210, 21.989853>,  <34.718491, 39.796436, 21.987425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751022, 40.034210, 21.989853>,  <34.805241, 40.430500, 21.993900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751022, 40.034210, 21.989853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165368, -0.032693, 0.985690,
		-0.976874, 0.131928, 0.168265,
		-0.135541, -0.990720, -0.010120,
		34.710361, 39.736996, 21.986816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324444, 40.296410, 22.651176>,  <34.805241, 40.430500, 21.993900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324444, 40.296410, 22.651176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471920, 39.944851, 22.530104>,  <34.560406, 39.733917, 22.457460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471920, 39.944851, 22.530104>,  <34.324444, 40.296410, 22.651176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471920, 39.944851, 22.530104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036043, -0.311858, 0.949445,
		-0.928853, -0.360961, -0.083301,
		0.368690, -0.878892, -0.302681,
		34.582527, 39.681183, 22.439299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982719, 39.735165, 22.910065>,  <34.324444, 40.296410, 22.651176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982719, 39.735165, 22.910065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329174, 39.549282, 22.836475>,  <34.537048, 39.437752, 22.792322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329174, 39.549282, 22.836475>,  <33.982719, 39.735165, 22.910065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329174, 39.549282, 22.836475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059020, -0.460614, 0.885636,
		-0.496307, -0.756226, -0.426383,
		0.866139, -0.464713, -0.183973,
		34.589016, 39.409870, 22.781284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927547, 39.084923, 23.279640>,  <33.982719, 39.735165, 22.910065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927547, 39.084923, 23.279640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321060, 39.105713, 23.210979>,  <34.557167, 39.118187, 23.169783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321060, 39.105713, 23.210979>,  <33.927547, 39.084923, 23.279640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321060, 39.105713, 23.210979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175941, -0.465385, 0.867446,
		-0.034795, -0.883581, -0.466984,
		0.983786, 0.051979, -0.171651,
		34.616196, 39.121307, 23.159485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225006, 38.407665, 23.421768>,  <33.927547, 39.084923, 23.279640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225006, 38.407665, 23.421768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510311, 38.685978, 23.455595>,  <34.681492, 38.852966, 23.475891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510311, 38.685978, 23.455595>,  <34.225006, 38.407665, 23.421768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510311, 38.685978, 23.455595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317713, -0.428502, 0.845840,
		0.624756, -0.576434, -0.526691,
		0.713259, 0.695780, 0.084569,
		34.724289, 38.894711, 23.480967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728115, 38.113960, 23.691242>,  <34.225006, 38.407665, 23.421768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728115, 38.113960, 23.691242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853260, 38.486378, 23.766369>,  <34.928349, 38.709827, 23.811445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853260, 38.486378, 23.766369>,  <34.728115, 38.113960, 23.691242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853260, 38.486378, 23.766369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335949, -0.293436, 0.895005,
		0.888401, -0.216917, -0.404588,
		0.312862, 0.931044, 0.187816,
		34.947117, 38.765690, 23.822714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389530, 38.077400, 23.919291>,  <34.728115, 38.113960, 23.691242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389530, 38.077400, 23.919291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234203, 38.418598, 24.058779>,  <35.141006, 38.623318, 24.142471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234203, 38.418598, 24.058779>,  <35.389530, 38.077400, 23.919291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234203, 38.418598, 24.058779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314713, -0.232910, 0.920168,
		0.866120, 0.467065, -0.178006,
		-0.388319, 0.852997, 0.348719,
		35.117706, 38.674496, 24.163395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803555, 38.215866, 24.549673>,  <35.389530, 38.077400, 23.919291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803555, 38.215866, 24.549673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508274, 38.482101, 24.593576>,  <35.331104, 38.641842, 24.619919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508274, 38.482101, 24.593576>,  <35.803555, 38.215866, 24.549673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508274, 38.482101, 24.593576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131250, -0.017879, 0.991188,
		0.661689, 0.746102, -0.074160,
		-0.738202, 0.665591, 0.109756,
		35.286812, 38.681778, 24.626503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013481, 38.794891, 25.014948>,  <35.803555, 38.215866, 24.549673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013481, 38.794891, 25.014948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613636, 38.806004, 25.014875>,  <35.373730, 38.812672, 25.014832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613636, 38.806004, 25.014875>,  <36.013481, 38.794891, 25.014948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613636, 38.806004, 25.014875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000384, 0.020372, 0.999793,
		0.027776, 0.999407, -0.020375,
		-0.999614, 0.027778, -0.000182,
		35.313751, 38.814339, 25.014820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906178, 39.412388, 25.336201>,  <36.013481, 38.794891, 25.014948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906178, 39.412388, 25.336201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591270, 39.172428, 25.393238>,  <35.402325, 39.028454, 25.427460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591270, 39.172428, 25.393238>,  <35.906178, 39.412388, 25.336201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591270, 39.172428, 25.393238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108146, 0.093333, 0.989744,
		-0.607054, 0.794614, -0.008601,
		-0.787267, -0.599898, 0.142593,
		35.355091, 38.992458, 25.436016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544956, 39.735970, 25.780481>,  <35.906178, 39.412388, 25.336201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544956, 39.735970, 25.780481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406704, 39.362064, 25.813343>,  <35.323753, 39.137722, 25.833061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406704, 39.362064, 25.813343>,  <35.544956, 39.735970, 25.780481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406704, 39.362064, 25.813343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020017, 0.080187, 0.996579,
		-0.938156, 0.346096, -0.009004,
		-0.345634, -0.934766, 0.082155,
		35.303013, 39.081635, 25.837990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137993, 39.757839, 26.304062>,  <35.544956, 39.735970, 25.780481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137993, 39.757839, 26.304062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247223, 39.374310, 26.272844>,  <35.312759, 39.144192, 26.254114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247223, 39.374310, 26.272844>,  <35.137993, 39.757839, 26.304062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247223, 39.374310, 26.272844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176425, -0.029837, 0.983862,
		-0.945677, -0.282436, 0.161013,
		0.273074, -0.958822, -0.078045,
		35.329144, 39.086662, 26.249432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722881, 39.358150, 26.738121>,  <35.137993, 39.757839, 26.304062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722881, 39.358150, 26.738121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042107, 39.120270, 26.699287>,  <35.233643, 38.977539, 26.675987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042107, 39.120270, 26.699287>,  <34.722881, 39.358150, 26.738121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042107, 39.120270, 26.699287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148747, 0.038297, 0.988133,
		-0.583931, -0.803031, 0.119024,
		0.798060, -0.594706, -0.097086,
		35.281525, 38.941856, 26.670162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696220, 38.968098, 27.338982>,  <34.722881, 39.358150, 26.738121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696220, 38.968098, 27.338982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068253, 38.896194, 27.210831>,  <35.291473, 38.853054, 27.133940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068253, 38.896194, 27.210831>,  <34.696220, 38.968098, 27.338982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068253, 38.896194, 27.210831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329723, 0.023959, 0.943774,
		-0.161971, -0.983420, 0.081553,
		0.930080, -0.179754, -0.320376,
		35.347275, 38.842270, 27.114717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874809, 38.506294, 27.772877>,  <34.696220, 38.968098, 27.338982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874809, 38.506294, 27.772877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223419, 38.611431, 27.607292>,  <35.432583, 38.674515, 27.507942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223419, 38.611431, 27.607292>,  <34.874809, 38.506294, 27.772877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223419, 38.611431, 27.607292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468996, -0.200352, 0.860175,
		0.143152, -0.943808, -0.297883,
		0.871522, 0.262842, -0.413961,
		35.484875, 38.690285, 27.483105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344173, 38.066002, 28.047457>,  <34.874809, 38.506294, 27.772877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344173, 38.066002, 28.047457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555546, 38.389938, 27.945543>,  <35.682369, 38.584301, 27.884396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555546, 38.389938, 27.945543>,  <35.344173, 38.066002, 28.047457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555546, 38.389938, 27.945543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517484, -0.069342, 0.852879,
		0.673031, -0.582534, -0.455723,
		0.528432, 0.809843, -0.254783,
		35.714077, 38.632893, 27.869108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086140, 37.897972, 28.205044>,  <35.344173, 38.066002, 28.047457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086140, 37.897972, 28.205044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086334, 38.296761, 28.173933>,  <36.086452, 38.536034, 28.155266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086334, 38.296761, 28.173933>,  <36.086140, 37.897972, 28.205044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086334, 38.296761, 28.173933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468193, 0.068499, 0.880967,
		0.883626, -0.036843, -0.466741,
		0.000486, 0.996971, -0.077777,
		36.086479, 38.595852, 28.150600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718494, 38.081661, 28.352741>,  <36.086140, 37.897972, 28.205044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718494, 38.081661, 28.352741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500237, 38.409977, 28.420374>,  <36.369282, 38.606964, 28.460953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500237, 38.409977, 28.420374>,  <36.718494, 38.081661, 28.352741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500237, 38.409977, 28.420374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562705, 0.209336, 0.799714,
		0.620999, 0.531498, -0.576082,
		-0.545641, 0.820785, 0.169079,
		36.336544, 38.656212, 28.471098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247658, 38.523014, 28.270329>,  <36.718494, 38.081661, 28.352741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247658, 38.523014, 28.270329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968052, 38.684906, 28.506147>,  <36.800289, 38.782040, 28.647638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968052, 38.684906, 28.506147>,  <37.247658, 38.523014, 28.270329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968052, 38.684906, 28.506147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690016, 0.165288, 0.704669,
		0.187755, 0.899374, -0.394809,
		-0.699018, 0.404730, 0.589549,
		36.758347, 38.806324, 28.683012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522488, 39.100700, 28.521513>,  <37.247658, 38.523014, 28.270329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522488, 39.100700, 28.521513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222652, 39.028316, 28.776188>,  <37.042751, 38.984886, 28.928993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222652, 39.028316, 28.776188>,  <37.522488, 39.100700, 28.521513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222652, 39.028316, 28.776188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607774, 0.192801, 0.770350,
		-0.262153, 0.964408, -0.034541,
		-0.749591, -0.180956, 0.636685,
		36.997776, 38.974030, 28.967194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693092, 39.506683, 29.134546>,  <37.522488, 39.100700, 28.521513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693092, 39.506683, 29.134546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425694, 39.254303, 29.292027>,  <37.265255, 39.102875, 29.386515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425694, 39.254303, 29.292027>,  <37.693092, 39.506683, 29.134546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425694, 39.254303, 29.292027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527781, -0.029512, 0.848867,
		-0.523979, 0.775257, 0.352735,
		-0.668501, -0.630956, 0.393703,
		37.225143, 39.065018, 29.410137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562885, 39.726624, 29.841780>,  <37.693092, 39.506683, 29.134546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562885, 39.726624, 29.841780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433224, 39.348274, 29.835573>,  <37.355427, 39.121265, 29.831850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433224, 39.348274, 29.835573>,  <37.562885, 39.726624, 29.841780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433224, 39.348274, 29.835573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479855, -0.178540, 0.858989,
		-0.815268, 0.271001, 0.511759,
		-0.324156, -0.945876, -0.015517,
		37.335976, 39.064510, 29.830917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244179, 39.604435, 30.478664>,  <37.562885, 39.726624, 29.841780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244179, 39.604435, 30.478664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369614, 39.258507, 30.321821>,  <37.444874, 39.050949, 30.227716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369614, 39.258507, 30.321821>,  <37.244179, 39.604435, 30.478664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369614, 39.258507, 30.321821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385200, -0.261575, 0.884985,
		-0.867920, -0.428557, 0.251103,
		0.313585, -0.864822, -0.392107,
		37.463688, 38.999062, 30.204189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419201, 39.207245, 31.093534>,  <37.244179, 39.604435, 30.478664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419201, 39.207245, 31.093534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566113, 38.973309, 30.804239>,  <37.654259, 38.832947, 30.630663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566113, 38.973309, 30.804239>,  <37.419201, 39.207245, 31.093534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566113, 38.973309, 30.804239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668095, -0.375112, 0.642604,
		-0.647115, -0.719203, 0.252960,
		0.367274, -0.584841, -0.723236,
		37.676296, 38.797855, 30.587269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561192, 38.490833, 31.417458>,  <37.419201, 39.207245, 31.093534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561192, 38.490833, 31.417458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789764, 38.512203, 31.089895>,  <37.926910, 38.525024, 30.893358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789764, 38.512203, 31.089895>,  <37.561192, 38.490833, 31.417458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789764, 38.512203, 31.089895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805980, -0.224357, 0.547777,
		-0.154461, -0.973041, -0.171268,
		0.571435, 0.053428, -0.818906,
		37.961193, 38.528233, 30.844223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838535, 37.815689, 31.329487>,  <37.561192, 38.490833, 31.417458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838535, 37.815689, 31.329487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064945, 38.104450, 31.170250>,  <38.200790, 38.277706, 31.074709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064945, 38.104450, 31.170250>,  <37.838535, 37.815689, 31.329487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064945, 38.104450, 31.170250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789504, -0.335691, 0.513805,
		0.237281, -0.605119, -0.759953,
		0.566023, 0.721902, -0.398091,
		38.234753, 38.321022, 31.050823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444157, 37.445671, 31.135534>,  <37.838535, 37.815689, 31.329487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444157, 37.445671, 31.135534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566597, 37.823975, 31.179056>,  <38.640060, 38.050957, 31.205170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566597, 37.823975, 31.179056>,  <38.444157, 37.445671, 31.135534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566597, 37.823975, 31.179056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780447, -0.314744, 0.540221,
		0.545166, -0.080445, -0.834460,
		0.306099, 0.945762, 0.108804,
		38.658428, 38.107704, 31.211697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064968, 37.348774, 31.242802>,  <38.444157, 37.445671, 31.135534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064968, 37.348774, 31.242802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035328, 37.735298, 31.341400>,  <39.017544, 37.967213, 31.400560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035328, 37.735298, 31.341400>,  <39.064968, 37.348774, 31.242802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035328, 37.735298, 31.341400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815479, -0.083566, 0.572723,
		0.574025, 0.243452, -0.781810,
		-0.074098, 0.966306, 0.246498,
		39.013100, 38.025188, 31.415350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768253, 37.610191, 31.332647>,  <39.064968, 37.348774, 31.242802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768253, 37.610191, 31.332647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533253, 37.867393, 31.529167>,  <39.392250, 38.021717, 31.647079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533253, 37.867393, 31.529167>,  <39.768253, 37.610191, 31.332647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533253, 37.867393, 31.529167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580353, -0.088304, 0.809564,
		0.563941, 0.760750, -0.321294,
		-0.587504, 0.643010, 0.491301,
		39.357002, 38.060295, 31.676558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119682, 37.979618, 31.732260>,  <39.768253, 37.610191, 31.332647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119682, 37.979618, 31.732260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778046, 38.015720, 31.937153>,  <39.573063, 38.037380, 32.060089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778046, 38.015720, 31.937153>,  <40.119682, 37.979618, 31.732260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778046, 38.015720, 31.937153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496506, -0.151926, 0.854635,
		0.154954, 0.984263, 0.084948,
		-0.854091, 0.090251, 0.512234,
		39.521820, 38.042797, 32.090824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215542, 38.338913, 32.364269>,  <40.119682, 37.979618, 31.732260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215542, 38.338913, 32.364269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859924, 38.180172, 32.455582>,  <39.646553, 38.084927, 32.510368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859924, 38.180172, 32.455582>,  <40.215542, 38.338913, 32.364269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859924, 38.180172, 32.455582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377389, -0.352959, 0.856153,
		-0.259193, 0.847307, 0.463563,
		-0.889043, -0.396852, 0.228279,
		39.593212, 38.061115, 32.524067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121056, 38.451073, 33.119469>,  <40.215542, 38.338913, 32.364269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121056, 38.451073, 33.119469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857658, 38.167751, 33.017735>,  <39.699619, 37.997757, 32.956692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857658, 38.167751, 33.017735>,  <40.121056, 38.451073, 33.119469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857658, 38.167751, 33.017735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180097, -0.476443, 0.860562,
		-0.730717, 0.520871, 0.441299,
		-0.658496, -0.708305, -0.254337,
		39.660110, 37.955261, 32.941433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680035, 38.443707, 33.657757>,  <40.121056, 38.451073, 33.119469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680035, 38.443707, 33.657757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660599, 38.089348, 33.473228>,  <39.648937, 37.876732, 33.362511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660599, 38.089348, 33.473228>,  <39.680035, 38.443707, 33.657757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660599, 38.089348, 33.473228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163230, -0.462702, 0.871357,
		-0.985391, -0.032961, 0.167090,
		-0.048592, -0.885901, -0.461322,
		39.646023, 37.823578, 33.334831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165195, 37.923634, 33.955093>,  <39.680035, 38.443707, 33.657757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165195, 37.923634, 33.955093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467701, 37.706341, 33.809235>,  <39.649204, 37.575966, 33.721718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467701, 37.706341, 33.809235>,  <39.165195, 37.923634, 33.955093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467701, 37.706341, 33.809235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197250, -0.342100, 0.918728,
		-0.623831, -0.766723, -0.151563,
		0.756259, -0.543235, -0.364648,
		39.694580, 37.543369, 33.699841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100525, 37.316273, 34.214470>,  <39.165195, 37.923634, 33.955093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100525, 37.316273, 34.214470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488464, 37.346760, 34.121883>,  <39.721230, 37.365051, 34.066334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488464, 37.346760, 34.121883>,  <39.100525, 37.316273, 34.214470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488464, 37.346760, 34.121883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231434, -0.585538, 0.776906,
		-0.076314, -0.807053, -0.585526,
		0.969853, 0.076222, -0.231464,
		39.779419, 37.369625, 34.052444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463276, 36.645294, 34.299072>,  <39.100525, 37.316273, 34.214470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463276, 36.645294, 34.299072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769386, 36.902660, 34.306877>,  <39.953053, 37.057079, 34.311562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769386, 36.902660, 34.306877>,  <39.463276, 36.645294, 34.299072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769386, 36.902660, 34.306877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316888, -0.402942, 0.858615,
		0.560304, -0.650891, -0.512250,
		0.765272, 0.643411, 0.019511,
		39.998966, 37.095684, 34.312729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075329, 36.228142, 34.334984>,  <39.463276, 36.645294, 34.299072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075329, 36.228142, 34.334984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155643, 36.593666, 34.476196>,  <40.203831, 36.812981, 34.560925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155643, 36.593666, 34.476196>,  <40.075329, 36.228142, 34.334984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155643, 36.593666, 34.476196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342631, -0.403113, 0.848589,
		0.917763, -0.049428, -0.394041,
		0.200787, 0.913815, 0.353027,
		40.215881, 36.867809, 34.582104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651680, 36.167099, 34.708668>,  <40.075329, 36.228142, 34.334984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651680, 36.167099, 34.708668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568745, 36.534214, 34.844120>,  <40.518982, 36.754482, 34.925392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568745, 36.534214, 34.844120>,  <40.651680, 36.167099, 34.708668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568745, 36.534214, 34.844120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444901, -0.219822, 0.868183,
		0.871248, 0.330669, -0.362747,
		-0.207341, 0.917789, 0.338635,
		40.506542, 36.809551, 34.945709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348213, 36.349342, 35.055489>,  <40.651680, 36.167099, 34.708668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348213, 36.349342, 35.055489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024815, 36.548733, 35.180611>,  <40.830776, 36.668369, 35.255684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024815, 36.548733, 35.180611>,  <41.348213, 36.349342, 35.055489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024815, 36.548733, 35.180611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411383, 0.098639, 0.906110,
		0.420823, 0.861271, -0.284816,
		-0.808500, 0.498480, 0.312802,
		40.782265, 36.698277, 35.274452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557404, 36.785610, 35.536163>,  <41.348213, 36.349342, 35.055489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557404, 36.785610, 35.536163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165810, 36.834229, 35.601669>,  <40.930855, 36.863400, 35.640972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165810, 36.834229, 35.601669>,  <41.557404, 36.785610, 35.536163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165810, 36.834229, 35.601669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181424, 0.152220, 0.971553,
		0.093161, 0.980844, -0.171073,
		-0.978982, 0.121547, 0.163767,
		40.872116, 36.870693, 35.650799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476364, 37.368362, 36.038147>,  <41.557404, 36.785610, 35.536163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476364, 37.368362, 36.038147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156197, 37.132710, 36.082428>,  <40.964096, 36.991318, 36.108997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156197, 37.132710, 36.082428>,  <41.476364, 37.368362, 36.038147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156197, 37.132710, 36.082428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197348, -0.084605, 0.976676,
		-0.566026, 0.803595, 0.183984,
		-0.800417, -0.589133, 0.110700,
		40.916073, 36.955971, 36.115639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196262, 37.610218, 36.641205>,  <41.476364, 37.368362, 36.038147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196262, 37.610218, 36.641205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087234, 37.234600, 36.557404>,  <41.021816, 37.009228, 36.507122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087234, 37.234600, 36.557404>,  <41.196262, 37.610218, 36.641205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087234, 37.234600, 36.557404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292641, -0.288352, 0.911710,
		-0.916551, 0.187196, 0.353400,
		-0.272572, -0.939048, -0.209508,
		41.005463, 36.952885, 36.494553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750580, 37.353683, 37.136265>,  <41.196262, 37.610218, 36.641205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750580, 37.353683, 37.136265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914837, 37.023731, 36.980858>,  <41.013390, 36.825760, 36.887611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914837, 37.023731, 36.980858>,  <40.750580, 37.353683, 37.136265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914837, 37.023731, 36.980858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218731, -0.324545, 0.920232,
		-0.885174, -0.462865, 0.047155,
		0.410639, -0.824880, -0.388522,
		41.038029, 36.776268, 36.864300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506458, 36.778831, 37.423374>,  <40.750580, 37.353683, 37.136265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506458, 36.778831, 37.423374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874969, 36.680595, 37.302757>,  <41.096077, 36.621655, 37.230385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874969, 36.680595, 37.302757>,  <40.506458, 36.778831, 37.423374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874969, 36.680595, 37.302757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178683, -0.421387, 0.889104,
		-0.345421, -0.872994, -0.344333,
		0.921280, -0.245589, -0.301545,
		41.151352, 36.606918, 37.212292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682480, 36.340210, 37.894329>,  <40.506458, 36.778831, 37.423374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682480, 36.340210, 37.894329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030827, 36.363163, 37.699070>,  <41.239838, 36.376934, 37.581913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030827, 36.363163, 37.699070>,  <40.682480, 36.340210, 37.894329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030827, 36.363163, 37.699070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437837, -0.541867, 0.717411,
		-0.223342, -0.838503, -0.497022,
		0.870872, 0.057387, -0.488149,
		41.292088, 36.380379, 37.552624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953545, 35.808865, 38.075596>,  <40.682480, 36.340210, 37.894329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953545, 35.808865, 38.075596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280579, 35.970905, 37.911911>,  <41.476799, 36.068130, 37.813702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280579, 35.970905, 37.911911>,  <40.953545, 35.808865, 38.075596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280579, 35.970905, 37.911911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575265, -0.543693, 0.611120,
		0.025077, -0.735047, -0.677552,
		0.817582, 0.405097, -0.409213,
		41.525852, 36.092434, 37.789146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260113, 35.232796, 37.872234>,  <40.953545, 35.808865, 38.075596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260113, 35.232796, 37.872234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491184, 35.553955, 37.931076>,  <41.629826, 35.746651, 37.966381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491184, 35.553955, 37.931076>,  <41.260113, 35.232796, 37.872234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491184, 35.553955, 37.931076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603678, -0.541538, 0.585072,
		0.549417, -0.249180, -0.797528,
		0.577680, 0.802898, 0.147105,
		41.664490, 35.794823, 37.975208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975029, 34.984818, 38.021385>,  <41.260113, 35.232796, 37.872234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975029, 34.984818, 38.021385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013184, 35.365089, 38.139435>,  <42.036076, 35.593254, 38.210266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013184, 35.365089, 38.139435>,  <41.975029, 34.984818, 38.021385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013184, 35.365089, 38.139435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532919, -0.299185, 0.791508,
		0.840772, 0.081779, -0.535177,
		0.095388, 0.950684, 0.295128,
		42.041801, 35.650295, 38.227974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654041, 35.152763, 38.002789>,  <41.975029, 34.984818, 38.021385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654041, 35.152763, 38.002789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436821, 35.355579, 38.270523>,  <42.306488, 35.477268, 38.431164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436821, 35.355579, 38.270523>,  <42.654041, 35.152763, 38.002789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436821, 35.355579, 38.270523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473254, -0.473647, 0.742758,
		0.693637, 0.720119, 0.017255,
		-0.543046, 0.507038, 0.669338,
		42.273907, 35.507690, 38.471325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986691, 35.142769, 38.544483>,  <42.654041, 35.152763, 38.002789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986691, 35.142769, 38.544483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667469, 35.317341, 38.710686>,  <42.475937, 35.422085, 38.810410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667469, 35.317341, 38.710686>,  <42.986691, 35.142769, 38.544483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667469, 35.317341, 38.710686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249700, -0.388046, 0.887170,
		0.548422, 0.811758, 0.200704,
		-0.798050, 0.436427, 0.415509,
		42.428055, 35.448269, 38.835339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163551, 35.425865, 39.214397>,  <42.986691, 35.142769, 38.544483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163551, 35.425865, 39.214397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764427, 35.406998, 39.232910>,  <42.524952, 35.395676, 39.244019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764427, 35.406998, 39.232910>,  <43.163551, 35.425865, 39.214397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764427, 35.406998, 39.232910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064572, -0.547172, 0.834526,
		-0.014043, 0.835690, 0.549022,
		-0.997814, -0.047171, 0.046278,
		42.465084, 35.392845, 39.246792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012096, 35.619267, 39.922623>,  <43.163551, 35.425865, 39.214397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012096, 35.619267, 39.922623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677799, 35.433041, 39.806152>,  <42.477222, 35.321304, 39.736271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677799, 35.433041, 39.806152>,  <43.012096, 35.619267, 39.922623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677799, 35.433041, 39.806152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013425, -0.512777, 0.858417,
		-0.548963, 0.721322, 0.422298,
		-0.835739, -0.465569, -0.291179,
		42.427078, 35.293369, 39.718800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512878, 35.544312, 40.444916>,  <43.012096, 35.619267, 39.922623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512878, 35.544312, 40.444916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409443, 35.249825, 40.194759>,  <42.347382, 35.073132, 40.044666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409443, 35.249825, 40.194759>,  <42.512878, 35.544312, 40.444916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409443, 35.249825, 40.194759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187996, -0.596682, 0.780146,
		-0.947519, 0.319305, 0.015887,
		-0.258585, -0.736216, -0.625395,
		42.331867, 35.028961, 40.007141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013535, 35.272182, 40.775574>,  <42.512878, 35.544312, 40.444916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013535, 35.272182, 40.775574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172726, 35.009834, 40.518997>,  <42.268242, 34.852425, 40.365051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172726, 35.009834, 40.518997>,  <42.013535, 35.272182, 40.775574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172726, 35.009834, 40.518997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148885, -0.736108, 0.660287,
		-0.905232, -0.167280, -0.390606,
		0.397981, -0.655868, -0.641442,
		42.292122, 34.813072, 40.326565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458916, 34.685543, 40.660458>,  <42.013535, 35.272182, 40.775574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458916, 34.685543, 40.660458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.841030, 34.589535, 40.591389>,  <42.070301, 34.531929, 40.549950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.841030, 34.589535, 40.591389>,  <41.458916, 34.685543, 40.660458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841030, 34.589535, 40.591389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147460, -0.892920, 0.425382,
		-0.256278, -0.380901, -0.888389,
		0.955289, -0.240018, -0.172668,
		42.127617, 34.517529, 40.539589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669163, 34.053032, 40.213985>,  <41.458916, 34.685543, 40.660458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669163, 34.053032, 40.213985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949085, 34.132008, 40.488586>,  <42.117039, 34.179394, 40.653347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949085, 34.132008, 40.488586>,  <41.669163, 34.053032, 40.213985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949085, 34.132008, 40.488586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073836, -0.935904, 0.344431,
		0.710503, -0.291725, -0.640376,
		0.699809, 0.197436, 0.686502,
		42.159027, 34.191238, 40.694538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205170, 33.628719, 40.072395>,  <41.669163, 34.053032, 40.213985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205170, 33.628719, 40.072395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161552, 33.721210, 40.459103>,  <42.135384, 33.776703, 40.691128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161552, 33.721210, 40.459103>,  <42.205170, 33.628719, 40.072395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161552, 33.721210, 40.459103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123450, -0.968190, 0.217640,
		0.986342, -0.095617, 0.134115,
		-0.109038, 0.231224, 0.966771,
		42.128841, 33.790577, 40.749134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547791, 34.255684, 39.762371>,  <42.205170, 33.628719, 40.072395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547791, 34.255684, 39.762371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216793, 34.409569, 39.925953>,  <42.018192, 34.501900, 40.024101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216793, 34.409569, 39.925953>,  <42.547791, 34.255684, 39.762371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216793, 34.409569, 39.925953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091730, 0.811208, -0.577518,
		-0.553926, -0.440381, -0.706563,
		-0.827497, 0.384715, 0.408953,
		41.968544, 34.524982, 40.048637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903309, 34.295547, 39.403023>,  <42.547791, 34.255684, 39.762371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903309, 34.295547, 39.403023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926731, 34.606735, 39.653252>,  <41.940784, 34.793446, 39.803387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926731, 34.606735, 39.653252>,  <41.903309, 34.295547, 39.403023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926731, 34.606735, 39.653252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041504, 0.624205, -0.780157,
		-0.997421, 0.071650, 0.004265,
		0.058560, 0.777968, 0.625569,
		41.944298, 34.840126, 39.840923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401382, 34.741501, 39.234005>,  <41.903309, 34.295547, 39.403023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401382, 34.741501, 39.234005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707653, 34.928581, 39.410637>,  <41.891415, 35.040829, 39.516617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707653, 34.928581, 39.410637>,  <41.401382, 34.741501, 39.234005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707653, 34.928581, 39.410637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057478, 0.634007, -0.771188,
		-0.640651, 0.615863, 0.458563,
		0.765678, 0.467705, 0.441575,
		41.937355, 35.068893, 39.543110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194740, 35.482567, 39.366577>,  <41.401382, 34.741501, 39.234005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194740, 35.482567, 39.366577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590332, 35.440331, 39.325073>,  <41.827686, 35.414989, 39.300171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590332, 35.440331, 39.325073>,  <41.194740, 35.482567, 39.366577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590332, 35.440331, 39.325073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012206, 0.756677, -0.653675,
		0.147531, 0.645206, 0.749629,
		0.988982, -0.105587, -0.103758,
		41.887028, 35.408653, 39.293945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435314, 36.231163, 39.366604>,  <41.194740, 35.482567, 39.366577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435314, 36.231163, 39.366604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711475, 36.000690, 39.191624>,  <41.877171, 35.862408, 39.086636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711475, 36.000690, 39.191624>,  <41.435314, 36.231163, 39.366604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711475, 36.000690, 39.191624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057849, 0.558788, -0.827290,
		0.721109, 0.596469, 0.352458,
		0.690402, -0.576177, -0.437452,
		41.918594, 35.827839, 39.060387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830322, 36.693428, 39.117115>,  <41.435314, 36.231163, 39.366604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830322, 36.693428, 39.117115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976486, 36.364120, 38.943352>,  <42.064182, 36.166538, 38.839092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976486, 36.364120, 38.943352>,  <41.830322, 36.693428, 39.117115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976486, 36.364120, 38.943352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034881, 0.478465, -0.877414,
		0.930195, 0.305459, 0.203550,
		0.365406, -0.823266, -0.434410,
		42.086109, 36.117142, 38.813030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274525, 36.883095, 38.588482>,  <41.830322, 36.693428, 39.117115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274525, 36.883095, 38.588482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164959, 36.514515, 38.478279>,  <42.099220, 36.293369, 38.412159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164959, 36.514515, 38.478279>,  <42.274525, 36.883095, 38.588482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164959, 36.514515, 38.478279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223712, 0.339651, -0.913559,
		0.935373, -0.188603, -0.299175,
		-0.273915, -0.921448, -0.275508,
		42.082783, 36.238079, 38.395626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417267, 36.885487, 37.956913>,  <42.274525, 36.883095, 38.588482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417267, 36.885487, 37.956913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189720, 36.557079, 37.976173>,  <42.053192, 36.360035, 37.987728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189720, 36.557079, 37.976173>,  <42.417267, 36.885487, 37.956913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189720, 36.557079, 37.976173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290547, 0.145856, -0.945679,
		0.769397, -0.551955, -0.321517,
		-0.568867, -0.821019, 0.048148,
		42.019058, 36.310772, 37.990616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334286, 36.884804, 37.336708>,  <42.417267, 36.885487, 37.956913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334286, 36.884804, 37.336708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116344, 36.559361, 37.417881>,  <41.985580, 36.364094, 37.466583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116344, 36.559361, 37.417881>,  <42.334286, 36.884804, 37.336708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116344, 36.559361, 37.417881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485522, 0.108789, -0.867429,
		0.683671, -0.571145, -0.454298,
		-0.544851, -0.813608, 0.202928,
		41.952888, 36.315277, 37.478760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224289, 36.522259, 36.726208>,  <42.334286, 36.884804, 37.336708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224289, 36.522259, 36.726208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928219, 36.373096, 36.950024>,  <41.750576, 36.283600, 37.084312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928219, 36.373096, 36.950024>,  <42.224289, 36.522259, 36.726208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928219, 36.373096, 36.950024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601288, -0.005414, -0.799014,
		0.300985, -0.927854, -0.220216,
		-0.740176, -0.372905, 0.559537,
		41.706165, 36.261227, 37.117886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889923, 35.953518, 36.467541>,  <42.224289, 36.522259, 36.726208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889923, 35.953518, 36.467541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625229, 36.114437, 36.720604>,  <41.466412, 36.210991, 36.872440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625229, 36.114437, 36.720604>,  <41.889923, 35.953518, 36.467541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625229, 36.114437, 36.720604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678880, 0.036574, -0.733338,
		-0.318163, -0.914776, 0.248913,
		-0.661736, 0.402303, 0.632659,
		41.426708, 36.235126, 36.910400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269135, 35.615898, 36.326118>,  <41.889923, 35.953518, 36.467541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269135, 35.615898, 36.326118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205784, 35.980911, 36.476952>,  <41.167774, 36.199921, 36.567451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205784, 35.980911, 36.476952>,  <41.269135, 35.615898, 36.326118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205784, 35.980911, 36.476952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611450, 0.209220, -0.763123,
		-0.775271, -0.351430, 0.524834,
		-0.158379, 0.912537, 0.377084,
		41.158272, 36.254673, 36.590076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556561, 35.754921, 36.139519>,  <41.269135, 35.615898, 36.326118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556561, 35.754921, 36.139519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702671, 36.114502, 36.236225>,  <40.790337, 36.330250, 36.294250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702671, 36.114502, 36.236225>,  <40.556561, 35.754921, 36.139519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702671, 36.114502, 36.236225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620526, 0.428730, -0.656611,
		-0.693918, 0.089819, 0.714430,
		0.365273, 0.898957, 0.241769,
		40.812252, 36.384190, 36.308754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038528, 35.798595, 35.505047>,  <40.556561, 35.754921, 36.139519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038528, 35.798595, 35.505047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859829, 35.631397, 35.821449>,  <39.752609, 35.531078, 36.011292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859829, 35.631397, 35.821449>,  <40.038528, 35.798595, 35.505047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859829, 35.631397, 35.821449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038649, -0.874302, -0.483841,
		0.893822, -0.246729, 0.374442,
		-0.446753, -0.417996, 0.791007,
		39.725803, 35.505997, 36.058750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947414, 36.158642, 36.230141>,  <40.038528, 35.798595, 35.505047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947414, 36.158642, 36.230141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266258, 36.395321, 36.181953>,  <40.457565, 36.537327, 36.153042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266258, 36.395321, 36.181953>,  <39.947414, 36.158642, 36.230141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266258, 36.395321, 36.181953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343076, 0.279608, -0.896727,
		-0.496909, 0.756116, 0.425875,
		0.797108, 0.591699, -0.120465,
		40.505390, 36.572830, 36.145813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659969, 36.846542, 36.094475>,  <39.947414, 36.158642, 36.230141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659969, 36.846542, 36.094475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033878, 36.837410, 35.952667>,  <40.258224, 36.831932, 35.867584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033878, 36.837410, 35.952667>,  <39.659969, 36.846542, 36.094475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033878, 36.837410, 35.952667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335238, 0.273536, -0.901551,
		0.117556, 0.961591, 0.248040,
		0.934771, -0.022831, -0.354517,
		40.314308, 36.830563, 35.846313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837635, 37.504955, 35.884151>,  <39.659969, 36.846542, 36.094475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837635, 37.504955, 35.884151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071007, 37.251747, 35.680626>,  <40.211029, 37.099823, 35.558510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071007, 37.251747, 35.680626>,  <39.837635, 37.504955, 35.884151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071007, 37.251747, 35.680626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157632, 0.526319, -0.835548,
		0.796721, 0.567688, 0.207284,
		0.583428, -0.633023, -0.508815,
		40.246037, 37.061840, 35.527981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087738, 37.957619, 35.379089>,  <39.837635, 37.504955, 35.884151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087738, 37.957619, 35.379089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222328, 37.608006, 35.238892>,  <40.303082, 37.398235, 35.154774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222328, 37.608006, 35.238892>,  <40.087738, 37.957619, 35.379089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222328, 37.608006, 35.238892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055700, 0.353072, -0.933937,
		0.940043, 0.333770, 0.070117,
		0.336477, -0.874035, -0.350494,
		40.323273, 37.345795, 35.133743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669147, 38.019421, 35.006355>,  <40.087738, 37.957619, 35.379089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669147, 38.019421, 35.006355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503273, 37.681267, 34.871685>,  <40.403748, 37.478374, 34.790882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503273, 37.681267, 34.871685>,  <40.669147, 38.019421, 35.006355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503273, 37.681267, 34.871685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062483, 0.342663, -0.937378,
		0.907815, -0.409759, -0.089277,
		-0.414691, -0.845388, -0.336677,
		40.378864, 37.427650, 34.770683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144341, 37.673191, 34.382862>,  <40.669147, 38.019421, 35.006355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144341, 37.673191, 34.382862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778416, 37.514858, 34.350784>,  <40.558861, 37.419861, 34.331539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778416, 37.514858, 34.350784>,  <41.144341, 37.673191, 34.382862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778416, 37.514858, 34.350784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017276, 0.160019, -0.986963,
		0.403500, -0.904275, -0.139550,
		-0.914817, -0.395829, -0.080190,
		40.503971, 37.396111, 34.326729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020100, 37.599026, 33.673763>,  <41.144341, 37.673191, 34.382862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020100, 37.599026, 33.673763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654415, 37.493618, 33.796909>,  <40.435005, 37.430374, 33.870796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654415, 37.493618, 33.796909>,  <41.020100, 37.599026, 33.673763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654415, 37.493618, 33.796909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323491, 0.016989, -0.946079,
		0.244081, -0.964504, -0.100778,
		-0.914209, -0.263521, 0.307862,
		40.380154, 37.414562, 33.889267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792660, 37.020283, 33.260914>,  <41.020100, 37.599026, 33.673763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792660, 37.020283, 33.260914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459103, 37.190826, 33.401108>,  <40.258968, 37.293152, 33.485222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459103, 37.190826, 33.401108>,  <40.792660, 37.020283, 33.260914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459103, 37.190826, 33.401108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476269, -0.234985, -0.847319,
		-0.278907, -0.873497, 0.399016,
		-0.833893, 0.426362, 0.350481,
		40.208935, 37.318733, 33.506252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281075, 36.510654, 33.322197>,  <40.792660, 37.020283, 33.260914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281075, 36.510654, 33.322197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165180, 36.875290, 33.205536>,  <40.095646, 37.094070, 33.135540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165180, 36.875290, 33.205536>,  <40.281075, 36.510654, 33.322197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165180, 36.875290, 33.205536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438820, -0.397325, -0.805959,
		-0.850583, -0.105532, 0.515142,
		-0.289733, 0.911590, -0.291649,
		40.078259, 37.148766, 33.118042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455826, 35.771481, 33.325581>,  <40.281075, 36.510654, 33.322197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455826, 35.771481, 33.325581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640862, 35.740494, 32.972305>,  <40.751881, 35.721901, 32.760342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640862, 35.740494, 32.972305>,  <40.455826, 35.771481, 33.325581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640862, 35.740494, 32.972305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875960, -0.113760, 0.468778,
		-0.136785, -0.990484, 0.015233,
		0.462585, -0.077465, -0.883185,
		40.779636, 35.717255, 32.707352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961182, 35.140045, 33.315807>,  <40.455826, 35.771481, 33.325581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961182, 35.140045, 33.315807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075325, 35.446976, 33.086102>,  <41.143810, 35.631134, 32.948277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075325, 35.446976, 33.086102>,  <40.961182, 35.140045, 33.315807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075325, 35.446976, 33.086102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908782, -0.026295, 0.416443,
		0.304446, -0.640719, -0.704835,
		0.285356, 0.767325, -0.574268,
		41.160931, 35.677174, 32.913822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571827, 34.963596, 33.050076>,  <40.961182, 35.140045, 33.315807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571827, 34.963596, 33.050076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570847, 35.362530, 33.020908>,  <41.570259, 35.601891, 33.003407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570847, 35.362530, 33.020908>,  <41.571827, 34.963596, 33.050076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570847, 35.362530, 33.020908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984351, 0.015254, 0.175558,
		0.176203, -0.071350, -0.981765,
		-0.002450, 0.997335, -0.072922,
		41.570110, 35.661732, 32.999031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115612, 35.046329, 32.650200>,  <41.571827, 34.963596, 33.050076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115612, 35.046329, 32.650200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058235, 35.343735, 32.911465>,  <42.023808, 35.522179, 33.068222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058235, 35.343735, 32.911465>,  <42.115612, 35.046329, 32.650200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058235, 35.343735, 32.911465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963462, -0.045933, 0.263876,
		0.226196, 0.667146, -0.709755,
		-0.143442, 0.743509, 0.653160,
		42.015202, 35.566788, 33.107414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547398, 35.793251, 32.556744>,  <42.115612, 35.046329, 32.650200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547398, 35.793251, 32.556744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464809, 35.660351, 32.924870>,  <42.415257, 35.580612, 33.145744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464809, 35.660351, 32.924870>,  <42.547398, 35.793251, 32.556744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464809, 35.660351, 32.924870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978352, -0.056537, 0.199076,
		-0.014111, 0.941495, 0.336731,
		-0.206467, -0.332251, 0.920316,
		42.402870, 35.560677, 33.200966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819881, 36.195305, 33.112312>,  <42.547398, 35.793251, 32.556744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819881, 36.195305, 33.112312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804325, 35.827862, 33.269611>,  <42.794991, 35.607395, 33.363991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804325, 35.827862, 33.269611>,  <42.819881, 36.195305, 33.112312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804325, 35.827862, 33.269611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997634, -0.058021, -0.036876,
		0.056691, 0.390887, 0.918691,
		-0.038889, -0.918608, 0.393251,
		42.792660, 35.552280, 33.387589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522575, 36.111858, 33.220779>,  <42.819881, 36.195305, 33.112312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522575, 36.111858, 33.220779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377964, 35.753910, 33.325470>,  <43.291199, 35.539139, 33.388283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377964, 35.753910, 33.325470>,  <43.522575, 36.111858, 33.220779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377964, 35.753910, 33.325470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929041, -0.369424, 0.020191,
		0.078619, 0.250451, 0.964932,
		-0.361526, -0.894874, 0.261723,
		43.269505, 35.485447, 33.403988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797504, 35.891293, 33.836166>,  <43.522575, 36.111858, 33.220779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797504, 35.891293, 33.836166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739025, 35.603565, 33.564518>,  <43.703938, 35.430927, 33.401527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739025, 35.603565, 33.564518>,  <43.797504, 35.891293, 33.836166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739025, 35.603565, 33.564518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987322, -0.148996, -0.054725,
		-0.061821, -0.678511, 0.731984,
		-0.146195, -0.719321, -0.679121,
		43.695168, 35.387768, 33.360783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175556, 35.216228, 34.001293>,  <43.797504, 35.891293, 33.836166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.175556, 35.216228, 34.001293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103882, 35.229996, 33.608009>,  <44.060879, 35.238255, 33.372040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103882, 35.229996, 33.608009>,  <44.175556, 35.216228, 34.001293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103882, 35.229996, 33.608009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944746, -0.272821, -0.181725,
		-0.274497, -0.961448, 0.016363,
		-0.179183, 0.034425, -0.983213,
		44.050125, 35.240322, 33.313046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326904, 34.519569, 33.769238>,  <44.175556, 35.216228, 34.001293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326904, 34.519569, 33.769238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367657, 34.816414, 33.504242>,  <44.392109, 34.994522, 33.345245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367657, 34.816414, 33.504242>,  <44.326904, 34.519569, 33.769238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367657, 34.816414, 33.504242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992100, -0.124797, 0.012770,
		-0.073200, -0.658555, -0.748964,
		0.101879, 0.742112, -0.662488,
		44.398220, 35.039047, 33.305496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891899, 34.430267, 33.331108>,  <44.326904, 34.519569, 33.769238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891899, 34.430267, 33.331108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.861107, 34.827038, 33.371429>,  <44.842632, 35.065098, 33.395622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.861107, 34.827038, 33.371429>,  <44.891899, 34.430267, 33.331108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.861107, 34.827038, 33.371429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997033, 0.076567, 0.007975,
		0.000193, 0.101118, -0.994874,
		-0.076981, 0.991924, 0.100804,
		44.838013, 35.124615, 33.401672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064392, 34.917423, 32.745678>,  <44.891899, 34.430267, 33.331108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064392, 34.917423, 32.745678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144554, 35.081581, 33.101524>,  <45.192650, 35.180077, 33.315033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144554, 35.081581, 33.101524>,  <45.064392, 34.917423, 32.745678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144554, 35.081581, 33.101524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964049, 0.079123, -0.253671,
		-0.174493, 0.908471, -0.379780,
		0.200404, 0.410390, 0.889617,
		45.204674, 35.204697, 33.368408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.406265, 35.552700, 32.680656>,  <45.064392, 34.917423, 32.745678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.406265, 35.552700, 32.680656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494881, 35.366547, 33.023430>,  <45.548050, 35.254856, 33.229095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494881, 35.366547, 33.023430>,  <45.406265, 35.552700, 32.680656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.494881, 35.366547, 33.023430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954058, -0.078357, -0.289195,
		0.201733, 0.881635, 0.426641,
		0.221535, -0.465381, 0.856938,
		45.561340, 35.226933, 33.280510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.974682, 35.776276, 33.069527>,  <45.406265, 35.552700, 32.680656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.974682, 35.776276, 33.069527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314781, 35.888107, 33.247929>,  <46.518841, 35.955208, 33.354969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314781, 35.888107, 33.247929>,  <45.974682, 35.776276, 33.069527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.314781, 35.888107, 33.247929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525983, 0.418022, 0.740675,
		0.020637, -0.864346, 0.502474,
		0.850245, 0.279578, 0.446004,
		46.569855, 35.971981, 33.381729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.045761, 35.521023, 33.732807>,  <45.974682, 35.776276, 33.069527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.045761, 35.521023, 33.732807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203144, 35.887623, 33.703941>,  <46.297573, 36.107582, 33.686623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203144, 35.887623, 33.703941>,  <46.045761, 35.521023, 33.732807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.203144, 35.887623, 33.703941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608242, 0.318372, 0.727105,
		0.689369, -0.242195, 0.682723,
		0.393461, 0.916505, -0.072163,
		46.321182, 36.162575, 33.682293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.315151, 35.849770, 34.344387>,  <46.045761, 35.521023, 33.732807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.315151, 35.849770, 34.344387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.168060, 36.139801, 34.111481>,  <46.079803, 36.313820, 33.971737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.168060, 36.139801, 34.111481>,  <46.315151, 35.849770, 34.344387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.168060, 36.139801, 34.111481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517481, 0.360681, 0.775966,
		0.772650, 0.586657, 0.242582,
		-0.367731, 0.725082, -0.582264,
		46.057739, 36.357327, 33.936802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.542892, 36.045105, 35.089451>,  <46.315151, 35.849770, 34.344387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.542892, 36.045105, 35.089451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.518394, 35.672050, 35.231682>,  <46.503696, 35.448215, 35.317020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.518394, 35.672050, 35.231682>,  <46.542892, 36.045105, 35.089451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518394, 35.672050, 35.231682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917248, -0.193062, -0.348400,
		0.393579, 0.304812, 0.867286,
		-0.061244, -0.932640, 0.355574,
		46.500023, 35.392258, 35.338352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.134987, 35.872952, 35.471729>,  <46.542892, 36.045105, 35.089451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.134987, 35.872952, 35.471729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.963879, 35.539207, 35.332676>,  <46.861214, 35.338959, 35.249245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.963879, 35.539207, 35.332676>,  <47.134987, 35.872952, 35.471729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.963879, 35.539207, 35.332676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876981, -0.289973, -0.383170,
		0.218898, -0.468779, 0.855762,
		-0.427771, -0.834363, -0.347636,
		46.835548, 35.288898, 35.228386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.538227, 35.311554, 35.758335>,  <47.134987, 35.872952, 35.471729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.538227, 35.311554, 35.758335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.363213, 35.247540, 35.404396>,  <47.258205, 35.209129, 35.192032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.363213, 35.247540, 35.404396>,  <47.538227, 35.311554, 35.758335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.363213, 35.247540, 35.404396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883134, -0.261673, -0.389359,
		-0.169228, -0.951796, 0.255825,
		-0.437533, -0.160037, -0.884846,
		47.231953, 35.199528, 35.138943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.857018, 34.836838, 35.516537>,  <47.538227, 35.311554, 35.758335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.857018, 34.836838, 35.516537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.730568, 35.014370, 35.181137>,  <47.654697, 35.120888, 34.979897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.730568, 35.014370, 35.181137>,  <47.857018, 34.836838, 35.516537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.730568, 35.014370, 35.181137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858802, -0.241694, -0.451711,
		-0.403142, -0.862903, -0.304753,
		-0.316126, 0.443826, -0.838500,
		47.635731, 35.147518, 34.929588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.769020, 35.507126, 23.904108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.463963, 35.307980, 24.069279>,  <34.280930, 35.188492, 24.168381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.463963, 35.307980, 24.069279>,  <34.769020, 35.507126, 23.904108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463963, 35.307980, 24.069279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605996, -0.326748, 0.725262,
		-0.226162, 0.803345, 0.550897,
		-0.762640, -0.497868, 0.412926,
		34.235172, 35.158619, 24.193157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701099, 35.737053, 24.540054>,  <34.769020, 35.507126, 23.904108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701099, 35.737053, 24.540054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.510815, 35.386082, 24.564762>,  <34.396645, 35.175499, 24.579586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.510815, 35.386082, 24.564762>,  <34.701099, 35.737053, 24.540054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510815, 35.386082, 24.564762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636464, -0.294892, 0.712708,
		-0.607137, 0.378355, 0.698736,
		-0.475708, -0.877432, 0.061770,
		34.368103, 35.122852, 24.583294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473003, 35.698460, 25.257696>,  <34.701099, 35.737053, 24.540054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473003, 35.698460, 25.257696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.503567, 35.325062, 25.117550>,  <34.521904, 35.101025, 25.033463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.503567, 35.325062, 25.117550>,  <34.473003, 35.698460, 25.257696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503567, 35.325062, 25.117550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365421, -0.300725, 0.880927,
		-0.927701, -0.195342, 0.318138,
		0.076410, -0.933491, -0.350365,
		34.526489, 35.045013, 25.012440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147614, 35.262871, 25.761339>,  <34.473003, 35.698460, 25.257696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147614, 35.262871, 25.761339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.383240, 35.021713, 25.546110>,  <34.524616, 34.877018, 25.416973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.383240, 35.021713, 25.546110>,  <34.147614, 35.262871, 25.761339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383240, 35.021713, 25.546110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403797, -0.357159, 0.842250,
		-0.699966, -0.713411, 0.033058,
		0.589064, -0.602895, -0.538073,
		34.559959, 34.840843, 25.384687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009613, 34.613800, 26.036463>,  <34.147614, 35.262871, 25.761339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009613, 34.613800, 26.036463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.356770, 34.562866, 25.844402>,  <34.565063, 34.532307, 25.729166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.356770, 34.562866, 25.844402>,  <34.009613, 34.613800, 26.036463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356770, 34.562866, 25.844402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325617, -0.584141, 0.743474,
		-0.375144, -0.801602, -0.465511,
		0.867894, -0.127331, -0.480152,
		34.617138, 34.524666, 25.700356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100365, 33.854645, 25.999588>,  <34.009613, 34.613800, 26.036463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100365, 33.854645, 25.999588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.454975, 34.037697, 25.972300>,  <34.667740, 34.147526, 25.955927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.454975, 34.037697, 25.972300>,  <34.100365, 33.854645, 25.999588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454975, 34.037697, 25.972300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338698, -0.541418, 0.769513,
		0.315214, -0.705297, -0.634977,
		0.886523, 0.457627, -0.068220,
		34.720932, 34.174984, 25.951834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640678, 33.346455, 26.076254>,  <34.100365, 33.854645, 25.999588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640678, 33.346455, 26.076254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.873741, 33.669136, 26.115753>,  <35.013577, 33.862743, 26.139452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.873741, 33.669136, 26.115753>,  <34.640678, 33.346455, 26.076254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873741, 33.669136, 26.115753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443531, -0.417433, 0.793114,
		0.681024, -0.418314, -0.601015,
		0.582654, 0.806699, 0.098747,
		35.048538, 33.911144, 26.145378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346859, 33.055004, 26.184618>,  <34.640678, 33.346455, 26.076254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346859, 33.055004, 26.184618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.351093, 33.428905, 26.326674>,  <35.353634, 33.653248, 26.411907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.351093, 33.428905, 26.326674>,  <35.346859, 33.055004, 26.184618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351093, 33.428905, 26.326674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431602, -0.324642, 0.841622,
		0.902002, 0.144374, -0.406876,
		0.010581, 0.934753, 0.355140,
		35.354267, 33.709332, 26.433216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080814, 33.218216, 26.378557>,  <35.346859, 33.055004, 26.184618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080814, 33.218216, 26.378557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.842747, 33.465050, 26.584463>,  <35.699905, 33.613148, 26.708006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.842747, 33.465050, 26.584463>,  <36.080814, 33.218216, 26.378557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842747, 33.465050, 26.584463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488004, -0.231389, 0.841612,
		0.638455, 0.752109, -0.163423,
		-0.595170, 0.617082, 0.514764,
		35.664196, 33.650173, 26.738892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612305, 33.557503, 26.686071>,  <36.080814, 33.218216, 26.378557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612305, 33.557503, 26.686071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.284939, 33.641281, 26.900112>,  <36.088520, 33.691547, 27.028536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.284939, 33.641281, 26.900112>,  <36.612305, 33.557503, 26.686071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284939, 33.641281, 26.900112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545521, -0.009436, 0.838044,
		0.180571, 0.977776, -0.106532,
		-0.818414, 0.209442, 0.535101,
		36.039413, 33.704113, 27.060642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794678, 34.121376, 27.114677>,  <36.612305, 33.557503, 26.686071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794678, 34.121376, 27.114677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.473824, 33.958664, 27.289543>,  <36.281311, 33.861038, 27.394463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.473824, 33.958664, 27.289543>,  <36.794678, 34.121376, 27.114677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473824, 33.958664, 27.289543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505292, -0.072231, 0.859920,
		-0.318222, 0.910666, 0.263482,
		-0.802132, -0.406781, 0.437166,
		36.233185, 33.836628, 27.420692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639275, 34.596569, 27.756306>,  <36.794678, 34.121376, 27.114677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639275, 34.596569, 27.756306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.481964, 34.229969, 27.785604>,  <36.387577, 34.010010, 27.803183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.481964, 34.229969, 27.785604>,  <36.639275, 34.596569, 27.756306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481964, 34.229969, 27.785604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408714, -0.102908, 0.906842,
		-0.823582, 0.386574, 0.415057,
		-0.393275, -0.916499, 0.073245,
		36.363983, 33.955021, 27.807577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252148, 34.569038, 28.388479>,  <36.639275, 34.596569, 27.756306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252148, 34.569038, 28.388479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.357716, 34.197323, 28.285122>,  <36.421055, 33.974293, 28.223108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.357716, 34.197323, 28.285122>,  <36.252148, 34.569038, 28.388479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357716, 34.197323, 28.285122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282143, -0.181796, 0.941990,
		-0.922357, -0.321513, 0.214213,
		0.263919, -0.929290, -0.258394,
		36.436890, 33.918537, 28.207603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768013, 34.231354, 28.687849>,  <36.252148, 34.569038, 28.388479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768013, 34.231354, 28.687849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.063755, 33.968159, 28.630705>,  <36.241199, 33.810242, 28.596418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.063755, 33.968159, 28.630705>,  <35.768013, 34.231354, 28.687849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063755, 33.968159, 28.630705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112374, -0.088610, 0.989707,
		-0.663873, -0.747798, 0.008426,
		0.739355, -0.657987, -0.142859,
		36.285561, 33.770763, 28.587847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744068, 33.633724, 29.136723>,  <35.768013, 34.231354, 28.687849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744068, 33.633724, 29.136723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129940, 33.617126, 29.032667>,  <36.361462, 33.607166, 28.970234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129940, 33.617126, 29.032667>,  <35.744068, 33.633724, 29.136723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129940, 33.617126, 29.032667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249618, -0.171522, 0.953033,
		-0.084168, -0.984306, -0.155105,
		0.964679, -0.041498, -0.260137,
		36.419342, 33.604679, 28.954626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023148, 33.127213, 29.507620>,  <35.744068, 33.633724, 29.136723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023148, 33.127213, 29.507620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.353756, 33.321198, 29.393305>,  <36.552120, 33.437588, 29.324717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.353756, 33.321198, 29.393305>,  <36.023148, 33.127213, 29.507620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353756, 33.321198, 29.393305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392220, -0.131993, 0.910352,
		0.403765, -0.864517, -0.299307,
		0.826521, 0.484963, -0.285786,
		36.601711, 33.466686, 29.307570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612854, 32.713219, 29.755028>,  <36.023148, 33.127213, 29.507620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612854, 32.713219, 29.755028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.742401, 33.084885, 29.683743>,  <36.820129, 33.307884, 29.640970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.742401, 33.084885, 29.683743>,  <36.612854, 32.713219, 29.755028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742401, 33.084885, 29.683743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496372, -0.006513, 0.868086,
		0.805435, -0.369604, -0.463322,
		0.323866, 0.929166, -0.178215,
		36.839561, 33.363636, 29.630278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372910, 32.707668, 29.961802>,  <36.612854, 32.713219, 29.755028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372910, 32.707668, 29.961802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.259430, 33.091145, 29.970045>,  <37.191345, 33.321232, 29.974991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.259430, 33.091145, 29.970045>,  <37.372910, 32.707668, 29.961802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259430, 33.091145, 29.970045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582590, 0.155250, 0.797801,
		0.761647, 0.238337, -0.602569,
		-0.283694, 0.958693, 0.020607,
		37.174320, 33.378754, 29.976227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879021, 33.035252, 30.292933>,  <37.372910, 32.707668, 29.961802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879021, 33.035252, 30.292933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601509, 33.320930, 30.330015>,  <37.435001, 33.492340, 30.352264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601509, 33.320930, 30.330015>,  <37.879021, 33.035252, 30.292933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601509, 33.320930, 30.330015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363961, 0.236618, 0.900857,
		0.621456, 0.658735, -0.424101,
		-0.693776, 0.714199, 0.092706,
		37.393375, 33.535191, 30.357826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240601, 33.492355, 30.623577>,  <37.879021, 33.035252, 30.292933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240601, 33.492355, 30.623577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870728, 33.629276, 30.690260>,  <37.648804, 33.711430, 30.730270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870728, 33.629276, 30.690260>,  <38.240601, 33.492355, 30.623577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870728, 33.629276, 30.690260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289339, 0.347161, 0.892055,
		0.247475, 0.873104, -0.420055,
		-0.924683, 0.342299, 0.166709,
		37.593323, 33.731968, 30.740273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238369, 34.175682, 30.943142>,  <38.240601, 33.492355, 30.623577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238369, 34.175682, 30.943142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.868607, 34.055611, 31.037264>,  <37.646751, 33.983566, 31.093737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.868607, 34.055611, 31.037264>,  <38.238369, 34.175682, 30.943142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868607, 34.055611, 31.037264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070654, 0.471483, 0.879040,
		-0.374814, 0.829213, -0.414632,
		-0.924404, -0.300181, 0.235306,
		37.591286, 33.965557, 31.107855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503498, 34.789669, 31.297470>,  <38.238369, 34.175682, 30.943142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503498, 34.789669, 31.297470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.725109, 35.105747, 31.402269>,  <38.858074, 35.295395, 31.465149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.725109, 35.105747, 31.402269>,  <38.503498, 34.789669, 31.297470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725109, 35.105747, 31.402269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062758, 0.274175, -0.959630,
		-0.830131, 0.548101, 0.102308,
		0.554024, 0.790198, 0.261999,
		38.891315, 35.342808, 31.480869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154846, 35.352432, 31.013948>,  <38.503498, 34.789669, 31.297470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154846, 35.352432, 31.013948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545681, 35.434010, 31.038336>,  <38.780182, 35.482956, 31.052969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545681, 35.434010, 31.038336>,  <38.154846, 35.352432, 31.013948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545681, 35.434010, 31.038336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010214, 0.331021, -0.943568,
		-0.212617, 0.921321, 0.325518,
		0.977082, 0.203943, 0.060971,
		38.838806, 35.495193, 31.056627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193218, 36.040718, 30.738678>,  <38.154846, 35.352432, 31.013948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193218, 36.040718, 30.738678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.552166, 35.864426, 30.729773>,  <38.767532, 35.758652, 30.724430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.552166, 35.864426, 30.729773>,  <38.193218, 36.040718, 30.738678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552166, 35.864426, 30.729773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134042, 0.320295, -0.937787,
		0.420439, 0.838553, 0.346497,
		0.897365, -0.440727, -0.022263,
		38.821377, 35.732208, 30.723093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517105, 36.460369, 30.388699>,  <38.193218, 36.040718, 30.738678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517105, 36.460369, 30.388699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.762424, 36.145664, 30.360809>,  <38.909618, 35.956841, 30.344076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.762424, 36.145664, 30.360809>,  <38.517105, 36.460369, 30.388699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762424, 36.145664, 30.360809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185020, 0.228921, -0.955700,
		0.767874, 0.573231, 0.285965,
		0.613300, -0.786766, -0.069723,
		38.946415, 35.909634, 30.339893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080307, 36.690845, 30.015894>,  <38.517105, 36.460369, 30.388699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080307, 36.690845, 30.015894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.101219, 36.293453, 29.975370>,  <39.113766, 36.055019, 29.951057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.101219, 36.293453, 29.975370>,  <39.080307, 36.690845, 30.015894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101219, 36.293453, 29.975370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209173, 0.110089, -0.971662,
		0.976480, 0.029606, 0.213564,
		0.052278, -0.993481, -0.101307,
		39.116901, 35.995407, 29.944979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727066, 36.487782, 29.730520>,  <39.080307, 36.690845, 30.015894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727066, 36.487782, 29.730520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.459133, 36.207111, 29.633377>,  <39.298374, 36.038708, 29.575090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.459133, 36.207111, 29.633377>,  <39.727066, 36.487782, 29.730520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459133, 36.207111, 29.633377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162075, 0.181020, -0.970033,
		0.724612, -0.689116, -0.007528,
		-0.669828, -0.701677, -0.242858,
		39.258186, 35.996609, 29.560520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996670, 36.242668, 29.166229>,  <39.727066, 36.487782, 29.730520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996670, 36.242668, 29.166229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.633526, 36.077179, 29.139019>,  <39.415638, 35.977886, 29.122694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.633526, 36.077179, 29.139019>,  <39.996670, 36.242668, 29.166229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633526, 36.077179, 29.139019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076486, -0.003904, -0.997063,
		0.412240, -0.910396, 0.035188,
		-0.907859, -0.413720, -0.068023,
		39.361168, 35.953064, 29.118612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104053, 35.679928, 28.639555>,  <39.996670, 36.242668, 29.166229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104053, 35.679928, 28.639555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.712856, 35.760593, 28.660965>,  <39.478138, 35.808994, 28.673811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.712856, 35.760593, 28.660965>,  <40.104053, 35.679928, 28.639555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712856, 35.760593, 28.660965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079288, -0.121928, -0.989367,
		-0.192997, -0.971835, 0.135234,
		-0.977991, 0.201668, 0.053523,
		39.419460, 35.821091, 28.677023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811050, 35.181206, 28.139284>,  <40.104053, 35.679928, 28.639555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811050, 35.181206, 28.139284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.549370, 35.480583, 28.182835>,  <39.392361, 35.660210, 28.208965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.549370, 35.480583, 28.182835>,  <39.811050, 35.181206, 28.139284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549370, 35.480583, 28.182835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261608, -0.088860, -0.961075,
		-0.709638, -0.657216, 0.253931,
		-0.654198, 0.748446, 0.108874,
		39.353111, 35.705116, 28.215496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131226, 34.895416, 27.960875>,  <39.811050, 35.181206, 28.139284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131226, 34.895416, 27.960875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.107498, 35.291988, 27.914309>,  <39.093262, 35.529930, 27.886370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.107498, 35.291988, 27.914309>,  <39.131226, 34.895416, 27.960875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107498, 35.291988, 27.914309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392128, -0.130385, -0.910624,
		-0.917997, -0.008365, 0.396500,
		-0.059315, 0.991428, -0.116413,
		39.089703, 35.589417, 27.879385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552692, 34.913364, 27.507971>,  <39.131226, 34.895416, 27.960875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552692, 34.913364, 27.507971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688618, 35.289001, 27.487429>,  <38.770172, 35.514381, 27.475103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688618, 35.289001, 27.487429>,  <38.552692, 34.913364, 27.507971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688618, 35.289001, 27.487429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470272, 0.122374, -0.873996,
		-0.814476, 0.321146, 0.483212,
		0.339813, 0.939090, -0.051355,
		38.790562, 35.570728, 27.472023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961441, 35.384731, 27.405449>,  <38.552692, 34.913364, 27.507971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961441, 35.384731, 27.405449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278320, 35.564137, 27.239918>,  <38.468449, 35.671780, 27.140598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278320, 35.564137, 27.239918>,  <37.961441, 35.384731, 27.405449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278320, 35.564137, 27.239918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518610, 0.137370, -0.843903,
		-0.321657, 0.883155, 0.341430,
		0.792199, 0.448517, -0.413827,
		38.515980, 35.698692, 27.115770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710064, 36.020252, 27.198708>,  <37.961441, 35.384731, 27.405449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710064, 36.020252, 27.198708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045109, 35.947926, 26.992519>,  <38.246136, 35.904530, 26.868807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045109, 35.947926, 26.992519>,  <37.710064, 36.020252, 27.198708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045109, 35.947926, 26.992519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426123, 0.374147, -0.823670,
		0.341793, 0.909571, 0.236342,
		0.837614, -0.180814, -0.515470,
		38.296394, 35.893681, 26.837879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976414, 36.631752, 26.832853>,  <37.710064, 36.020252, 27.198708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976414, 36.631752, 26.832853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.091778, 36.302063, 26.637924>,  <38.160995, 36.104252, 26.520967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.091778, 36.302063, 26.637924>,  <37.976414, 36.631752, 26.832853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091778, 36.302063, 26.637924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452653, 0.331125, -0.827926,
		0.843758, 0.459367, -0.277587,
		0.288406, -0.824220, -0.487323,
		38.178299, 36.054798, 26.491728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226978, 36.902725, 26.162083>,  <37.976414, 36.631752, 26.832853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226978, 36.902725, 26.162083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.155613, 36.510704, 26.127066>,  <38.112793, 36.275490, 26.106054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.155613, 36.510704, 26.127066>,  <38.226978, 36.902725, 26.162083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155613, 36.510704, 26.127066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513943, 0.168689, -0.841075,
		0.839066, -0.105063, -0.533788,
		-0.178410, -0.980054, -0.087545,
		38.102089, 36.216686, 26.100801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428444, 36.801140, 25.488285>,  <38.226978, 36.902725, 26.162083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428444, 36.801140, 25.488285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.189098, 36.501179, 25.601143>,  <38.045490, 36.321201, 25.668858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.189098, 36.501179, 25.601143>,  <38.428444, 36.801140, 25.488285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189098, 36.501179, 25.601143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530309, 0.106705, -0.841063,
		0.600607, -0.652889, -0.461528,
		-0.598368, -0.749900, 0.282145,
		38.009586, 36.276207, 25.685787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336349, 36.495564, 24.982140>,  <38.428444, 36.801140, 25.488285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336349, 36.495564, 24.982140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.032555, 36.317127, 25.171530>,  <37.850277, 36.210064, 25.285164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.032555, 36.317127, 25.171530>,  <38.336349, 36.495564, 24.982140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032555, 36.317127, 25.171530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510994, -0.041306, -0.858591,
		0.402568, -0.894033, -0.196579,
		-0.759489, -0.446092, 0.473475,
		37.804707, 36.183300, 25.313572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202160, 35.827042, 24.531353>,  <38.336349, 36.495564, 24.982140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202160, 35.827042, 24.531353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.877853, 35.908192, 24.750986>,  <37.683270, 35.956882, 24.882767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.877853, 35.908192, 24.750986>,  <38.202160, 35.827042, 24.531353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877853, 35.908192, 24.750986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578954, -0.139493, -0.803339,
		-0.086380, -0.969219, 0.230550,
		-0.810772, 0.202870, 0.549084,
		37.634621, 35.969055, 24.915710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780838, 35.362938, 24.394114>,  <38.202160, 35.827042, 24.531353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780838, 35.362938, 24.394114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.511497, 35.628258, 24.524729>,  <37.349892, 35.787449, 24.603098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.511497, 35.628258, 24.524729>,  <37.780838, 35.362938, 24.394114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511497, 35.628258, 24.524729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630024, -0.283695, -0.722901,
		-0.386866, -0.692493, 0.608923,
		-0.673353, 0.663302, 0.326536,
		37.309490, 35.827248, 24.622690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.882294, 34.994011, 24.466892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.868526, 35.393749, 24.462395>,  <36.860268, 35.633591, 24.459696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.868526, 35.393749, 24.462395>,  <36.882294, 34.994011, 24.466892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868526, 35.393749, 24.462395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714605, -0.032469, -0.698775,
		-0.698682, -0.016015, 0.715254,
		-0.034414, 0.999344, -0.011242,
		36.858204, 35.693554, 24.459023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172703, 35.166912, 24.334970>,  <36.882294, 34.994011, 24.466892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172703, 35.166912, 24.334970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.362755, 35.506794, 24.243536>,  <36.476784, 35.710724, 24.188675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.362755, 35.506794, 24.243536>,  <36.172703, 35.166912, 24.334970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362755, 35.506794, 24.243536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663514, 0.175353, -0.727324,
		-0.577929, 0.497242, 0.647107,
		0.475128, 0.849707, -0.228586,
		36.505295, 35.761707, 24.174961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599957, 35.601925, 24.154991>,  <36.172703, 35.166912, 24.334970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599957, 35.601925, 24.154991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.926987, 35.781498, 24.010752>,  <36.123203, 35.889240, 23.924208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.926987, 35.781498, 24.010752>,  <35.599957, 35.601925, 24.154991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926987, 35.781498, 24.010752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519615, 0.305335, -0.797979,
		-0.248132, 0.839781, 0.482905,
		0.817576, 0.448929, -0.360600,
		36.172260, 35.916176, 23.902573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293350, 36.258617, 23.927711>,  <35.599957, 35.601925, 24.154991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293350, 36.258617, 23.927711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.637184, 36.198364, 23.732397>,  <35.843483, 36.162212, 23.615208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.637184, 36.198364, 23.732397>,  <35.293350, 36.258617, 23.927711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637184, 36.198364, 23.732397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423421, 0.324965, -0.845643,
		0.286055, 0.933653, 0.215556,
		0.859585, -0.150630, -0.488286,
		35.895061, 36.153175, 23.585911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300373, 36.792892, 23.521473>,  <35.293350, 36.258617, 23.927711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300373, 36.792892, 23.521473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536980, 36.515129, 23.357567>,  <35.678944, 36.348473, 23.259222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536980, 36.515129, 23.357567>,  <35.300373, 36.792892, 23.521473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536980, 36.515129, 23.357567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354159, 0.232795, -0.905747,
		0.724349, 0.680886, -0.108229,
		0.591515, -0.694407, -0.409767,
		35.714436, 36.306808, 23.234636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668221, 37.112503, 23.016169>,  <35.300373, 36.792892, 23.521473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668221, 37.112503, 23.016169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.681248, 36.723171, 22.925341>,  <35.689064, 36.489571, 22.870844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.681248, 36.723171, 22.925341>,  <35.668221, 37.112503, 23.016169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681248, 36.723171, 22.925341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457447, 0.187481, -0.869248,
		0.888640, 0.132180, -0.439144,
		0.032567, -0.973334, -0.227068,
		35.691017, 36.431171, 22.857220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949192, 37.140087, 22.307323>,  <35.668221, 37.112503, 23.016169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949192, 37.140087, 22.307323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.785191, 36.778259, 22.354065>,  <35.686790, 36.561161, 22.382111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.785191, 36.778259, 22.354065>,  <35.949192, 37.140087, 22.307323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785191, 36.778259, 22.354065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540237, 0.137618, -0.830184,
		0.734878, -0.403504, -0.545105,
		-0.409999, -0.904570, 0.116855,
		35.662189, 36.506889, 22.389122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923267, 36.858685, 21.651791>,  <35.949192, 37.140087, 22.307323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923267, 36.858685, 21.651791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.669003, 36.608021, 21.832117>,  <35.516445, 36.457623, 21.940313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.669003, 36.608021, 21.832117>,  <35.923267, 36.858685, 21.651791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669003, 36.608021, 21.832117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618595, 0.064127, -0.783089,
		0.461823, -0.776647, -0.428413,
		-0.635657, -0.626663, 0.450814,
		35.478306, 36.420021, 21.967361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816212, 36.291656, 21.223093>,  <35.923267, 36.858685, 21.651791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816212, 36.291656, 21.223093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.489204, 36.302311, 21.453207>,  <35.292999, 36.308704, 21.591276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.489204, 36.302311, 21.453207>,  <35.816212, 36.291656, 21.223093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489204, 36.302311, 21.453207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555596, 0.226440, -0.800024,
		-0.151580, -0.973661, -0.170318,
		-0.817519, 0.026640, 0.575285,
		35.243950, 36.310303, 21.625793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343941, 35.849407, 20.936060>,  <35.816212, 36.291656, 21.223093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343941, 35.849407, 20.936060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124683, 36.101768, 21.155697>,  <34.993130, 36.253185, 21.287479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124683, 36.101768, 21.155697>,  <35.343941, 35.849407, 20.936060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124683, 36.101768, 21.155697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548302, 0.224695, -0.805529,
		-0.631587, -0.742615, 0.222759,
		-0.548145, 0.630901, 0.549091,
		34.960239, 36.291039, 21.320425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714897, 35.684116, 20.642660>,  <35.343941, 35.849407, 20.936060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714897, 35.684116, 20.642660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.655033, 36.020988, 20.849861>,  <34.619114, 36.223114, 20.974182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.655033, 36.020988, 20.849861>,  <34.714897, 35.684116, 20.642660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655033, 36.020988, 20.849861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602384, 0.337778, -0.723215,
		-0.784050, -0.420275, 0.456766,
		-0.149664, 0.842185, 0.518001,
		34.610134, 36.273643, 21.005262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965141, 35.761036, 20.695913>,  <34.714897, 35.684116, 20.642660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965141, 35.761036, 20.695913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.128109, 36.123489, 20.741417>,  <34.225887, 36.340961, 20.768719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.128109, 36.123489, 20.741417>,  <33.965141, 35.761036, 20.695913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128109, 36.123489, 20.741417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500822, 0.325849, -0.801872,
		-0.763669, 0.269722, 0.586566,
		0.407414, 0.906130, 0.113759,
		34.250332, 36.395329, 20.775545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409397, 36.226566, 20.667200>,  <33.965141, 35.761036, 20.695913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409397, 36.226566, 20.667200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.749016, 36.410233, 20.562668>,  <33.952785, 36.520432, 20.499949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.749016, 36.410233, 20.562668>,  <33.409397, 36.226566, 20.667200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749016, 36.410233, 20.562668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473640, 0.442386, -0.761551,
		-0.234068, 0.770366, 0.593083,
		0.849045, 0.459162, -0.261328,
		34.003731, 36.547981, 20.484270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193394, 36.915524, 20.569723>,  <33.409397, 36.226566, 20.667200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193394, 36.915524, 20.569723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.535053, 36.886795, 20.363707>,  <33.740051, 36.869556, 20.240097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.535053, 36.886795, 20.363707>,  <33.193394, 36.915524, 20.569723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535053, 36.886795, 20.363707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418069, 0.494165, -0.762246,
		0.309260, 0.866396, 0.392066,
		0.854152, -0.071822, -0.515039,
		33.791298, 36.865250, 20.209194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181248, 37.629379, 20.261997>,  <33.193394, 36.915524, 20.569723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181248, 37.629379, 20.261997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.475426, 37.445274, 20.063091>,  <33.651932, 37.334812, 19.943748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.475426, 37.445274, 20.063091>,  <33.181248, 37.629379, 20.261997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475426, 37.445274, 20.063091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283373, 0.457692, -0.842744,
		0.615479, 0.760707, 0.206182,
		0.735449, -0.460265, -0.497263,
		33.696060, 37.307194, 19.913912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624603, 38.163254, 20.005009>,  <33.181248, 37.629379, 20.261997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624603, 38.163254, 20.005009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.683540, 37.842575, 19.773293>,  <33.718903, 37.650169, 19.634262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.683540, 37.842575, 19.773293>,  <33.624603, 38.163254, 20.005009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683540, 37.842575, 19.773293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293827, 0.523763, -0.799586,
		0.944434, 0.288027, -0.158384,
		0.147346, -0.801694, -0.579290,
		33.727745, 37.602066, 19.599506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892124, 38.454552, 19.399424>,  <33.624603, 38.163254, 20.005009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892124, 38.454552, 19.399424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.752300, 38.092274, 19.303490>,  <33.668407, 37.874905, 19.245930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.752300, 38.092274, 19.303490>,  <33.892124, 38.454552, 19.399424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752300, 38.092274, 19.303490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509479, 0.398577, -0.762606,
		0.786283, -0.144384, -0.600760,
		-0.349557, -0.905699, -0.239834,
		33.647434, 37.820564, 19.231539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006157, 38.369835, 18.714846>,  <33.892124, 38.454552, 19.399424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006157, 38.369835, 18.714846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.688004, 38.147263, 18.810966>,  <33.497112, 38.013718, 18.868639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.688004, 38.147263, 18.810966>,  <34.006157, 38.369835, 18.714846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688004, 38.147263, 18.810966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581569, 0.588988, -0.561133,
		0.170697, -0.586070, -0.792076,
		-0.795386, -0.556430, 0.240302,
		33.449387, 37.980331, 18.883057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638294, 38.403072, 18.017702>,  <34.006157, 38.369835, 18.714846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638294, 38.403072, 18.017702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.381092, 38.226025, 18.267704>,  <33.226772, 38.119797, 18.417706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.381092, 38.226025, 18.267704>,  <33.638294, 38.403072, 18.017702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381092, 38.226025, 18.267704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738790, 0.573539, -0.353895,
		-0.201824, -0.689304, -0.695792,
		-0.643005, -0.442620, 0.625006,
		33.188190, 38.093239, 18.455206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934383, 38.256889, 17.621399>,  <33.638294, 38.403072, 18.017702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934383, 38.256889, 17.621399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806469, 38.229198, 17.999382>,  <32.729721, 38.212585, 18.226171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806469, 38.229198, 17.999382>,  <32.934383, 38.256889, 17.621399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806469, 38.229198, 17.999382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745335, 0.634138, -0.205778,
		-0.584987, -0.770114, -0.254389,
		-0.319791, -0.069228, 0.944956,
		32.710533, 38.208431, 18.282869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160206, 38.075500, 17.665499>,  <32.934383, 38.256889, 17.621399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160206, 38.075500, 17.665499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.272259, 38.270500, 17.996286>,  <32.339489, 38.387501, 18.194759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.272259, 38.270500, 17.996286>,  <32.160206, 38.075500, 17.665499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272259, 38.270500, 17.996286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726019, 0.671178, -0.149723,
		-0.628032, -0.558452, 0.541947,
		0.280130, 0.487495, 0.826968,
		32.356297, 38.416748, 18.244377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494719, 38.266827, 18.055475>,  <32.160206, 38.075500, 17.665499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494719, 38.266827, 18.055475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.813227, 38.492821, 18.141956>,  <32.004330, 38.628418, 18.193846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.813227, 38.492821, 18.141956>,  <31.494719, 38.266827, 18.055475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813227, 38.492821, 18.141956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601372, 0.778065, 0.181569,
		-0.065635, -0.274595, 0.959317,
		0.796269, 0.564989, 0.216202,
		32.052109, 38.662319, 18.206818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176937, 38.927982, 17.774170>,  <31.494719, 38.266827, 18.055475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176937, 38.927982, 17.774170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.358482, 38.774506, 17.452478>,  <31.467409, 38.682419, 17.259462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.358482, 38.774506, 17.452478>,  <31.176937, 38.927982, 17.774170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358482, 38.774506, 17.452478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832903, 0.503424, 0.229862,
		0.316671, -0.774172, 0.548067,
		0.453863, -0.383696, -0.804230,
		31.494640, 38.659397, 17.211210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774181, 38.283398, 18.004372>,  <31.176937, 38.927982, 17.774170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774181, 38.283398, 18.004372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.519878, 38.575253, 18.105118>,  <30.367296, 38.750366, 18.165565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.519878, 38.575253, 18.105118>,  <30.774181, 38.283398, 18.004372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519878, 38.575253, 18.105118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080156, -0.262129, 0.961698,
		0.767715, 0.631596, 0.108165,
		-0.635758, 0.729640, 0.251867,
		30.329151, 38.794144, 18.180677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009645, 38.761768, 18.536182>,  <30.774181, 38.283398, 18.004372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009645, 38.761768, 18.536182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613125, 38.709400, 18.541552>,  <30.375212, 38.677979, 18.544773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613125, 38.709400, 18.541552>,  <31.009645, 38.761768, 18.536182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613125, 38.709400, 18.541552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083936, -0.550403, 0.830669,
		-0.101362, 0.824571, 0.556605,
		-0.991302, -0.130918, 0.013421,
		30.315735, 38.670124, 18.545578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841530, 38.944401, 19.218180>,  <31.009645, 38.761768, 18.536182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841530, 38.944401, 19.218180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.540062, 38.719131, 19.082640>,  <30.359182, 38.583969, 19.001316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.540062, 38.719131, 19.082640>,  <30.841530, 38.944401, 19.218180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540062, 38.719131, 19.082640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001352, -0.514221, 0.857656,
		-0.657254, 0.646846, 0.386791,
		-0.753668, -0.563175, -0.338849,
		30.313961, 38.550179, 18.980986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280897, 38.842648, 19.840675>,  <30.841530, 38.944401, 19.218180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280897, 38.842648, 19.840675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.238295, 38.535328, 19.588209>,  <30.212732, 38.350937, 19.436729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.238295, 38.535328, 19.588209>,  <30.280897, 38.842648, 19.840675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238295, 38.535328, 19.588209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153939, -0.639866, 0.752911,
		-0.982323, -0.016970, 0.186421,
		-0.106508, -0.768299, -0.631167,
		30.206343, 38.304836, 19.398859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059748, 38.324524, 20.314161>,  <30.280897, 38.842648, 19.840675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059748, 38.324524, 20.314161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.155525, 38.115650, 19.986750>,  <30.212992, 37.990326, 19.790302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.155525, 38.115650, 19.986750>,  <30.059748, 38.324524, 20.314161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155525, 38.115650, 19.986750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306685, -0.759212, 0.574058,
		-0.921201, -0.388484, -0.021641,
		0.239442, -0.522185, -0.818529,
		30.227358, 37.958996, 19.741192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742434, 37.676258, 20.379555>,  <30.059748, 38.324524, 20.314161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742434, 37.676258, 20.379555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.060019, 37.641838, 20.138815>,  <30.250568, 37.621185, 19.994371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.060019, 37.641838, 20.138815>,  <29.742434, 37.676258, 20.379555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060019, 37.641838, 20.138815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393356, -0.682106, 0.616444,
		-0.463569, -0.726173, -0.507717,
		0.793962, -0.086051, -0.601847,
		30.298206, 37.616024, 19.958261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817995, 36.933529, 20.381128>,  <29.742434, 37.676258, 20.379555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817995, 36.933529, 20.381128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.164389, 37.110672, 20.288221>,  <30.372225, 37.216957, 20.232477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.164389, 37.110672, 20.288221>,  <29.817995, 36.933529, 20.381128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164389, 37.110672, 20.288221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488867, -0.651939, 0.579642,
		0.105277, -0.615508, -0.781068,
		0.865983, 0.442861, -0.232267,
		30.424183, 37.243530, 20.218542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204380, 36.442863, 20.242937>,  <29.817995, 36.933529, 20.381128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204380, 36.442863, 20.242937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455502, 36.744232, 20.321138>,  <30.606174, 36.925053, 20.368059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455502, 36.744232, 20.321138>,  <30.204380, 36.442863, 20.242937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455502, 36.744232, 20.321138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593823, -0.625982, 0.505490,
		0.503229, -0.201253, -0.840392,
		0.627802, 0.753421, 0.195504,
		30.643843, 36.970257, 20.379789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898199, 36.054028, 20.179943>,  <30.204380, 36.442863, 20.242937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898199, 36.054028, 20.179943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.955303, 36.404152, 20.364744>,  <30.989565, 36.614227, 20.475624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.955303, 36.404152, 20.364744>,  <30.898199, 36.054028, 20.179943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955303, 36.404152, 20.364744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733110, -0.407118, 0.544798,
		0.664958, 0.260923, -0.699821,
		0.142759, 0.875314, 0.462002,
		30.998131, 36.666744, 20.503345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602098, 36.240551, 20.046818>,  <30.898199, 36.054028, 20.179943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602098, 36.240551, 20.046818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.495409, 36.433945, 20.380310>,  <31.431396, 36.549980, 20.580406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.495409, 36.433945, 20.380310>,  <31.602098, 36.240551, 20.046818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495409, 36.433945, 20.380310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765948, -0.418717, 0.487852,
		0.584964, 0.768715, -0.258640,
		-0.266722, 0.483481, 0.833730,
		31.415392, 36.578987, 20.630428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120083, 36.514774, 20.279999>,  <31.602098, 36.240551, 20.046818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120083, 36.514774, 20.279999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.894159, 36.496765, 20.609596>,  <31.758606, 36.485958, 20.807354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.894159, 36.496765, 20.609596>,  <32.120083, 36.514774, 20.279999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894159, 36.496765, 20.609596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743724, -0.460447, 0.484627,
		0.357584, 0.886544, 0.293552,
		-0.564808, -0.045027, 0.823993,
		31.724716, 36.483257, 20.856794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457863, 36.830124, 20.830694>,  <32.120083, 36.514774, 20.279999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457863, 36.830124, 20.830694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.179390, 36.622608, 21.029161>,  <32.012306, 36.498100, 21.148243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.179390, 36.622608, 21.029161>,  <32.457863, 36.830124, 20.830694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179390, 36.622608, 21.029161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717190, -0.472780, 0.511975,
		-0.031027, 0.712277, 0.701212,
		-0.696187, -0.518787, 0.496169,
		31.970533, 36.466972, 21.178013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609867, 36.916729, 21.552568>,  <32.457863, 36.830124, 20.830694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609867, 36.916729, 21.552568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.358093, 36.608704, 21.594162>,  <32.207031, 36.423889, 21.619118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.358093, 36.608704, 21.594162>,  <32.609867, 36.916729, 21.552568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358093, 36.608704, 21.594162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604199, -0.400862, 0.688660,
		-0.488631, 0.496291, 0.717590,
		-0.629431, -0.770068, 0.103985,
		32.169266, 36.377682, 21.625357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384235, 36.942577, 22.252266>,  <32.609867, 36.916729, 21.552568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384235, 36.942577, 22.252266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.343948, 36.560318, 22.141567>,  <32.319775, 36.330963, 22.075148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.343948, 36.560318, 22.141567>,  <32.384235, 36.942577, 22.252266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343948, 36.560318, 22.141567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462884, -0.291234, 0.837211,
		-0.880678, -0.043777, 0.471688,
		-0.100721, -0.955650, -0.276747,
		32.313732, 36.273624, 22.058542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219006, 36.560200, 22.843319>,  <32.384235, 36.942577, 22.252266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219006, 36.560200, 22.843319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.370377, 36.274155, 22.608232>,  <32.461201, 36.102528, 22.467180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.370377, 36.274155, 22.608232>,  <32.219006, 36.560200, 22.843319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370377, 36.274155, 22.608232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501294, -0.375426, 0.779589,
		-0.778135, -0.589639, 0.216408,
		0.378431, -0.715109, -0.587715,
		32.483906, 36.059624, 22.431917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265461, 36.019085, 23.261724>,  <32.219006, 36.560200, 22.843319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265461, 36.019085, 23.261724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.483242, 35.870975, 22.960669>,  <32.613911, 35.782108, 22.780035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.483242, 35.870975, 22.960669>,  <32.265461, 36.019085, 23.261724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483242, 35.870975, 22.960669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541635, -0.529943, 0.652527,
		-0.640474, -0.762925, -0.087972,
		0.544449, -0.370278, -0.752641,
		32.646576, 35.759892, 22.734877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240906, 35.249680, 23.309557>,  <32.265461, 36.019085, 23.261724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240906, 35.249680, 23.309557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.570469, 35.359188, 23.111071>,  <32.768208, 35.424892, 22.991980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.570469, 35.359188, 23.111071>,  <32.240906, 35.249680, 23.309557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570469, 35.359188, 23.111071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552009, -0.585916, 0.593286,
		-0.128317, -0.762727, -0.633863,
		0.823906, 0.273769, -0.496216,
		32.817642, 35.441319, 22.962206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571369, 34.623699, 23.118856>,  <32.240906, 35.249680, 23.309557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571369, 34.623699, 23.118856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.854355, 34.906349, 23.124149>,  <33.024147, 35.075939, 23.127325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.854355, 34.906349, 23.124149>,  <32.571369, 34.623699, 23.118856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854355, 34.906349, 23.124149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604027, -0.614247, 0.507791,
		0.366946, -0.351251, -0.861379,
		0.707461, 0.706628, 0.013230,
		33.066593, 35.118340, 23.128119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237167, 34.344704, 22.839773>,  <32.571369, 34.623699, 23.118856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237167, 34.344704, 22.839773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.298206, 34.655281, 23.084345>,  <33.334827, 34.841629, 23.231087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.298206, 34.655281, 23.084345>,  <33.237167, 34.344704, 22.839773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298206, 34.655281, 23.084345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680342, -0.531270, 0.504863,
		0.716834, 0.338941, -0.609318,
		0.152593, 0.776447, 0.611428,
		33.343983, 34.888214, 23.267773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780983, 34.118183, 23.341270>,  <33.237167, 34.344704, 22.839773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780983, 34.118183, 23.341270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.676907, 34.462566, 23.516106>,  <33.614460, 34.669197, 23.621008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.676907, 34.462566, 23.516106>,  <33.780983, 34.118183, 23.341270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676907, 34.462566, 23.516106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524154, -0.254232, 0.812791,
		0.810904, 0.440580, -0.385129,
		-0.260188, 0.860962, 0.437090,
		33.598850, 34.720856, 23.647232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335159, 34.569370, 23.352837>,  <33.780983, 34.118183, 23.341270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335159, 34.569370, 23.352837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.082409, 34.669659, 23.646196>,  <33.930759, 34.729832, 23.822212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.082409, 34.669659, 23.646196>,  <34.335159, 34.569370, 23.352837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082409, 34.669659, 23.646196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638980, -0.367052, 0.676001,
		0.438682, 0.895775, 0.071726,
		-0.631873, 0.250718, 0.733401,
		33.892849, 34.744873, 23.866217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.432789, 35.742111, 26.257767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.075932, 35.845764, 26.405781>,  <38.861816, 35.907955, 26.494589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.075932, 35.845764, 26.405781>,  <39.432789, 35.742111, 26.257767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075932, 35.845764, 26.405781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423972, 0.197493, 0.883880,
		0.155966, 0.945434, -0.286059,
		-0.892145, 0.259136, 0.370035,
		38.808289, 35.923504, 26.516790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517109, 36.419086, 26.712349>,  <39.432789, 35.742111, 26.257767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517109, 36.419086, 26.712349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.228031, 36.173103, 26.838547>,  <39.054585, 36.025513, 26.914267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.228031, 36.173103, 26.838547>,  <39.517109, 36.419086, 26.712349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228031, 36.173103, 26.838547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425116, -0.035584, 0.904439,
		-0.544967, 0.787755, 0.287146,
		-0.722695, -0.614960, 0.315495,
		39.011223, 35.988617, 26.933195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293919, 36.739403, 27.328526>,  <39.517109, 36.419086, 26.712349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293919, 36.739403, 27.328526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.111046, 36.386532, 27.373693>,  <39.001324, 36.174809, 27.400795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.111046, 36.386532, 27.373693>,  <39.293919, 36.739403, 27.328526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111046, 36.386532, 27.373693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203831, 0.019656, 0.978809,
		-0.865700, 0.470512, 0.170828,
		-0.457183, -0.882175, 0.112921,
		38.973892, 36.121880, 27.407570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808033, 36.861996, 27.887232>,  <39.293919, 36.739403, 27.328526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808033, 36.861996, 27.887232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.876904, 36.468334, 27.870272>,  <38.918224, 36.232136, 27.860096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.876904, 36.468334, 27.870272>,  <38.808033, 36.861996, 27.887232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876904, 36.468334, 27.870272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062529, -0.032035, 0.997529,
		-0.983080, -0.174402, 0.056023,
		0.172176, -0.984153, -0.042399,
		38.928558, 36.173088, 27.857552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394321, 36.638435, 28.393721>,  <38.808033, 36.861996, 27.887232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394321, 36.638435, 28.393721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.682697, 36.364292, 28.352667>,  <38.855724, 36.199806, 28.328035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.682697, 36.364292, 28.352667>,  <38.394321, 36.638435, 28.393721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682697, 36.364292, 28.352667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246169, 0.114827, 0.962401,
		-0.647802, -0.719098, 0.251497,
		0.720939, -0.685356, -0.102634,
		38.898979, 36.158684, 28.321877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171223, 35.987206, 28.756748>,  <38.394321, 36.638435, 28.393721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171223, 35.987206, 28.756748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.567783, 35.943649, 28.727695>,  <38.805717, 35.917515, 28.710264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.567783, 35.943649, 28.727695>,  <38.171223, 35.987206, 28.756748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567783, 35.943649, 28.727695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059066, -0.123020, 0.990645,
		-0.116764, -0.986417, -0.115533,
		0.991402, -0.108847, -0.072628,
		38.865204, 35.910984, 28.705906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224609, 35.360130, 29.084017>,  <38.171223, 35.987206, 28.756748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224609, 35.360130, 29.084017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.585712, 35.532177, 29.086199>,  <38.802376, 35.635403, 29.087507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.585712, 35.532177, 29.086199>,  <38.224609, 35.360130, 29.084017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585712, 35.532177, 29.086199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122168, -0.268529, 0.955493,
		0.412435, -0.861913, -0.294963,
		0.902758, 0.430114, 0.005453,
		38.856541, 35.661213, 29.087835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623100, 34.901211, 29.365892>,  <38.224609, 35.360130, 29.084017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623100, 34.901211, 29.365892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.783321, 35.263382, 29.422110>,  <38.879456, 35.480686, 29.455839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.783321, 35.263382, 29.422110>,  <38.623100, 34.901211, 29.365892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783321, 35.263382, 29.422110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106152, -0.198207, 0.974395,
		0.910103, -0.375380, -0.175506,
		0.400555, 0.905430, 0.140541,
		38.903488, 35.535011, 29.464272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130959, 34.709030, 29.772114>,  <38.623100, 34.901211, 29.365892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130959, 34.709030, 29.772114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.131115, 35.104015, 29.835264>,  <39.131207, 35.341007, 29.873156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.131115, 35.104015, 29.835264>,  <39.130959, 34.709030, 29.772114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131115, 35.104015, 29.835264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049278, -0.157705, 0.986256,
		0.998785, 0.007396, -0.048721,
		0.000389, 0.987459, 0.157878,
		39.131233, 35.400253, 29.882627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701344, 34.895485, 30.184875>,  <39.130959, 34.709030, 29.772114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701344, 34.895485, 30.184875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.446972, 35.197392, 30.249269>,  <39.294350, 35.378536, 30.287905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.446972, 35.197392, 30.249269>,  <39.701344, 34.895485, 30.184875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446972, 35.197392, 30.249269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194095, -0.045472, 0.979928,
		0.746940, 0.654412, -0.117580,
		-0.635930, 0.754770, 0.160983,
		39.256191, 35.423820, 30.297564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071537, 35.290260, 30.692022>,  <39.701344, 34.895485, 30.184875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071537, 35.290260, 30.692022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.691181, 35.413857, 30.699276>,  <39.462967, 35.488014, 30.703629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.691181, 35.413857, 30.699276>,  <40.071537, 35.290260, 30.692022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691181, 35.413857, 30.699276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021427, 0.007258, 0.999744,
		0.308783, 0.951037, -0.013522,
		-0.950891, 0.308993, 0.018136,
		39.405914, 35.506554, 30.704718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133251, 35.754982, 31.200472>,  <40.071537, 35.290260, 30.692022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133251, 35.754982, 31.200472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.743519, 35.674385, 31.160303>,  <39.509682, 35.626026, 31.136202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.743519, 35.674385, 31.160303>,  <40.133251, 35.754982, 31.200472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743519, 35.674385, 31.160303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088641, -0.066686, 0.993829,
		-0.206948, 0.977217, 0.047114,
		-0.974328, -0.201495, -0.100422,
		39.451221, 35.613937, 31.130177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850563, 36.189610, 31.683613>,  <40.133251, 35.754982, 31.200472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850563, 36.189610, 31.683613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.551174, 35.932854, 31.616974>,  <39.371540, 35.778801, 31.576990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.551174, 35.932854, 31.616974>,  <39.850563, 36.189610, 31.683613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551174, 35.932854, 31.616974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169384, -0.057840, 0.983851,
		-0.641164, 0.764609, -0.065435,
		-0.748477, -0.641894, -0.166598,
		39.326630, 35.740284, 31.566994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340054, 36.463478, 32.037910>,  <39.850563, 36.189610, 31.683613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340054, 36.463478, 32.037910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.240902, 36.080036, 31.981865>,  <39.181412, 35.849972, 31.948236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.240902, 36.080036, 31.981865>,  <39.340054, 36.463478, 32.037910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240902, 36.080036, 31.981865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115565, -0.114340, 0.986697,
		-0.961873, 0.260778, -0.082438,
		-0.247883, -0.958604, -0.140118,
		39.166538, 35.792454, 31.939829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689548, 36.656136, 32.714943>,  <39.340054, 36.463478, 32.037910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689548, 36.656136, 32.714943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.611927, 36.995964, 32.911137>,  <39.565353, 37.199860, 33.028854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.611927, 36.995964, 32.911137>,  <39.689548, 36.656136, 32.714943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611927, 36.995964, 32.911137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390519, 0.391766, -0.833075,
		-0.899910, -0.353208, 0.255747,
		-0.194055, 0.849567, 0.490488,
		39.553711, 37.250835, 33.058285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951836, 36.913044, 32.601723>,  <39.689548, 36.656136, 32.714943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951836, 36.913044, 32.601723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.153286, 37.240704, 32.711525>,  <39.274155, 37.437302, 32.777405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.153286, 37.240704, 32.711525>,  <38.951836, 36.913044, 32.601723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153286, 37.240704, 32.711525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501656, 0.535969, -0.679028,
		-0.703353, 0.204267, 0.680859,
		0.503623, 0.819153, 0.274503,
		39.304375, 37.486450, 32.793877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395061, 37.500252, 32.693394>,  <38.951836, 36.913044, 32.601723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395061, 37.500252, 32.693394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.760090, 37.658253, 32.651089>,  <38.979107, 37.753052, 32.625706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.760090, 37.658253, 32.651089>,  <38.395061, 37.500252, 32.693394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760090, 37.658253, 32.651089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352782, 0.629722, -0.692095,
		-0.206774, 0.668899, 0.714016,
		0.912573, 0.394999, -0.105765,
		39.033863, 37.776752, 32.619358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345463, 38.189106, 32.616505>,  <38.395061, 37.500252, 32.693394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345463, 38.189106, 32.616505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.712452, 38.144962, 32.463627>,  <38.932644, 38.118477, 32.371902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.712452, 38.144962, 32.463627>,  <38.345463, 38.189106, 32.616505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712452, 38.144962, 32.463627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292149, 0.465149, -0.835635,
		0.269997, 0.878326, 0.394518,
		0.917470, -0.110360, -0.382191,
		38.987694, 38.111855, 32.348969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536392, 38.883175, 32.376041>,  <38.345463, 38.189106, 32.616505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536392, 38.883175, 32.376041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.771214, 38.630295, 32.173775>,  <38.912106, 38.478569, 32.052414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.771214, 38.630295, 32.173775>,  <38.536392, 38.883175, 32.376041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771214, 38.630295, 32.173775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388469, 0.328027, -0.861098,
		0.710257, 0.701943, -0.053021,
		0.587049, -0.632198, -0.505666,
		38.947327, 38.440636, 32.022076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689823, 39.228397, 31.815870>,  <38.536392, 38.883175, 32.376041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689823, 39.228397, 31.815870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.799374, 38.863579, 31.693781>,  <38.865105, 38.644688, 31.620527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.799374, 38.863579, 31.693781>,  <38.689823, 39.228397, 31.815870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799374, 38.863579, 31.693781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490680, 0.140446, -0.859947,
		0.827180, 0.385284, -0.409059,
		0.273873, -0.912048, -0.305225,
		38.881535, 38.589966, 31.602213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840302, 39.378845, 31.233820>,  <38.689823, 39.228397, 31.815870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840302, 39.378845, 31.233820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.776051, 38.984081, 31.228132>,  <38.737499, 38.747223, 31.224720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.776051, 38.984081, 31.228132>,  <38.840302, 39.378845, 31.233820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776051, 38.984081, 31.228132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536871, 0.099449, -0.837783,
		0.828233, -0.126933, -0.545819,
		-0.160623, -0.986913, -0.014220,
		38.727863, 38.688007, 31.223866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048374, 39.184566, 30.566334>,  <38.840302, 39.378845, 31.233820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048374, 39.184566, 30.566334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.793865, 38.907078, 30.701334>,  <38.641159, 38.740585, 30.782333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.793865, 38.907078, 30.701334>,  <39.048374, 39.184566, 30.566334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793865, 38.907078, 30.701334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598315, 0.167573, -0.783542,
		0.487003, -0.700479, -0.521687,
		-0.636276, -0.693721, 0.337499,
		38.602982, 38.698963, 30.802584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873478, 38.729084, 29.973671>,  <39.048374, 39.184566, 30.566334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873478, 38.729084, 29.973671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.582378, 38.640411, 30.233282>,  <38.407719, 38.587208, 30.389048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.582378, 38.640411, 30.233282>,  <38.873478, 38.729084, 29.973671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582378, 38.640411, 30.233282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675729, 0.069855, -0.733833,
		0.117344, -0.972613, -0.200637,
		-0.727751, -0.221687, 0.649025,
		38.364052, 38.573906, 30.427990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387016, 38.220707, 29.635481>,  <38.873478, 38.729084, 29.973671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387016, 38.220707, 29.635481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.182640, 38.403564, 29.926676>,  <38.060017, 38.513279, 30.101393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.182640, 38.403564, 29.926676>,  <38.387016, 38.220707, 29.635481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182640, 38.403564, 29.926676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793874, 0.073887, -0.603577,
		-0.329711, -0.886318, 0.325164,
		-0.510936, 0.457145, 0.727986,
		38.029358, 38.540707, 30.145071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796642, 37.837124, 29.762875>,  <38.387016, 38.220707, 29.635481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796642, 37.837124, 29.762875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.715424, 38.211731, 29.877209>,  <37.666691, 38.436497, 29.945808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.715424, 38.211731, 29.877209>,  <37.796642, 37.837124, 29.762875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715424, 38.211731, 29.877209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847579, -0.021939, -0.530215,
		-0.490286, -0.349928, 0.798229,
		-0.203050, 0.936520, 0.285835,
		37.654507, 38.492687, 29.962959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041977, 37.815136, 29.893091>,  <37.796642, 37.837124, 29.762875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041977, 37.815136, 29.893091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.149185, 38.198212, 29.851139>,  <37.213509, 38.428059, 29.825968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.149185, 38.198212, 29.851139>,  <37.041977, 37.815136, 29.893091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149185, 38.198212, 29.851139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785825, 0.154335, -0.598881,
		-0.557355, 0.242928, 0.793940,
		0.268018, 0.957688, -0.104880,
		37.229591, 38.485519, 29.819675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473610, 38.219463, 29.954931>,  <37.041977, 37.815136, 29.893091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473610, 38.219463, 29.954931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.701279, 38.487305, 29.764071>,  <36.837883, 38.648010, 29.649555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.701279, 38.487305, 29.764071>,  <36.473610, 38.219463, 29.954931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701279, 38.487305, 29.764071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754993, 0.195814, -0.625813,
		-0.325613, 0.716443, 0.616997,
		0.569177, 0.669601, -0.477150,
		36.872032, 38.688187, 29.620926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033642, 38.864365, 29.794146>,  <36.473610, 38.219463, 29.954931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033642, 38.864365, 29.794146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.347183, 38.893875, 29.547527>,  <36.535309, 38.911579, 29.399555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.347183, 38.893875, 29.547527>,  <36.033642, 38.864365, 29.794146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347183, 38.893875, 29.547527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610979, 0.268810, -0.744611,
		0.110802, 0.960364, 0.255781,
		0.783854, 0.073772, -0.616547,
		36.582340, 38.916008, 29.362562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473824, 39.240860, 30.122452>,  <36.033642, 38.864365, 29.794146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473824, 39.240860, 30.122452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.108372, 39.324593, 30.261852>,  <34.889099, 39.374832, 30.345493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.108372, 39.324593, 30.261852>,  <35.473824, 39.240860, 30.122452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108372, 39.324593, 30.261852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263860, -0.346815, 0.900054,
		0.309276, 0.914275, 0.261628,
		-0.913633, 0.209332, 0.348503,
		34.834282, 39.387394, 30.366404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531567, 39.575516, 30.719360>,  <35.473824, 39.240860, 30.122452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531567, 39.575516, 30.719360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.169460, 39.408375, 30.750048>,  <34.952194, 39.308090, 30.768461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.169460, 39.408375, 30.750048>,  <35.531567, 39.575516, 30.719360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169460, 39.408375, 30.750048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193862, -0.245614, 0.949785,
		-0.378027, 0.874685, 0.303352,
		-0.905270, -0.417853, 0.076720,
		34.897881, 39.283020, 30.773064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271351, 39.703415, 31.450281>,  <35.531567, 39.575516, 30.719360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271351, 39.703415, 31.450281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.040241, 39.407619, 31.312107>,  <34.901573, 39.230141, 31.229202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.040241, 39.407619, 31.312107>,  <35.271351, 39.703415, 31.450281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040241, 39.407619, 31.312107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106858, -0.488119, 0.866211,
		-0.809168, 0.463565, 0.361045,
		-0.577779, -0.739491, -0.345435,
		34.866909, 39.185772, 31.208477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900181, 39.531372, 32.017410>,  <35.271351, 39.703415, 31.450281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900181, 39.531372, 32.017410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.875343, 39.211189, 31.778942>,  <34.860443, 39.019081, 31.635860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.875343, 39.211189, 31.778942>,  <34.900181, 39.531372, 32.017410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875343, 39.211189, 31.778942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259045, -0.589777, 0.764891,
		-0.963867, -0.106941, 0.243974,
		-0.062092, -0.800454, -0.596170,
		34.856716, 38.971054, 31.600092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590580, 39.058247, 32.412739>,  <34.900181, 39.531372, 32.017410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590580, 39.058247, 32.412739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.750320, 38.834000, 32.122574>,  <34.846165, 38.699451, 31.948475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.750320, 38.834000, 32.122574>,  <34.590580, 39.058247, 32.412739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750320, 38.834000, 32.122574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260825, -0.689075, 0.676126,
		-0.878912, -0.459220, -0.128961,
		0.399355, -0.560619, -0.725412,
		34.870129, 38.665813, 31.904951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369507, 38.414940, 32.552902>,  <34.590580, 39.058247, 32.412739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369507, 38.414940, 32.552902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.710548, 38.354256, 32.352882>,  <34.915173, 38.317844, 32.232872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.710548, 38.354256, 32.352882>,  <34.369507, 38.414940, 32.552902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710548, 38.354256, 32.352882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291579, -0.655991, 0.696174,
		-0.433646, -0.739364, -0.515064,
		0.852604, -0.151711, -0.500051,
		34.966328, 38.308743, 32.202866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470840, 37.724491, 32.659386>,  <34.369507, 38.414940, 32.552902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470840, 37.724491, 32.659386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.829609, 37.853096, 32.537956>,  <35.044872, 37.930260, 32.465099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.829609, 37.853096, 32.537956>,  <34.470840, 37.724491, 32.659386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829609, 37.853096, 32.537956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441386, -0.609699, 0.658366,
		0.026590, -0.724496, -0.688766,
		0.896924, 0.321517, -0.303570,
		35.098686, 37.949551, 32.446884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953659, 37.097061, 32.593914>,  <34.470840, 37.724491, 32.659386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953659, 37.097061, 32.593914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.195213, 37.414688, 32.621590>,  <35.340145, 37.605263, 32.638195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.195213, 37.414688, 32.621590>,  <34.953659, 37.097061, 32.593914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195213, 37.414688, 32.621590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619943, -0.522471, 0.585401,
		0.500998, -0.310618, -0.807786,
		0.603881, 0.794066, 0.069192,
		35.376377, 37.652908, 32.642345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613686, 36.823227, 32.521053>,  <34.953659, 37.097061, 32.593914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613686, 36.823227, 32.521053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.671825, 37.179264, 32.693844>,  <35.706711, 37.392887, 32.797520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.671825, 37.179264, 32.693844>,  <35.613686, 36.823227, 32.521053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671825, 37.179264, 32.693844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643658, -0.416659, 0.641950,
		0.751383, 0.184737, -0.633479,
		0.145353, 0.890094, 0.431978,
		35.715431, 37.446293, 32.823437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348495, 36.999214, 32.577534>,  <35.613686, 36.823227, 32.521053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348495, 36.999214, 32.577534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.166500, 37.204697, 32.868488>,  <36.057301, 37.327988, 33.043060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.166500, 37.204697, 32.868488>,  <36.348495, 36.999214, 32.577534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166500, 37.204697, 32.868488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683025, -0.322780, 0.655202,
		0.571366, 0.794934, -0.204012,
		-0.454991, 0.513705, 0.727385,
		36.030003, 37.358807, 33.086704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897160, 37.291203, 32.814381>,  <36.348495, 36.999214, 32.577534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897160, 37.291203, 32.814381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.629086, 37.288570, 33.111244>,  <36.468239, 37.286991, 33.289364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.629086, 37.288570, 33.111244>,  <36.897160, 37.291203, 32.814381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629086, 37.288570, 33.111244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680231, -0.405426, 0.610668,
		0.296871, 0.914104, 0.276191,
		-0.670189, -0.006584, 0.742161,
		36.428028, 37.286594, 33.333893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109982, 37.624798, 33.455826>,  <36.897160, 37.291203, 32.814381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109982, 37.624798, 33.455826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.813454, 37.388020, 33.582344>,  <36.635536, 37.245953, 33.658257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.813454, 37.388020, 33.582344>,  <37.109982, 37.624798, 33.455826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813454, 37.388020, 33.582344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634130, -0.463416, 0.618971,
		-0.219820, 0.659429, 0.718911,
		-0.741322, -0.591945, 0.316295,
		36.591057, 37.210438, 33.677231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.687595, 41.462376, 27.386538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388252, 41.202282, 27.438929>,  <33.208649, 41.046227, 27.470364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388252, 41.202282, 27.438929>,  <33.687595, 41.462376, 27.386538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388252, 41.202282, 27.438929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111990, 0.070765, 0.991186,
		-0.653776, 0.756428, 0.019863,
		-0.748355, -0.650238, 0.130977,
		33.163746, 41.007210, 27.478222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514194, 41.585777, 27.993227>,  <33.687595, 41.462376, 27.386538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514194, 41.585777, 27.993227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357151, 41.222046, 27.938112>,  <33.262924, 41.003807, 27.905043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357151, 41.222046, 27.938112>,  <33.514194, 41.585777, 27.993227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357151, 41.222046, 27.938112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095936, -0.189490, 0.977185,
		-0.914687, 0.370436, 0.161633,
		-0.392613, -0.909324, -0.137786,
		33.239368, 40.949249, 27.896776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046970, 41.399841, 28.653296>,  <33.514194, 41.585777, 27.993227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046970, 41.399841, 28.653296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127285, 41.057819, 28.462063>,  <33.175476, 40.852604, 28.347324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127285, 41.057819, 28.462063>,  <33.046970, 41.399841, 28.653296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127285, 41.057819, 28.462063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129793, -0.460497, 0.878121,
		-0.970998, -0.238369, 0.018517,
		0.200789, -0.855057, -0.478080,
		33.187523, 40.801304, 28.318638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922970, 40.898663, 29.119751>,  <33.046970, 41.399841, 28.653296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922970, 40.898663, 29.119751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153942, 40.701599, 28.859335>,  <33.292526, 40.583359, 28.703085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153942, 40.701599, 28.859335>,  <32.922970, 40.898663, 29.119751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153942, 40.701599, 28.859335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375205, -0.548093, 0.747540,
		-0.725116, -0.675928, -0.131639,
		0.577433, -0.492661, -0.651042,
		33.327171, 40.553802, 28.664022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850143, 40.299084, 29.352005>,  <32.922970, 40.898663, 29.119751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850143, 40.299084, 29.352005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169682, 40.294384, 29.111437>,  <33.361404, 40.291565, 28.967096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169682, 40.294384, 29.111437>,  <32.850143, 40.299084, 29.352005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169682, 40.294384, 29.111437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531639, -0.453971, 0.715031,
		-0.281429, -0.890939, -0.356407,
		0.798847, -0.011751, -0.601419,
		33.409336, 40.290859, 28.931011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115959, 39.509861, 29.333578>,  <32.850143, 40.299084, 29.352005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115959, 39.509861, 29.333578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422989, 39.756035, 29.261955>,  <33.607208, 39.903740, 29.218981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422989, 39.756035, 29.261955>,  <33.115959, 39.509861, 29.333578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422989, 39.756035, 29.261955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524235, -0.442066, 0.727843,
		0.368788, -0.652543, -0.661954,
		0.767576, 0.615439, -0.179057,
		33.653263, 39.940666, 29.208239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659199, 39.048340, 29.247015>,  <33.115959, 39.509861, 29.333578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659199, 39.048340, 29.247015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837910, 39.393787, 29.340448>,  <33.945137, 39.601055, 29.396509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837910, 39.393787, 29.340448>,  <33.659199, 39.048340, 29.247015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837910, 39.393787, 29.340448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417347, -0.432130, 0.799428,
		0.791338, -0.259676, -0.553491,
		0.446773, 0.863616, 0.233586,
		33.971943, 39.652870, 29.410524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416756, 38.892986, 29.257374>,  <33.659199, 39.048340, 29.247015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416756, 38.892986, 29.257374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373604, 39.240898, 29.449978>,  <34.347713, 39.449646, 29.565540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373604, 39.240898, 29.449978>,  <34.416756, 38.892986, 29.257374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373604, 39.240898, 29.449978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383292, -0.410504, 0.827390,
		0.917306, 0.273817, -0.289093,
		-0.107879, 0.869776, 0.481509,
		34.341240, 39.501831, 29.594431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122803, 39.063904, 29.527288>,  <34.416756, 38.892986, 29.257374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122803, 39.063904, 29.527288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847313, 39.252918, 29.747242>,  <34.682018, 39.366325, 29.879215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847313, 39.252918, 29.747242>,  <35.122803, 39.063904, 29.527288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847313, 39.252918, 29.747242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431916, -0.341761, 0.834655,
		0.582333, 0.812348, 0.031282,
		-0.688721, 0.472536, 0.549885,
		34.640697, 39.394680, 29.912207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760574, 39.354065, 29.360720>,  <35.122803, 39.063904, 29.527288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760574, 39.354065, 29.360720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066135, 39.183163, 29.167267>,  <36.249474, 39.080620, 29.051195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066135, 39.183163, 29.167267>,  <35.760574, 39.354065, 29.360720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066135, 39.183163, 29.167267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583588, -0.137489, -0.800326,
		0.275449, 0.893616, -0.354369,
		0.763906, -0.427255, -0.483632,
		36.295307, 39.054985, 29.022177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636494, 39.695950, 28.717752>,  <35.760574, 39.354065, 29.360720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636494, 39.695950, 28.717752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867722, 39.378601, 28.641434>,  <36.006458, 39.188194, 28.595642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867722, 39.378601, 28.641434>,  <35.636494, 39.695950, 28.717752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867722, 39.378601, 28.641434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456367, -0.120509, -0.881594,
		0.676434, 0.596697, -0.431729,
		0.578071, -0.793367, -0.190796,
		36.041142, 39.140591, 28.584194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938004, 39.905666, 28.066446>,  <35.636494, 39.695950, 28.717752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938004, 39.905666, 28.066446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990875, 39.509804, 28.088776>,  <36.022598, 39.272285, 28.102173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990875, 39.509804, 28.088776>,  <35.938004, 39.905666, 28.066446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990875, 39.509804, 28.088776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344026, -0.098618, -0.933767,
		0.929610, 0.104219, -0.353502,
		0.132178, -0.989653, 0.055822,
		36.030529, 39.212910, 28.105522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355095, 39.758488, 27.481983>,  <35.938004, 39.905666, 28.066446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355095, 39.758488, 27.481983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174446, 39.418686, 27.591066>,  <36.066055, 39.214806, 27.656515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174446, 39.418686, 27.591066>,  <36.355095, 39.758488, 27.481983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174446, 39.418686, 27.591066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262770, -0.165450, -0.950567,
		0.852635, -0.500959, -0.148504,
		-0.451625, -0.849509, 0.272706,
		36.038960, 39.163834, 27.672878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488068, 39.342224, 26.935659>,  <36.355095, 39.758488, 27.481983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488068, 39.342224, 26.935659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210907, 39.124191, 27.124453>,  <36.044609, 38.993370, 27.237728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210907, 39.124191, 27.124453>,  <36.488068, 39.342224, 26.935659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210907, 39.124191, 27.124453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178936, -0.504125, -0.844891,
		0.698475, -0.669883, 0.251775,
		-0.692904, -0.545083, 0.471985,
		36.003036, 38.960667, 27.266048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620682, 38.633881, 26.720390>,  <36.488068, 39.342224, 26.935659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620682, 38.633881, 26.720390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249104, 38.703400, 26.851147>,  <36.026157, 38.745110, 26.929602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249104, 38.703400, 26.851147>,  <36.620682, 38.633881, 26.720390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249104, 38.703400, 26.851147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358392, -0.200736, -0.911735,
		-0.092834, -0.964106, 0.248759,
		-0.928944, 0.173793, 0.326892,
		35.970421, 38.755539, 26.949215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213974, 38.060959, 26.502962>,  <36.620682, 38.633881, 26.720390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213974, 38.060959, 26.502962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947792, 38.355087, 26.554300>,  <35.788082, 38.531563, 26.585104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947792, 38.355087, 26.554300>,  <36.213974, 38.060959, 26.502962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947792, 38.355087, 26.554300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307656, -0.113535, -0.944700,
		-0.680083, -0.668145, 0.301778,
		-0.665459, 0.735318, 0.128345,
		35.748154, 38.575684, 26.592804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583851, 37.831707, 26.159441>,  <36.213974, 38.060959, 26.502962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583851, 37.831707, 26.159441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487904, 38.219086, 26.186504>,  <35.430336, 38.451511, 26.202742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487904, 38.219086, 26.186504>,  <35.583851, 37.831707, 26.159441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487904, 38.219086, 26.186504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519005, -0.069027, -0.851979,
		-0.820425, -0.239476, 0.519185,
		-0.239867, 0.968446, 0.067658,
		35.415943, 38.509621, 26.206802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876282, 37.872437, 26.042139>,  <35.583851, 37.831707, 26.159441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876282, 37.872437, 26.042139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987408, 38.248779, 25.964575>,  <35.054085, 38.474586, 25.918036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987408, 38.248779, 25.964575>,  <34.876282, 37.872437, 26.042139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987408, 38.248779, 25.964575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379412, -0.077980, -0.921936,
		-0.882534, 0.329699, 0.335309,
		0.277814, 0.940860, -0.193912,
		35.070751, 38.531036, 25.906401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377697, 38.143845, 25.666986>,  <34.876282, 37.872437, 26.042139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377697, 38.143845, 25.666986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689156, 38.383327, 25.591867>,  <34.876030, 38.527016, 25.546797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689156, 38.383327, 25.591867>,  <34.377697, 38.143845, 25.666986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689156, 38.383327, 25.591867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175450, -0.079612, -0.981264,
		-0.602438, 0.797004, 0.043054,
		0.778643, 0.598705, -0.187795,
		34.922749, 38.562939, 25.535528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072666, 38.594139, 25.170923>,  <34.377697, 38.143845, 25.666986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072666, 38.594139, 25.170923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466076, 38.646664, 25.121235>,  <34.702122, 38.678177, 25.091423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466076, 38.646664, 25.121235>,  <34.072666, 38.594139, 25.170923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466076, 38.646664, 25.121235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140845, 0.125988, -0.981983,
		-0.113295, 0.983303, 0.142407,
		0.983528, 0.131312, -0.124220,
		34.761135, 38.686058, 25.083969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160706, 39.193047, 24.752895>,  <34.072666, 38.594139, 25.170923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160706, 39.193047, 24.752895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507851, 39.001690, 24.699301>,  <34.716137, 38.886875, 24.667143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507851, 39.001690, 24.699301>,  <34.160706, 39.193047, 24.752895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507851, 39.001690, 24.699301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000384, 0.269055, -0.963125,
		0.496799, 0.835914, 0.233320,
		0.867866, -0.478390, -0.133987,
		34.768211, 38.858173, 24.659105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507385, 39.784054, 24.440567>,  <34.160706, 39.193047, 24.752895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507385, 39.784054, 24.440567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723896, 39.454620, 24.372770>,  <34.853802, 39.256958, 24.332092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723896, 39.454620, 24.372770>,  <34.507385, 39.784054, 24.440567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723896, 39.454620, 24.372770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237479, 0.343101, -0.908783,
		0.806615, 0.451647, 0.381295,
		0.541272, -0.823587, -0.169494,
		34.886276, 39.207542, 24.321922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218620, 39.935966, 24.209003>,  <34.507385, 39.784054, 24.440567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218620, 39.935966, 24.209003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128468, 39.579792, 24.050848>,  <35.074375, 39.366089, 23.955956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128468, 39.579792, 24.050848>,  <35.218620, 39.935966, 24.209003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128468, 39.579792, 24.050848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078717, 0.421147, -0.903570,
		0.971086, -0.172523, -0.165011,
		-0.225380, -0.890433, -0.395389,
		35.060852, 39.312660, 23.932232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.752390, 33.631523, 23.714344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.856867, 33.938442, 23.948622>,  <30.919552, 34.122593, 24.089190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.856867, 33.938442, 23.948622>,  <30.752390, 33.631523, 23.714344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856867, 33.938442, 23.948622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691878, -0.571916, 0.440700,
		0.673115, 0.290123, -0.680253,
		0.261191, 0.767294, 0.585695,
		30.935225, 34.168629, 24.124331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438766, 33.459976, 23.804491>,  <30.752390, 33.631523, 23.714344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438766, 33.459976, 23.804491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.348953, 33.727234, 24.088228>,  <31.295065, 33.887589, 24.258471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.348953, 33.727234, 24.088228>,  <31.438766, 33.459976, 23.804491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348953, 33.727234, 24.088228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488411, -0.552735, 0.675232,
		0.843231, 0.498063, -0.202222,
		-0.224533, 0.668144, 0.709343,
		31.281593, 33.927677, 24.301031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092026, 33.699783, 24.062035>,  <31.438766, 33.459976, 23.804491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092026, 33.699783, 24.062035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.808590, 33.746815, 24.340338>,  <31.638529, 33.775032, 24.507318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.808590, 33.746815, 24.340338>,  <32.092026, 33.699783, 24.062035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808590, 33.746815, 24.340338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605688, -0.404499, 0.685217,
		0.361999, 0.906949, 0.215408,
		-0.708589, 0.117578, 0.695756,
		31.596014, 33.782089, 24.549065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382298, 33.955070, 24.598206>,  <32.092026, 33.699783, 24.062035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382298, 33.955070, 24.598206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.058170, 33.795830, 24.770205>,  <31.863693, 33.700283, 24.873404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.058170, 33.795830, 24.770205>,  <32.382298, 33.955070, 24.598206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058170, 33.795830, 24.770205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475571, -0.018047, 0.879492,
		-0.342371, 0.917162, 0.203952,
		-0.810317, -0.398106, 0.429997,
		31.815075, 33.676399, 24.899204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309078, 34.332886, 25.237658>,  <32.382298, 33.955070, 24.598206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309078, 34.332886, 25.237658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.118092, 33.983837, 25.278749>,  <32.003498, 33.774406, 25.303404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.118092, 33.983837, 25.278749>,  <32.309078, 34.332886, 25.237658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118092, 33.983837, 25.278749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217997, -0.004388, 0.975940,
		-0.851175, 0.488378, 0.192324,
		-0.477471, -0.872621, 0.102730,
		31.974850, 33.722050, 25.309568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036045, 34.441330, 25.800631>,  <32.309078, 34.332886, 25.237658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036045, 34.441330, 25.800631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.009392, 34.044228, 25.760643>,  <31.993401, 33.805965, 25.736650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.009392, 34.044228, 25.760643>,  <32.036045, 34.441330, 25.800631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009392, 34.044228, 25.760643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132067, -0.108084, 0.985331,
		-0.988999, 0.052450, 0.138312,
		-0.066630, -0.992757, -0.099968,
		31.989403, 33.746399, 25.730652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570869, 34.278622, 26.350019>,  <32.036045, 34.441330, 25.800631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570869, 34.278622, 26.350019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.735071, 33.924778, 26.261518>,  <31.833591, 33.712471, 26.208418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.735071, 33.924778, 26.261518>,  <31.570869, 34.278622, 26.350019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735071, 33.924778, 26.261518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227203, -0.135760, 0.964338,
		-0.883101, -0.446132, 0.145256,
		0.410502, -0.884610, -0.221252,
		31.858221, 33.659393, 26.195143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481277, 33.918312, 26.917854>,  <31.570869, 34.278622, 26.350019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481277, 33.918312, 26.917854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.781610, 33.733341, 26.729216>,  <31.961811, 33.622356, 26.616032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.781610, 33.733341, 26.729216>,  <31.481277, 33.918312, 26.917854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781610, 33.733341, 26.729216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418021, -0.220110, 0.881368,
		-0.511377, -0.858899, 0.028040,
		0.750834, -0.462432, -0.471598,
		32.006863, 33.594612, 26.587736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559109, 33.246994, 27.215965>,  <31.481277, 33.918312, 26.917854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559109, 33.246994, 27.215965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.923096, 33.299709, 27.058691>,  <32.141487, 33.331341, 26.964327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.923096, 33.299709, 27.058691>,  <31.559109, 33.246994, 27.215965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923096, 33.299709, 27.058691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412878, -0.199559, 0.888655,
		0.038656, -0.970982, -0.236007,
		0.909966, 0.131794, -0.393183,
		32.196087, 33.339249, 26.940737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979073, 32.751831, 27.481173>,  <31.559109, 33.246994, 27.215965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979073, 32.751831, 27.481173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.271416, 32.981125, 27.332987>,  <32.446823, 33.118702, 27.244076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.271416, 32.981125, 27.332987>,  <31.979073, 32.751831, 27.481173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271416, 32.981125, 27.332987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602604, -0.287075, 0.744618,
		0.320492, -0.767454, -0.555247,
		0.730858, 0.573238, -0.370466,
		32.490673, 33.153095, 27.221848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589447, 32.392338, 27.448967>,  <31.979073, 32.751831, 27.481173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589447, 32.392338, 27.448967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.731056, 32.766064, 27.465582>,  <32.816021, 32.990299, 27.475552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.731056, 32.766064, 27.465582>,  <32.589447, 32.392338, 27.448967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731056, 32.766064, 27.465582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687754, -0.290182, 0.665424,
		0.633768, -0.207007, -0.745309,
		0.354023, 0.934314, 0.041538,
		32.837261, 33.046356, 27.478043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339607, 32.364250, 27.218861>,  <32.589447, 32.392338, 27.448967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339607, 32.364250, 27.218861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.268333, 32.681816, 27.451395>,  <33.225567, 32.872356, 27.590916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.268333, 32.681816, 27.451395>,  <33.339607, 32.364250, 27.218861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268333, 32.681816, 27.451395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680084, -0.327610, 0.655864,
		0.711150, 0.512225, -0.481552,
		-0.178189, 0.793913, 0.581336,
		33.214878, 32.919991, 27.625795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063400, 32.672367, 27.408651>,  <33.339607, 32.364250, 27.218861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063400, 32.672367, 27.408651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.805180, 32.785858, 27.692274>,  <33.650246, 32.853954, 27.862448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.805180, 32.785858, 27.692274>,  <34.063400, 32.672367, 27.408651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805180, 32.785858, 27.692274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701797, -0.145822, 0.697292,
		0.301238, 0.947752, -0.104984,
		-0.645551, 0.283728, 0.709057,
		33.611515, 32.870975, 27.904991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391823, 33.151646, 27.862185>,  <34.063400, 32.672367, 27.408651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391823, 33.151646, 27.862185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.079552, 33.072723, 28.099371>,  <33.892189, 33.025368, 28.241682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.079552, 33.072723, 28.099371>,  <34.391823, 33.151646, 27.862185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079552, 33.072723, 28.099371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592899, 0.066035, 0.802565,
		-0.197509, 0.978115, 0.065432,
		-0.780680, -0.197308, 0.592966,
		33.845348, 33.013531, 28.277260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904758, 33.863667, 27.737518>,  <34.391823, 33.151646, 27.862185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904758, 33.863667, 27.737518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.247723, 33.831032, 27.534267>,  <35.453503, 33.811451, 27.412317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.247723, 33.831032, 27.534267>,  <34.904758, 33.863667, 27.737518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247723, 33.831032, 27.534267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425774, 0.442148, -0.789444,
		0.289076, 0.893224, 0.344363,
		0.857410, -0.081589, -0.508126,
		35.504944, 33.806557, 27.381830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880611, 34.489380, 27.390722>,  <34.904758, 33.863667, 27.737518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880611, 34.489380, 27.390722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.140450, 34.253269, 27.199057>,  <35.296352, 34.111603, 27.084057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.140450, 34.253269, 27.199057>,  <34.880611, 34.489380, 27.390722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140450, 34.253269, 27.199057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429466, 0.235168, -0.871926,
		0.627361, 0.772185, -0.100739,
		0.649598, -0.590276, -0.479163,
		35.335327, 34.076187, 27.055307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199226, 34.932457, 26.931646>,  <34.880611, 34.489380, 27.390722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199226, 34.932457, 26.931646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.217632, 34.550316, 26.814896>,  <35.228676, 34.321033, 26.744844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.217632, 34.550316, 26.814896>,  <35.199226, 34.932457, 26.931646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217632, 34.550316, 26.814896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379361, 0.253585, -0.889820,
		0.924104, 0.151672, -0.350753,
		0.046016, -0.955348, -0.291877,
		35.231438, 34.263710, 26.727333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768005, 34.931889, 26.379520>,  <35.199226, 34.932457, 26.931646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768005, 34.931889, 26.379520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.546158, 34.607559, 26.304720>,  <35.413052, 34.412960, 26.259840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.546158, 34.607559, 26.304720>,  <35.768005, 34.931889, 26.379520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546158, 34.607559, 26.304720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290735, 0.399390, -0.869460,
		0.779664, -0.427848, -0.457242,
		-0.554615, -0.810823, -0.186999,
		35.379772, 34.364311, 26.248621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922787, 34.738754, 25.616335>,  <35.768005, 34.931889, 26.379520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922787, 34.738754, 25.616335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.580494, 34.563801, 25.726908>,  <35.375118, 34.458828, 25.793251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.580494, 34.563801, 25.726908>,  <35.922787, 34.738754, 25.616335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580494, 34.563801, 25.726908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365188, 0.132066, -0.921518,
		0.366551, -0.889524, -0.272742,
		-0.855732, -0.437386, 0.276434,
		35.323772, 34.432587, 25.809837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725075, 34.283657, 25.070423>,  <35.922787, 34.738754, 25.616335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725075, 34.283657, 25.070423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.391277, 34.370510, 25.272997>,  <35.190998, 34.422623, 25.394541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.391277, 34.370510, 25.272997>,  <35.725075, 34.283657, 25.070423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391277, 34.370510, 25.272997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412664, 0.362784, -0.835521,
		-0.365150, -0.906222, -0.213135,
		-0.834490, 0.217137, 0.506436,
		35.140930, 34.435650, 25.424929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159603, 33.932652, 24.653131>,  <35.725075, 34.283657, 25.070423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159603, 33.932652, 24.653131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.012596, 34.216930, 24.893080>,  <34.924393, 34.387497, 25.037048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.012596, 34.216930, 24.893080>,  <35.159603, 33.932652, 24.653131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012596, 34.216930, 24.893080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670814, 0.244179, -0.700275,
		-0.644156, -0.659767, 0.387002,
		-0.367520, 0.710693, 0.599870,
		34.902340, 34.430138, 25.073040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409962, 33.826572, 24.612888>,  <35.159603, 33.932652, 24.653131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409962, 33.826572, 24.612888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.472618, 34.209438, 24.710297>,  <34.510212, 34.439156, 24.768742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.472618, 34.209438, 24.710297>,  <34.409962, 33.826572, 24.612888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472618, 34.209438, 24.710297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742635, 0.276695, -0.609863,
		-0.651119, -0.085318, 0.754165,
		0.156641, 0.957163, 0.243522,
		34.519611, 34.496586, 24.783354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811638, 34.031086, 24.824360>,  <34.409962, 33.826572, 24.612888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811638, 34.031086, 24.824360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.993805, 34.371017, 24.718245>,  <34.103107, 34.574978, 24.654575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.993805, 34.371017, 24.718245>,  <33.811638, 34.031086, 24.824360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993805, 34.371017, 24.718245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809849, 0.271688, -0.519932,
		-0.369780, 0.451631, 0.811968,
		0.455420, 0.849832, -0.265288,
		34.130432, 34.625969, 24.638659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206581, 34.564362, 24.777369>,  <33.811638, 34.031086, 24.824360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206581, 34.564362, 24.777369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.533916, 34.710079, 24.599552>,  <33.730316, 34.797508, 24.492863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.533916, 34.710079, 24.599552>,  <33.206581, 34.564362, 24.777369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533916, 34.710079, 24.599552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574639, 0.504215, -0.644637,
		-0.010691, 0.782981, 0.621953,
		0.818337, 0.364290, -0.444541,
		33.779419, 34.819366, 24.466190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119743, 35.282669, 24.689234>,  <33.206581, 34.564362, 24.777369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119743, 35.282669, 24.689234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.379684, 35.129269, 24.426746>,  <33.535648, 35.037228, 24.269255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.379684, 35.129269, 24.426746>,  <33.119743, 35.282669, 24.689234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379684, 35.129269, 24.426746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425316, 0.532061, -0.732132,
		0.629922, 0.754876, 0.182650,
		0.649850, -0.383502, -0.656217,
		33.574638, 35.014217, 24.229881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220985, 35.867306, 24.203333>,  <33.119743, 35.282669, 24.689234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220985, 35.867306, 24.203333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.325027, 35.517826, 24.038895>,  <33.387455, 35.308140, 23.940231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.325027, 35.517826, 24.038895>,  <33.220985, 35.867306, 24.203333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325027, 35.517826, 24.038895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357161, 0.308498, -0.881626,
		0.897095, 0.376145, -0.231807,
		0.260108, -0.873695, -0.411097,
		33.403061, 35.255718, 23.915565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698383, 36.040192, 23.609238>,  <33.220985, 35.867306, 24.203333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698383, 36.040192, 23.609238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.548019, 35.677189, 23.534285>,  <33.457802, 35.459385, 23.489313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.548019, 35.677189, 23.534285>,  <33.698383, 36.040192, 23.609238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548019, 35.677189, 23.534285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424686, 0.348452, -0.835597,
		0.823608, -0.234532, -0.516395,
		-0.375913, -0.907511, -0.187385,
		33.435246, 35.404934, 23.478069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980663, 36.034428, 22.984425>,  <33.698383, 36.040192, 23.609238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980663, 36.034428, 22.984425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.694942, 35.757484, 23.025249>,  <33.523510, 35.591320, 23.049744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.694942, 35.757484, 23.025249>,  <33.980663, 36.034428, 22.984425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694942, 35.757484, 23.025249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462640, 0.357729, -0.811169,
		0.525108, -0.626636, -0.575838,
		-0.714301, -0.692357, 0.102060,
		33.480652, 35.549778, 23.055868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643616, 35.703926, 22.651514>,  <33.980663, 36.034428, 22.984425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643616, 35.703926, 22.651514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.897934, 35.908833, 22.420568>,  <35.050526, 36.031776, 22.282001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.897934, 35.908833, 22.420568>,  <34.643616, 35.703926, 22.651514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897934, 35.908833, 22.420568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728391, -0.150726, 0.668378,
		0.255361, -0.845499, -0.468959,
		0.635797, 0.512263, -0.577365,
		35.088673, 36.062511, 22.247358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235809, 35.279060, 22.585794>,  <34.643616, 35.703926, 22.651514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235809, 35.279060, 22.585794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.335587, 35.663200, 22.536001>,  <35.395454, 35.893684, 22.506124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.335587, 35.663200, 22.536001>,  <35.235809, 35.279060, 22.585794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335587, 35.663200, 22.536001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750115, -0.110317, 0.652041,
		0.612458, -0.256027, -0.747894,
		0.249445, 0.960354, -0.124485,
		35.410419, 35.951305, 22.498655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959450, 35.203552, 22.576784>,  <35.235809, 35.279060, 22.585794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959450, 35.203552, 22.576784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.873901, 35.587276, 22.650518>,  <35.822571, 35.817513, 22.694759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.873901, 35.587276, 22.650518>,  <35.959450, 35.203552, 22.576784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873901, 35.587276, 22.650518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760612, 0.045126, 0.647636,
		0.612966, 0.278721, -0.739315,
		-0.213873, 0.959311, 0.184338,
		35.809738, 35.875069, 22.705820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616062, 35.525940, 22.573431>,  <35.959450, 35.203552, 22.576784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616062, 35.525940, 22.573431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.360104, 35.758484, 22.774446>,  <36.206528, 35.898010, 22.895056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.360104, 35.758484, 22.774446>,  <36.616062, 35.525940, 22.573431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360104, 35.758484, 22.774446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666617, 0.094613, 0.739372,
		0.382295, 0.808126, -0.448088,
		-0.639900, 0.581361, 0.502540,
		36.168133, 35.932892, 22.925209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086460, 35.860386, 22.970833>,  <36.616062, 35.525940, 22.573431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086460, 35.860386, 22.970833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.734585, 35.953144, 23.136906>,  <36.523460, 36.008801, 23.236549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.734585, 35.953144, 23.136906>,  <37.086460, 35.860386, 22.970833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734585, 35.953144, 23.136906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437932, 0.054685, 0.897344,
		0.185387, 0.971202, -0.149661,
		-0.879686, 0.231898, 0.415182,
		36.470680, 36.022713, 23.261459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210609, 36.428040, 23.349642>,  <37.086460, 35.860386, 22.970833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210609, 36.428040, 23.349642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.876244, 36.295540, 23.524694>,  <36.675625, 36.216042, 23.629726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.876244, 36.295540, 23.524694>,  <37.210609, 36.428040, 23.349642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876244, 36.295540, 23.524694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375107, 0.237293, 0.896095,
		-0.400679, 0.913217, -0.074102,
		-0.835914, -0.331250, 0.437632,
		36.625469, 36.196163, 23.655985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201309, 36.844887, 23.820372>,  <37.210609, 36.428040, 23.349642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201309, 36.844887, 23.820372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.990368, 36.515957, 23.905859>,  <36.863804, 36.318600, 23.957151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.990368, 36.515957, 23.905859>,  <37.201309, 36.844887, 23.820372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990368, 36.515957, 23.905859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316696, 0.043169, 0.947544,
		-0.788419, 0.567373, 0.237663,
		-0.527351, -0.822329, 0.213720,
		36.832161, 36.269257, 23.969975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944813, 36.997028, 24.488194>,  <37.201309, 36.844887, 23.820372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944813, 36.997028, 24.488194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.917057, 36.598412, 24.469898>,  <36.900406, 36.359241, 24.458921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.917057, 36.598412, 24.469898>,  <36.944813, 36.997028, 24.488194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917057, 36.598412, 24.469898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414154, -0.070488, 0.907473,
		-0.907558, 0.044025, 0.417613,
		-0.069388, -0.996540, -0.045739,
		36.896240, 36.299450, 24.456177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570324, 36.742947, 25.099131>,  <36.944813, 36.997028, 24.488194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570324, 36.742947, 25.099131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.783745, 36.430367, 24.969730>,  <36.911797, 36.242817, 24.892090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.783745, 36.430367, 24.969730>,  <36.570324, 36.742947, 25.099131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783745, 36.430367, 24.969730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450587, -0.061052, 0.890643,
		-0.715743, -0.620973, 0.319537,
		0.533557, -0.781451, -0.323500,
		36.943813, 36.195930, 24.872681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555134, 36.178764, 25.582060>,  <36.570324, 36.742947, 25.099131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555134, 36.178764, 25.582060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.892715, 36.110069, 25.378788>,  <37.095264, 36.068851, 25.256824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.892715, 36.110069, 25.378788>,  <36.555134, 36.178764, 25.582060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892715, 36.110069, 25.378788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456206, -0.268534, 0.848390,
		-0.282171, -0.947836, -0.148279,
		0.843952, -0.171745, -0.508181,
		37.145901, 36.058548, 25.226334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823780, 35.851604, 26.066210>,  <36.555134, 36.178764, 25.582060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823780, 35.851604, 26.066210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.113739, 35.905411, 25.795971>,  <37.287712, 35.937695, 25.633827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.113739, 35.905411, 25.795971>,  <36.823780, 35.851604, 26.066210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113739, 35.905411, 25.795971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674717, -0.336352, 0.656981,
		-0.138866, -0.932080, -0.334578,
		0.724895, 0.134513, -0.675599,
		37.331207, 35.945763, 25.593290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218102, 35.219566, 25.916628>,  <36.823780, 35.851604, 26.066210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218102, 35.219566, 25.916628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.436035, 35.549992, 25.858974>,  <37.566795, 35.748245, 25.824383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.436035, 35.549992, 25.858974>,  <37.218102, 35.219566, 25.916628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436035, 35.549992, 25.858974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659352, -0.315832, 0.682279,
		0.518083, -0.466765, -0.716743,
		0.544835, 0.826063, -0.144135,
		37.599487, 35.797810, 25.815735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854233, 34.933746, 25.937851>,  <37.218102, 35.219566, 25.916628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854233, 34.933746, 25.937851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.913349, 35.325089, 25.995781>,  <37.948818, 35.559895, 26.030539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.913349, 35.325089, 25.995781>,  <37.854233, 34.933746, 25.937851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913349, 35.325089, 25.995781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720597, -0.206820, 0.661789,
		0.677419, 0.006554, -0.735568,
		0.147793, 0.978357, 0.144827,
		37.957687, 35.618595, 26.039228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621086, 34.991352, 25.893686>,  <37.854233, 34.933746, 25.937851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621086, 34.991352, 25.893686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478088, 35.313377, 26.083027>,  <38.392288, 35.506592, 26.196632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478088, 35.313377, 26.083027>,  <38.621086, 34.991352, 25.893686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478088, 35.313377, 26.083027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805630, 0.009467, 0.592343,
		0.472395, 0.593107, -0.651971,
		-0.357495, 0.805068, 0.473353,
		38.370838, 35.554897, 26.225033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.604675, 39.845066, 23.550653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.342415, 39.543415, 23.535652>,  <35.185059, 39.362423, 23.526651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.342415, 39.543415, 23.535652>,  <35.604675, 39.845066, 23.550653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342415, 39.543415, 23.535652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088153, 0.125781, -0.988134,
		0.749897, -0.644569, -0.148948,
		-0.655655, -0.754128, -0.037502,
		35.145718, 39.317177, 23.524401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865810, 39.344128, 23.011669>,  <35.604675, 39.845066, 23.550653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865810, 39.344128, 23.011669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.476246, 39.266132, 23.058109>,  <35.242508, 39.219337, 23.085974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.476246, 39.266132, 23.058109>,  <35.865810, 39.344128, 23.011669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476246, 39.266132, 23.058109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105667, -0.063114, -0.992397,
		0.200830, -0.978774, 0.040864,
		-0.973911, -0.194985, 0.116099,
		35.184074, 39.207638, 23.092939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712158, 38.875294, 22.544226>,  <35.865810, 39.344128, 23.011669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712158, 38.875294, 22.544226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.357948, 39.048092, 22.612604>,  <35.145420, 39.151772, 22.653631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.357948, 39.048092, 22.612604>,  <35.712158, 38.875294, 22.544226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357948, 39.048092, 22.612604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158227, 0.065521, -0.985227,
		-0.436810, -0.899494, 0.010332,
		-0.885529, 0.431992, 0.170945,
		35.092289, 39.177689, 22.663887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247986, 38.537426, 22.119932>,  <35.712158, 38.875294, 22.544226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247986, 38.537426, 22.119932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.052971, 38.871895, 22.220427>,  <34.935963, 39.072575, 22.280724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.052971, 38.871895, 22.220427>,  <35.247986, 38.537426, 22.119932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052971, 38.871895, 22.220427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379221, 0.056391, -0.923586,
		-0.786445, -0.545559, 0.289602,
		-0.487540, 0.836173, 0.251236,
		34.906708, 39.122746, 22.295797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563980, 38.475773, 21.917429>,  <35.247986, 38.537426, 22.119932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563980, 38.475773, 21.917429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.606117, 38.873390, 21.928595>,  <34.631401, 39.111961, 21.935295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.606117, 38.873390, 21.928595>,  <34.563980, 38.475773, 21.917429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606117, 38.873390, 21.928595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413637, 0.069329, -0.907798,
		-0.904326, 0.084086, 0.418477,
		0.105346, 0.994044, 0.027915,
		34.637722, 39.171604, 21.936970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959911, 38.676617, 21.617386>,  <34.563980, 38.475773, 21.917429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959911, 38.676617, 21.617386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190319, 39.003422, 21.606848>,  <34.328564, 39.199505, 21.600525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190319, 39.003422, 21.606848>,  <33.959911, 38.676617, 21.617386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190319, 39.003422, 21.606848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429633, 0.275172, -0.860056,
		-0.695425, 0.506728, 0.509519,
		0.576020, 0.817011, -0.026345,
		34.363125, 39.248524, 21.598944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504272, 39.224625, 21.781277>,  <33.959911, 38.676617, 21.617386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504272, 39.224625, 21.781277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.818005, 39.329784, 21.556528>,  <34.006245, 39.392879, 21.421679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.818005, 39.329784, 21.556528>,  <33.504272, 39.224625, 21.781277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818005, 39.329784, 21.556528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618366, 0.403530, -0.674380,
		0.049437, 0.876382, 0.479072,
		0.784334, 0.262902, -0.561874,
		34.053307, 39.408653, 21.387966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237408, 39.909939, 21.491634>,  <33.504272, 39.224625, 21.781277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237408, 39.909939, 21.491634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.542141, 39.812069, 21.251717>,  <33.724979, 39.753345, 21.107767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.542141, 39.812069, 21.251717>,  <33.237408, 39.909939, 21.491634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542141, 39.812069, 21.251717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312806, 0.671860, -0.671384,
		0.567247, 0.699099, 0.435306,
		0.761829, -0.244674, -0.599793,
		33.770691, 39.738667, 21.071779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470573, 40.508636, 21.133554>,  <33.237408, 39.909939, 21.491634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470573, 40.508636, 21.133554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.633823, 40.234882, 20.891876>,  <33.731773, 40.070629, 20.746870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.633823, 40.234882, 20.891876>,  <33.470573, 40.508636, 21.133554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633823, 40.234882, 20.891876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136704, 0.608546, -0.781654,
		0.902631, 0.401611, 0.154808,
		0.408129, -0.684383, -0.604194,
		33.756264, 40.029568, 20.710617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939930, 40.920433, 20.569275>,  <33.470573, 40.508636, 21.133554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939930, 40.920433, 20.569275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.795456, 40.561581, 20.467535>,  <33.708771, 40.346268, 20.406490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.795456, 40.561581, 20.467535>,  <33.939930, 40.920433, 20.569275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795456, 40.561581, 20.467535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301655, 0.370510, -0.878480,
		0.882353, -0.240570, -0.404449,
		-0.361188, -0.897133, -0.254352,
		33.687099, 40.292442, 20.391230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080173, 40.876255, 19.916916>,  <33.939930, 40.920433, 20.569275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080173, 40.876255, 19.916916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.783619, 40.614349, 19.975744>,  <33.605686, 40.457207, 20.011042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.783619, 40.614349, 19.975744>,  <34.080173, 40.876255, 19.916916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783619, 40.614349, 19.975744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417596, 0.278573, -0.864876,
		0.525319, -0.702624, -0.479957,
		-0.741386, -0.654764, 0.147073,
		33.561203, 40.417919, 20.019867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938042, 40.617039, 19.282261>,  <34.080173, 40.876255, 19.916916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938042, 40.617039, 19.282261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.605808, 40.492451, 19.466923>,  <33.406467, 40.417698, 19.577719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.605808, 40.492451, 19.466923>,  <33.938042, 40.617039, 19.282261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605808, 40.492451, 19.466923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545010, 0.284247, -0.788776,
		0.114455, -0.906748, -0.405843,
		-0.830581, -0.311468, 0.461653,
		33.356632, 40.399010, 19.605419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500397, 40.012783, 18.993656>,  <33.938042, 40.617039, 19.282261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500397, 40.012783, 18.993656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271664, 40.264713, 19.203920>,  <33.134422, 40.415871, 19.330078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271664, 40.264713, 19.203920>,  <33.500397, 40.012783, 18.993656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271664, 40.264713, 19.203920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378716, 0.365727, -0.850187,
		-0.727721, -0.685243, 0.029392,
		-0.571835, 0.629830, 0.525660,
		33.100113, 40.453663, 19.361618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091156, 40.138622, 18.504793>,  <33.500397, 40.012783, 18.993656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091156, 40.138622, 18.504793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025703, 40.417175, 18.784300>,  <32.986431, 40.584309, 18.952003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025703, 40.417175, 18.784300>,  <33.091156, 40.138622, 18.504793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025703, 40.417175, 18.784300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285146, 0.644692, -0.709270,
		-0.944414, -0.315306, 0.093083,
		-0.163627, 0.696387, 0.698764,
		32.976616, 40.626091, 18.993929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696880, 39.529793, 18.828190>,  <33.091156, 40.138622, 18.504793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696880, 39.529793, 18.828190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.442703, 39.234688, 18.737055>,  <32.290195, 39.057625, 18.682373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.442703, 39.234688, 18.737055>,  <32.696880, 39.529793, 18.828190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442703, 39.234688, 18.737055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704632, -0.674731, 0.219619,
		-0.315757, -0.020987, 0.948608,
		-0.635446, -0.737765, -0.227840,
		32.252068, 39.013359, 18.668703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587479, 39.089386, 19.421957>,  <32.696880, 39.529793, 18.828190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587479, 39.089386, 19.421957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.515068, 38.863937, 19.099575>,  <32.471622, 38.728668, 18.906145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.515068, 38.863937, 19.099575>,  <32.587479, 39.089386, 19.421957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515068, 38.863937, 19.099575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703909, -0.646566, 0.294048,
		-0.686834, -0.514090, 0.513780,
		-0.181025, -0.563617, -0.805956,
		32.460762, 38.694851, 18.857788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550629, 38.416878, 19.556036>,  <32.587479, 39.089386, 19.421957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550629, 38.416878, 19.556036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.584644, 38.345348, 19.163956>,  <32.605053, 38.302429, 18.928707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.584644, 38.345348, 19.163956>,  <32.550629, 38.416878, 19.556036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584644, 38.345348, 19.163956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499195, -0.843743, 0.197238,
		-0.862307, -0.506083, 0.017520,
		0.085036, -0.178826, -0.980199,
		32.610157, 38.291702, 18.869896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245651, 37.722652, 19.262157>,  <32.550629, 38.416878, 19.556036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245651, 37.722652, 19.262157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.544930, 37.834999, 19.021719>,  <32.724499, 37.902409, 18.877457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.544930, 37.834999, 19.021719>,  <32.245651, 37.722652, 19.262157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544930, 37.834999, 19.021719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572241, -0.731670, 0.370403,
		-0.335769, -0.621106, -0.708157,
		0.748197, 0.280867, -0.601094,
		32.769390, 37.919258, 18.841391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577232, 37.122971, 19.265215>,  <32.245651, 37.722652, 19.262157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577232, 37.122971, 19.265215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853615, 37.375656, 19.124636>,  <33.019444, 37.527267, 19.040287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853615, 37.375656, 19.124636>,  <32.577232, 37.122971, 19.265215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853615, 37.375656, 19.124636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719388, -0.648700, 0.248333,
		-0.071111, -0.424417, -0.902670,
		0.690959, 0.631710, -0.351450,
		33.060902, 37.565170, 19.019201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109734, 36.743465, 18.722408>,  <32.577232, 37.122971, 19.265215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109734, 36.743465, 18.722408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271828, 37.073124, 18.880682>,  <33.369083, 37.270920, 18.975647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271828, 37.073124, 18.880682>,  <33.109734, 36.743465, 18.722408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271828, 37.073124, 18.880682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714214, -0.555574, 0.425719,
		0.570687, 0.110086, -0.813755,
		0.405235, 0.824147, 0.395684,
		33.393398, 37.320370, 18.999388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779610, 36.573574, 18.761127>,  <33.109734, 36.743465, 18.722408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779610, 36.573574, 18.761127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.770061, 36.876472, 19.022207>,  <33.764332, 37.058212, 19.178854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.770061, 36.876472, 19.022207>,  <33.779610, 36.573574, 18.761127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770061, 36.876472, 19.022207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728919, -0.433634, 0.529754,
		0.684183, 0.488412, -0.541616,
		-0.023875, 0.757243, 0.652697,
		33.762897, 37.103645, 19.218016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415398, 36.546783, 19.103153>,  <33.779610, 36.573574, 18.761127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415398, 36.546783, 19.103153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.177193, 36.753189, 19.349436>,  <34.034267, 36.877033, 19.497206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.177193, 36.753189, 19.349436>,  <34.415398, 36.546783, 19.103153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177193, 36.753189, 19.349436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519293, -0.337511, 0.785125,
		0.612940, 0.787286, -0.066968,
		-0.595516, 0.516011, 0.615706,
		33.998539, 36.907993, 19.534147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885563, 36.808224, 19.506382>,  <34.415398, 36.546783, 19.103153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885563, 36.808224, 19.506382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.556179, 36.832092, 19.732071>,  <34.358547, 36.846413, 19.867485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.556179, 36.832092, 19.732071>,  <34.885563, 36.808224, 19.506382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556179, 36.832092, 19.732071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511326, -0.352909, 0.783582,
		0.245874, 0.933753, 0.260098,
		-0.823463, 0.059667, 0.564223,
		34.309139, 36.849991, 19.901339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104149, 37.126522, 20.212252>,  <34.885563, 36.808224, 19.506382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104149, 37.126522, 20.212252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.749779, 36.951870, 20.274847>,  <34.537155, 36.847080, 20.312405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.749779, 36.951870, 20.274847>,  <35.104149, 37.126522, 20.212252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749779, 36.951870, 20.274847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272555, -0.217080, 0.937331,
		-0.375298, 0.873058, 0.311322,
		-0.885926, -0.436631, 0.156487,
		34.484001, 36.820881, 20.321793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077755, 37.365658, 20.855780>,  <35.104149, 37.126522, 20.212252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077755, 37.365658, 20.855780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785183, 37.093670, 20.835178>,  <34.609638, 36.930477, 20.822817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785183, 37.093670, 20.835178>,  <35.077755, 37.365658, 20.855780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785183, 37.093670, 20.835178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279668, -0.368007, 0.886768,
		-0.621925, 0.634207, 0.459337,
		-0.731433, -0.679965, -0.051505,
		34.565754, 36.889679, 20.819727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573963, 37.445999, 21.554117>,  <35.077755, 37.365658, 20.855780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573963, 37.445999, 21.554117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.552544, 37.079094, 21.396252>,  <34.539692, 36.858952, 21.301533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.552544, 37.079094, 21.396252>,  <34.573963, 37.445999, 21.554117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552544, 37.079094, 21.396252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223689, -0.396207, 0.890496,
		-0.973188, -0.040594, 0.226400,
		-0.053553, -0.917264, -0.394664,
		34.536476, 36.803913, 21.277853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191242, 37.022572, 22.084946>,  <34.573963, 37.445999, 21.554117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191242, 37.022572, 22.084946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.415329, 36.782917, 21.856144>,  <34.549782, 36.639126, 21.718863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.415329, 36.782917, 21.856144>,  <34.191242, 37.022572, 22.084946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415329, 36.782917, 21.856144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460849, -0.348371, 0.816245,
		-0.688311, -0.720886, 0.080945,
		0.560220, -0.599134, -0.572007,
		34.583397, 36.603176, 21.684542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258835, 36.417183, 22.430029>,  <34.191242, 37.022572, 22.084946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258835, 36.417183, 22.430029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.565136, 36.378777, 22.175657>,  <34.748917, 36.355732, 22.023035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.565136, 36.378777, 22.175657>,  <34.258835, 36.417183, 22.430029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565136, 36.378777, 22.175657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539886, -0.441366, 0.716742,
		-0.349495, -0.892176, -0.286139,
		0.765752, -0.096015, -0.635929,
		34.794861, 36.349972, 21.984879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850616, 35.809502, 22.310261>,  <34.258835, 36.417183, 22.430029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850616, 35.809502, 22.310261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.524460, 35.688076, 22.507437>,  <33.328766, 35.615223, 22.625742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.524460, 35.688076, 22.507437>,  <33.850616, 35.809502, 22.310261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524460, 35.688076, 22.507437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571708, 0.288345, -0.768119,
		0.091034, -0.908135, -0.408661,
		-0.815391, -0.303560, 0.492939,
		33.279842, 35.597008, 22.655319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466595, 35.544258, 21.794003>,  <33.850616, 35.809502, 22.310261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466595, 35.544258, 21.794003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.183636, 35.569328, 22.075615>,  <33.013859, 35.584370, 22.244583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.183636, 35.569328, 22.075615>,  <33.466595, 35.544258, 21.794003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183636, 35.569328, 22.075615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584192, 0.508857, -0.632286,
		-0.397883, -0.858566, -0.323347,
		-0.707396, 0.062679, 0.704032,
		32.971416, 35.588131, 22.286825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850830, 35.219524, 21.559835>,  <33.466595, 35.544258, 21.794003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850830, 35.219524, 21.559835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.708893, 35.447601, 21.856205>,  <32.623730, 35.584446, 22.034027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.708893, 35.447601, 21.856205>,  <32.850830, 35.219524, 21.559835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708893, 35.447601, 21.856205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765738, 0.277441, -0.580235,
		-0.536407, -0.773246, 0.338169,
		-0.354842, 0.570191, 0.740925,
		32.602440, 35.618660, 22.078482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210480, 34.997997, 21.639517>,  <32.850830, 35.219524, 21.559835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210480, 34.997997, 21.639517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.237926, 35.378105, 21.761024>,  <32.254395, 35.606171, 21.833929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.237926, 35.378105, 21.761024>,  <32.210480, 34.997997, 21.639517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237926, 35.378105, 21.761024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815739, 0.228736, -0.531271,
		-0.574335, -0.211341, 0.790870,
		0.068621, 0.950271, 0.303770,
		32.258514, 35.663185, 21.852156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567268, 35.253578, 21.741838>,  <32.210480, 34.997997, 21.639517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567268, 35.253578, 21.741838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.748466, 35.609173, 21.715034>,  <31.857185, 35.822529, 21.698952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.748466, 35.609173, 21.715034>,  <31.567268, 35.253578, 21.741838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748466, 35.609173, 21.715034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757986, 0.344489, -0.553882,
		-0.469311, 0.301699, 0.829894,
		0.452995, 0.888991, -0.067011,
		31.884365, 35.875870, 21.694931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077690, 35.729107, 21.841780>,  <31.567268, 35.253578, 21.741838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077690, 35.729107, 21.841780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.347801, 35.954170, 21.651026>,  <31.509869, 36.089207, 21.536573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.347801, 35.954170, 21.651026>,  <31.077690, 35.729107, 21.841780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347801, 35.954170, 21.651026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733510, 0.579996, -0.354355,
		0.077213, 0.589089, 0.804371,
		0.675278, 0.562654, -0.476886,
		31.550385, 36.122967, 21.507959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993208, 36.439919, 21.980944>,  <31.077690, 35.729107, 21.841780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993208, 36.439919, 21.980944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.197639, 36.430359, 21.637264>,  <31.320299, 36.424622, 21.431057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.197639, 36.430359, 21.637264>,  <30.993208, 36.439919, 21.980944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197639, 36.430359, 21.637264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572847, 0.735777, -0.361218,
		0.640814, 0.676802, 0.362348,
		0.511081, -0.023903, -0.859200,
		31.350964, 36.423187, 21.379505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686306, 36.656796, 22.641943>,  <30.993208, 36.439919, 21.980944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686306, 36.656796, 22.641943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.330530, 36.474014, 22.645794>,  <30.117065, 36.364346, 22.648104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.330530, 36.474014, 22.645794>,  <30.686306, 36.656796, 22.641943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330530, 36.474014, 22.645794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350530, -0.668474, 0.655950,
		-0.293302, 0.586803, 0.754743,
		-0.889439, -0.456952, 0.009628,
		30.063698, 36.336929, 22.648682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594454, 36.562958, 23.298458>,  <30.686306, 36.656796, 22.641943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594454, 36.562958, 23.298458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.306818, 36.325233, 23.154398>,  <30.134237, 36.182598, 23.067963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.306818, 36.325233, 23.154398>,  <30.594454, 36.562958, 23.298458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306818, 36.325233, 23.154398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167224, -0.651023, 0.740409,
		-0.674497, 0.472195, 0.567527,
		-0.719090, -0.594308, -0.360150,
		30.091091, 36.146942, 23.046352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240873, 36.292488, 23.857676>,  <30.594454, 36.562958, 23.298458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240873, 36.292488, 23.857676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.124254, 36.038971, 23.571093>,  <30.054283, 35.886860, 23.399143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.124254, 36.038971, 23.571093>,  <30.240873, 36.292488, 23.857676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124254, 36.038971, 23.571093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229338, -0.773464, 0.590895,
		-0.928657, 0.007962, 0.370853,
		-0.291547, -0.633790, -0.716457,
		30.036791, 35.848835, 23.356155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838112, 35.745773, 24.111013>,  <30.240873, 36.292488, 23.857676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838112, 35.745773, 24.111013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.027925, 35.587856, 23.796320>,  <30.141813, 35.493107, 23.607504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.027925, 35.587856, 23.796320>,  <29.838112, 35.745773, 24.111013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027925, 35.587856, 23.796320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257962, -0.792161, 0.553114,
		-0.841590, -0.465419, -0.274064,
		0.474533, -0.394798, -0.786736,
		30.170286, 35.469418, 23.560299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594538, 35.049656, 24.120003>,  <29.838112, 35.745773, 24.111013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594538, 35.049656, 24.120003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.926491, 35.025852, 23.898102>,  <30.125664, 35.011570, 23.764961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.926491, 35.025852, 23.898102>,  <29.594538, 35.049656, 24.120003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926491, 35.025852, 23.898102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275421, -0.821010, 0.500085,
		-0.485216, -0.567804, -0.664955,
		0.829885, -0.059507, -0.554753,
		30.175457, 35.007999, 23.731676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699961, 34.421978, 24.037903>,  <29.594538, 35.049656, 24.120003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699961, 34.421978, 24.037903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.057631, 34.557327, 23.920631>,  <30.272232, 34.638538, 23.850269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.057631, 34.557327, 23.920631>,  <29.699961, 34.421978, 24.037903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057631, 34.557327, 23.920631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439663, -0.787288, 0.432289,
		-0.084540, -0.515442, -0.852744,
		0.894175, 0.338375, -0.293178,
		30.325884, 34.658840, 23.832678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078362, 33.830246, 24.055212>,  <29.699961, 34.421978, 24.037903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078362, 33.830246, 24.055212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.342993, 34.124226, 23.995659>,  <30.501772, 34.300613, 23.959927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.342993, 34.124226, 23.995659>,  <30.078362, 33.830246, 24.055212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342993, 34.124226, 23.995659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743037, -0.615734, 0.262236,
		0.101058, -0.284115, -0.953449,
		0.661577, 0.734949, -0.148883,
		30.541466, 34.344711, 23.950994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.400908, 39.748833, 21.441654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.762829, 39.678066, 21.286716>,  <30.979980, 39.635605, 21.193754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.762829, 39.678066, 21.286716>,  <30.400908, 39.748833, 21.441654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762829, 39.678066, 21.286716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323004, -0.307606, 0.895012,
		-0.277492, -0.934922, -0.221178,
		0.904802, -0.176918, -0.387341,
		31.034269, 39.624992, 21.170513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612959, 39.147419, 21.701014>,  <30.400908, 39.748833, 21.441654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612959, 39.147419, 21.701014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.969015, 39.295368, 21.594545>,  <31.182648, 39.384136, 21.530664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.969015, 39.295368, 21.594545>,  <30.612959, 39.147419, 21.701014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969015, 39.295368, 21.594545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409903, -0.394735, 0.822292,
		0.199079, -0.841057, -0.502982,
		0.890139, 0.369875, -0.266168,
		31.236057, 39.406330, 21.514694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986147, 38.836143, 22.176903>,  <30.612959, 39.147419, 21.701014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986147, 38.836143, 22.176903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.237492, 39.123497, 22.057520>,  <31.388298, 39.295910, 21.985889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.237492, 39.123497, 22.057520>,  <30.986147, 38.836143, 22.176903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237492, 39.123497, 22.057520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455304, -0.028542, 0.889878,
		0.630760, -0.695057, -0.345020,
		0.628363, 0.718388, -0.298459,
		31.426001, 39.339012, 21.967981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567183, 38.682529, 22.462202>,  <30.986147, 38.836143, 22.176903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567183, 38.682529, 22.462202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.634140, 39.064137, 22.362738>,  <31.674314, 39.293098, 22.303059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.634140, 39.064137, 22.362738>,  <31.567183, 38.682529, 22.462202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634140, 39.064137, 22.362738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477457, 0.142222, 0.867068,
		0.862562, -0.263868, -0.431694,
		0.167395, 0.954016, -0.248661,
		31.684359, 39.350342, 22.288139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209393, 38.811417, 22.775419>,  <31.567183, 38.682529, 22.462202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209393, 38.811417, 22.775419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062168, 39.178059, 22.712976>,  <31.973833, 39.398045, 22.675510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062168, 39.178059, 22.712976>,  <32.209393, 38.811417, 22.775419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062168, 39.178059, 22.712976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322081, 0.283184, 0.903366,
		0.872235, 0.282217, -0.399450,
		-0.368063, 0.916602, -0.156106,
		31.951750, 39.453041, 22.666145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693314, 39.346443, 22.976692>,  <32.209393, 38.811417, 22.775419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693314, 39.346443, 22.976692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.336956, 39.527920, 22.985332>,  <32.123142, 39.636806, 22.990517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.336956, 39.527920, 22.985332>,  <32.693314, 39.346443, 22.976692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336956, 39.527920, 22.985332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160032, 0.269032, 0.949743,
		0.425082, 0.849579, -0.312284,
		-0.890896, 0.453694, 0.021599,
		32.069687, 39.664028, 22.991812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797821, 39.982422, 23.225729>,  <32.693314, 39.346443, 22.976692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797821, 39.982422, 23.225729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.403358, 39.956867, 23.286945>,  <32.166683, 39.941532, 23.323675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.403358, 39.956867, 23.286945>,  <32.797821, 39.982422, 23.225729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403358, 39.956867, 23.286945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110503, 0.434981, 0.893633,
		-0.123665, 0.898170, -0.421897,
		-0.986152, -0.063890, 0.153042,
		32.107513, 39.937698, 23.332857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551651, 40.604351, 23.352180>,  <32.797821, 39.982422, 23.225729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551651, 40.604351, 23.352180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.278969, 40.365543, 23.521339>,  <32.115360, 40.222260, 23.622835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.278969, 40.365543, 23.521339>,  <32.551651, 40.604351, 23.352180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278969, 40.365543, 23.521339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209954, 0.394078, 0.894775,
		-0.700856, 0.698760, -0.143298,
		-0.681704, -0.597023, 0.422900,
		32.074459, 40.186436, 23.648209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075829, 41.095135, 23.699759>,  <32.551651, 40.604351, 23.352180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075829, 41.095135, 23.699759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.962793, 40.749386, 23.866137>,  <31.894974, 40.541939, 23.965963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.962793, 40.749386, 23.866137>,  <32.075829, 41.095135, 23.699759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962793, 40.749386, 23.866137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159317, 0.385305, 0.908932,
		-0.945920, 0.323117, 0.028827,
		-0.282584, -0.864370, 0.415946,
		31.878017, 40.490074, 23.990921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691420, 41.219265, 24.215302>,  <32.075829, 41.095135, 23.699759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691420, 41.219265, 24.215302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.812429, 40.851372, 24.315351>,  <31.885035, 40.630634, 24.375381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.812429, 40.851372, 24.315351>,  <31.691420, 41.219265, 24.215302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812429, 40.851372, 24.315351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173186, 0.311094, 0.934466,
		-0.937276, -0.239381, 0.253399,
		0.302525, -0.919738, 0.250124,
		31.903187, 40.575451, 24.390388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234364, 40.952873, 24.856012>,  <31.691420, 41.219265, 24.215302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234364, 40.952873, 24.856012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.562887, 40.724834, 24.847630>,  <31.760002, 40.588013, 24.842600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.562887, 40.724834, 24.847630>,  <31.234364, 40.952873, 24.856012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562887, 40.724834, 24.847630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037331, 0.017056, 0.999157,
		-0.569258, -0.821401, 0.035291,
		0.821311, -0.570095, -0.020955,
		31.809280, 40.553806, 24.841343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124756, 40.501648, 25.484856>,  <31.234364, 40.952873, 24.856012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124756, 40.501648, 25.484856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.506287, 40.477070, 25.367256>,  <31.735205, 40.462322, 25.296696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.506287, 40.477070, 25.367256>,  <31.124756, 40.501648, 25.484856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506287, 40.477070, 25.367256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295772, 0.021894, 0.955008,
		-0.052244, -0.997870, 0.039057,
		0.953829, -0.061445, -0.293998,
		31.792435, 40.458637, 25.279057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744436, 40.023453, 25.949728>,  <31.124756, 40.501648, 25.484856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744436, 40.023453, 25.949728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.560255, 39.671116, 25.993732>,  <30.449747, 39.459713, 26.020136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.560255, 39.671116, 25.993732>,  <30.744436, 40.023453, 25.949728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560255, 39.671116, 25.993732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641080, 0.244250, -0.727570,
		0.614004, -0.405536, -0.677155,
		-0.460451, -0.880842, 0.110010,
		30.422119, 39.406864, 26.026735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631386, 39.801125, 25.276690>,  <30.744436, 40.023453, 25.949728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631386, 39.801125, 25.276690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.391607, 39.572567, 25.500895>,  <30.247740, 39.435432, 25.635418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.391607, 39.572567, 25.500895>,  <30.631386, 39.801125, 25.276690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391607, 39.572567, 25.500895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743268, 0.137523, -0.654706,
		0.297011, -0.809072, -0.507136,
		-0.599447, -0.571392, 0.560512,
		30.211773, 39.401150, 25.669048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425318, 39.301811, 24.780836>,  <30.631386, 39.801125, 25.276690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425318, 39.301811, 24.780836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.170691, 39.315331, 25.089027>,  <30.017914, 39.323444, 25.273943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.170691, 39.315331, 25.089027>,  <30.425318, 39.301811, 24.780836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170691, 39.315331, 25.089027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769569, -0.093172, -0.631730,
		0.050434, -0.995076, 0.085322,
		-0.636569, 0.033801, 0.770479,
		29.979719, 39.325470, 25.320171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918320, 38.791794, 24.659565>,  <30.425318, 39.301811, 24.780836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918320, 38.791794, 24.659565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.743082, 39.056099, 24.903355>,  <29.637939, 39.214684, 25.049629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.743082, 39.056099, 24.903355>,  <29.918320, 38.791794, 24.659565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743082, 39.056099, 24.903355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762364, 0.086145, -0.641389,
		-0.476312, -0.745631, 0.466005,
		-0.438096, 0.660767, 0.609475,
		29.611652, 39.254330, 25.086197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189913, 38.578594, 24.692892>,  <29.918320, 38.791794, 24.659565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189913, 38.578594, 24.692892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.167877, 38.953083, 24.831720>,  <29.154655, 39.177776, 24.915018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.167877, 38.953083, 24.831720>,  <29.189913, 38.578594, 24.692892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167877, 38.953083, 24.831720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714785, 0.205726, -0.668400,
		-0.697171, -0.284904, 0.657862,
		-0.055091, 0.936219, 0.347072,
		29.151350, 39.233948, 24.935843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406015, 38.663811, 24.902357>,  <29.189913, 38.578594, 24.692892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406015, 38.663811, 24.902357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.584751, 39.016819, 24.843718>,  <28.691994, 39.228622, 24.808535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.584751, 39.016819, 24.843718>,  <28.406015, 38.663811, 24.902357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584751, 39.016819, 24.843718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781401, 0.305229, -0.544286,
		-0.435598, 0.357761, 0.825991,
		0.446841, 0.882521, -0.146598,
		28.718803, 39.281574, 24.799738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930017, 39.290668, 25.143343>,  <28.406015, 38.663811, 24.902357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930017, 39.290668, 25.143343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.194439, 39.378273, 24.856277>,  <28.353092, 39.430836, 24.684038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.194439, 39.378273, 24.856277>,  <27.930017, 39.290668, 25.143343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194439, 39.378273, 24.856277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743629, 0.318866, -0.587658,
		0.100133, 0.922148, 0.373653,
		0.661052, 0.219015, -0.717664,
		28.392756, 39.443977, 24.640978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610069, 39.876225, 24.717909>,  <27.930017, 39.290668, 25.143343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610069, 39.876225, 24.717909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.888508, 39.735584, 24.467524>,  <28.055571, 39.651199, 24.317293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.888508, 39.735584, 24.467524>,  <27.610069, 39.876225, 24.717909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888508, 39.735584, 24.467524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496295, 0.394367, -0.773412,
		0.518788, 0.849032, 0.100022,
		0.696097, -0.351596, -0.625963,
		28.097338, 39.630104, 24.279736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802261, 40.449772, 24.208630>,  <27.610069, 39.876225, 24.717909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802261, 40.449772, 24.208630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.953930, 40.122574, 24.035606>,  <28.044931, 39.926254, 23.931791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.953930, 40.122574, 24.035606>,  <27.802261, 40.449772, 24.208630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953930, 40.122574, 24.035606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429796, 0.258291, -0.865194,
		0.819454, 0.513969, -0.253637,
		0.379171, -0.817999, -0.432559,
		28.067680, 39.877174, 23.905838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946526, 40.630859, 23.477331>,  <27.802261, 40.449772, 24.208630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946526, 40.630859, 23.477331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.949518, 40.231468, 23.499163>,  <27.951313, 39.991833, 23.512260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.949518, 40.231468, 23.499163>,  <27.946526, 40.630859, 23.477331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949518, 40.231468, 23.499163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331383, -0.053971, -0.941952,
		0.943467, -0.011039, -0.331283,
		0.007481, -0.998482, 0.054578,
		27.951763, 39.931923, 23.515535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329132, 40.446857, 22.870836>,  <27.946526, 40.630859, 23.477331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329132, 40.446857, 22.870836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.100016, 40.141827, 22.991091>,  <27.962545, 39.958809, 23.063244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.100016, 40.141827, 22.991091>,  <28.329132, 40.446857, 22.870836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100016, 40.141827, 22.991091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320653, -0.129083, -0.938360,
		0.754383, -0.633882, -0.170587,
		-0.572790, -0.762581, 0.300635,
		27.928179, 39.913052, 23.081282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352785, 39.953278, 22.363255>,  <28.329132, 40.446857, 22.870836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352785, 39.953278, 22.363255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.011772, 39.845295, 22.542280>,  <27.807165, 39.780506, 22.649696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.011772, 39.845295, 22.542280>,  <28.352785, 39.953278, 22.363255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011772, 39.845295, 22.542280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434644, -0.109437, -0.893929,
		0.290303, -0.956633, -0.024037,
		-0.852531, -0.269958, 0.447564,
		27.756012, 39.764309, 22.676550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057180, 39.537010, 21.913877>,  <28.352785, 39.953278, 22.363255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057180, 39.537010, 21.913877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.766268, 39.677116, 22.149973>,  <27.591721, 39.761181, 22.291630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.766268, 39.677116, 22.149973>,  <28.057180, 39.537010, 21.913877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766268, 39.677116, 22.149973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598852, 0.096308, -0.795048,
		-0.335319, -0.931687, 0.139712,
		-0.727280, 0.350262, 0.590237,
		27.548084, 39.782196, 22.327044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808208, 38.890026, 21.934248>,  <28.057180, 39.537010, 21.913877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808208, 38.890026, 21.934248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.863510, 38.702023, 21.585541>,  <27.896692, 38.589222, 21.376316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.863510, 38.702023, 21.585541>,  <27.808208, 38.890026, 21.934248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863510, 38.702023, 21.585541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493339, -0.730561, 0.472119,
		-0.858779, -0.495350, 0.130870,
		0.138255, -0.470010, -0.871766,
		27.904987, 38.561020, 21.324011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548965, 38.190128, 22.062611>,  <27.808208, 38.890026, 21.934248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548965, 38.190128, 22.062611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.826834, 38.204880, 21.775257>,  <27.993555, 38.213730, 21.602846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.826834, 38.204880, 21.775257>,  <27.548965, 38.190128, 22.062611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826834, 38.204880, 21.775257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513313, -0.725048, 0.459146,
		-0.503927, -0.687710, -0.522602,
		0.694671, 0.036882, -0.718382,
		28.035234, 38.215946, 21.559742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665951, 37.518398, 21.877502>,  <27.548965, 38.190128, 22.062611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665951, 37.518398, 21.877502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.990742, 37.715424, 21.752234>,  <28.185616, 37.833637, 21.677073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.990742, 37.715424, 21.752234>,  <27.665951, 37.518398, 21.877502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990742, 37.715424, 21.752234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580561, -0.737028, 0.346033,
		-0.060375, -0.462787, -0.884411,
		0.811975, 0.492563, -0.313174,
		28.234335, 37.863194, 21.658281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012407, 37.049019, 21.483456>,  <27.665951, 37.518398, 21.877502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012407, 37.049019, 21.483456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.277287, 37.328827, 21.590908>,  <28.436214, 37.496712, 21.655380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.277287, 37.328827, 21.590908>,  <28.012407, 37.049019, 21.483456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277287, 37.328827, 21.590908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672910, -0.712864, 0.197529,
		0.329674, 0.049962, -0.942772,
		0.662199, 0.699521, 0.268632,
		28.475946, 37.538685, 21.671497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642466, 36.868038, 21.127703>,  <28.012407, 37.049019, 21.483456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642466, 36.868038, 21.127703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792166, 37.099621, 21.417461>,  <28.881987, 37.238571, 21.591316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792166, 37.099621, 21.417461>,  <28.642466, 36.868038, 21.127703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792166, 37.099621, 21.417461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601146, -0.746264, 0.285857,
		0.706087, 0.328485, -0.627326,
		0.374251, 0.578955, 0.724394,
		28.904442, 37.273308, 21.634779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205763, 36.596622, 21.237768>,  <28.642466, 36.868038, 21.127703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205763, 36.596622, 21.237768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211088, 36.828789, 21.563452>,  <29.214283, 36.968090, 21.758862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211088, 36.828789, 21.563452>,  <29.205763, 36.596622, 21.237768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211088, 36.828789, 21.563452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635096, -0.633849, 0.441462,
		0.772319, 0.511225, -0.377059,
		0.013312, 0.580418, 0.814210,
		29.215082, 37.002914, 21.807714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875860, 36.706676, 21.405560>,  <29.205763, 36.596622, 21.237768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875860, 36.706676, 21.405560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.675928, 36.760094, 21.747866>,  <29.555969, 36.792145, 21.953249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.675928, 36.760094, 21.747866>,  <29.875860, 36.706676, 21.405560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675928, 36.760094, 21.747866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559880, -0.704040, 0.436878,
		0.660835, 0.697491, 0.277133,
		-0.499832, 0.133543, 0.855765,
		29.525978, 36.800156, 22.004595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377960, 36.817650, 21.953611>,  <29.875860, 36.706676, 21.405560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377960, 36.817650, 21.953611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.050858, 36.669178, 22.129566>,  <29.854595, 36.580093, 22.235140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.050858, 36.669178, 22.129566>,  <30.377960, 36.817650, 21.953611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050858, 36.669178, 22.129566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551105, -0.725390, 0.412422,
		0.166007, 0.579684, 0.797752,
		-0.817756, -0.371180, 0.439887,
		29.805531, 36.557823, 22.261532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977383, 37.160877, 21.651232>,  <30.377960, 36.817650, 21.953611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977383, 37.160877, 21.651232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.112726, 36.978210, 21.322119>,  <31.193932, 36.868610, 21.124651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.112726, 36.978210, 21.322119>,  <30.977383, 37.160877, 21.651232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112726, 36.978210, 21.322119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441434, 0.695152, -0.567363,
		0.831054, 0.555175, 0.033622,
		0.338358, -0.456667, -0.822781,
		31.214233, 36.841209, 21.075285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342278, 37.698673, 21.163345>,  <30.977383, 37.160877, 21.651232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342278, 37.698673, 21.163345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.223652, 37.381058, 20.951103>,  <31.152475, 37.190487, 20.823757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.223652, 37.381058, 20.951103>,  <31.342278, 37.698673, 21.163345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223652, 37.381058, 20.951103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148665, 0.587214, -0.795663,
		0.943370, -0.157084, -0.292194,
		-0.296566, -0.794043, -0.530607,
		31.134682, 37.142845, 20.791922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613369, 37.749142, 20.505840>,  <31.342278, 37.698673, 21.163345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613369, 37.749142, 20.505840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.295256, 37.512020, 20.455074>,  <31.104387, 37.369747, 20.424614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.295256, 37.512020, 20.455074>,  <31.613369, 37.749142, 20.505840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295256, 37.512020, 20.455074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302301, 0.569247, -0.764573,
		0.525485, -0.569688, -0.631919,
		-0.795285, -0.592801, -0.126914,
		31.056671, 37.334179, 20.417000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508726, 37.706818, 19.824257>,  <31.613369, 37.749142, 20.505840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508726, 37.706818, 19.824257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.160009, 37.571247, 19.965738>,  <30.950779, 37.489902, 20.050627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.160009, 37.571247, 19.965738>,  <31.508726, 37.706818, 19.824257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160009, 37.571247, 19.965738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473211, 0.395920, -0.786968,
		0.126689, -0.853448, -0.505545,
		-0.871792, -0.338930, 0.353703,
		30.898472, 37.469566, 20.071850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263655, 37.187256, 19.300760>,  <31.508726, 37.706818, 19.824257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263655, 37.187256, 19.300760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.980589, 37.371483, 19.515081>,  <30.810749, 37.482021, 19.643673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.980589, 37.371483, 19.515081>,  <31.263655, 37.187256, 19.300760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980589, 37.371483, 19.515081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423432, 0.330614, -0.843445,
		-0.565611, -0.823752, -0.038943,
		-0.707665, 0.460572, 0.535802,
		30.768290, 37.509655, 19.675821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872238, 37.376488, 18.744493>,  <31.263655, 37.187256, 19.300760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872238, 37.376488, 18.744493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.673193, 37.564709, 19.035963>,  <30.553766, 37.677643, 19.210844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.673193, 37.564709, 19.035963>,  <30.872238, 37.376488, 18.744493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673193, 37.564709, 19.035963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464396, 0.564996, -0.681994,
		-0.732611, -0.677760, -0.062625,
		-0.497611, 0.470553, 0.728672,
		30.523911, 37.705875, 19.254564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113594, 37.288391, 18.567497>,  <30.872238, 37.376488, 18.744493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113594, 37.288391, 18.567497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.139267, 37.600826, 18.815945>,  <30.154671, 37.788288, 18.965014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.139267, 37.600826, 18.815945>,  <30.113594, 37.288391, 18.567497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139267, 37.600826, 18.815945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473305, 0.571770, -0.670120,
		-0.878557, -0.250969, 0.406388,
		0.064181, 0.781085, 0.621118,
		30.158522, 37.835152, 19.002279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448395, 37.656418, 18.507530>,  <30.113594, 37.288391, 18.567497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448395, 37.656418, 18.507530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.692202, 37.935223, 18.658613>,  <29.838486, 38.102505, 18.749262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.692202, 37.935223, 18.658613>,  <29.448395, 37.656418, 18.507530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692202, 37.935223, 18.658613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442244, 0.694360, -0.567701,
		-0.657960, 0.178984, 0.731473,
		0.609515, 0.697015, 0.377707,
		29.875055, 38.144325, 18.771925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086252, 38.303246, 18.680832>,  <29.448395, 37.656418, 18.507530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086252, 38.303246, 18.680832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461693, 38.422466, 18.611330>,  <29.686956, 38.493999, 18.569630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461693, 38.422466, 18.611330>,  <29.086252, 38.303246, 18.680832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461693, 38.422466, 18.611330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330557, 0.632725, -0.700280,
		-0.098784, 0.714719, 0.692401,
		0.938602, 0.298055, -0.173752,
		29.743273, 38.511883, 18.559204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.859924, 33.639931, 32.073433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.028187, 33.887638, 31.808237>,  <37.129147, 34.036263, 31.649120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.028187, 33.887638, 31.808237>,  <36.859924, 33.639931, 32.073433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028187, 33.887638, 31.808237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260905, -0.617338, -0.742174,
		-0.868893, 0.485178, -0.098117,
		0.420658, 0.619271, -0.662986,
		37.154385, 34.073418, 31.609341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485123, 33.511593, 31.502096>,  <36.859924, 33.639931, 32.073433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485123, 33.511593, 31.502096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.822605, 33.683773, 31.373796>,  <37.025093, 33.787083, 31.296818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.822605, 33.683773, 31.373796>,  <36.485123, 33.511593, 31.502096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822605, 33.683773, 31.373796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134239, -0.409341, -0.902452,
		-0.519757, 0.804457, -0.287578,
		0.843701, 0.430452, -0.320748,
		37.075714, 33.812908, 31.277573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330822, 34.034630, 30.988922>,  <36.485123, 33.511593, 31.502096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330822, 34.034630, 30.988922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.706928, 33.924919, 30.908253>,  <36.932590, 33.859093, 30.859852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.706928, 33.924919, 30.908253>,  <36.330822, 34.034630, 30.988922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706928, 33.924919, 30.908253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241651, -0.120431, -0.962861,
		0.239807, 0.954079, -0.179517,
		0.940265, -0.274281, -0.201673,
		36.989006, 33.842636, 30.847752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519138, 34.489075, 30.464096>,  <36.330822, 34.034630, 30.988922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519138, 34.489075, 30.464096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.758053, 34.170025, 30.430532>,  <36.901402, 33.978592, 30.410395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.758053, 34.170025, 30.430532>,  <36.519138, 34.489075, 30.464096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758053, 34.170025, 30.430532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250458, -0.086104, -0.964291,
		0.761921, 0.596970, -0.251202,
		0.597282, -0.797629, -0.083911,
		36.937237, 33.930737, 30.405359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845726, 34.680248, 29.928974>,  <36.519138, 34.489075, 30.464096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845726, 34.680248, 29.928974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.896503, 34.283733, 29.943018>,  <36.926968, 34.045826, 29.951445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.896503, 34.283733, 29.943018>,  <36.845726, 34.680248, 29.928974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896503, 34.283733, 29.943018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190285, -0.059077, -0.979950,
		0.973487, 0.117715, -0.196126,
		0.126941, -0.991289, 0.035112,
		36.934586, 33.986347, 29.953552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128109, 34.599628, 29.253529>,  <36.845726, 34.680248, 29.928974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128109, 34.599628, 29.253529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040817, 34.231777, 29.384167>,  <36.988441, 34.011066, 29.462549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040817, 34.231777, 29.384167>,  <37.128109, 34.599628, 29.253529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040817, 34.231777, 29.384167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143534, -0.300778, -0.942831,
		0.965284, -0.252633, -0.066359,
		-0.218231, -0.919624, 0.326597,
		36.975349, 33.955891, 29.482145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656429, 34.085667, 28.918022>,  <37.128109, 34.599628, 29.253529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656429, 34.085667, 28.918022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.330505, 33.881824, 29.028574>,  <37.134953, 33.759518, 29.094906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.330505, 33.881824, 29.028574>,  <37.656429, 34.085667, 28.918022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330505, 33.881824, 29.028574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136624, -0.294517, -0.945830,
		0.563399, -0.808432, 0.170351,
		-0.814810, -0.509606, 0.276382,
		37.086063, 33.728943, 29.111488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657944, 33.398827, 28.562931>,  <37.656429, 34.085667, 28.918022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657944, 33.398827, 28.562931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.274529, 33.445206, 28.667049>,  <37.044479, 33.473034, 28.729521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.274529, 33.445206, 28.667049>,  <37.657944, 33.398827, 28.562931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274529, 33.445206, 28.667049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281497, -0.243532, -0.928144,
		-0.044225, -0.962937, 0.266074,
		-0.958542, 0.115947, 0.260294,
		36.986965, 33.479988, 28.745138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260338, 33.001659, 28.145170>,  <37.657944, 33.398827, 28.562931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260338, 33.001659, 28.145170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.957443, 33.213161, 28.298540>,  <36.775707, 33.340065, 28.390562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.957443, 33.213161, 28.298540>,  <37.260338, 33.001659, 28.145170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957443, 33.213161, 28.298540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459972, -0.014939, -0.887808,
		-0.463707, -0.848641, 0.254527,
		-0.757233, 0.528758, 0.383424,
		36.730274, 33.371788, 28.413567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525127, 32.658905, 27.926437>,  <37.260338, 33.001659, 28.145170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525127, 32.658905, 27.926437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.472248, 33.041508, 28.030445>,  <36.440521, 33.271069, 28.092850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.472248, 33.041508, 28.030445>,  <36.525127, 32.658905, 27.926437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472248, 33.041508, 28.030445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454736, 0.174568, -0.873350,
		-0.880761, -0.233694, 0.411884,
		-0.132195, 0.956511, 0.260021,
		36.432590, 33.328461, 28.108452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812664, 32.796780, 27.901083>,  <36.525127, 32.658905, 27.926437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812664, 32.796780, 27.901083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.997150, 33.149879, 27.865242>,  <36.107841, 33.361740, 27.843737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.997150, 33.149879, 27.865242>,  <35.812664, 32.796780, 27.901083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997150, 33.149879, 27.865242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663389, 0.276008, -0.695510,
		-0.589231, 0.380224, 0.712907,
		0.461218, 0.882751, -0.089604,
		36.135517, 33.414703, 27.838362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286682, 33.324184, 28.211252>,  <35.812664, 32.796780, 27.901083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286682, 33.324184, 28.211252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.555706, 33.448650, 27.942673>,  <35.717121, 33.523331, 27.781525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.555706, 33.448650, 27.942673>,  <35.286682, 33.324184, 28.211252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555706, 33.448650, 27.942673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739850, 0.261881, -0.619709,
		-0.016995, 0.913560, 0.406348,
		0.672557, 0.311169, -0.671447,
		35.757473, 33.542000, 27.741238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544930, 33.547337, 28.501265>,  <35.286682, 33.324184, 28.211252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544930, 33.547337, 28.501265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.250397, 33.308624, 28.628809>,  <34.073677, 33.165398, 28.705336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.250397, 33.308624, 28.628809>,  <34.544930, 33.547337, 28.501265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250397, 33.308624, 28.628809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430389, -0.049468, 0.901287,
		-0.522096, 0.800879, 0.293272,
		-0.736329, -0.596779, 0.318863,
		34.029499, 33.129589, 28.724468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194931, 33.817421, 29.155592>,  <34.544930, 33.547337, 28.501265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194931, 33.817421, 29.155592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.112701, 33.426277, 29.171221>,  <34.063366, 33.191589, 29.180597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.112701, 33.426277, 29.171221>,  <34.194931, 33.817421, 29.155592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112701, 33.426277, 29.171221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442267, -0.057211, 0.895057,
		-0.873007, 0.201277, 0.444237,
		-0.205570, -0.977862, 0.039072,
		34.051029, 33.132919, 29.182943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917652, 33.680695, 29.797258>,  <34.194931, 33.817421, 29.155592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917652, 33.680695, 29.797258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006695, 33.301960, 29.704361>,  <34.060120, 33.074718, 29.648623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006695, 33.301960, 29.704361>,  <33.917652, 33.680695, 29.797258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006695, 33.301960, 29.704361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338363, -0.148377, 0.929244,
		-0.914306, -0.285442, 0.287346,
		0.222609, -0.946841, -0.232244,
		34.073479, 33.017906, 29.634687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535965, 33.191864, 30.249517>,  <33.917652, 33.680695, 29.797258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535965, 33.191864, 30.249517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.853371, 32.987885, 30.116682>,  <34.043816, 32.865498, 30.036982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.853371, 32.987885, 30.116682>,  <33.535965, 33.191864, 30.249517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853371, 32.987885, 30.116682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332424, -0.093859, 0.938448,
		-0.509733, -0.855067, 0.095042,
		0.793515, -0.509952, -0.332088,
		34.091427, 32.834900, 30.017056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681152, 32.626648, 30.681025>,  <33.535965, 33.191864, 30.249517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681152, 32.626648, 30.681025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033344, 32.635326, 30.491590>,  <34.244659, 32.640533, 30.377930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033344, 32.635326, 30.491590>,  <33.681152, 32.626648, 30.681025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033344, 32.635326, 30.491590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471981, -0.134071, 0.871355,
		-0.044592, -0.990734, -0.128286,
		0.880481, 0.021693, -0.473586,
		34.297489, 32.641834, 30.349514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991150, 32.007401, 30.899055>,  <33.681152, 32.626648, 30.681025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991150, 32.007401, 30.899055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.299088, 32.229092, 30.772459>,  <34.483852, 32.362106, 30.696501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.299088, 32.229092, 30.772459>,  <33.991150, 32.007401, 30.899055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299088, 32.229092, 30.772459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479160, -0.174338, 0.860239,
		0.421591, -0.813903, -0.399778,
		0.769848, 0.554227, -0.316491,
		34.530041, 32.395359, 30.677511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611263, 31.668985, 31.073997>,  <33.991150, 32.007401, 30.899055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611263, 31.668985, 31.073997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695160, 32.058376, 31.037441>,  <34.745499, 32.292011, 31.015509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695160, 32.058376, 31.037441>,  <34.611263, 31.668985, 31.073997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695160, 32.058376, 31.037441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524964, -0.033264, 0.850474,
		0.824877, -0.226355, -0.518017,
		0.209740, 0.973477, -0.091389,
		34.758083, 32.350418, 31.010025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289982, 31.726278, 31.202629>,  <34.611263, 31.668985, 31.073997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289982, 31.726278, 31.202629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.163258, 32.102779, 31.249409>,  <35.087223, 32.328678, 31.277475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.163258, 32.102779, 31.249409>,  <35.289982, 31.726278, 31.202629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163258, 32.102779, 31.249409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507137, 0.063907, 0.859493,
		0.801525, 0.331607, -0.497589,
		-0.316813, 0.941251, 0.116947,
		35.068214, 32.385155, 31.284492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774887, 32.105949, 31.202829>,  <35.289982, 31.726278, 31.202629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774887, 32.105949, 31.202829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.495853, 32.295044, 31.418196>,  <35.328434, 32.408501, 31.547415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.495853, 32.295044, 31.418196>,  <35.774887, 32.105949, 31.202829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495853, 32.295044, 31.418196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665797, 0.150032, 0.730894,
		0.264744, 0.868336, -0.419409,
		-0.697586, 0.472741, 0.538415,
		35.286579, 32.436867, 31.579720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184357, 32.624050, 31.641109>,  <35.774887, 32.105949, 31.202829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184357, 32.624050, 31.641109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823502, 32.619720, 31.813637>,  <35.606991, 32.617123, 31.917152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823502, 32.619720, 31.813637>,  <36.184357, 32.624050, 31.641109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823502, 32.619720, 31.813637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420527, 0.201505, 0.884620,
		-0.096486, 0.979428, -0.177234,
		-0.902135, -0.010822, 0.431319,
		35.552860, 32.616474, 31.943033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388992, 33.111237, 32.177422>,  <36.184357, 32.624050, 31.641109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388992, 33.111237, 32.177422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028992, 32.966805, 32.275097>,  <35.812992, 32.880146, 32.333702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028992, 32.966805, 32.275097>,  <36.388992, 33.111237, 32.177422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028992, 32.966805, 32.275097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139714, 0.291681, 0.946257,
		-0.412895, 0.885746, -0.212065,
		-0.899999, -0.361076, 0.244185,
		35.758991, 32.858482, 32.348351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938217, 33.650723, 32.558441>,  <36.388992, 33.111237, 32.177422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938217, 33.650723, 32.558441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848297, 33.287304, 32.699306>,  <35.794346, 33.069252, 32.783825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848297, 33.287304, 32.699306>,  <35.938217, 33.650723, 32.558441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848297, 33.287304, 32.699306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256838, 0.293383, 0.920848,
		-0.939947, 0.297451, 0.167397,
		-0.224796, -0.908543, 0.352161,
		35.780857, 33.014740, 32.804955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790882, 33.810081, 33.206631>,  <35.938217, 33.650723, 32.558441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790882, 33.810081, 33.206631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.861706, 33.416504, 33.215611>,  <35.904202, 33.180359, 33.221001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.861706, 33.416504, 33.215611>,  <35.790882, 33.810081, 33.206631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861706, 33.416504, 33.215611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259470, 0.068673, 0.963307,
		-0.949381, -0.164741, 0.267463,
		0.177064, -0.983943, 0.022452,
		35.914825, 33.121323, 33.222347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389771, 33.527901, 33.777744>,  <35.790882, 33.810081, 33.206631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389771, 33.527901, 33.777744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.677502, 33.258602, 33.709278>,  <35.850140, 33.097023, 33.668198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.677502, 33.258602, 33.709278>,  <35.389771, 33.527901, 33.777744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677502, 33.258602, 33.709278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186081, -0.050642, 0.981228,
		-0.669280, -0.737679, 0.088850,
		0.719332, -0.673250, -0.171162,
		35.893303, 33.056625, 33.657928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220512, 34.038845, 34.289845>,  <35.389771, 33.527901, 33.777744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220512, 34.038845, 34.289845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.902882, 34.001369, 34.049622>,  <34.712303, 33.978886, 33.905487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.902882, 34.001369, 34.049622>,  <35.220512, 34.038845, 34.289845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902882, 34.001369, 34.049622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254213, 0.846289, -0.468157,
		0.552102, -0.524421, -0.648202,
		-0.794077, -0.093689, -0.600553,
		34.664658, 33.973263, 33.869457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923298, 34.662090, 34.257191>,  <35.220512, 34.038845, 34.289845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923298, 34.662090, 34.257191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799137, 34.963257, 34.489315>,  <34.724640, 35.143955, 34.628590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799137, 34.963257, 34.489315>,  <34.923298, 34.662090, 34.257191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799137, 34.963257, 34.489315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646177, 0.280623, -0.709723,
		-0.697212, -0.595286, 0.399411,
		-0.310404, 0.752917, 0.580314,
		34.706017, 35.189133, 34.663410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151314, 34.601418, 34.370724>,  <34.923298, 34.662090, 34.257191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151314, 34.601418, 34.370724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.273655, 34.975430, 34.442459>,  <34.347061, 35.199837, 34.485500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.273655, 34.975430, 34.442459>,  <34.151314, 34.601418, 34.370724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273655, 34.975430, 34.442459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696215, 0.348142, -0.627759,
		-0.649413, 0.067142, 0.757466,
		0.305854, 0.935034, 0.179343,
		34.365410, 35.255939, 34.496262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604053, 35.107586, 34.631500>,  <34.151314, 34.601418, 34.370724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604053, 35.107586, 34.631500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.886295, 35.302094, 34.425331>,  <34.055641, 35.418800, 34.301628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.886295, 35.302094, 34.425331>,  <33.604053, 35.107586, 34.631500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886295, 35.302094, 34.425331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708504, 0.496423, -0.501584,
		0.011961, 0.719099, 0.694805,
		0.705606, 0.486272, -0.515422,
		34.097977, 35.447975, 34.270706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271683, 35.667004, 34.427387>,  <33.604053, 35.107586, 34.631500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271683, 35.667004, 34.427387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.586784, 35.658401, 34.181141>,  <33.775845, 35.653240, 34.033394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.586784, 35.658401, 34.181141>,  <33.271683, 35.667004, 34.427387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586784, 35.658401, 34.181141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481426, 0.601974, -0.637068,
		0.384285, 0.798226, 0.463854,
		0.787753, -0.021504, -0.615616,
		33.823109, 35.651951, 33.996456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426422, 36.406452, 34.236214>,  <33.271683, 35.667004, 34.427387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426422, 36.406452, 34.236214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.544605, 36.146690, 33.955933>,  <33.615517, 35.990833, 33.787766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.544605, 36.146690, 33.955933>,  <33.426422, 36.406452, 34.236214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544605, 36.146690, 33.955933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623887, 0.424301, -0.656303,
		0.723512, 0.631069, -0.279791,
		0.295457, -0.649401, -0.700702,
		33.633244, 35.951870, 33.745724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459179, 36.772533, 33.659233>,  <33.426422, 36.406452, 34.236214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459179, 36.772533, 33.659233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.469921, 36.407711, 33.495560>,  <33.476364, 36.188816, 33.397354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.469921, 36.407711, 33.495560>,  <33.459179, 36.772533, 33.659233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469921, 36.407711, 33.495560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566911, 0.323250, -0.757708,
		0.823341, 0.252319, -0.508375,
		0.026852, -0.912056, -0.409187,
		33.477978, 36.134094, 33.372803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790836, 36.876324, 33.021732>,  <33.459179, 36.772533, 33.659233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790836, 36.876324, 33.021732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.586433, 36.534527, 32.984398>,  <33.463791, 36.329449, 32.961998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.586433, 36.534527, 32.984398>,  <33.790836, 36.876324, 33.021732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586433, 36.534527, 32.984398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217931, 0.233834, -0.947538,
		0.831489, -0.463860, -0.305712,
		-0.511011, -0.854491, -0.093341,
		33.433128, 36.278179, 32.956394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874649, 36.661480, 32.289425>,  <33.790836, 36.876324, 33.021732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874649, 36.661480, 32.289425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.561432, 36.465946, 32.443249>,  <33.373501, 36.348625, 32.535542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.561432, 36.465946, 32.443249>,  <33.874649, 36.661480, 32.289425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561432, 36.465946, 32.443249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563272, 0.295147, -0.771760,
		0.263753, -0.820937, -0.506455,
		-0.783045, -0.488826, 0.384565,
		33.326519, 36.319294, 32.558617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622383, 36.289356, 31.749599>,  <33.874649, 36.661480, 32.289425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622383, 36.289356, 31.749599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.314133, 36.303036, 32.004147>,  <33.129181, 36.311245, 32.156876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.314133, 36.303036, 32.004147>,  <33.622383, 36.289356, 31.749599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314133, 36.303036, 32.004147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623154, 0.168679, -0.763692,
		-0.133462, -0.985078, -0.108676,
		-0.770627, 0.034202, 0.636367,
		33.082943, 36.313297, 32.195057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093990, 35.716915, 31.597059>,  <33.622383, 36.289356, 31.749599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093990, 35.716915, 31.597059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.904694, 35.999416, 31.807678>,  <32.791115, 36.168915, 31.934050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.904694, 35.999416, 31.807678>,  <33.093990, 35.716915, 31.597059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904694, 35.999416, 31.807678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597754, 0.181617, -0.780836,
		-0.647095, -0.684271, 0.336215,
		-0.473241, 0.706249, 0.526550,
		32.762722, 36.211292, 31.965643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395809, 35.712944, 31.367270>,  <33.093990, 35.716915, 31.597059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395809, 35.712944, 31.367270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.434906, 36.076691, 31.529009>,  <32.458363, 36.294937, 31.626053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.434906, 36.076691, 31.529009>,  <32.395809, 35.712944, 31.367270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434906, 36.076691, 31.529009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381799, 0.409468, -0.828592,
		-0.919063, -0.073393, 0.387217,
		0.097741, 0.909367, 0.404348,
		32.464230, 36.349503, 31.650312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827932, 36.038834, 31.090059>,  <32.395809, 35.712944, 31.367270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827932, 36.038834, 31.090059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.043964, 36.336967, 31.246412>,  <32.173584, 36.515846, 31.340223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.043964, 36.336967, 31.246412>,  <31.827932, 36.038834, 31.090059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043964, 36.336967, 31.246412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261044, 0.589890, -0.764124,
		-0.800105, 0.310652, 0.513154,
		0.540081, 0.745335, 0.390881,
		32.205990, 36.560570, 31.363676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400549, 36.547314, 31.214489>,  <31.827932, 36.038834, 31.090059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400549, 36.547314, 31.214489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.766649, 36.702450, 31.170862>,  <31.986309, 36.795532, 31.144686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.766649, 36.702450, 31.170862>,  <31.400549, 36.547314, 31.214489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766649, 36.702450, 31.170862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320550, 0.537020, -0.780293,
		-0.244057, 0.749126, 0.615830,
		0.915251, 0.387841, -0.109069,
		32.041225, 36.818802, 31.138142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353672, 37.287746, 31.132923>,  <31.400549, 36.547314, 31.214489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353672, 37.287746, 31.132923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.720722, 37.231171, 30.984352>,  <31.940952, 37.197224, 30.895210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.720722, 37.231171, 30.984352>,  <31.353672, 37.287746, 31.132923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720722, 37.231171, 30.984352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179613, 0.686085, -0.705001,
		0.354546, 0.713640, 0.604165,
		0.917625, -0.141439, -0.371428,
		31.996010, 37.188740, 30.872923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725578, 38.012341, 31.063879>,  <31.353672, 37.287746, 31.132923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725578, 38.012341, 31.063879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.918400, 37.751873, 30.829411>,  <32.034092, 37.595592, 30.688730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.918400, 37.751873, 30.829411>,  <31.725578, 38.012341, 31.063879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918400, 37.751873, 30.829411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104659, 0.621449, -0.776433,
		0.869867, 0.435632, 0.231421,
		0.482055, -0.651173, -0.586171,
		32.063015, 37.556522, 30.653559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192402, 38.403652, 30.778469>,  <31.725578, 38.012341, 31.063879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192402, 38.403652, 30.778469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.154324, 38.081181, 30.544882>,  <32.131477, 37.887699, 30.404730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.154324, 38.081181, 30.544882>,  <32.192402, 38.403652, 30.778469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154324, 38.081181, 30.544882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067781, 0.590520, -0.804171,
		0.993148, -0.036974, -0.110860,
		-0.095198, -0.806175, -0.583968,
		32.125763, 37.839329, 30.369692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658142, 38.500710, 30.255592>,  <32.192402, 38.403652, 30.778469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658142, 38.500710, 30.255592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.375927, 38.241749, 30.140293>,  <32.206596, 38.086372, 30.071114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.375927, 38.241749, 30.140293>,  <32.658142, 38.500710, 30.255592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375927, 38.241749, 30.140293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079832, 0.476766, -0.875398,
		0.704158, -0.594618, -0.388061,
		-0.705541, -0.647398, -0.288249,
		32.164265, 38.047531, 30.053818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869286, 38.251480, 29.547785>,  <32.658142, 38.500710, 30.255592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869286, 38.251480, 29.547785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.479973, 38.160286, 29.558727>,  <32.246384, 38.105568, 29.565292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.479973, 38.160286, 29.558727>,  <32.869286, 38.251480, 29.547785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479973, 38.160286, 29.558727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110474, 0.360480, -0.926202,
		0.201297, -0.904476, -0.376035,
		-0.973281, -0.227983, 0.027358,
		32.187988, 38.091892, 29.566935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649094, 37.906796, 28.857668>,  <32.869286, 38.251480, 29.547785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649094, 37.906796, 28.857668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.301373, 38.017921, 29.021193>,  <32.092739, 38.084599, 29.119307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.301373, 38.017921, 29.021193>,  <32.649094, 37.906796, 28.857668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301373, 38.017921, 29.021193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384495, 0.139651, -0.912503,
		-0.310597, -0.950430, -0.014581,
		-0.869306, 0.277815, 0.408811,
		32.040581, 38.101265, 29.143835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141205, 37.621265, 28.619371>,  <32.649094, 37.906796, 28.857668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141205, 37.621265, 28.619371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.966526, 37.959675, 28.741705>,  <31.861719, 38.162720, 28.815105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.966526, 37.959675, 28.741705>,  <32.141205, 37.621265, 28.619371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966526, 37.959675, 28.741705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258590, 0.207564, -0.943424,
		-0.861642, -0.491077, 0.128132,
		-0.436698, 0.846027, 0.305833,
		31.835516, 38.213482, 28.833454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495296, 37.442062, 28.324795>,  <32.141205, 37.621265, 28.619371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495296, 37.442062, 28.324795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.447960, 37.828449, 28.416794>,  <31.419558, 38.060284, 28.471994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.447960, 37.828449, 28.416794>,  <31.495296, 37.442062, 28.324795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447960, 37.828449, 28.416794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434012, 0.158013, -0.886942,
		-0.893101, -0.204782, 0.400543,
		-0.118339, 0.965969, 0.229999,
		31.412458, 38.118240, 28.485794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807899, 37.627171, 28.123064>,  <31.495296, 37.442062, 28.324795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807899, 37.627171, 28.123064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.017769, 37.967594, 28.131250>,  <31.143690, 38.171848, 28.136162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.017769, 37.967594, 28.131250>,  <30.807899, 37.627171, 28.123064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017769, 37.967594, 28.131250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317703, 0.218053, -0.922777,
		-0.789798, 0.477657, 0.384790,
		0.524675, 0.851056, 0.020464,
		31.175171, 38.222912, 28.137390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343575, 38.056496, 27.925491>,  <30.807899, 37.627171, 28.123064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343575, 38.056496, 27.925491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.687273, 38.254436, 27.873615>,  <30.893492, 38.373199, 27.842489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.687273, 38.254436, 27.873615>,  <30.343575, 38.056496, 27.925491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687273, 38.254436, 27.873615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327445, 0.337243, -0.882636,
		-0.393039, 0.800866, 0.451811,
		0.859244, 0.494853, -0.129690,
		30.945045, 38.402893, 27.834709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094198, 38.590824, 27.803225>,  <30.343575, 38.056496, 27.925491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094198, 38.590824, 27.803225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.469969, 38.616344, 27.668522>,  <30.695431, 38.631657, 27.587700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.469969, 38.616344, 27.668522>,  <30.094198, 38.590824, 27.803225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469969, 38.616344, 27.668522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334492, 0.385009, -0.860165,
		0.074777, 0.920705, 0.383028,
		0.939427, 0.063799, -0.336758,
		30.751797, 38.635483, 27.567495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154299, 39.306782, 27.517916>,  <30.094198, 38.590824, 27.803225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154299, 39.306782, 27.517916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.454750, 39.100685, 27.352827>,  <30.635021, 38.977028, 27.253775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.454750, 39.100685, 27.352827>,  <30.154299, 39.306782, 27.517916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454750, 39.100685, 27.352827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254402, 0.350981, -0.901162,
		0.609171, 0.781883, 0.132553,
		0.751126, -0.515240, -0.412720,
		30.680088, 38.946114, 27.229012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619686, 39.703465, 27.140091>,  <30.154299, 39.306782, 27.517916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619686, 39.703465, 27.140091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.634060, 39.347458, 26.958288>,  <30.642685, 39.133854, 26.849207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.634060, 39.347458, 26.958288>,  <30.619686, 39.703465, 27.140091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634060, 39.347458, 26.958288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114445, 0.448143, -0.886606,
		0.992779, 0.083878, -0.085754,
		0.035937, -0.890018, -0.454506,
		30.644840, 39.080452, 26.821936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069368, 39.765045, 26.584705>,  <30.619686, 39.703465, 27.140091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069368, 39.765045, 26.584705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.807138, 39.475327, 26.499275>,  <30.649801, 39.301495, 26.448017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.807138, 39.475327, 26.499275>,  <31.069368, 39.765045, 26.584705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807138, 39.475327, 26.499275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165371, 0.413676, -0.895279,
		0.736800, -0.551602, -0.390974,
		-0.655574, -0.724297, -0.213578,
		30.610466, 39.258038, 26.435202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547079, 39.926300, 25.938984>,  <31.069368, 39.765045, 26.584705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547079, 39.926300, 25.938984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.821859, 40.176201, 25.790504>,  <31.986727, 40.326141, 25.701416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.821859, 40.176201, 25.790504>,  <31.547079, 39.926300, 25.938984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821859, 40.176201, 25.790504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487728, -0.017699, 0.872816,
		0.538722, -0.780625, -0.316866,
		0.686950, 0.624750, -0.371198,
		32.027943, 40.363625, 25.679146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220592, 39.629971, 26.086184>,  <31.547079, 39.926300, 25.938984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220592, 39.629971, 26.086184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.294338, 40.021667, 26.052511>,  <32.338585, 40.256687, 26.032309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.294338, 40.021667, 26.052511>,  <32.220592, 39.629971, 26.086184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294338, 40.021667, 26.052511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596966, -0.043529, 0.801085,
		0.780795, -0.197944, -0.592602,
		0.184365, 0.979246, -0.084179,
		32.349648, 40.315441, 26.027258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836193, 39.803997, 26.323185>,  <32.220592, 39.629971, 26.086184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836193, 39.803997, 26.323185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.701321, 40.179596, 26.350298>,  <32.620396, 40.404953, 26.366566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.701321, 40.179596, 26.350298>,  <32.836193, 39.803997, 26.323185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701321, 40.179596, 26.350298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494063, 0.115209, 0.861759,
		0.801379, 0.324061, -0.502769,
		-0.337186, 0.938995, 0.067780,
		32.600166, 40.461296, 26.370632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458038, 40.251938, 26.489426>,  <32.836193, 39.803997, 26.323185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458038, 40.251938, 26.489426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.119301, 40.427376, 26.609755>,  <32.916058, 40.532639, 26.681952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.119301, 40.427376, 26.609755>,  <33.458038, 40.251938, 26.489426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119301, 40.427376, 26.609755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332992, -0.003781, 0.942922,
		0.414698, 0.898677, -0.142846,
		-0.846842, 0.438594, 0.300820,
		32.865250, 40.558952, 26.700001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780361, 40.730572, 26.973742>,  <33.458038, 40.251938, 26.489426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780361, 40.730572, 26.973742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.390915, 40.734505, 27.064930>,  <33.157246, 40.736866, 27.119642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.390915, 40.734505, 27.064930>,  <33.780361, 40.730572, 26.973742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390915, 40.734505, 27.064930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228175, 0.034495, 0.973009,
		0.001703, 0.999357, -0.035828,
		-0.973619, 0.009832, 0.227970,
		33.098831, 40.737453, 27.133322>
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
