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
	<41.475464, 36.294044, 48.548122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262493, 35.980598, 48.676174>,  <41.134712, 35.792530, 48.753006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262493, 35.980598, 48.676174>,  <41.475464, 36.294044, 48.548122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262493, 35.980598, 48.676174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820227, -0.384143, 0.423865,
		-0.209171, 0.488251, 0.847265,
		-0.532423, -0.783610, 0.320125,
		41.102768, 35.745514, 48.772213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538105, 36.227409, 49.326927>,  <41.475464, 36.294044, 48.548122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538105, 36.227409, 49.326927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444172, 35.863159, 49.190922>,  <41.387814, 35.644608, 49.109318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444172, 35.863159, 49.190922>,  <41.538105, 36.227409, 49.326927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444172, 35.863159, 49.190922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848100, -0.362862, 0.386079,
		-0.474952, -0.197699, 0.857517,
		-0.234833, -0.910630, -0.340011,
		41.373722, 35.589970, 49.088917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656132, 35.751251, 49.900288>,  <41.538105, 36.227409, 49.326927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656132, 35.751251, 49.900288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654510, 35.521854, 49.572605>,  <41.653538, 35.384216, 49.375996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654510, 35.521854, 49.572605>,  <41.656132, 35.751251, 49.900288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654510, 35.521854, 49.572605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616790, -0.646253, 0.449364,
		-0.787118, -0.503453, 0.356344,
		-0.004055, -0.573491, -0.819202,
		41.653294, 35.349808, 49.326843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674889, 35.179054, 50.168552>,  <41.656132, 35.751251, 49.900288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674889, 35.179054, 50.168552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809418, 35.099213, 49.800411>,  <41.890137, 35.051308, 49.579529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809418, 35.099213, 49.800411>,  <41.674889, 35.179054, 50.168552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809418, 35.099213, 49.800411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829512, -0.399895, 0.389863,
		-0.445862, -0.894562, 0.031081,
		0.336327, -0.199608, -0.920348,
		41.910316, 35.039330, 49.524307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865162, 34.511475, 50.153835>,  <41.674889, 35.179054, 50.168552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865162, 34.511475, 50.153835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061344, 34.649441, 49.833714>,  <42.179054, 34.732220, 49.641640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061344, 34.649441, 49.833714>,  <41.865162, 34.511475, 50.153835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061344, 34.649441, 49.833714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824786, -0.480245, 0.298483,
		-0.281394, -0.806474, -0.520016,
		0.490454, 0.344911, -0.800307,
		42.208481, 34.752914, 49.593620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073505, 33.909405, 49.817787>,  <41.865162, 34.511475, 50.153835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073505, 33.909405, 49.817787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327961, 34.190212, 49.689732>,  <42.480637, 34.358696, 49.612900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327961, 34.190212, 49.689732>,  <42.073505, 33.909405, 49.817787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327961, 34.190212, 49.689732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771559, -0.581218, 0.258617,
		-0.004514, -0.411522, -0.911389,
		0.636142, 0.702023, -0.320137,
		42.518803, 34.400818, 49.593689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671906, 33.518253, 49.578075>,  <42.073505, 33.909405, 49.817787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671906, 33.518253, 49.578075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785591, 33.894619, 49.651733>,  <42.853802, 34.120438, 49.695927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785591, 33.894619, 49.651733>,  <42.671906, 33.518253, 49.578075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785591, 33.894619, 49.651733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766953, -0.338374, 0.545240,
		0.575331, -0.013737, -0.817805,
		0.284214, 0.940911, 0.184141,
		42.870857, 34.176891, 49.706974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.307041, 33.467461, 49.451252>,  <42.671906, 33.518253, 49.578075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.307041, 33.467461, 49.451252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256821, 33.812019, 49.648117>,  <43.226688, 34.018757, 49.766235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256821, 33.812019, 49.648117>,  <43.307041, 33.467461, 49.451252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256821, 33.812019, 49.648117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884039, -0.127997, 0.449547,
		0.450235, 0.491537, -0.745439,
		-0.125555, 0.861399, 0.492167,
		43.219154, 34.070438, 49.795769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999729, 33.742378, 49.504971>,  <43.307041, 33.467461, 49.451252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999729, 33.742378, 49.504971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782799, 33.919941, 49.790298>,  <43.652641, 34.026478, 49.961494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782799, 33.919941, 49.790298>,  <43.999729, 33.742378, 49.504971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782799, 33.919941, 49.790298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792040, -0.013096, 0.610328,
		0.280272, 0.895976, -0.344492,
		-0.542328, 0.443909, 0.713320,
		43.620102, 34.053112, 50.004295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354984, 34.337536, 49.742886>,  <43.999729, 33.742378, 49.504971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354984, 34.337536, 49.742886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118233, 34.225220, 50.045101>,  <43.976181, 34.157829, 50.226429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118233, 34.225220, 50.045101>,  <44.354984, 34.337536, 49.742886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118233, 34.225220, 50.045101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730157, 0.210239, 0.650131,
		-0.341392, 0.936460, 0.080583,
		-0.591880, -0.280788, 0.755537,
		43.940670, 34.140984, 50.271763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486168, 34.725899, 50.176601>,  <44.354984, 34.337536, 49.742886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486168, 34.725899, 50.176601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.303253, 34.452892, 50.404659>,  <44.193504, 34.289089, 50.541496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.303253, 34.452892, 50.404659>,  <44.486168, 34.725899, 50.176601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303253, 34.452892, 50.404659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730230, 0.077758, 0.678762,
		-0.507597, 0.726726, 0.462833,
		-0.457285, -0.682512, 0.570147,
		44.166069, 34.248138, 50.575703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.577927, 34.979755, 50.698830>,  <44.486168, 34.725899, 50.176601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.577927, 34.979755, 50.698830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.486126, 34.602333, 50.794353>,  <44.431046, 34.375881, 50.851669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.486126, 34.602333, 50.794353>,  <44.577927, 34.979755, 50.698830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486126, 34.602333, 50.794353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778080, -0.030456, 0.627426,
		-0.584739, 0.329809, 0.741152,
		-0.229503, -0.943556, 0.238810,
		44.417274, 34.319267, 50.865997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503521, 35.012177, 51.379879>,  <44.577927, 34.979755, 50.698830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503521, 35.012177, 51.379879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.558266, 34.621273, 51.315083>,  <44.591110, 34.386730, 51.276203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.558266, 34.621273, 51.315083>,  <44.503521, 35.012177, 51.379879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558266, 34.621273, 51.315083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885129, 0.047217, 0.462944,
		-0.444765, -0.206745, 0.871459,
		0.136859, -0.977255, -0.161996,
		44.599323, 34.328098, 51.266483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648396, 34.640713, 52.059719>,  <44.503521, 35.012177, 51.379879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648396, 34.640713, 52.059719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.801552, 34.424770, 51.759865>,  <44.893444, 34.295204, 51.579952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.801552, 34.424770, 51.759865>,  <44.648396, 34.640713, 52.059719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801552, 34.424770, 51.759865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877124, -0.042215, 0.478405,
		-0.289915, -0.840700, 0.457355,
		0.382888, -0.539854, -0.749636,
		44.916420, 34.262814, 51.534973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.056534, 34.254234, 52.436897>,  <44.648396, 34.640713, 52.059719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.056534, 34.254234, 52.436897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.209507, 34.167545, 52.077614>,  <45.301289, 34.115532, 51.862045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.209507, 34.167545, 52.077614>,  <45.056534, 34.254234, 52.436897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209507, 34.167545, 52.077614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919075, -0.010856, 0.393933,
		-0.095124, -0.976174, 0.195030,
		0.382430, -0.216720, -0.898209,
		45.324234, 34.102528, 51.808151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.545895, 33.816254, 52.585026>,  <45.056534, 34.254234, 52.436897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.545895, 33.816254, 52.585026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.649456, 33.946697, 52.221352>,  <45.711594, 34.024963, 52.003147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.649456, 33.946697, 52.221352>,  <45.545895, 33.816254, 52.585026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.649456, 33.946697, 52.221352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965436, -0.058051, 0.254094,
		0.030084, -0.943547, -0.329870,
		0.258899, 0.326112, -0.909187,
		45.727127, 34.044533, 51.948597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.226242, 33.496578, 52.363197>,  <45.545895, 33.816254, 52.585026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.226242, 33.496578, 52.363197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.201977, 33.840065, 52.159660>,  <46.187420, 34.046158, 52.037540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.201977, 33.840065, 52.159660>,  <46.226242, 33.496578, 52.363197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.201977, 33.840065, 52.159660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967995, 0.174984, 0.179905,
		0.243527, -0.481642, -0.841853,
		-0.060661, 0.858721, -0.508840,
		46.183777, 34.097683, 52.007008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.835365, 33.568039, 52.121407>,  <46.226242, 33.496578, 52.363197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.835365, 33.568039, 52.121407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.696102, 33.939480, 52.070049>,  <46.612545, 34.162346, 52.039234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.696102, 33.939480, 52.070049>,  <46.835365, 33.568039, 52.121407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.696102, 33.939480, 52.070049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916664, 0.365906, 0.160751,
		0.196255, -0.061731, -0.978608,
		-0.348155, 0.928602, -0.128397,
		46.591656, 34.218060, 52.031528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.336945, 33.876812, 51.737610>,  <46.835365, 33.568039, 52.121407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.336945, 33.876812, 51.737610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.135109, 34.169655, 51.920650>,  <47.014008, 34.345360, 52.030476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.135109, 34.169655, 51.920650>,  <47.336945, 33.876812, 51.737610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.135109, 34.169655, 51.920650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862015, 0.397638, 0.314348,
		0.048176, 0.553079, -0.831735,
		-0.504589, 0.732112, 0.457605,
		46.983734, 34.389290, 52.057934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.658504, 34.575249, 51.531780>,  <47.336945, 33.876812, 51.737610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.658504, 34.575249, 51.531780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.452747, 34.668896, 51.861771>,  <47.329292, 34.725082, 52.059765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.452747, 34.668896, 51.861771>,  <47.658504, 34.575249, 51.531780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.452747, 34.668896, 51.861771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785104, 0.515567, 0.343223,
		-0.344978, 0.824246, -0.449009,
		-0.514394, 0.234114, 0.824978,
		47.298428, 34.739128, 52.109264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.834660, 35.219200, 51.602917>,  <47.658504, 34.575249, 51.531780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.834660, 35.219200, 51.602917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.699059, 35.104614, 51.961361>,  <47.617699, 35.035862, 52.176426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.699059, 35.104614, 51.961361>,  <47.834660, 35.219200, 51.602917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.699059, 35.104614, 51.961361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822875, 0.371420, 0.430028,
		-0.456024, 0.883166, 0.109818,
		-0.338998, -0.286469, 0.896111,
		47.597359, 35.018673, 52.230194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.153809, 34.538200, 52.152901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.263697, 34.921375, 52.186077>,  <24.329630, 35.151279, 52.205982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.263697, 34.921375, 52.186077>,  <24.153809, 34.538200, 52.152901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.263697, 34.921375, 52.186077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815795, -0.186560, -0.547424,
		-0.508927, 0.218048, -0.832735,
		0.274720, 0.957941, 0.082937,
		24.346113, 35.208759, 52.210957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.536642, 34.637840, 51.531517>,  <24.153809, 34.538200, 52.152901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.536642, 34.637840, 51.531517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.633610, 34.941673, 51.772938>,  <24.691790, 35.123974, 51.917789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.633610, 34.941673, 51.772938>,  <24.536642, 34.637840, 51.531517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.633610, 34.941673, 51.772938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958824, -0.092700, -0.268448,
		-0.147958, 0.643776, -0.750774,
		0.242417, 0.759578, 0.603552,
		24.706335, 35.169548, 51.954002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.087513, 34.967007, 51.182472>,  <24.536642, 34.637840, 51.531517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.087513, 34.967007, 51.182472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.137037, 35.100880, 51.556137>,  <25.166752, 35.181202, 51.780334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.137037, 35.100880, 51.556137>,  <25.087513, 34.967007, 51.182472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.137037, 35.100880, 51.556137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981042, 0.100160, -0.165906,
		-0.149091, 0.936994, -0.315935,
		0.123809, 0.334680, 0.934163,
		25.174179, 35.201283, 51.836388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.472565, 35.534500, 51.148640>,  <25.087513, 34.967007, 51.182472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.472565, 35.534500, 51.148640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.550602, 35.428497, 51.526360>,  <25.597425, 35.364895, 51.752991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.550602, 35.428497, 51.526360>,  <25.472565, 35.534500, 51.148640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.550602, 35.428497, 51.526360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976890, -0.033216, -0.211148,
		0.087322, 0.963674, 0.252403,
		0.195094, -0.265008, 0.944304,
		25.609131, 35.348995, 51.809650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.069433, 35.892750, 51.389114>,  <25.472565, 35.534500, 51.148640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.069433, 35.892750, 51.389114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.062048, 35.611397, 51.673340>,  <26.057617, 35.442585, 51.843876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.062048, 35.611397, 51.673340>,  <26.069433, 35.892750, 51.389114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062048, 35.611397, 51.673340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997009, -0.066300, -0.039723,
		0.075051, 0.707708, 0.702507,
		-0.018464, -0.703387, 0.710567,
		26.056509, 35.400379, 51.886509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627474, 36.117401, 51.906364>,  <26.069433, 35.892750, 51.389114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627474, 36.117401, 51.906364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.557787, 35.723618, 51.897522>,  <26.515974, 35.487347, 51.892216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.557787, 35.723618, 51.897522>,  <26.627474, 36.117401, 51.906364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557787, 35.723618, 51.897522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983099, -0.172607, -0.061014,
		0.056250, -0.032361, 0.997892,
		-0.174217, -0.984459, -0.022105,
		26.505522, 35.428280, 51.890892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169029, 35.809402, 52.269222>,  <26.627474, 36.117401, 51.906364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169029, 35.809402, 52.269222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.056005, 35.477905, 52.075996>,  <26.988192, 35.279007, 51.960060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.056005, 35.477905, 52.075996>,  <27.169029, 35.809402, 52.269222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056005, 35.477905, 52.075996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948119, -0.317777, -0.009405,
		-0.145712, -0.460659, 0.875535,
		-0.282557, -0.828741, -0.483064,
		26.971239, 35.229282, 51.931076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572762, 35.269302, 52.620426>,  <27.169029, 35.809402, 52.269222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572762, 35.269302, 52.620426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.453114, 35.139774, 52.261391>,  <27.381325, 35.062057, 52.045971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.453114, 35.139774, 52.261391>,  <27.572762, 35.269302, 52.620426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453114, 35.139774, 52.261391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930303, -0.308231, -0.198822,
		-0.212281, -0.894501, 0.393453,
		-0.299120, -0.323824, -0.897588,
		27.363377, 35.042625, 51.992115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928610, 34.574806, 52.532944>,  <27.572762, 35.269302, 52.620426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928610, 34.574806, 52.532944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.816931, 34.725479, 52.179638>,  <27.749924, 34.815884, 51.967655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.816931, 34.725479, 52.179638>,  <27.928610, 34.574806, 52.532944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816931, 34.725479, 52.179638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950160, -0.024513, -0.310798,
		-0.138723, -0.926019, -0.351063,
		-0.279199, 0.376681, -0.883266,
		27.733171, 34.838482, 51.914658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975788, 34.005764, 52.010460>,  <27.928610, 34.574806, 52.532944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975788, 34.005764, 52.010460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.000500, 34.366623, 51.839664>,  <28.015326, 34.583138, 51.737186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.000500, 34.366623, 51.839664>,  <27.975788, 34.005764, 52.010460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000500, 34.366623, 51.839664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867962, -0.259772, -0.423273,
		-0.492773, -0.344459, -0.799076,
		0.061778, 0.902146, -0.426986,
		28.019033, 34.637268, 51.711567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377813, 33.919369, 51.389359>,  <27.975788, 34.005764, 52.010460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377813, 33.919369, 51.389359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.386990, 34.315090, 51.446980>,  <28.392494, 34.552525, 51.481552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.386990, 34.315090, 51.446980>,  <28.377813, 33.919369, 51.389359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386990, 34.315090, 51.446980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974864, 0.009806, -0.222584,
		-0.221616, 0.145541, -0.964212,
		0.022940, 0.989304, 0.144056,
		28.393871, 34.611881, 51.490196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862698, 34.075596, 50.870991>,  <28.377813, 33.919369, 51.389359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862698, 34.075596, 50.870991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.855145, 34.407398, 51.094261>,  <28.850613, 34.606480, 51.228222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.855145, 34.407398, 51.094261>,  <28.862698, 34.075596, 50.870991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855145, 34.407398, 51.094261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975023, 0.138845, -0.173357,
		-0.221301, 0.540961, -0.811411,
		-0.018881, 0.829508, 0.558176,
		28.849480, 34.656250, 51.261715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283785, 34.605839, 50.562233>,  <28.862698, 34.075596, 50.870991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283785, 34.605839, 50.562233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.268995, 34.764210, 50.929249>,  <29.260122, 34.859230, 51.149460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.268995, 34.764210, 50.929249>,  <29.283785, 34.605839, 50.562233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268995, 34.764210, 50.929249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926313, 0.358068, -0.117181,
		-0.374936, 0.845595, -0.379989,
		-0.036974, 0.395924, 0.917539,
		29.257902, 34.882988, 51.204510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483473, 35.333637, 50.519787>,  <29.283785, 34.605839, 50.562233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483473, 35.333637, 50.519787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.543486, 35.183723, 50.885742>,  <29.579494, 35.093777, 51.105316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.543486, 35.183723, 50.885742>,  <29.483473, 35.333637, 50.519787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543486, 35.183723, 50.885742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983709, 0.149277, -0.100169,
		-0.099031, 0.915016, 0.391074,
		0.150034, -0.374783, 0.914892,
		29.588495, 35.071289, 51.160210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068228, 35.693851, 50.827946>,  <29.483473, 35.333637, 50.519787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068228, 35.693851, 50.827946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.055174, 35.365150, 51.055508>,  <30.047342, 35.167931, 51.192043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.055174, 35.365150, 51.055508>,  <30.068228, 35.693851, 50.827946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055174, 35.365150, 51.055508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996859, -0.067858, -0.040835,
		0.072161, 0.565783, 0.821390,
		-0.032634, -0.821757, 0.568903,
		30.045383, 35.118622, 51.226177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494888, 35.883144, 51.436661>,  <30.068228, 35.693851, 50.827946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494888, 35.883144, 51.436661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.477005, 35.483818, 51.421921>,  <30.466274, 35.244221, 51.413078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.477005, 35.483818, 51.421921>,  <30.494888, 35.883144, 51.436661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477005, 35.483818, 51.421921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990964, -0.039652, -0.128129,
		0.126453, -0.042241, 0.991073,
		-0.044710, -0.998320, -0.036845,
		30.463593, 35.184322, 51.410866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094423, 35.651379, 51.956566>,  <30.494888, 35.883144, 51.436661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094423, 35.651379, 51.956566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.008089, 35.346661, 51.712246>,  <30.956289, 35.163830, 51.565655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.008089, 35.346661, 51.712246>,  <31.094423, 35.651379, 51.956566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008089, 35.346661, 51.712246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962603, -0.270907, -0.002270,
		-0.163741, -0.588448, 0.791782,
		-0.215835, -0.761800, -0.610800,
		30.943338, 35.118122, 51.529007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394983, 35.125103, 52.219143>,  <31.094423, 35.651379, 51.956566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394983, 35.125103, 52.219143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.346878, 34.991817, 51.845081>,  <31.318014, 34.911846, 51.620644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.346878, 34.991817, 51.845081>,  <31.394983, 35.125103, 52.219143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346878, 34.991817, 51.845081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899376, -0.435390, 0.039477,
		-0.420310, -0.836303, 0.352046,
		-0.120263, -0.333214, -0.935150,
		31.310799, 34.891853, 51.564537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623968, 34.432159, 52.152599>,  <31.394983, 35.125103, 52.219143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623968, 34.432159, 52.152599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.638235, 34.559158, 51.773563>,  <31.646795, 34.635357, 51.546143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.638235, 34.559158, 51.773563>,  <31.623968, 34.432159, 52.152599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638235, 34.559158, 51.773563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864519, -0.485465, -0.130117,
		-0.501333, -0.814567, -0.291796,
		0.035668, 0.317495, -0.947589,
		31.648935, 34.654408, 51.489288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764549, 33.863461, 51.795380>,  <31.623968, 34.432159, 52.152599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764549, 33.863461, 51.795380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.866465, 34.164764, 51.552834>,  <31.927614, 34.345547, 51.407307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.866465, 34.164764, 51.552834>,  <31.764549, 33.863461, 51.795380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866465, 34.164764, 51.552834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904121, -0.407989, -0.126925,
		-0.343000, -0.515892, -0.784988,
		0.254787, 0.753260, -0.606369,
		31.942902, 34.390743, 51.370922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101292, 33.482941, 51.359348>,  <31.764549, 33.863461, 51.795380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101292, 33.482941, 51.359348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.224728, 33.861279, 51.319061>,  <32.298790, 34.088284, 51.294891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.224728, 33.861279, 51.319061>,  <32.101292, 33.482941, 51.359348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224728, 33.861279, 51.319061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950807, -0.303702, 0.061076,
		0.027181, -0.114608, -0.993039,
		0.308588, 0.945849, -0.100715,
		32.317303, 34.145035, 51.288845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.043116, 34.740337, 34.920135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.184387, 35.114159, 34.937450>,  <24.269150, 35.338451, 34.947838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.184387, 35.114159, 34.937450>,  <24.043116, 34.740337, 34.920135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.184387, 35.114159, 34.937450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834683, -0.335658, 0.436622,
		0.422576, -0.118073, -0.898603,
		0.353177, 0.934554, 0.043288,
		24.290340, 35.394524, 34.950436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.722326, 34.570312, 34.582222>,  <24.043116, 34.740337, 34.920135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.722326, 34.570312, 34.582222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.673494, 34.888638, 34.819466>,  <24.644196, 35.079632, 34.961811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.673494, 34.888638, 34.819466>,  <24.722326, 34.570312, 34.582222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.673494, 34.888638, 34.819466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788354, -0.285300, 0.545070,
		0.602988, 0.534123, -0.592552,
		-0.122079, 0.795811, 0.593111,
		24.636871, 35.127380, 34.997398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355684, 35.111168, 34.594757>,  <24.722326, 34.570312, 34.582222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355684, 35.111168, 34.594757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.136314, 35.138546, 34.928116>,  <25.004692, 35.154972, 35.128132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.136314, 35.138546, 34.928116>,  <25.355684, 35.111168, 34.594757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.136314, 35.138546, 34.928116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804278, -0.229570, 0.548119,
		0.228841, 0.970882, 0.070850,
		-0.548424, 0.068449, 0.833394,
		24.971786, 35.159081, 35.178135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071505, 35.428333, 34.348671>,  <25.355684, 35.111168, 34.594757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071505, 35.428333, 34.348671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.677402, 35.480896, 34.304848>,  <25.440941, 35.512432, 34.278553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.677402, 35.480896, 34.304848>,  <26.071505, 35.428333, 34.348671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.677402, 35.480896, 34.304848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167509, 0.871161, -0.461540,
		0.034792, -0.473087, -0.880328,
		-0.985256, 0.131405, -0.109556,
		25.381826, 35.520317, 34.271980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672430, 34.864555, 34.683674>,  <26.071505, 35.428333, 34.348671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672430, 34.864555, 34.683674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.971502, 34.887314, 34.948322>,  <27.150946, 34.900967, 35.107109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.971502, 34.887314, 34.948322>,  <26.672430, 34.864555, 34.683674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.971502, 34.887314, 34.948322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033330, -0.998283, 0.048178,
		0.663222, -0.013970, -0.748292,
		0.747680, 0.056893, 0.661618,
		27.195807, 34.904381, 35.146809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057121, 34.231750, 34.581131>,  <26.672430, 34.864555, 34.683674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057121, 34.231750, 34.581131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.171906, 34.330193, 34.951447>,  <27.240776, 34.389259, 35.173637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.171906, 34.330193, 34.951447>,  <27.057121, 34.231750, 34.581131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.171906, 34.330193, 34.951447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031417, -0.968332, 0.247679,
		0.957427, -0.041989, -0.285605,
		0.286960, 0.246108, 0.925789,
		27.257994, 34.404026, 35.229183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730618, 33.961884, 34.810867>,  <27.057121, 34.231750, 34.581131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730618, 33.961884, 34.810867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.474026, 34.006691, 35.114433>,  <27.320070, 34.033577, 35.296574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.474026, 34.006691, 35.114433>,  <27.730618, 33.961884, 34.810867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474026, 34.006691, 35.114433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006268, -0.988482, 0.151207,
		0.767115, 0.101753, 0.633389,
		-0.641479, 0.112023, 0.758917,
		27.281582, 34.040298, 35.342110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020668, 33.647251, 35.471748>,  <27.730618, 33.961884, 34.810867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020668, 33.647251, 35.471748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.621788, 33.629280, 35.447823>,  <27.382460, 33.618496, 35.433468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.621788, 33.629280, 35.447823>,  <28.020668, 33.647251, 35.471748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621788, 33.629280, 35.447823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032795, -0.981188, 0.190246,
		-0.067237, 0.187752, 0.979912,
		-0.997198, -0.044928, -0.059815,
		27.322628, 33.615803, 35.429878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698996, 33.240395, 36.007515>,  <28.020668, 33.647251, 35.471748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698996, 33.240395, 36.007515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.474804, 33.230274, 35.676403>,  <27.340290, 33.224201, 35.477734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.474804, 33.230274, 35.676403>,  <27.698996, 33.240395, 36.007515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474804, 33.230274, 35.676403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068734, -0.994664, 0.076936,
		-0.825312, 0.100018, 0.555748,
		-0.560478, -0.025297, -0.827783,
		27.306660, 33.222687, 35.428066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076794, 32.907379, 36.227531>,  <27.698996, 33.240395, 36.007515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076794, 32.907379, 36.227531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.169273, 32.854809, 35.841938>,  <27.224762, 32.823265, 35.610580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.169273, 32.854809, 35.841938>,  <27.076794, 32.907379, 36.227531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169273, 32.854809, 35.841938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125559, -0.986578, 0.104395,
		-0.964770, 0.096901, -0.244600,
		0.231201, -0.131429, -0.963988,
		27.238634, 32.815380, 35.552742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.449158, 32.935303, 36.532700>,  <27.076794, 32.907379, 36.227531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.449158, 32.935303, 36.532700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.317238, 33.219887, 36.284489>,  <26.238087, 33.390636, 36.135563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.317238, 33.219887, 36.284489>,  <26.449158, 32.935303, 36.532700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.317238, 33.219887, 36.284489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383062, -0.701614, -0.600833,
		-0.862841, 0.039547, 0.503926,
		-0.329800, 0.711458, -0.620531,
		26.218298, 33.433323, 36.098328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608006, 33.068554, 37.237698>,  <26.449158, 32.935303, 36.532700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608006, 33.068554, 37.237698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.289923, 33.306732, 37.283451>,  <26.099073, 33.449638, 37.310902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.289923, 33.306732, 37.283451>,  <26.608006, 33.068554, 37.237698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289923, 33.306732, 37.283451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335800, 0.275423, 0.900767,
		0.504859, 0.754706, -0.418971,
		-0.795208, 0.595450, 0.114381,
		26.051361, 33.485367, 37.317764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188868, 32.706326, 37.553154>,  <26.608006, 33.068554, 37.237698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188868, 32.706326, 37.553154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.006123, 32.744892, 37.906872>,  <26.896475, 32.768032, 38.119102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.006123, 32.744892, 37.906872>,  <27.188868, 32.706326, 37.553154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006123, 32.744892, 37.906872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858526, -0.212412, 0.466706,
		0.232832, 0.972412, 0.014269,
		-0.456862, 0.096414, 0.884297,
		26.869064, 32.773815, 38.172161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428251, 33.184277, 38.020760>,  <27.188868, 32.706326, 37.553154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428251, 33.184277, 38.020760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.268490, 32.897232, 38.248974>,  <27.172634, 32.725006, 38.385902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.268490, 32.897232, 38.248974>,  <27.428251, 33.184277, 38.020760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268490, 32.897232, 38.248974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898429, -0.182495, 0.399402,
		-0.182495, 0.672110, 0.717610,
		-0.399402, -0.717610, 0.570539,
		27.148670, 32.681950, 38.420135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491640, 33.246033, 38.744576>,  <27.428251, 33.184277, 38.020760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491640, 33.246033, 38.744576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.528154, 32.868645, 38.617123>,  <27.550062, 32.642212, 38.540649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.528154, 32.868645, 38.617123>,  <27.491640, 33.246033, 38.744576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528154, 32.868645, 38.617123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928020, -0.035453, 0.370840,
		-0.361174, -0.329549, 0.872325,
		0.091284, -0.943473, -0.318632,
		27.555540, 32.585602, 38.521534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640450, 32.809647, 39.261181>,  <27.491640, 33.246033, 38.744576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640450, 32.809647, 39.261181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.786167, 32.683216, 38.910778>,  <27.873598, 32.607357, 38.700539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.786167, 32.683216, 38.910778>,  <27.640450, 32.809647, 39.261181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786167, 32.683216, 38.910778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929900, 0.072200, 0.360657,
		-0.050747, -0.945983, 0.320222,
		0.364295, -0.316076, -0.876005,
		27.895456, 32.588394, 38.647976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127708, 32.389530, 39.435516>,  <27.640450, 32.809647, 39.261181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127708, 32.389530, 39.435516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.201902, 32.509567, 39.061234>,  <28.246418, 32.581589, 38.836666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.201902, 32.509567, 39.061234>,  <28.127708, 32.389530, 39.435516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201902, 32.509567, 39.061234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982628, -0.050736, 0.178514,
		0.006097, -0.952560, -0.304290,
		0.185484, 0.300092, -0.935703,
		28.257547, 32.599594, 38.780521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024788, 32.418434, 40.160198>,  <28.127708, 32.389530, 39.435516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024788, 32.418434, 40.160198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.966871, 32.770756, 39.979881>,  <27.932121, 32.982151, 39.871689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.966871, 32.770756, 39.979881>,  <28.024788, 32.418434, 40.160198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966871, 32.770756, 39.979881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081587, 0.464671, 0.881717,
		0.986093, 0.090884, -0.139142,
		-0.144789, 0.880807, -0.450794,
		27.923435, 33.034996, 39.844643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522776, 32.984676, 40.024559>,  <28.024788, 32.418434, 40.160198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522776, 32.984676, 40.024559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.845591, 33.187656, 39.903774>,  <29.039280, 33.309444, 39.831303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.845591, 33.187656, 39.903774>,  <28.522776, 32.984676, 40.024559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845591, 33.187656, 39.903774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432221, 0.856061, 0.283450,
		0.402337, -0.098240, 0.910205,
		0.807038, 0.507452, -0.301963,
		29.087702, 33.339893, 39.813187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720881, 33.340752, 40.625381>,  <28.522776, 32.984676, 40.024559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720881, 33.340752, 40.625381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.869061, 33.525311, 40.302921>,  <28.957968, 33.636044, 40.109444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.869061, 33.525311, 40.302921>,  <28.720881, 33.340752, 40.625381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869061, 33.525311, 40.302921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435616, 0.852837, 0.287935,
		0.820369, 0.244509, 0.516924,
		0.370449, 0.461394, -0.806154,
		28.980196, 33.663727, 40.061077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197254, 33.919098, 40.805439>,  <28.720881, 33.340752, 40.625381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197254, 33.919098, 40.805439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.068151, 33.982620, 40.432213>,  <28.990690, 34.020733, 40.208279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.068151, 33.982620, 40.432213>,  <29.197254, 33.919098, 40.805439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068151, 33.982620, 40.432213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281021, 0.925288, 0.254694,
		0.903800, 0.344415, -0.254016,
		-0.322759, 0.158808, -0.933063,
		28.971323, 34.030262, 40.152294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902840, 33.552120, 40.752228>,  <29.197254, 33.919098, 40.805439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902840, 33.552120, 40.752228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.301481, 33.537979, 40.722485>,  <30.540667, 33.529495, 40.704639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.301481, 33.537979, 40.722485>,  <29.902840, 33.552120, 40.752228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301481, 33.537979, 40.722485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069796, -0.116299, 0.990759,
		-0.043672, -0.992585, -0.113436,
		0.996605, -0.035351, -0.074358,
		30.600462, 33.527374, 40.700176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281033, 33.733612, 41.400185>,  <29.902840, 33.552120, 40.752228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281033, 33.733612, 41.400185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.655796, 33.790138, 41.272289>,  <30.880653, 33.824055, 41.195553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.655796, 33.790138, 41.272289>,  <30.281033, 33.733612, 41.400185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655796, 33.790138, 41.272289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195055, 0.547696, 0.813623,
		0.290094, -0.824657, 0.485577,
		0.936909, 0.141313, -0.319737,
		30.936869, 33.832531, 41.176369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637228, 33.838707, 41.991810>,  <30.281033, 33.733612, 41.400185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637228, 33.838707, 41.991810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.882832, 33.987362, 41.713276>,  <31.030193, 34.076557, 41.546158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.882832, 33.987362, 41.713276>,  <30.637228, 33.838707, 41.991810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882832, 33.987362, 41.713276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460858, 0.547413, 0.698533,
		0.640784, -0.749815, 0.164842,
		0.614008, 0.371640, -0.696332,
		31.067034, 34.098854, 41.504375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365063, 33.706623, 42.175446>,  <30.637228, 33.838707, 41.991810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365063, 33.706623, 42.175446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.343410, 34.040340, 41.955982>,  <31.330420, 34.240570, 41.824303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.343410, 34.040340, 41.955982>,  <31.365063, 33.706623, 42.175446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343410, 34.040340, 41.955982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483098, 0.502760, 0.716832,
		0.873891, -0.226253, -0.430260,
		-0.054132, 0.834292, -0.548660,
		31.327171, 34.290627, 41.791386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971085, 34.109596, 42.368851>,  <31.365063, 33.706623, 42.175446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971085, 34.109596, 42.368851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.720648, 34.382584, 42.217987>,  <31.570385, 34.546375, 42.127468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.720648, 34.382584, 42.217987>,  <31.971085, 34.109596, 42.368851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720648, 34.382584, 42.217987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349629, 0.678049, 0.646536,
		0.696971, 0.272925, -0.663131,
		-0.626091, 0.682467, -0.377158,
		31.532820, 34.587322, 42.104839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400715, 34.714848, 42.179226>,  <31.971085, 34.109596, 42.368851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400715, 34.714848, 42.179226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.030716, 34.829639, 42.278835>,  <31.808716, 34.898514, 42.338600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.030716, 34.829639, 42.278835>,  <32.400715, 34.714848, 42.179226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030716, 34.829639, 42.278835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379797, 0.678843, 0.628431,
		0.011301, 0.675878, -0.736927,
		-0.925001, 0.286984, 0.249025,
		31.753216, 34.915733, 42.353542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329811, 35.160709, 42.795925>,  <32.400715, 34.714848, 42.179226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329811, 35.160709, 42.795925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.715256, 35.251072, 42.853096>,  <32.946522, 35.305290, 42.887398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.715256, 35.251072, 42.853096>,  <32.329811, 35.160709, 42.795925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715256, 35.251072, 42.853096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174625, 0.127119, 0.976395,
		0.202410, -0.965818, 0.161942,
		0.963606, 0.225911, 0.142926,
		33.004337, 35.318844, 42.895973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574776, 34.768131, 43.411240>,  <32.329811, 35.160709, 42.795925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574776, 34.768131, 43.411240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.741943, 35.128323, 43.363110>,  <32.842243, 35.344437, 43.334232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.741943, 35.128323, 43.363110>,  <32.574776, 34.768131, 43.411240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741943, 35.128323, 43.363110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080037, 0.168421, 0.982460,
		0.904951, -0.400961, 0.142458,
		0.417921, 0.900480, -0.120321,
		32.867321, 35.398468, 43.327015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017792, 34.746880, 44.048664>,  <32.574776, 34.768131, 43.411240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017792, 34.746880, 44.048664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.908550, 35.108170, 43.916237>,  <32.843006, 35.324944, 43.836781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.908550, 35.108170, 43.916237>,  <33.017792, 34.746880, 44.048664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908550, 35.108170, 43.916237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126620, 0.307405, 0.943117,
		0.953614, 0.299493, 0.030411,
		-0.273108, 0.903220, -0.331067,
		32.826618, 35.379135, 43.816917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579010, 35.098171, 44.195702>,  <33.017792, 34.746880, 44.048664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579010, 35.098171, 44.195702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.209827, 35.248013, 44.231075>,  <32.988316, 35.337917, 44.252300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.209827, 35.248013, 44.231075>,  <33.579010, 35.098171, 44.195702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209827, 35.248013, 44.231075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091359, -0.009977, 0.995768,
		0.373898, 0.927133, -0.025015,
		-0.922959, 0.374601, 0.088432,
		32.932941, 35.360394, 44.257607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589600, 35.594975, 44.622726>,  <33.579010, 35.098171, 44.195702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589600, 35.594975, 44.622726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.220261, 35.445503, 44.658024>,  <32.998657, 35.355820, 44.679203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.220261, 35.445503, 44.658024>,  <33.589600, 35.594975, 44.622726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220261, 35.445503, 44.658024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029988, 0.158939, 0.986833,
		-0.382786, 0.913839, -0.135551,
		-0.923350, -0.373681, 0.088244,
		32.943256, 35.333401, 44.684498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309856, 35.959980, 45.061218>,  <33.589600, 35.594975, 44.622726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309856, 35.959980, 45.061218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.015789, 35.688885, 45.055599>,  <32.839348, 35.526230, 45.052227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.015789, 35.688885, 45.055599>,  <33.309856, 35.959980, 45.061218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015789, 35.688885, 45.055599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187215, 0.183073, 0.965109,
		-0.651517, 0.712150, -0.261472,
		-0.735171, -0.677736, -0.014049,
		32.795238, 35.485565, 45.051384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442062, 36.702480, 45.254391>,  <33.309856, 35.959980, 45.061218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442062, 36.702480, 45.254391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.046913, 36.763943, 45.263317>,  <32.809822, 36.800819, 45.268673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.046913, 36.763943, 45.263317>,  <33.442062, 36.702480, 45.254391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046913, 36.763943, 45.263317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121322, -0.853547, 0.506694,
		0.096902, 0.497841, 0.861838,
		-0.987872, 0.153659, 0.022312,
		32.750553, 36.810040, 45.270012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243713, 36.768719, 45.904324>,  <33.442062, 36.702480, 45.254391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243713, 36.768719, 45.904324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.954845, 36.610020, 45.677677>,  <32.781525, 36.514801, 45.541687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.954845, 36.610020, 45.677677>,  <33.243713, 36.768719, 45.904324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954845, 36.610020, 45.677677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173330, -0.689224, 0.703510,
		-0.669644, 0.606268, 0.428971,
		-0.722173, -0.396748, -0.566620,
		32.738194, 36.490993, 45.507690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550385, 36.821404, 46.231956>,  <33.243713, 36.768719, 45.904324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550385, 36.821404, 46.231956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.652981, 36.508724, 46.004570>,  <32.714539, 36.321117, 45.868137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.652981, 36.508724, 46.004570>,  <32.550385, 36.821404, 46.231956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652981, 36.508724, 46.004570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055387, -0.599066, 0.798782,
		-0.964959, -0.173394, -0.196951,
		0.256491, -0.781700, -0.568470,
		32.729927, 36.274216, 45.834030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159882, 36.882156, 46.766197>,  <32.550385, 36.821404, 46.231956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159882, 36.882156, 46.766197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.433765, 36.700951, 46.994568>,  <33.598095, 36.592228, 47.131592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.433765, 36.700951, 46.994568>,  <33.159882, 36.882156, 46.766197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433765, 36.700951, 46.994568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368663, 0.891028, 0.264872,
		-0.628702, 0.029121, 0.777101,
		0.684705, -0.453014, 0.570926,
		33.639175, 36.565048, 47.165844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877125, 36.886730, 46.526443>,  <33.159882, 36.882156, 46.766197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877125, 36.886730, 46.526443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.164143, 36.764172, 46.776642>,  <34.336353, 36.690636, 46.926762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.164143, 36.764172, 46.776642>,  <33.877125, 36.886730, 46.526443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164143, 36.764172, 46.776642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693123, -0.402584, 0.597919,
		0.068612, -0.862581, -0.501245,
		0.717547, -0.306400, 0.625497,
		34.379406, 36.672253, 46.964291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994560, 36.106014, 46.491394>,  <33.877125, 36.886730, 46.526443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994560, 36.106014, 46.491394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096481, 36.284111, 46.834751>,  <34.157635, 36.390968, 47.040764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096481, 36.284111, 46.834751>,  <33.994560, 36.106014, 46.491394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096481, 36.284111, 46.834751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719076, -0.506272, 0.476045,
		0.646535, -0.738544, 0.191167,
		0.254798, 0.445243, 0.858392,
		34.172920, 36.417683, 47.092270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296875, 35.701374, 47.023525>,  <33.994560, 36.106014, 46.491394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296875, 35.701374, 47.023525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.103519, 35.985119, 47.228714>,  <33.987507, 36.155365, 47.351830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.103519, 35.985119, 47.228714>,  <34.296875, 35.701374, 47.023525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103519, 35.985119, 47.228714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676707, -0.674528, 0.295091,
		0.555343, -0.204493, 0.806087,
		-0.483385, 0.709362, 0.512977,
		33.958504, 36.197929, 47.382607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179413, 35.513580, 47.835258>,  <34.296875, 35.701374, 47.023525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179413, 35.513580, 47.835258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.901222, 35.774895, 47.715569>,  <33.734310, 35.931683, 47.643753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.901222, 35.774895, 47.715569>,  <34.179413, 35.513580, 47.835258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901222, 35.774895, 47.715569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712783, -0.574559, 0.402271,
		0.090876, 0.493050, 0.865242,
		-0.695472, 0.653287, -0.299224,
		33.692581, 35.970882, 47.625801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858448, 36.072243, 48.100765>,  <34.179413, 35.513580, 47.835258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858448, 36.072243, 48.100765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.900921, 35.837082, 48.421539>,  <33.926403, 35.695984, 48.614002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.900921, 35.837082, 48.421539>,  <33.858448, 36.072243, 48.100765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900921, 35.837082, 48.421539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978565, -0.081337, -0.189193,
		0.176454, 0.804832, 0.566665,
		0.106178, -0.587902, 0.801933,
		33.932774, 35.660709, 48.662121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376968, 36.338161, 48.489128>,  <33.858448, 36.072243, 48.100765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376968, 36.338161, 48.489128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.359123, 35.958473, 48.613701>,  <34.348415, 35.730659, 48.688446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.359123, 35.958473, 48.613701>,  <34.376968, 36.338161, 48.489128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359123, 35.958473, 48.613701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992757, -0.007315, 0.119913,
		-0.111545, 0.314528, 0.942672,
		-0.044612, -0.949220, 0.311434,
		34.345741, 35.673706, 48.707130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771465, 36.370152, 49.062187>,  <34.376968, 36.338161, 48.489128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771465, 36.370152, 49.062187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.732792, 35.981857, 48.974251>,  <34.709587, 35.748882, 48.921490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.732792, 35.981857, 48.974251>,  <34.771465, 36.370152, 49.062187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732792, 35.981857, 48.974251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992375, -0.110980, 0.053627,
		-0.076456, -0.212984, 0.974060,
		-0.096680, -0.970732, -0.219845,
		34.703789, 35.690639, 48.908298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144878, 36.039211, 49.596516>,  <34.771465, 36.370152, 49.062187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144878, 36.039211, 49.596516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.123337, 35.773842, 49.297997>,  <35.110413, 35.614620, 49.118885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.123337, 35.773842, 49.297997>,  <35.144878, 36.039211, 49.596516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123337, 35.773842, 49.297997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998417, -0.023617, -0.051057,
		0.016247, -0.747870, 0.663646,
		-0.053857, -0.663425, -0.746302,
		35.107178, 35.574814, 49.074104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803082, 35.732094, 49.693344>,  <35.144878, 36.039211, 49.596516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803082, 35.732094, 49.693344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.674820, 35.615330, 49.332909>,  <35.597862, 35.545269, 49.116646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.674820, 35.615330, 49.332909>,  <35.803082, 35.732094, 49.693344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674820, 35.615330, 49.332909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934749, -0.251248, -0.251236,
		-0.153059, -0.922855, 0.353428,
		-0.320652, -0.291912, -0.901093,
		35.578625, 35.527756, 49.062580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090900, 35.157421, 49.637218>,  <35.803082, 35.732094, 49.693344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090900, 35.157421, 49.637218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.013096, 35.246010, 49.254990>,  <35.966415, 35.299164, 49.025654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.013096, 35.246010, 49.254990>,  <36.090900, 35.157421, 49.637218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013096, 35.246010, 49.254990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938686, -0.240688, -0.246856,
		-0.284665, -0.944998, -0.161075,
		-0.194509, 0.221470, -0.955572,
		35.954742, 35.312450, 48.968319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424732, 34.694679, 49.321182>,  <36.090900, 35.157421, 49.637218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424732, 34.694679, 49.321182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.360531, 34.974144, 49.042297>,  <36.322010, 35.141823, 48.874966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.360531, 34.974144, 49.042297>,  <36.424732, 34.694679, 49.321182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360531, 34.974144, 49.042297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932707, -0.123761, -0.338733,
		-0.322948, -0.704666, -0.631784,
		-0.160503, 0.698663, -0.697215,
		36.312382, 35.183743, 48.833134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639156, 34.341274, 48.741707>,  <36.424732, 34.694679, 49.321182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639156, 34.341274, 48.741707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.655846, 34.732075, 48.658058>,  <36.665859, 34.966553, 48.607868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.655846, 34.732075, 48.658058>,  <36.639156, 34.341274, 48.741707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655846, 34.732075, 48.658058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904914, -0.125677, -0.406616,
		-0.423546, -0.172276, -0.889342,
		0.041719, 0.976999, -0.209125,
		36.668362, 35.025173, 48.595322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637199, 34.348362, 47.993420>,  <36.639156, 34.341274, 48.741707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637199, 34.348362, 47.993420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779251, 34.705582, 48.103951>,  <36.864483, 34.919914, 48.170269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779251, 34.705582, 48.103951>,  <36.637199, 34.348362, 47.993420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779251, 34.705582, 48.103951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806740, -0.143437, -0.573234,
		-0.472289, 0.426492, -0.771393,
		0.355126, 0.893046, 0.276325,
		36.885788, 34.973495, 48.186848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834225, 34.627930, 47.370434>,  <36.637199, 34.348362, 47.993420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834225, 34.627930, 47.370434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.025303, 34.824150, 47.661961>,  <37.139950, 34.941883, 47.836876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.025303, 34.824150, 47.661961>,  <36.834225, 34.627930, 47.370434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025303, 34.824150, 47.661961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830487, 0.018419, -0.556734,
		-0.286530, 0.871218, -0.398598,
		0.477694, 0.490551, 0.728813,
		37.168610, 34.971317, 47.880604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241325, 35.078899, 46.938763>,  <36.834225, 34.627930, 47.370434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241325, 35.078899, 46.938763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.403580, 35.052113, 47.303394>,  <37.500931, 35.036041, 47.522175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.403580, 35.052113, 47.303394>,  <37.241325, 35.078899, 46.938763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403580, 35.052113, 47.303394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878505, -0.246795, -0.409050,
		0.252365, 0.966751, -0.041280,
		0.405637, -0.066965, 0.911578,
		37.525272, 35.032024, 47.576866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847366, 35.425041, 46.906990>,  <37.241325, 35.078899, 46.938763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847366, 35.425041, 46.906990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.911766, 35.215523, 47.241585>,  <37.950405, 35.089809, 47.442341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.911766, 35.215523, 47.241585>,  <37.847366, 35.425041, 46.906990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911766, 35.215523, 47.241585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875939, -0.314695, -0.365647,
		0.454765, 0.791581, 0.408152,
		0.160996, -0.523800, 0.836489,
		37.960064, 35.058384, 47.492531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547916, 35.609562, 47.230492>,  <37.847366, 35.425041, 46.906990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547916, 35.609562, 47.230492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.437645, 35.232170, 47.304089>,  <38.371483, 35.005737, 47.348248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.437645, 35.232170, 47.304089>,  <38.547916, 35.609562, 47.230492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437645, 35.232170, 47.304089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845497, -0.329059, -0.420541,
		0.457316, 0.039635, 0.888421,
		-0.275675, -0.943477, 0.183995,
		38.354942, 34.949127, 47.359287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247799, 35.935795, 47.453552>,  <38.547916, 35.609562, 47.230492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247799, 35.935795, 47.453552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.198803, 35.779625, 47.818531>,  <39.169407, 35.685921, 48.037518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.198803, 35.779625, 47.818531>,  <39.247799, 35.935795, 47.453552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198803, 35.779625, 47.818531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751105, -0.637408, -0.171909,
		0.648720, 0.664288, 0.371327,
		-0.122489, -0.390426, 0.912449,
		39.162056, 35.662498, 48.092266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923775, 35.899868, 47.783089>,  <39.247799, 35.935795, 47.453552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923775, 35.899868, 47.783089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.661354, 35.631283, 47.920925>,  <39.503902, 35.470131, 48.003628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.661354, 35.631283, 47.920925>,  <39.923775, 35.899868, 47.783089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661354, 35.631283, 47.920925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681199, -0.723379, -0.112656,
		0.324916, 0.160830, 0.931968,
		-0.656047, -0.671459, 0.344594,
		39.464539, 35.429844, 48.024303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303478, 35.551449, 48.230804>,  <39.923775, 35.899868, 47.783089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303478, 35.551449, 48.230804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.981030, 35.346539, 48.112324>,  <39.787560, 35.223591, 48.041237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.981030, 35.346539, 48.112324>,  <40.303478, 35.551449, 48.230804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981030, 35.346539, 48.112324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580709, -0.781070, -0.229579,
		-0.113746, -0.357076, 0.927124,
		-0.806126, -0.512276, -0.296200,
		39.739193, 35.192856, 48.023464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316368, 34.888676, 48.525871>,  <40.303478, 35.551449, 48.230804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316368, 34.888676, 48.525871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.119637, 34.889229, 48.177593>,  <40.001598, 34.889561, 47.968628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.119637, 34.889229, 48.177593>,  <40.316368, 34.888676, 48.525871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119637, 34.889229, 48.177593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531222, -0.791838, -0.301323,
		-0.689864, -0.610729, 0.388712,
		-0.491824, 0.001379, -0.870693,
		39.972088, 34.889641, 47.916386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956303, 34.221703, 48.861481>,  <40.316368, 34.888676, 48.525871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956303, 34.221703, 48.861481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.129200, 34.033432, 48.553810>,  <40.232937, 33.920471, 48.369209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.129200, 34.033432, 48.553810>,  <39.956303, 34.221703, 48.861481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129200, 34.033432, 48.553810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881871, 0.042482, 0.469573,
		-0.188342, -0.881282, 0.433439,
		0.432239, -0.470678, -0.769176,
		40.258873, 33.892227, 48.323059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654968, 34.332832, 49.572857>,  <39.956303, 34.221703, 48.861481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654968, 34.332832, 49.572857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.569851, 34.688244, 49.735455>,  <39.518780, 34.901489, 49.833012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.569851, 34.688244, 49.735455>,  <39.654968, 34.332832, 49.572857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569851, 34.688244, 49.735455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086990, -0.431598, 0.897862,
		0.973218, 0.155695, 0.169133,
		-0.212790, 0.888528, 0.406495,
		39.506016, 34.954803, 49.857403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812229, 34.263187, 50.364246>,  <39.654968, 34.332832, 49.572857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812229, 34.263187, 50.364246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.614006, 34.609291, 50.333908>,  <39.495071, 34.816952, 50.315704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.614006, 34.609291, 50.333908>,  <39.812229, 34.263187, 50.364246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614006, 34.609291, 50.333908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240547, -0.052811, 0.969200,
		0.834602, 0.498538, 0.234306,
		-0.495556, 0.865258, -0.075845,
		39.465340, 34.868870, 50.311153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984520, 34.679665, 50.888435>,  <39.812229, 34.263187, 50.364246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984520, 34.679665, 50.888435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.624157, 34.818207, 50.783817>,  <39.407940, 34.901333, 50.721046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.624157, 34.818207, 50.783817>,  <39.984520, 34.679665, 50.888435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624157, 34.818207, 50.783817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265388, 0.037222, 0.963423,
		0.343423, 0.937364, 0.058385,
		-0.900905, 0.346356, -0.261548,
		39.353886, 34.922115, 50.705353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782883, 35.343506, 51.298637>,  <39.984520, 34.679665, 50.888435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782883, 35.343506, 51.298637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.456726, 35.147766, 51.174911>,  <39.261032, 35.030323, 51.100677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.456726, 35.147766, 51.174911>,  <39.782883, 35.343506, 51.298637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456726, 35.147766, 51.174911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339794, -0.028030, 0.940082,
		-0.468701, 0.871636, -0.143423,
		-0.815389, -0.489351, -0.309314,
		39.212109, 35.000961, 51.082119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313126, 35.582687, 51.652740>,  <39.782883, 35.343506, 51.298637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313126, 35.582687, 51.652740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.121403, 35.256725, 51.522392>,  <39.006367, 35.061150, 51.444183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.121403, 35.256725, 51.522392>,  <39.313126, 35.582687, 51.652740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121403, 35.256725, 51.522392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317559, -0.185112, 0.929995,
		-0.818179, 0.549240, -0.170054,
		-0.479311, -0.814905, -0.325870,
		38.977608, 35.012253, 51.424633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646439, 35.545845, 52.030525>,  <39.313126, 35.582687, 51.652740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646439, 35.545845, 52.030525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661041, 35.176750, 51.877048>,  <38.669804, 34.955292, 51.784962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661041, 35.176750, 51.877048>,  <38.646439, 35.545845, 52.030525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661041, 35.176750, 51.877048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514505, -0.346505, 0.784359,
		-0.856710, 0.168780, -0.487403,
		0.036504, -0.922739, -0.383693,
		38.671993, 34.899929, 51.761940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933064, 35.312794, 51.976738>,  <38.646439, 35.545845, 52.030525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933064, 35.312794, 51.976738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.169350, 34.990429, 51.960938>,  <38.311123, 34.797012, 51.951458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.169350, 34.990429, 51.960938>,  <37.933064, 35.312794, 51.976738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169350, 34.990429, 51.960938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516972, -0.415613, 0.748335,
		-0.619510, -0.421632, -0.662144,
		0.590718, -0.805911, -0.039504,
		38.346565, 34.748657, 51.949085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531658, 34.668446, 51.878048>,  <37.933064, 35.312794, 51.976738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531658, 34.668446, 51.878048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883522, 34.559010, 52.033661>,  <38.094639, 34.493347, 52.127029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883522, 34.559010, 52.033661>,  <37.531658, 34.668446, 51.878048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883522, 34.559010, 52.033661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470754, -0.384337, 0.794151,
		-0.067751, -0.881722, -0.466879,
		0.879659, -0.273589, 0.389036,
		38.147419, 34.476933, 52.150372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286903, 34.008163, 52.073887>,  <37.531658, 34.668446, 51.878048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286903, 34.008163, 52.073887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.624626, 34.086086, 52.273563>,  <37.827259, 34.132839, 52.393368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.624626, 34.086086, 52.273563>,  <37.286903, 34.008163, 52.073887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624626, 34.086086, 52.273563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343149, -0.518952, 0.782904,
		0.411567, -0.832311, -0.371310,
		0.844311, 0.194803, 0.499190,
		37.877918, 34.144527, 52.423321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382263, 33.425903, 52.401470>,  <37.286903, 34.008163, 52.073887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382263, 33.425903, 52.401470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.594501, 33.696014, 52.606392>,  <37.721844, 33.858082, 52.729347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.594501, 33.696014, 52.606392>,  <37.382263, 33.425903, 52.401470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594501, 33.696014, 52.606392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469014, -0.269546, 0.841054,
		0.706038, -0.686542, 0.173695,
		0.530600, 0.675281, 0.512307,
		37.753681, 33.898598, 52.760086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379238, 33.142033, 52.947445>,  <37.382263, 33.425903, 52.401470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379238, 33.142033, 52.947445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.522213, 33.499050, 53.057434>,  <37.607998, 33.713261, 53.123428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.522213, 33.499050, 53.057434>,  <37.379238, 33.142033, 52.947445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522213, 33.499050, 53.057434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378004, -0.130969, 0.916493,
		0.854021, -0.431528, 0.290571,
		0.357436, 0.892542, 0.274970,
		37.629444, 33.766811, 53.139927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535683, 33.004303, 53.608704>,  <37.379238, 33.142033, 52.947445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535683, 33.004303, 53.608704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.517094, 33.403137, 53.584492>,  <37.505939, 33.642437, 53.569965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.517094, 33.403137, 53.584492>,  <37.535683, 33.004303, 53.608704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517094, 33.403137, 53.584492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570413, 0.023255, 0.821029,
		0.820042, 0.072685, 0.567669,
		-0.046476, 0.997083, -0.060531,
		37.503151, 33.702263, 53.566334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839523, 33.286549, 54.217609>,  <37.535683, 33.004303, 53.608704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839523, 33.286549, 54.217609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.604332, 33.572437, 54.066105>,  <37.463219, 33.743969, 53.975201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.604332, 33.572437, 54.066105>,  <37.839523, 33.286549, 54.217609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604332, 33.572437, 54.066105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391986, 0.157832, 0.906331,
		0.707553, 0.681371, 0.187358,
		-0.587976, 0.714719, -0.378762,
		37.427940, 33.786854, 53.952477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783192, 33.768806, 54.718933>,  <37.839523, 33.286549, 54.217609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783192, 33.768806, 54.718933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.475681, 33.882168, 54.489616>,  <37.291176, 33.950184, 54.352024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.475681, 33.882168, 54.489616>,  <37.783192, 33.768806, 54.718933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475681, 33.882168, 54.489616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576167, 0.082075, 0.813201,
		0.277514, 0.955483, 0.100188,
		-0.768777, 0.283400, -0.573295,
		37.245049, 33.967186, 54.317627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594593, 34.479794, 54.939529>,  <37.783192, 33.768806, 54.718933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594593, 34.479794, 54.939529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251236, 34.350857, 54.779900>,  <37.045223, 34.273495, 54.684120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251236, 34.350857, 54.779900>,  <37.594593, 34.479794, 54.939529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251236, 34.350857, 54.779900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474230, 0.201936, 0.856929,
		-0.195637, 0.924834, -0.326204,
		-0.858389, -0.322343, -0.399078,
		36.993721, 34.254154, 54.660175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070213, 34.952236, 55.059097>,  <37.594593, 34.479794, 54.939529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070213, 34.952236, 55.059097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.863762, 34.617104, 54.987938>,  <36.739891, 34.416023, 54.945244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.863762, 34.617104, 54.987938>,  <37.070213, 34.952236, 55.059097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863762, 34.617104, 54.987938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624797, 0.226220, 0.747297,
		-0.585868, 0.496849, -0.640235,
		-0.516128, -0.837834, -0.177895,
		36.708923, 34.365753, 54.934570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346310, 35.137833, 55.169037>,  <37.070213, 34.952236, 55.059097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346310, 35.137833, 55.169037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.354530, 34.738796, 55.195515>,  <36.359463, 34.499374, 55.211403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.354530, 34.738796, 55.195515>,  <36.346310, 35.137833, 55.169037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354530, 34.738796, 55.195515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776566, 0.025777, 0.629508,
		-0.629700, -0.064344, -0.774169,
		0.020549, -0.997595, 0.066199,
		36.360695, 34.439518, 55.215374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621708, 35.001400, 55.229477>,  <36.346310, 35.137833, 55.169037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621708, 35.001400, 55.229477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.824924, 34.686077, 55.368305>,  <35.946854, 34.496883, 55.451603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.824924, 34.686077, 55.368305>,  <35.621708, 35.001400, 55.229477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824924, 34.686077, 55.368305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637310, -0.072980, 0.767145,
		-0.579419, -0.610933, -0.539475,
		0.508045, -0.788311, 0.347068,
		35.977337, 34.449585, 55.472427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094166, 34.573730, 55.515560>,  <35.621708, 35.001400, 55.229477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094166, 34.573730, 55.515560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.423450, 34.416279, 55.679207>,  <35.621021, 34.321808, 55.777397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.423450, 34.416279, 55.679207>,  <35.094166, 34.573730, 55.515560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423450, 34.416279, 55.679207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478894, -0.094401, 0.872783,
		-0.304931, -0.914410, -0.266219,
		0.823212, -0.393628, 0.409119,
		35.670414, 34.298191, 55.801941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828770, 34.047768, 55.888729>,  <35.094166, 34.573730, 55.515560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828770, 34.047768, 55.888729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.180054, 34.157310, 56.045570>,  <35.390823, 34.223038, 56.139675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.180054, 34.157310, 56.045570>,  <34.828770, 34.047768, 55.888729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180054, 34.157310, 56.045570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408250, 0.002152, 0.912868,
		0.249155, -0.961767, 0.113694,
		0.878210, 0.273862, 0.392105,
		35.443516, 34.239468, 56.163200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908821, 33.687164, 56.564266>,  <34.828770, 34.047768, 55.888729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908821, 33.687164, 56.564266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.162521, 33.994858, 56.595295>,  <35.314739, 34.179474, 56.613914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.162521, 33.994858, 56.595295>,  <34.908821, 33.687164, 56.564266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162521, 33.994858, 56.595295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478038, 0.311326, 0.821313,
		0.607628, -0.557997, 0.565179,
		0.634245, 0.769230, 0.077573,
		35.352795, 34.225628, 56.618568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201153, 33.805546, 57.200905>,  <34.908821, 33.687164, 56.564266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201153, 33.805546, 57.200905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.258316, 34.186028, 57.091522>,  <35.292614, 34.414318, 57.025890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.258316, 34.186028, 57.091522>,  <35.201153, 33.805546, 57.200905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258316, 34.186028, 57.091522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464236, 0.308437, 0.830272,
		0.874107, 0.008302, 0.485662,
		0.142904, 0.951209, -0.273461,
		35.301186, 34.471390, 57.009483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355251, 34.187874, 57.842735>,  <35.201153, 33.805546, 57.200905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355251, 34.187874, 57.842735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.248787, 34.469280, 57.579151>,  <35.184910, 34.638123, 57.421001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.248787, 34.469280, 57.579151>,  <35.355251, 34.187874, 57.842735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248787, 34.469280, 57.579151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462426, 0.506627, 0.727661,
		0.845767, 0.498393, 0.190481,
		-0.266158, 0.703515, -0.658959,
		35.168938, 34.680336, 57.381462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346970, 34.804947, 58.232079>,  <35.355251, 34.187874, 57.842735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346970, 34.804947, 58.232079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.145821, 34.938538, 57.913185>,  <35.025131, 35.018692, 57.721848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.145821, 34.938538, 57.913185>,  <35.346970, 34.804947, 58.232079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145821, 34.938538, 57.913185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512897, 0.627113, 0.586231,
		0.695744, 0.703696, -0.144058,
		-0.502869, 0.333979, -0.797233,
		34.994961, 35.038731, 57.674015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398743, 35.599834, 58.231041>,  <35.346970, 34.804947, 58.232079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398743, 35.599834, 58.231041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064545, 35.480301, 58.046585>,  <34.864025, 35.408581, 57.935913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064545, 35.480301, 58.046585>,  <35.398743, 35.599834, 58.231041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064545, 35.480301, 58.046585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524094, 0.685591, 0.505264,
		0.165160, 0.663823, -0.729425,
		-0.835493, -0.298838, -0.461138,
		34.813896, 35.390648, 57.908245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981434, 36.157379, 58.221558>,  <35.398743, 35.599834, 58.231041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981434, 36.157379, 58.221558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.735199, 35.852905, 58.139927>,  <34.587460, 35.670219, 58.090950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.735199, 35.852905, 58.139927>,  <34.981434, 36.157379, 58.221558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735199, 35.852905, 58.139927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671339, 0.370895, 0.641671,
		-0.412743, 0.532006, -0.739333,
		-0.615588, -0.761188, -0.204072,
		34.550522, 35.624550, 58.078705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397484, 36.540283, 58.174988>,  <34.981434, 36.157379, 58.221558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397484, 36.540283, 58.174988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.284756, 36.162212, 58.240971>,  <34.217117, 35.935368, 58.280560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.284756, 36.162212, 58.240971>,  <34.397484, 36.540283, 58.174988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284756, 36.162212, 58.240971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780747, 0.325843, 0.533160,
		-0.557684, 0.021461, -0.829776,
		-0.281819, -0.945180, 0.164962,
		34.200211, 35.878658, 58.290459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677494, 36.516304, 58.065262>,  <34.397484, 36.540283, 58.174988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677494, 36.516304, 58.065262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.717472, 36.163902, 58.250237>,  <33.741459, 35.952461, 58.361221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.717472, 36.163902, 58.250237>,  <33.677494, 36.516304, 58.065262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717472, 36.163902, 58.250237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871043, 0.147172, 0.468642,
		-0.480932, -0.449639, -0.752681,
		0.099946, -0.881002, 0.462435,
		33.747456, 35.899601, 58.388966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037830, 36.108353, 57.957207>,  <33.677494, 36.516304, 58.065262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037830, 36.108353, 57.957207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.224796, 35.967041, 58.281361>,  <33.336975, 35.882256, 58.475853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.224796, 35.967041, 58.281361>,  <33.037830, 36.108353, 57.957207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224796, 35.967041, 58.281361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879321, -0.091212, 0.467414,
		-0.091212, -0.931061, -0.353280,
		-0.467414, 0.353280, -0.810381,
		33.365021, 35.861057, 58.524475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579166, 35.711472, 58.321316>,  <33.037830, 36.108353, 57.957207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579166, 35.711472, 58.321316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.853798, 35.740700, 58.610664>,  <33.018578, 35.758236, 58.784271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.853798, 35.740700, 58.610664>,  <32.579166, 35.711472, 58.321316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853798, 35.740700, 58.610664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723279, 0.169873, 0.669336,
		-0.073971, -0.982753, 0.169483,
		0.686583, 0.073072, 0.723370,
		33.059772, 35.762623, 58.827675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425201, 35.223499, 58.815094>,  <32.579166, 35.711472, 58.321316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425201, 35.223499, 58.815094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.642410, 35.496582, 59.010658>,  <32.772736, 35.660431, 59.127995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.642410, 35.496582, 59.010658>,  <32.425201, 35.223499, 58.815094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642410, 35.496582, 59.010658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712889, 0.067135, 0.698056,
		0.443747, -0.727598, 0.523153,
		0.543026, 0.682710, 0.488906,
		32.805317, 35.701397, 59.157330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303757, 35.049034, 59.579754>,  <32.425201, 35.223499, 58.815094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303757, 35.049034, 59.579754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.445339, 35.423111, 59.575317>,  <32.530289, 35.647556, 59.572655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.445339, 35.423111, 59.575317>,  <32.303757, 35.049034, 59.579754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445339, 35.423111, 59.575317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613265, 0.241029, 0.752204,
		0.706130, -0.259448, 0.658837,
		0.353957, 0.935196, -0.011087,
		32.551525, 35.703671, 59.571991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476151, 35.214539, 60.251804>,  <32.303757, 35.049034, 59.579754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476151, 35.214539, 60.251804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.357639, 35.529243, 60.035202>,  <32.286533, 35.718067, 59.905239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.357639, 35.529243, 60.035202>,  <32.476151, 35.214539, 60.251804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357639, 35.529243, 60.035202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759476, 0.149718, 0.633072,
		0.579148, 0.598828, 0.553166,
		-0.296283, 0.786759, -0.541504,
		32.268753, 35.765270, 59.872749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093700, 35.588844, 60.662537>,  <32.476151, 35.214539, 60.251804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093700, 35.588844, 60.662537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.996256, 35.831127, 60.359547>,  <31.937788, 35.976498, 60.177753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.996256, 35.831127, 60.359547>,  <32.093700, 35.588844, 60.662537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996256, 35.831127, 60.359547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859843, 0.226434, 0.457600,
		0.448689, 0.762791, 0.465648,
		-0.243615, 0.605704, -0.757479,
		31.923172, 36.012840, 60.132301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970192, 36.229004, 60.955929>,  <32.093700, 35.588844, 60.662537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970192, 36.229004, 60.955929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.782043, 36.278126, 60.606377>,  <31.669155, 36.307598, 60.396645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.782043, 36.278126, 60.606377>,  <31.970192, 36.229004, 60.955929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782043, 36.278126, 60.606377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806528, 0.342066, 0.482185,
		0.358140, 0.931617, -0.061852,
		-0.470369, 0.122805, -0.873883,
		31.640932, 36.314968, 60.344212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721567, 36.830261, 60.990810>,  <31.970192, 36.229004, 60.955929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721567, 36.830261, 60.990810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.513947, 36.710358, 60.670628>,  <31.389374, 36.638416, 60.478519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.513947, 36.710358, 60.670628>,  <31.721567, 36.830261, 60.990810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513947, 36.710358, 60.670628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723564, 0.652630, 0.224788,
		0.455020, 0.695858, -0.555642,
		-0.519049, -0.299759, -0.800458,
		31.358232, 36.620430, 60.430489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619450, 37.343964, 60.637653>,  <31.721567, 36.830261, 60.990810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619450, 37.343964, 60.637653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.343876, 37.056625, 60.598984>,  <31.178532, 36.884220, 60.575783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.343876, 37.056625, 60.598984>,  <31.619450, 37.343964, 60.637653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343876, 37.056625, 60.598984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721843, 0.667881, 0.181323,
		-0.065686, 0.194704, -0.978660,
		-0.688933, -0.718349, -0.096675,
		31.137196, 36.841122, 60.569981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098660, 37.610214, 60.268604>,  <31.619450, 37.343964, 60.637653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098660, 37.610214, 60.268604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.928692, 37.314579, 60.477676>,  <30.826712, 37.137199, 60.603119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.928692, 37.314579, 60.477676>,  <31.098660, 37.610214, 60.268604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928692, 37.314579, 60.477676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739069, 0.616654, 0.271136,
		-0.522706, -0.271086, -0.808264,
		-0.424917, -0.739088, 0.522680,
		30.801216, 37.092854, 60.634480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429420, 37.635525, 59.977539>,  <31.098660, 37.610214, 60.268604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429420, 37.635525, 59.977539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.406879, 37.452553, 60.332523>,  <30.393354, 37.342770, 60.545513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.406879, 37.452553, 60.332523>,  <30.429420, 37.635525, 59.977539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406879, 37.452553, 60.332523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790058, 0.563893, 0.240485,
		-0.610436, -0.687590, -0.393176,
		-0.056354, -0.457433, 0.887457,
		30.389973, 37.315323, 60.598759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784931, 37.492577, 60.119419>,  <30.429420, 37.635525, 59.977539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784931, 37.492577, 60.119419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.937050, 37.501942, 60.489246>,  <30.028322, 37.507561, 60.711143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.937050, 37.501942, 60.489246>,  <29.784931, 37.492577, 60.119419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937050, 37.501942, 60.489246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738876, 0.608960, 0.288497,
		-0.556270, -0.792856, 0.248885,
		0.380298, 0.023413, 0.924568,
		30.051140, 37.508965, 60.766617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204346, 37.679958, 60.422832>,  <29.784931, 37.492577, 60.119419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204346, 37.679958, 60.422832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.503626, 37.745628, 60.679970>,  <29.683193, 37.785030, 60.834251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.503626, 37.745628, 60.679970>,  <29.204346, 37.679958, 60.422832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503626, 37.745628, 60.679970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466654, 0.818955, 0.333986,
		-0.471627, -0.549873, 0.689353,
		0.748199, 0.164172, 0.642842,
		29.728086, 37.794880, 60.872822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853632, 38.155621, 60.916424>,  <29.204346, 37.679958, 60.422832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853632, 38.155621, 60.916424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.223078, 38.169453, 61.069126>,  <29.444746, 38.177753, 61.160748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.223078, 38.169453, 61.069126>,  <28.853632, 38.155621, 60.916424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223078, 38.169453, 61.069126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186366, 0.910802, 0.368384,
		-0.334967, -0.411392, 0.847676,
		0.923615, 0.034581, 0.381758,
		29.500162, 38.179829, 61.183655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867689, 38.062504, 61.673561>,  <28.853632, 38.155621, 60.916424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867689, 38.062504, 61.673561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.176283, 38.283306, 61.547009>,  <29.361439, 38.415787, 61.471077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.176283, 38.283306, 61.547009>,  <28.867689, 38.062504, 61.673561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176283, 38.283306, 61.547009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376281, 0.796835, 0.472722,
		0.513050, -0.245649, 0.822457,
		0.771487, 0.552005, -0.316383,
		29.407728, 38.448906, 61.452095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269701, 38.316078, 62.160431>,  <28.867689, 38.062504, 61.673561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269701, 38.316078, 62.160431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.313614, 38.586639, 61.869110>,  <29.339962, 38.748978, 61.694317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.313614, 38.586639, 61.869110>,  <29.269701, 38.316078, 62.160431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313614, 38.586639, 61.869110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426768, 0.693832, 0.580057,
		0.897673, 0.247138, 0.364837,
		0.109782, 0.676402, -0.728305,
		29.346548, 38.789558, 61.650620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334454, 38.887337, 62.537731>,  <29.269701, 38.316078, 62.160431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334454, 38.887337, 62.537731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.208225, 38.985752, 62.171150>,  <29.132488, 39.044804, 61.951202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.208225, 38.985752, 62.171150>,  <29.334454, 38.887337, 62.537731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208225, 38.985752, 62.171150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429942, 0.823900, 0.369240,
		0.845911, 0.510541, -0.154215,
		-0.315570, 0.246041, -0.916449,
		29.113554, 39.059563, 61.896214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381060, 39.587631, 62.391457>,  <29.334454, 38.887337, 62.537731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381060, 39.587631, 62.391457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.070833, 39.469227, 62.168430>,  <28.884697, 39.398186, 62.034615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.070833, 39.469227, 62.168430>,  <29.381060, 39.587631, 62.391457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070833, 39.469227, 62.168430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551592, 0.747306, 0.370512,
		0.306996, 0.594904, -0.742860,
		-0.775564, -0.296010, -0.557565,
		28.838163, 39.380424, 62.001160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106052, 40.099125, 61.862350>,  <29.381060, 39.587631, 62.391457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106052, 40.099125, 61.862350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.823248, 39.873997, 62.033634>,  <28.653564, 39.738918, 62.136406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.823248, 39.873997, 62.033634>,  <29.106052, 40.099125, 61.862350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823248, 39.873997, 62.033634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458668, 0.825813, 0.328110,
		-0.538291, 0.035570, -0.842008,
		-0.707012, -0.562821, 0.428212,
		28.611145, 39.705151, 62.162098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093218, 40.878929, 61.636784>,  <29.106052, 40.099125, 61.862350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093218, 40.878929, 61.636784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.034697, 41.274563, 61.643684>,  <28.999584, 41.511944, 61.647827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.034697, 41.274563, 61.643684>,  <29.093218, 40.878929, 61.636784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034697, 41.274563, 61.643684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166104, -0.007367, -0.986081,
		-0.975195, -0.147135, 0.165370,
		-0.146305, 0.989089, 0.017255,
		28.990805, 41.571289, 61.648861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799276, 40.453400, 61.126125>,  <29.093218, 40.878929, 61.636784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799276, 40.453400, 61.126125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.449625, 40.267204, 61.070667>,  <28.239834, 40.155487, 61.037392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.449625, 40.267204, 61.070667>,  <28.799276, 40.453400, 61.126125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449625, 40.267204, 61.070667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409602, -0.553111, -0.725461,
		0.261007, -0.690935, 0.674154,
		-0.874129, -0.465485, -0.138643,
		28.187386, 40.127560, 61.029076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938759, 39.804333, 61.227070>,  <28.799276, 40.453400, 61.126125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938759, 39.804333, 61.227070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.615713, 39.834244, 60.993088>,  <28.421886, 39.852192, 60.852699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.615713, 39.834244, 60.993088>,  <28.938759, 39.804333, 61.227070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615713, 39.834244, 60.993088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434953, -0.594288, -0.676489,
		-0.398216, -0.800768, 0.447430,
		-0.807613, 0.074778, -0.584952,
		28.373428, 39.856678, 60.817604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498686, 39.384079, 61.025917>,  <28.938759, 39.804333, 61.227070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498686, 39.384079, 61.025917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.550550, 39.767147, 60.923111>,  <29.581669, 39.996986, 60.861427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.550550, 39.767147, 60.923111>,  <29.498686, 39.384079, 61.025917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550550, 39.767147, 60.923111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647803, -0.278053, -0.709252,
		-0.750693, -0.074534, -0.656434,
		0.129660, 0.957670, -0.257016,
		29.589449, 40.054447, 60.846004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174282, 39.646915, 60.314800>,  <29.498686, 39.384079, 61.025917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174282, 39.646915, 60.314800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.528212, 39.778717, 60.446564>,  <29.740570, 39.857800, 60.525623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.528212, 39.778717, 60.446564>,  <29.174282, 39.646915, 60.314800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528212, 39.778717, 60.446564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455780, -0.465386, -0.758736,
		-0.096707, 0.821487, -0.561967,
		0.884823, 0.329508, 0.329411,
		29.793659, 39.877571, 60.545387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578695, 39.845638, 59.786160>,  <29.174282, 39.646915, 60.314800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578695, 39.845638, 59.786160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.852222, 39.772404, 60.068684>,  <30.016338, 39.728462, 60.238197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.852222, 39.772404, 60.068684>,  <29.578695, 39.845638, 59.786160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852222, 39.772404, 60.068684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541153, -0.522062, -0.659246,
		0.489436, 0.833025, -0.257917,
		0.683818, -0.183086, 0.706310,
		30.057367, 39.717480, 60.280575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322533, 40.245117, 59.721218>,  <29.578695, 39.845638, 59.786160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322533, 40.245117, 59.721218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.333546, 39.896667, 59.917332>,  <30.340155, 39.687599, 60.035000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.333546, 39.896667, 59.917332>,  <30.322533, 40.245117, 59.721218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333546, 39.896667, 59.917332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629094, -0.366064, -0.685739,
		0.776842, 0.327319, 0.537940,
		0.027535, -0.871125, 0.490288,
		30.341806, 39.635330, 60.064419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992241, 40.093822, 59.685181>,  <30.322533, 40.245117, 59.721218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992241, 40.093822, 59.685181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.788589, 39.755814, 59.750568>,  <30.666399, 39.553009, 59.789803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.788589, 39.755814, 59.750568>,  <30.992241, 40.093822, 59.685181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788589, 39.755814, 59.750568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677946, -0.510743, -0.528706,
		0.530260, -0.158357, 0.832915,
		-0.509130, -0.845023, 0.163469,
		30.635851, 39.502308, 59.799610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527704, 39.487637, 59.984081>,  <30.992241, 40.093822, 59.685181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527704, 39.487637, 59.984081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.200928, 39.329594, 59.816032>,  <31.004862, 39.234768, 59.715202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.200928, 39.329594, 59.816032>,  <31.527704, 39.487637, 59.984081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200928, 39.329594, 59.816032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567341, -0.419710, -0.708497,
		0.103601, -0.817152, 0.567036,
		-0.816940, -0.395104, -0.420122,
		30.955845, 39.211063, 59.689995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671967, 38.718227, 59.813576>,  <31.527704, 39.487637, 59.984081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671967, 38.718227, 59.813576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.363234, 38.818245, 59.579739>,  <31.177994, 38.878254, 59.439434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.363234, 38.818245, 59.579739>,  <31.671967, 38.718227, 59.813576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363234, 38.818245, 59.579739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481834, -0.369891, -0.794366,
		-0.414862, -0.894796, 0.165015,
		-0.771832, 0.250043, -0.584597,
		31.131683, 38.893257, 59.404358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789030, 38.303894, 59.195805>,  <31.671967, 38.718227, 59.813576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789030, 38.303894, 59.195805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.520193, 38.566364, 59.058559>,  <31.358891, 38.723846, 58.976212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.520193, 38.566364, 59.058559>,  <31.789030, 38.303894, 59.195805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520193, 38.566364, 59.058559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378192, -0.094188, -0.920923,
		-0.636604, -0.748708, -0.184857,
		-0.672091, 0.656175, -0.343116,
		31.318565, 38.763218, 58.955624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698217, 38.108986, 58.584396>,  <31.789030, 38.303894, 59.195805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698217, 38.108986, 58.584396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.592161, 38.494648, 58.580353>,  <31.528528, 38.726048, 58.577927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.592161, 38.494648, 58.580353>,  <31.698217, 38.108986, 58.584396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592161, 38.494648, 58.580353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450993, 0.114744, -0.885121,
		-0.852237, -0.239237, -0.465251,
		-0.265138, 0.964157, -0.010105,
		31.512619, 38.783894, 58.577320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484009, 38.259769, 57.918709>,  <31.698217, 38.108986, 58.584396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484009, 38.259769, 57.918709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.567352, 38.613121, 58.086624>,  <31.617357, 38.825134, 58.187374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.567352, 38.613121, 58.086624>,  <31.484009, 38.259769, 57.918709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567352, 38.613121, 58.086624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440881, 0.298297, -0.846547,
		-0.873047, 0.361462, -0.327314,
		0.208358, 0.883382, 0.419789,
		31.629860, 38.878136, 58.212563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271782, 38.703228, 57.422451>,  <31.484009, 38.259769, 57.918709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271782, 38.703228, 57.422451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.491825, 38.933891, 57.664062>,  <31.623850, 39.072289, 57.809029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.491825, 38.933891, 57.664062>,  <31.271782, 38.703228, 57.422451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491825, 38.933891, 57.664062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401293, 0.451786, -0.796777,
		-0.732357, 0.680705, 0.017123,
		0.550107, 0.576654, 0.604031,
		31.656857, 39.106888, 57.845272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170918, 39.408920, 57.194069>,  <31.271782, 38.703228, 57.422451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170918, 39.408920, 57.194069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.514133, 39.401546, 57.399372>,  <31.720062, 39.397121, 57.522552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.514133, 39.401546, 57.399372>,  <31.170918, 39.408920, 57.194069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514133, 39.401546, 57.399372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431133, 0.568929, -0.700317,
		-0.279095, 0.822180, 0.496111,
		0.858038, -0.018435, 0.513255,
		31.771545, 39.396015, 57.553349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364498, 40.076393, 56.963390>,  <31.170918, 39.408920, 57.194069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364498, 40.076393, 56.963390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.694368, 39.888824, 57.089893>,  <31.892290, 39.776283, 57.165794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.694368, 39.888824, 57.089893>,  <31.364498, 40.076393, 56.963390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694368, 39.888824, 57.089893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491492, 0.317415, -0.810977,
		0.279902, 0.824231, 0.492237,
		0.824676, -0.468925, 0.316258,
		31.941771, 39.748146, 57.184772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929445, 40.566486, 57.088470>,  <31.364498, 40.076393, 56.963390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929445, 40.566486, 57.088470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.072208, 40.202602, 57.003571>,  <32.157867, 39.984272, 56.952633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.072208, 40.202602, 57.003571>,  <31.929445, 40.566486, 57.088470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072208, 40.202602, 57.003571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493601, 0.376560, -0.783940,
		0.793079, 0.175031, 0.583430,
		0.356910, -0.909707, -0.212246,
		32.179283, 39.929691, 56.939896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550541, 40.766209, 56.905052>,  <31.929445, 40.566486, 57.088470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550541, 40.766209, 56.905052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.498287, 40.392136, 56.773376>,  <32.466934, 40.167690, 56.694370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.498287, 40.392136, 56.773376>,  <32.550541, 40.766209, 56.905052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498287, 40.392136, 56.773376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568697, 0.201290, -0.797537,
		0.812106, -0.291396, 0.505541,
		-0.130639, -0.935185, -0.329185,
		32.459095, 40.111580, 56.674622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196934, 40.628822, 56.612209>,  <32.550541, 40.766209, 56.905052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196934, 40.628822, 56.612209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.955818, 40.362728, 56.435978>,  <32.811150, 40.203072, 56.330238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.955818, 40.362728, 56.435978>,  <33.196934, 40.628822, 56.612209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955818, 40.362728, 56.435978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540676, 0.065524, -0.838675,
		0.586787, -0.743751, 0.320182,
		-0.602786, -0.665238, -0.440577,
		32.774982, 40.163158, 56.303806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608288, 40.034512, 56.397003>,  <33.196934, 40.628822, 56.612209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608288, 40.034512, 56.397003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.287437, 40.078014, 56.162136>,  <33.094929, 40.104115, 56.021217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.287437, 40.078014, 56.162136>,  <33.608288, 40.034512, 56.397003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287437, 40.078014, 56.162136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569266, -0.157708, -0.806885,
		-0.180362, -0.981478, 0.064586,
		-0.802126, 0.108765, -0.587166,
		33.046799, 40.110641, 55.985985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726650, 39.601521, 55.842712>,  <33.608288, 40.034512, 56.397003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726650, 39.601521, 55.842712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.436016, 39.833450, 55.695267>,  <33.261635, 39.972607, 55.606800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.436016, 39.833450, 55.695267>,  <33.726650, 39.601521, 55.842712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436016, 39.833450, 55.695267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442364, -0.015727, -0.896698,
		-0.525724, -0.814590, -0.245066,
		-0.726587, 0.579824, -0.368613,
		33.218040, 40.007397, 55.584682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485237, 39.230206, 55.252846>,  <33.726650, 39.601521, 55.842712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485237, 39.230206, 55.252846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.387070, 39.616482, 55.218876>,  <33.328171, 39.848248, 55.198494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.387070, 39.616482, 55.218876>,  <33.485237, 39.230206, 55.252846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387070, 39.616482, 55.218876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338531, 0.003285, -0.940949,
		-0.908386, -0.259677, -0.327722,
		-0.245419, 0.965690, -0.084925,
		33.313442, 39.906189, 55.193398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134491, 39.317871, 54.623943>,  <33.485237, 39.230206, 55.252846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134491, 39.317871, 54.623943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.207317, 39.705639, 54.689777>,  <33.251011, 39.938297, 54.729279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.207317, 39.705639, 54.689777>,  <33.134491, 39.317871, 54.623943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207317, 39.705639, 54.689777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344837, 0.093802, -0.933964,
		-0.920837, 0.226794, -0.317213,
		0.182062, 0.969415, 0.164583,
		33.261936, 39.996464, 54.739151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822418, 39.699451, 54.086018>,  <33.134491, 39.317871, 54.623943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822418, 39.699451, 54.086018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.125149, 39.912018, 54.238235>,  <33.306786, 40.039558, 54.329567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.125149, 39.912018, 54.238235>,  <32.822418, 39.699451, 54.086018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125149, 39.912018, 54.238235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337856, 0.180333, -0.923761,
		-0.559527, 0.827693, -0.043062,
		0.756825, 0.531418, 0.380542,
		33.352196, 40.071442, 54.352398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849499, 40.310551, 53.719749>,  <32.822418, 39.699451, 54.086018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849499, 40.310551, 53.719749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.218136, 40.256332, 53.865238>,  <33.439320, 40.223801, 53.952530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.218136, 40.256332, 53.865238>,  <32.849499, 40.310551, 53.719749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218136, 40.256332, 53.865238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377192, 0.091599, -0.921594,
		0.091599, 0.986528, 0.135543,
		0.921594, -0.135543, 0.363720,
		33.494614, 40.215668, 53.974354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084293, 40.739143, 53.319817>,  <32.849499, 40.310551, 53.719749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084293, 40.739143, 53.319817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.423050, 40.566536, 53.444122>,  <33.626305, 40.462971, 53.518707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.423050, 40.566536, 53.444122>,  <33.084293, 40.739143, 53.319817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423050, 40.566536, 53.444122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345880, 0.003106, -0.938274,
		0.403916, 0.902099, 0.151884,
		0.846888, -0.431517, 0.310763,
		33.677116, 40.437080, 53.537350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605343, 40.980247, 52.865036>,  <33.084293, 40.739143, 53.319817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605343, 40.980247, 52.865036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.792870, 40.653973, 53.000599>,  <33.905388, 40.458206, 53.081936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.792870, 40.653973, 53.000599>,  <33.605343, 40.980247, 52.865036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792870, 40.653973, 53.000599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465728, -0.097748, -0.879513,
		0.750537, 0.570172, 0.334063,
		0.468820, -0.815689, 0.338909,
		33.933514, 40.409267, 53.102272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336201, 41.038452, 52.719090>,  <33.605343, 40.980247, 52.865036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336201, 41.038452, 52.719090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.223095, 40.655109, 52.735100>,  <34.155231, 40.425106, 52.744705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.223095, 40.655109, 52.735100>,  <34.336201, 41.038452, 52.719090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223095, 40.655109, 52.735100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674072, -0.228228, -0.702523,
		0.682400, -0.171668, 0.710535,
		-0.282765, -0.958354, 0.040026,
		34.138264, 40.367603, 52.747108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946362, 40.727421, 52.641777>,  <34.336201, 41.038452, 52.719090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946362, 40.727421, 52.641777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.704506, 40.413059, 52.589985>,  <34.559391, 40.224442, 52.558910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.704506, 40.413059, 52.589985>,  <34.946362, 40.727421, 52.641777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704506, 40.413059, 52.589985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600629, -0.343126, -0.722156,
		0.523118, -0.514414, 0.679504,
		-0.604642, -0.785903, -0.129477,
		34.523113, 40.177288, 52.551144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369751, 40.132885, 52.687500>,  <34.946362, 40.727421, 52.641777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369751, 40.132885, 52.687500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.039921, 40.023865, 52.489189>,  <34.842022, 39.958450, 52.370205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.039921, 40.023865, 52.489189>,  <35.369751, 40.132885, 52.687500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039921, 40.023865, 52.489189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560169, -0.270479, -0.782977,
		0.079307, -0.923339, 0.375707,
		-0.824574, -0.272555, -0.495775,
		34.792549, 39.942097, 52.340458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465458, 39.485462, 52.509377>,  <35.369751, 40.132885, 52.687500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465458, 39.485462, 52.509377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184650, 39.620594, 52.258606>,  <35.016167, 39.701672, 52.108143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184650, 39.620594, 52.258606>,  <35.465458, 39.485462, 52.509377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184650, 39.620594, 52.258606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506910, -0.381288, -0.773086,
		-0.500211, -0.860518, 0.096423,
		-0.702019, 0.337828, -0.626930,
		34.974045, 39.721943, 52.070526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247292, 38.810410, 52.102779>,  <35.465458, 39.485462, 52.509377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247292, 38.810410, 52.102779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.144001, 39.141201, 51.903008>,  <35.082027, 39.339676, 51.783146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.144001, 39.141201, 51.903008>,  <35.247292, 38.810410, 52.102779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144001, 39.141201, 51.903008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364394, -0.395403, -0.843134,
		-0.894728, -0.399706, -0.199243,
		-0.258225, 0.826978, -0.499428,
		35.066532, 39.389294, 51.753178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953274, 38.522793, 51.357426>,  <35.247292, 38.810410, 52.102779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953274, 38.522793, 51.357426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.041317, 38.912025, 51.330124>,  <35.094143, 39.145565, 51.313744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.041317, 38.912025, 51.330124>,  <34.953274, 38.522793, 51.357426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041317, 38.912025, 51.330124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428579, -0.159323, -0.889346,
		-0.876283, 0.166501, -0.452112,
		0.220109, 0.973085, -0.068253,
		35.107349, 39.203949, 51.309647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717098, 38.677795, 50.721977>,  <34.953274, 38.522793, 51.357426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717098, 38.677795, 50.721977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.975903, 38.966873, 50.819214>,  <35.131184, 39.140320, 50.877556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.975903, 38.966873, 50.819214>,  <34.717098, 38.677795, 50.721977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975903, 38.966873, 50.819214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492623, -0.152864, -0.856712,
		-0.581982, 0.674051, -0.454920,
		0.647008, 0.722695, 0.243089,
		35.170006, 39.183681, 50.892139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941418, 39.029175, 50.116123>,  <34.717098, 38.677795, 50.721977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941418, 39.029175, 50.116123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.236027, 39.141445, 50.362297>,  <35.412792, 39.208809, 50.510002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.236027, 39.141445, 50.362297>,  <34.941418, 39.029175, 50.116123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236027, 39.141445, 50.362297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661698, -0.110199, -0.741628,
		-0.140337, 0.953455, -0.266886,
		0.736520, 0.280676, 0.615434,
		35.456982, 39.225647, 50.546928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373695, 39.392662, 49.669102>,  <34.941418, 39.029175, 50.116123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373695, 39.392662, 49.669102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.610649, 39.332993, 49.985794>,  <35.752823, 39.297192, 50.175808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.610649, 39.332993, 49.985794>,  <35.373695, 39.392662, 49.669102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610649, 39.332993, 49.985794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779094, -0.144195, -0.610099,
		0.205172, 0.978241, 0.030799,
		0.592383, -0.149170, 0.791727,
		35.788364, 39.288242, 50.223312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053967, 39.849857, 49.619526>,  <35.373695, 39.392662, 49.669102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053967, 39.849857, 49.619526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.134037, 39.545650, 49.866604>,  <36.182079, 39.363129, 50.014851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.134037, 39.545650, 49.866604>,  <36.053967, 39.849857, 49.619526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134037, 39.545650, 49.866604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612460, -0.394967, -0.684759,
		0.764738, 0.515385, 0.386722,
		0.200172, -0.760513, 0.617698,
		36.194088, 39.317497, 50.051914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818237, 39.845203, 49.657734>,  <36.053967, 39.849857, 49.619526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818237, 39.845203, 49.657734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.660370, 39.491375, 49.757145>,  <36.565651, 39.279076, 49.816792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.660370, 39.491375, 49.757145>,  <36.818237, 39.845203, 49.657734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660370, 39.491375, 49.757145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608924, -0.454363, -0.650204,
		0.688076, -0.105280, 0.717961,
		-0.394669, -0.884573, 0.248529,
		36.541969, 39.226002, 49.831703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400040, 39.419041, 49.800465>,  <36.818237, 39.845203, 49.657734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400040, 39.419041, 49.800465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.080811, 39.188705, 49.729481>,  <36.889275, 39.050503, 49.686890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.080811, 39.188705, 49.729481>,  <37.400040, 39.419041, 49.800465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080811, 39.188705, 49.729481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565511, -0.614100, -0.550526,
		0.208034, -0.539716, 0.815738,
		-0.798072, -0.575837, -0.177462,
		36.841389, 39.015953, 49.676243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723682, 38.662376, 49.745792>,  <37.400040, 39.419041, 49.800465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723682, 38.662376, 49.745792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.360813, 38.679054, 49.578316>,  <37.143093, 38.689060, 49.477829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.360813, 38.679054, 49.578316>,  <37.723682, 38.662376, 49.745792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360813, 38.679054, 49.578316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331726, -0.541274, -0.772645,
		-0.258838, -0.839812, 0.477198,
		-0.907172, 0.041691, -0.418690,
		37.088661, 38.691563, 49.452709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606220, 37.918671, 49.616085>,  <37.723682, 38.662376, 49.745792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606220, 37.918671, 49.616085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.342358, 38.115772, 49.389088>,  <37.184040, 38.234035, 49.252888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.342358, 38.115772, 49.389088>,  <37.606220, 37.918671, 49.616085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342358, 38.115772, 49.389088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201259, -0.611685, -0.765073,
		-0.724123, -0.618895, 0.304328,
		-0.659652, 0.492757, -0.567493,
		37.144463, 38.263599, 49.218842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149971, 37.454540, 49.409389>,  <37.606220, 37.918671, 49.616085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149971, 37.454540, 49.409389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.106964, 37.743732, 49.136406>,  <37.081161, 37.917248, 48.972618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.106964, 37.743732, 49.136406>,  <37.149971, 37.454540, 49.409389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106964, 37.743732, 49.136406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272356, -0.638757, -0.719591,
		-0.956171, -0.263238, -0.128232,
		-0.107515, 0.722976, -0.682455,
		37.074711, 37.960625, 48.931671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746246, 37.169975, 48.795727>,  <37.149971, 37.454540, 49.409389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746246, 37.169975, 48.795727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.004696, 37.457962, 48.694393>,  <37.159763, 37.630753, 48.633595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.004696, 37.457962, 48.694393>,  <36.746246, 37.169975, 48.795727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004696, 37.457962, 48.694393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369241, -0.585354, -0.721818,
		-0.667973, 0.372841, -0.644051,
		0.646121, 0.719965, -0.253333,
		37.198532, 37.673950, 48.618393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765530, 37.202023, 48.111664>,  <36.746246, 37.169975, 48.795727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765530, 37.202023, 48.111664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102158, 37.406479, 48.181515>,  <37.304134, 37.529152, 48.223423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102158, 37.406479, 48.181515>,  <36.765530, 37.202023, 48.111664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102158, 37.406479, 48.181515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427592, -0.432885, -0.793584,
		-0.330044, 0.742523, -0.582864,
		0.841568, 0.511146, 0.174626,
		37.354630, 37.559822, 48.233902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896839, 37.578003, 47.468361>,  <36.765530, 37.202023, 48.111664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896839, 37.578003, 47.468361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251472, 37.609207, 47.650734>,  <37.464252, 37.627930, 47.760159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251472, 37.609207, 47.650734>,  <36.896839, 37.578003, 47.468361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251472, 37.609207, 47.650734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443673, -0.422219, -0.790497,
		0.130837, 0.903131, -0.408946,
		0.886587, 0.078012, 0.455936,
		37.517448, 37.632610, 47.787514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152706, 37.789864, 47.251274>,  <36.896839, 37.578003, 47.468361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152706, 37.789864, 47.251274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.887081, 37.924320, 46.984135>,  <35.727707, 38.004993, 46.823849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.887081, 37.924320, 46.984135>,  <36.152706, 37.789864, 47.251274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887081, 37.924320, 46.984135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422021, 0.568827, 0.705928,
		0.617183, 0.750630, -0.235880,
		-0.664066, 0.336140, -0.667852,
		35.687862, 38.025162, 46.783779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017567, 38.546108, 47.358517>,  <36.152706, 37.789864, 47.251274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017567, 38.546108, 47.358517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.700764, 38.416084, 47.151806>,  <35.510681, 38.338070, 47.027779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.700764, 38.416084, 47.151806>,  <36.017567, 38.546108, 47.358517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700764, 38.416084, 47.151806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579464, 0.666761, 0.468670,
		0.192220, 0.670644, -0.716442,
		-0.792006, -0.325064, -0.516778,
		35.463161, 38.318565, 46.996773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586567, 39.170944, 47.094269>,  <36.017567, 38.546108, 47.358517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586567, 39.170944, 47.094269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.348412, 38.849590, 47.090523>,  <35.205521, 38.656776, 47.088276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.348412, 38.849590, 47.090523>,  <35.586567, 39.170944, 47.094269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348412, 38.849590, 47.090523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754951, 0.555426, 0.348640,
		-0.274892, 0.214644, -0.937210,
		-0.595385, -0.803386, -0.009364,
		35.169796, 38.608574, 47.087715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977406, 39.474277, 46.888256>,  <35.586567, 39.170944, 47.094269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977406, 39.474277, 46.888256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.846069, 39.126400, 47.035675>,  <34.767265, 38.917675, 47.124126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.846069, 39.126400, 47.035675>,  <34.977406, 39.474277, 46.888256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846069, 39.126400, 47.035675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800830, 0.463212, 0.379613,
		-0.500861, -0.170499, -0.848568,
		-0.328343, -0.869692, 0.368545,
		34.747566, 38.865494, 47.146240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227150, 39.475956, 46.813019>,  <34.977406, 39.474277, 46.888256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227150, 39.475956, 46.813019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.268127, 39.174587, 47.072819>,  <34.292713, 38.993767, 47.228699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.268127, 39.174587, 47.072819>,  <34.227150, 39.475956, 46.813019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268127, 39.174587, 47.072819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889938, 0.222301, 0.398237,
		-0.444427, -0.618815, -0.647729,
		0.102444, -0.753426, 0.649504,
		34.298862, 38.948559, 47.267670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610168, 39.118050, 46.800648>,  <34.227150, 39.475956, 46.813019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610168, 39.118050, 46.800648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.774185, 39.027832, 47.154144>,  <33.872597, 38.973701, 47.366241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.774185, 39.027832, 47.154144>,  <33.610168, 39.118050, 46.800648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774185, 39.027832, 47.154144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862406, 0.219488, 0.456159,
		-0.296854, -0.949186, -0.104513,
		0.410040, -0.225545, 0.883740,
		33.897198, 38.960167, 47.419266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025452, 38.851250, 47.186775>,  <33.610168, 39.118050, 46.800648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025452, 38.851250, 47.186775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312580, 38.902050, 47.460594>,  <33.484856, 38.932529, 47.624886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312580, 38.902050, 47.460594>,  <33.025452, 38.851250, 47.186775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312580, 38.902050, 47.460594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695781, 0.166267, 0.698745,
		-0.025075, -0.977868, 0.207716,
		0.717817, 0.127003, 0.684551,
		33.527924, 38.940151, 47.665958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759689, 38.467842, 47.673084>,  <33.025452, 38.851250, 47.186775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759689, 38.467842, 47.673084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.038582, 38.714409, 47.819450>,  <33.205917, 38.862350, 47.907272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.038582, 38.714409, 47.819450>,  <32.759689, 38.467842, 47.673084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038582, 38.714409, 47.819450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543095, 0.121057, 0.830899,
		0.467882, -0.778060, 0.419177,
		0.697233, 0.616416, 0.365919,
		33.247753, 38.899334, 47.929226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874439, 38.280334, 48.346924>,  <32.759689, 38.467842, 47.673084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874439, 38.280334, 48.346924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.014229, 38.655098, 48.343521>,  <33.098103, 38.879955, 48.341480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.014229, 38.655098, 48.343521>,  <32.874439, 38.280334, 48.346924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014229, 38.655098, 48.343521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552897, 0.213552, 0.805420,
		0.756421, -0.276768, 0.592644,
		0.349475, 0.936907, -0.008511,
		33.119072, 38.936169, 48.340969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136929, 38.440563, 49.018311>,  <32.874439, 38.280334, 48.346924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136929, 38.440563, 49.018311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.092754, 38.812576, 48.878113>,  <33.066250, 39.035782, 48.793995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.092754, 38.812576, 48.878113>,  <33.136929, 38.440563, 49.018311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092754, 38.812576, 48.878113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523884, 0.245212, 0.815731,
		0.844600, 0.273706, 0.460148,
		-0.110436, 0.930030, -0.350496,
		33.059624, 39.091587, 48.772964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337944, 38.844810, 49.574013>,  <33.136929, 38.440563, 49.018311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337944, 38.844810, 49.574013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.101410, 39.075584, 49.348637>,  <32.959492, 39.214050, 49.213409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.101410, 39.075584, 49.348637>,  <33.337944, 38.844810, 49.574013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101410, 39.075584, 49.348637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501324, 0.284276, 0.817228,
		0.631664, 0.765720, 0.121131,
		-0.591333, 0.576939, -0.563441,
		32.924011, 39.248665, 49.179604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254299, 39.355293, 50.002686>,  <33.337944, 38.844810, 49.574013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254299, 39.355293, 50.002686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.966885, 39.385323, 49.726116>,  <32.794437, 39.403339, 49.560173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.966885, 39.385323, 49.726116>,  <33.254299, 39.355293, 50.002686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966885, 39.385323, 49.726116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644353, 0.302296, 0.702443,
		0.261751, 0.950253, -0.168836,
		-0.718537, 0.075076, -0.691424,
		32.751324, 39.407845, 49.518688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090637, 39.988327, 50.126923>,  <33.254299, 39.355293, 50.002686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090637, 39.988327, 50.126923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.793983, 39.780949, 49.956657>,  <32.615990, 39.656521, 49.854496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.793983, 39.780949, 49.956657>,  <33.090637, 39.988327, 50.126923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793983, 39.780949, 49.956657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643651, 0.371284, 0.669224,
		-0.188911, 0.770302, -0.609054,
		-0.741637, -0.518442, -0.425667,
		32.571491, 39.625416, 49.828957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620403, 40.486538, 50.138550>,  <33.090637, 39.988327, 50.126923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620403, 40.486538, 50.138550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.448105, 40.126160, 50.117554>,  <32.344727, 39.909931, 50.104954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.448105, 40.126160, 50.117554>,  <32.620403, 40.486538, 50.138550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448105, 40.126160, 50.117554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622177, 0.254324, 0.740416,
		-0.653725, 0.351589, -0.670096,
		-0.430744, -0.900946, -0.052493,
		32.318882, 39.855877, 50.101807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951548, 40.688740, 50.188679>,  <32.620403, 40.486538, 50.138550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951548, 40.688740, 50.188679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.961689, 40.301376, 50.287910>,  <31.967773, 40.068958, 50.347450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.961689, 40.301376, 50.287910>,  <31.951548, 40.688740, 50.188679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961689, 40.301376, 50.287910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625261, 0.178264, 0.759784,
		-0.780004, -0.174375, -0.600988,
		0.025353, -0.968409, 0.248076,
		31.969296, 40.010853, 50.362335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408045, 40.537045, 50.529617>,  <31.951548, 40.688740, 50.188679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408045, 40.537045, 50.529617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.575974, 40.186535, 50.624180>,  <31.676731, 39.976227, 50.680916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.575974, 40.186535, 50.624180>,  <31.408045, 40.537045, 50.529617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575974, 40.186535, 50.624180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495243, -0.002893, 0.868749,
		-0.760581, -0.481799, -0.435185,
		0.419822, -0.876277, 0.236407,
		31.701920, 39.923653, 50.695103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886553, 40.093102, 50.762798>,  <31.408045, 40.537045, 50.529617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886553, 40.093102, 50.762798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.227297, 39.986439, 50.943123>,  <31.431744, 39.922440, 51.051315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.227297, 39.986439, 50.943123>,  <30.886553, 40.093102, 50.762798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227297, 39.986439, 50.943123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440345, 0.101426, 0.892081,
		-0.283607, -0.958439, -0.031022,
		0.851858, -0.266660, 0.450809,
		31.482855, 39.906441, 51.078365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636328, 39.589130, 51.171398>,  <30.886553, 40.093102, 50.762798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636328, 39.589130, 51.171398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.979517, 39.729362, 51.321587>,  <31.185431, 39.813499, 51.411701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.979517, 39.729362, 51.321587>,  <30.636328, 39.589130, 51.171398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979517, 39.729362, 51.321587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426211, 0.077797, 0.901272,
		0.286755, -0.933297, 0.216167,
		0.857972, 0.350577, 0.375473,
		31.236908, 39.834534, 51.434227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714224, 39.367027, 51.790962>,  <30.636328, 39.589130, 51.171398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714224, 39.367027, 51.790962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.010979, 39.628345, 51.851360>,  <31.189032, 39.785137, 51.887600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.010979, 39.628345, 51.851360>,  <30.714224, 39.367027, 51.790962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010979, 39.628345, 51.851360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339140, 0.171332, 0.925002,
		0.578433, -0.737458, 0.348670,
		0.741889, 0.653300, 0.150998,
		31.233545, 39.824337, 51.896660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097118, 39.098736, 52.330711>,  <30.714224, 39.367027, 51.790962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097118, 39.098736, 52.330711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.127104, 39.497528, 52.322582>,  <31.145096, 39.736801, 52.317703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.127104, 39.497528, 52.322582>,  <31.097118, 39.098736, 52.330711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127104, 39.497528, 52.322582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185855, 0.033995, 0.981989,
		0.979713, -0.069837, 0.187842,
		0.074965, 0.996979, -0.020326,
		31.149593, 39.796623, 52.316483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486670, 39.223911, 52.972187>,  <31.097118, 39.098736, 52.330711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486670, 39.223911, 52.972187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.343786, 39.580936, 52.862114>,  <31.258057, 39.795151, 52.796070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.343786, 39.580936, 52.862114>,  <31.486670, 39.223911, 52.972187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343786, 39.580936, 52.862114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177509, 0.224377, 0.958199,
		0.917002, 0.391124, 0.078290,
		-0.357209, 0.892567, -0.275183,
		31.236624, 39.848705, 52.779560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637056, 39.512173, 53.533581>,  <31.486670, 39.223911, 52.972187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637056, 39.512173, 53.533581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.397417, 39.773106, 53.347874>,  <31.253633, 39.929665, 53.236450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.397417, 39.773106, 53.347874>,  <31.637056, 39.512173, 53.533581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397417, 39.773106, 53.347874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314024, 0.341950, 0.885697,
		0.736524, 0.676411, -0.000014,
		-0.599100, 0.652333, -0.464264,
		31.217688, 39.968807, 53.208595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712223, 40.082832, 53.921715>,  <31.637056, 39.512173, 53.533581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712223, 40.082832, 53.921715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.355690, 40.107353, 53.742039>,  <31.141769, 40.122066, 53.634235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.355690, 40.107353, 53.742039>,  <31.712223, 40.082832, 53.921715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355690, 40.107353, 53.742039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421404, 0.253328, 0.870772,
		0.167171, 0.965436, -0.199966,
		-0.891332, 0.061301, -0.449188,
		31.088291, 40.125744, 53.607281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486481, 40.657093, 54.207878>,  <31.712223, 40.082832, 53.921715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486481, 40.657093, 54.207878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.145515, 40.519333, 54.050507>,  <30.940937, 40.436676, 53.956085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.145515, 40.519333, 54.050507>,  <31.486481, 40.657093, 54.207878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145515, 40.519333, 54.050507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492798, 0.277665, 0.824653,
		-0.174770, 0.896823, -0.406404,
		-0.852412, -0.344399, -0.393425,
		30.889791, 40.416012, 53.932480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021658, 41.146465, 54.394474>,  <31.486481, 40.657093, 54.207878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021658, 41.146465, 54.394474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.780235, 40.836647, 54.318790>,  <30.635382, 40.650757, 54.273380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.780235, 40.836647, 54.318790>,  <31.021658, 41.146465, 54.394474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780235, 40.836647, 54.318790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479913, 0.163398, 0.861966,
		-0.636715, 0.611049, -0.470334,
		-0.603555, -0.774545, -0.189212,
		30.599169, 40.604282, 54.262028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335596, 41.292648, 54.610729>,  <31.021658, 41.146465, 54.394474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335596, 41.292648, 54.610729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.347622, 40.892906, 54.602875>,  <30.354837, 40.653061, 54.598164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.347622, 40.892906, 54.602875>,  <30.335596, 41.292648, 54.610729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347622, 40.892906, 54.602875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473754, -0.031542, 0.880092,
		-0.880144, -0.017160, -0.474397,
		0.030066, -0.999355, -0.019632,
		30.356642, 40.593102, 54.596985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696394, 41.096794, 54.897453>,  <30.335596, 41.292648, 54.610729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696394, 41.096794, 54.897453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.925997, 40.769279, 54.901627>,  <30.063759, 40.572773, 54.904129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.925997, 40.769279, 54.901627>,  <29.696394, 41.096794, 54.897453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925997, 40.769279, 54.901627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421183, -0.284294, 0.861268,
		-0.702227, -0.498767, -0.508045,
		0.574006, -0.818785, 0.010433,
		30.098198, 40.523643, 54.904755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257233, 40.415066, 54.909843>,  <29.696394, 41.096794, 54.897453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257233, 40.415066, 54.909843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.617779, 40.372910, 55.077858>,  <29.834106, 40.347614, 55.178665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.617779, 40.372910, 55.077858>,  <29.257233, 40.415066, 54.909843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617779, 40.372910, 55.077858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426604, -0.049306, 0.903094,
		-0.074476, -0.993207, -0.089406,
		0.901367, -0.105400, 0.420034,
		29.888189, 40.341293, 55.203869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253559, 39.874340, 55.429165>,  <29.257233, 40.415066, 54.909843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253559, 39.874340, 55.429165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.593983, 40.053322, 55.539066>,  <29.798237, 40.160709, 55.605007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.593983, 40.053322, 55.539066>,  <29.253559, 39.874340, 55.429165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593983, 40.053322, 55.539066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284401, -0.047039, 0.957551,
		0.441383, -0.893070, 0.087223,
		0.851057, 0.447453, 0.274752,
		29.849300, 40.187557, 55.621490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582413, 39.460266, 56.000973>,  <29.253559, 39.874340, 55.429165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582413, 39.460266, 56.000973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.733168, 39.829220, 56.034840>,  <29.823620, 40.050591, 56.055161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.733168, 39.829220, 56.034840>,  <29.582413, 39.460266, 56.000973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733168, 39.829220, 56.034840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405825, 0.082267, 0.910241,
		0.832623, -0.377420, 0.405331,
		0.376888, 0.922381, 0.084669,
		29.846233, 40.105934, 56.060242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673922, 39.462162, 56.676582>,  <29.582413, 39.460266, 56.000973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673922, 39.462162, 56.676582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.682163, 39.853497, 56.594185>,  <29.687107, 40.088299, 56.544746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.682163, 39.853497, 56.594185>,  <29.673922, 39.462162, 56.676582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682163, 39.853497, 56.594185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408035, 0.196323, 0.891608,
		0.912734, 0.065683, 0.403240,
		0.020602, 0.978337, -0.205991,
		29.688343, 40.146999, 56.532387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081053, 39.823444, 57.256306>,  <29.673922, 39.462162, 56.676582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081053, 39.823444, 57.256306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.850725, 40.108730, 57.096424>,  <29.712528, 40.279900, 57.000496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.850725, 40.108730, 57.096424>,  <30.081053, 39.823444, 57.256306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850725, 40.108730, 57.096424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455070, 0.126558, 0.881416,
		0.679222, 0.689429, 0.251687,
		-0.575820, 0.713212, -0.399699,
		29.677979, 40.322693, 56.976513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072353, 40.443695, 57.706646>,  <30.081053, 39.823444, 57.256306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072353, 40.443695, 57.706646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.728798, 40.480988, 57.505203>,  <29.522665, 40.503365, 57.384338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.728798, 40.480988, 57.505203>,  <30.072353, 40.443695, 57.706646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728798, 40.480988, 57.505203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504346, 0.017162, 0.863331,
		0.089135, 0.995496, 0.032282,
		-0.858889, 0.093234, -0.503604,
		29.471130, 40.508957, 57.354122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741741, 40.881351, 58.090603>,  <30.072353, 40.443695, 57.706646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741741, 40.881351, 58.090603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.450422, 40.734253, 57.859314>,  <29.275631, 40.645992, 57.720539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.450422, 40.734253, 57.859314>,  <29.741741, 40.881351, 58.090603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450422, 40.734253, 57.859314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588974, -0.095387, 0.802503,
		-0.350272, 0.925022, -0.147122,
		-0.728299, -0.367745, -0.578225,
		29.231932, 40.623928, 57.685848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107265, 41.212685, 58.340229>,  <29.741741, 40.881351, 58.090603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107265, 41.212685, 58.340229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.999762, 40.878662, 58.148209>,  <28.935259, 40.678249, 58.032997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.999762, 40.878662, 58.148209>,  <29.107265, 41.212685, 58.340229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999762, 40.878662, 58.148209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562474, -0.268522, 0.781996,
		-0.781915, 0.480186, -0.397530,
		-0.268758, -0.835055, -0.480054,
		28.919134, 40.628147, 58.004192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403721, 41.262924, 58.333641>,  <29.107265, 41.212685, 58.340229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403721, 41.262924, 58.333641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.464096, 40.875416, 58.254948>,  <28.500320, 40.642910, 58.207733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.464096, 40.875416, 58.254948>,  <28.403721, 41.262924, 58.333641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464096, 40.875416, 58.254948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714441, -0.244447, 0.655607,
		-0.683222, 0.041597, -0.729025,
		0.150937, -0.968770, -0.196730,
		28.509377, 40.584785, 58.195930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662899, 40.950348, 58.177002>,  <28.403721, 41.262924, 58.333641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662899, 40.950348, 58.177002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.928135, 40.666859, 58.273354>,  <28.087276, 40.496765, 58.331165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.928135, 40.666859, 58.273354>,  <27.662899, 40.950348, 58.177002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928135, 40.666859, 58.273354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593885, -0.302223, 0.745629,
		-0.455643, -0.637476, -0.621300,
		0.663092, -0.708721, 0.240882,
		28.127062, 40.454243, 58.345619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255383, 40.372219, 58.185181>,  <27.662899, 40.950348, 58.177002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255383, 40.372219, 58.185181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.587738, 40.290726, 58.392300>,  <27.787151, 40.241829, 58.516571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.587738, 40.290726, 58.392300>,  <27.255383, 40.372219, 58.185181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587738, 40.290726, 58.392300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553661, -0.395516, 0.732821,
		0.055494, -0.895577, -0.441432,
		0.830891, -0.203736, 0.517795,
		27.837006, 40.229603, 58.547638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276524, 39.705807, 58.264698>,  <27.255383, 40.372219, 58.185181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276524, 39.705807, 58.264698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.448030, 39.910378, 58.562584>,  <27.550936, 40.033119, 58.741314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.448030, 39.910378, 58.562584>,  <27.276524, 39.705807, 58.264698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448030, 39.910378, 58.562584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585239, -0.470740, 0.660226,
		0.688225, -0.718921, 0.097468,
		0.428768, 0.511426, 0.744715,
		27.576660, 40.063805, 58.785999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808735, 39.257782, 58.529526>,  <27.276524, 39.705807, 58.264698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808735, 39.257782, 58.529526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.607412, 38.912762, 58.550278>,  <26.486618, 38.705750, 58.562729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.607412, 38.912762, 58.550278>,  <26.808735, 39.257782, 58.529526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.607412, 38.912762, 58.550278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588361, -0.386050, -0.710490,
		0.632860, -0.327071, 0.701792,
		-0.503308, -0.862548, 0.051880,
		26.456419, 38.653996, 58.565842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335659, 38.783829, 58.487030>,  <26.808735, 39.257782, 58.529526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335659, 38.783829, 58.487030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.014109, 38.551262, 58.436852>,  <26.821178, 38.411720, 58.406742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.014109, 38.551262, 58.436852>,  <27.335659, 38.783829, 58.487030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014109, 38.551262, 58.436852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524298, -0.593054, -0.611064,
		0.280884, -0.556993, 0.781578,
		-0.803876, -0.581417, -0.125450,
		26.772945, 38.376839, 58.399216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556561, 38.000568, 58.581909>,  <27.335659, 38.783829, 58.487030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556561, 38.000568, 58.581909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.236834, 38.041954, 58.345135>,  <27.044998, 38.066784, 58.203072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.236834, 38.041954, 58.345135>,  <27.556561, 38.000568, 58.581909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236834, 38.041954, 58.345135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478743, -0.485712, -0.731361,
		-0.363178, -0.867974, 0.338706,
		-0.799317, 0.103461, -0.591937,
		26.997038, 38.072994, 58.167553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581404, 37.411522, 58.107533>,  <27.556561, 38.000568, 58.581909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581404, 37.411522, 58.107533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.319134, 37.649246, 57.921246>,  <27.161772, 37.791882, 57.809475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.319134, 37.649246, 57.921246>,  <27.581404, 37.411522, 58.107533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319134, 37.649246, 57.921246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449733, -0.188046, -0.873143,
		-0.606493, -0.781943, -0.143984,
		-0.655673, 0.594310, -0.465714,
		27.122433, 37.827538, 57.781532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125490, 36.994984, 57.591778>,  <27.581404, 37.411522, 58.107533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125490, 36.994984, 57.591778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.169260, 37.372883, 57.468182>,  <27.195522, 37.599621, 57.394024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.169260, 37.372883, 57.468182>,  <27.125490, 36.994984, 57.591778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169260, 37.372883, 57.468182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197891, -0.325343, -0.924657,
		-0.974097, 0.040035, -0.222558,
		0.109427, 0.944748, -0.308993,
		27.202087, 37.656307, 57.375484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947041, 36.908234, 56.942455>,  <27.125490, 36.994984, 57.591778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947041, 36.908234, 56.942455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.070232, 37.288307, 56.923309>,  <27.144148, 37.516354, 56.911823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.070232, 37.288307, 56.923309>,  <26.947041, 36.908234, 56.942455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070232, 37.288307, 56.923309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249870, -0.129326, -0.959604,
		-0.917994, 0.283581, -0.277253,
		0.307981, 0.950188, -0.047862,
		27.162626, 37.573364, 56.908951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855400, 37.110214, 56.215412>,  <26.947041, 36.908234, 56.942455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855400, 37.110214, 56.215412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.112478, 37.377483, 56.365337>,  <27.266726, 37.537846, 56.455292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.112478, 37.377483, 56.365337>,  <26.855400, 37.110214, 56.215412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112478, 37.377483, 56.365337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508665, -0.006324, -0.860941,
		-0.572887, 0.743980, -0.343940,
		0.642698, 0.668172, 0.374814,
		27.305288, 37.577934, 56.477783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.917881, 37.540573, 55.638458>,  <26.855400, 37.110214, 56.215412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.917881, 37.540573, 55.638458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.231533, 37.571453, 55.884769>,  <27.419724, 37.589981, 56.032555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.231533, 37.571453, 55.884769>,  <26.917881, 37.540573, 55.638458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231533, 37.571453, 55.884769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613528, 0.052919, -0.787898,
		-0.093410, 0.995610, -0.005867,
		0.784129, 0.077197, 0.615778,
		27.466772, 37.594612, 56.069504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206461, 38.204243, 55.486389>,  <26.917881, 37.540573, 55.638458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206461, 38.204243, 55.486389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.471884, 37.946636, 55.638672>,  <27.631138, 37.792072, 55.730042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.471884, 37.946636, 55.638672>,  <27.206461, 38.204243, 55.486389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471884, 37.946636, 55.638672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564893, 0.097673, -0.819363,
		0.490495, 0.758754, 0.428610,
		0.663558, -0.644013, 0.380707,
		27.670952, 37.753433, 55.752884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856987, 38.569626, 55.548027>,  <27.206461, 38.204243, 55.486389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.856987, 38.569626, 55.548027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.908112, 38.173790, 55.521545>,  <27.938786, 37.936291, 55.505657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.908112, 38.173790, 55.521545>,  <27.856987, 38.569626, 55.548027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908112, 38.173790, 55.521545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758624, 0.140541, -0.636190,
		0.638870, 0.031087, 0.768687,
		0.127810, -0.989587, -0.066204,
		27.946455, 37.876915, 55.501686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578447, 38.497005, 55.619228>,  <27.856987, 38.569626, 55.548027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578447, 38.497005, 55.619228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.486677, 38.139896, 55.464142>,  <28.431616, 37.925632, 55.371090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.486677, 38.139896, 55.464142>,  <28.578447, 38.497005, 55.619228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486677, 38.139896, 55.464142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691449, 0.130860, -0.710475,
		0.685028, -0.431088, 0.587282,
		-0.229425, -0.892770, -0.387718,
		28.417850, 37.872066, 55.347828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221838, 38.268250, 55.349045>,  <28.578447, 38.497005, 55.619228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221838, 38.268250, 55.349045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.957317, 38.030052, 55.166588>,  <28.798605, 37.887135, 55.057114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.957317, 38.030052, 55.166588>,  <29.221838, 38.268250, 55.349045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957317, 38.030052, 55.166588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628207, -0.107360, -0.770604,
		0.409919, -0.796154, 0.445091,
		-0.661304, -0.595494, -0.456140,
		28.758926, 37.851402, 55.029747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663948, 37.793327, 55.055634>,  <29.221838, 38.268250, 55.349045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663948, 37.793327, 55.055634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.315714, 37.787468, 54.858913>,  <29.106773, 37.783955, 54.740883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.315714, 37.787468, 54.858913>,  <29.663948, 37.793327, 55.055634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315714, 37.787468, 54.858913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491974, -0.038752, -0.869747,
		-0.006320, -0.999142, 0.040942,
		-0.870587, -0.014646, -0.491797,
		29.054539, 37.783073, 54.711376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743687, 37.324375, 54.525452>,  <29.663948, 37.793327, 55.055634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743687, 37.324375, 54.525452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.439535, 37.559040, 54.413994>,  <29.257044, 37.699841, 54.347118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.439535, 37.559040, 54.413994>,  <29.743687, 37.324375, 54.525452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439535, 37.559040, 54.413994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330026, -0.020501, -0.943749,
		-0.559378, -0.809569, -0.178027,
		-0.760381, 0.586667, -0.278647,
		29.211420, 37.735039, 54.330399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400467, 36.982357, 53.926071>,  <29.743687, 37.324375, 54.525452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400467, 36.982357, 53.926071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.323027, 37.374516, 53.911411>,  <29.276562, 37.609810, 53.902615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.323027, 37.374516, 53.911411>,  <29.400467, 36.982357, 53.926071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323027, 37.374516, 53.911411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355684, 0.035323, -0.933939,
		-0.914334, -0.193847, -0.355550,
		-0.193601, 0.980395, -0.036652,
		29.264946, 37.668633, 53.900417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972010, 36.997635, 53.393826>,  <29.400467, 36.982357, 53.926071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972010, 36.997635, 53.393826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.141832, 37.355301, 53.450710>,  <29.243727, 37.569901, 53.484840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.141832, 37.355301, 53.450710>,  <28.972010, 36.997635, 53.393826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141832, 37.355301, 53.450710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199984, 0.060584, -0.977924,
		-0.883039, 0.443626, -0.153097,
		0.424557, 0.894162, 0.142216,
		29.269199, 37.623550, 53.493374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609295, 37.470982, 52.953011>,  <28.972010, 36.997635, 53.393826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609295, 37.470982, 52.953011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.964993, 37.638493, 53.026623>,  <29.178411, 37.738998, 53.070789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.964993, 37.638493, 53.026623>,  <28.609295, 37.470982, 52.953011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964993, 37.638493, 53.026623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145090, 0.123319, -0.981703,
		-0.433810, 0.899677, 0.048900,
		0.889246, 0.418777, 0.184031,
		29.231766, 37.764126, 53.081833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700964, 37.998829, 52.400856>,  <28.609295, 37.470982, 52.953011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700964, 37.998829, 52.400856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.068165, 37.989231, 52.559196>,  <29.288485, 37.983471, 52.654202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.068165, 37.989231, 52.559196>,  <28.700964, 37.998829, 52.400856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068165, 37.989231, 52.559196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384683, 0.296472, -0.874141,
		-0.096383, 0.954740, 0.281393,
		0.918003, -0.023995, 0.395848,
		29.343565, 37.982033, 52.677952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057219, 38.627617, 52.240868>,  <28.700964, 37.998829, 52.400856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057219, 38.627617, 52.240868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.330359, 38.353222, 52.341381>,  <29.494242, 38.188587, 52.401688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.330359, 38.353222, 52.341381>,  <29.057219, 38.627617, 52.240868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330359, 38.353222, 52.341381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431878, 0.101623, -0.896189,
		0.589236, 0.720484, 0.365655,
		0.682849, -0.685985, 0.251281,
		29.535213, 38.147427, 52.416767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739620, 38.913765, 52.052910>,  <29.057219, 38.627617, 52.240868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739620, 38.913765, 52.052910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.744724, 38.514225, 52.071396>,  <29.747786, 38.274502, 52.082485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.744724, 38.514225, 52.071396>,  <29.739620, 38.913765, 52.052910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744724, 38.514225, 52.071396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424247, -0.036443, -0.904813,
		0.905457, 0.031149, 0.423294,
		0.012758, -0.998850, 0.046212,
		29.748552, 38.214569, 52.085258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495131, 38.690773, 51.880165>,  <29.739620, 38.913765, 52.052910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495131, 38.690773, 51.880165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.324112, 38.331425, 51.839901>,  <30.221500, 38.115814, 51.815742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.324112, 38.331425, 51.839901>,  <30.495131, 38.690773, 51.880165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324112, 38.331425, 51.839901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547448, -0.168694, -0.819660,
		0.719378, -0.405551, 0.563936,
		-0.427546, -0.898371, -0.100663,
		30.195848, 38.061913, 51.809700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968552, 38.225426, 51.657951>,  <30.495131, 38.690773, 51.880165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968552, 38.225426, 51.657951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.622038, 38.048611, 51.564861>,  <30.414129, 37.942524, 51.509007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.622038, 38.048611, 51.564861>,  <30.968552, 38.225426, 51.657951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622038, 38.048611, 51.564861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372210, -0.260421, -0.890865,
		0.333188, -0.858362, 0.390128,
		-0.866282, -0.442035, -0.232722,
		30.362152, 37.916000, 51.495045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125431, 37.710938, 51.262539>,  <30.968552, 38.225426, 51.657951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125431, 37.710938, 51.262539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.734400, 37.751663, 51.188812>,  <30.499781, 37.776096, 51.144577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.734400, 37.751663, 51.188812>,  <31.125431, 37.710938, 51.262539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734400, 37.751663, 51.188812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162876, -0.189148, -0.968346,
		-0.133448, -0.976657, 0.168326,
		-0.977580, 0.101808, -0.184315,
		30.441126, 37.782207, 51.133518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956005, 37.200958, 50.857853>,  <31.125431, 37.710938, 51.262539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956005, 37.200958, 50.857853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.685114, 37.484547, 50.779137>,  <30.522579, 37.654697, 50.731907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.685114, 37.484547, 50.779137>,  <30.956005, 37.200958, 50.857853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685114, 37.484547, 50.779137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040542, -0.231093, -0.972086,
		-0.734654, -0.666303, 0.127760,
		-0.677229, 0.708968, -0.196787,
		30.481945, 37.697239, 50.720100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441002, 36.935894, 50.482872>,  <30.956005, 37.200958, 50.857853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441002, 36.935894, 50.482872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.433746, 37.323105, 50.382793>,  <30.429394, 37.555431, 50.322746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.433746, 37.323105, 50.382793>,  <30.441002, 36.935894, 50.482872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433746, 37.323105, 50.382793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142282, -0.245195, -0.958976,
		-0.989660, -0.052991, -0.133285,
		-0.018137, 0.968025, -0.250199,
		30.428305, 37.613514, 50.307735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167149, 36.822273, 49.800095>,  <30.441002, 36.935894, 50.482872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167149, 36.822273, 49.800095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.252995, 37.212826, 49.790142>,  <30.304502, 37.447159, 49.784168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.252995, 37.212826, 49.790142>,  <30.167149, 36.822273, 49.800095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252995, 37.212826, 49.790142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139782, -0.055921, -0.988602,
		-0.966645, 0.208689, -0.148482,
		0.214614, 0.976382, -0.024885,
		30.317379, 37.505741, 49.782677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808334, 37.155807, 49.252857>,  <30.167149, 36.822273, 49.800095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808334, 37.155807, 49.252857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.134398, 37.377556, 49.320011>,  <30.330036, 37.510605, 49.360302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.134398, 37.377556, 49.320011>,  <29.808334, 37.155807, 49.252857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134398, 37.377556, 49.320011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324611, -0.197175, -0.925067,
		-0.479733, 0.808573, -0.340685,
		0.815159, 0.554376, 0.167881,
		30.378944, 37.543869, 49.370377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798588, 37.554443, 48.702019>,  <29.808334, 37.155807, 49.252857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798588, 37.554443, 48.702019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.177126, 37.564770, 48.830868>,  <30.404249, 37.570965, 48.908176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.177126, 37.564770, 48.830868>,  <29.798588, 37.554443, 48.702019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177126, 37.564770, 48.830868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319401, -0.226132, -0.920243,
		0.049087, 0.973755, -0.222244,
		0.946348, 0.025813, 0.322118,
		30.461031, 37.572514, 48.927502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189081, 37.739391, 48.090248>,  <29.798588, 37.554443, 48.702019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189081, 37.739391, 48.090248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.472485, 37.602001, 48.336838>,  <30.642527, 37.519566, 48.484791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.472485, 37.602001, 48.336838>,  <30.189081, 37.739391, 48.090248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472485, 37.602001, 48.336838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489985, -0.389237, -0.780006,
		0.507866, 0.854705, -0.107481,
		0.708510, -0.343474, 0.616473,
		30.685038, 37.498959, 48.521778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843405, 37.892574, 47.731865>,  <30.189081, 37.739391, 48.090248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843405, 37.892574, 47.731865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.923449, 37.599899, 47.992504>,  <30.971476, 37.424294, 48.148888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.923449, 37.599899, 47.992504>,  <30.843405, 37.892574, 47.731865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923449, 37.599899, 47.992504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558309, -0.461356, -0.689523,
		0.805138, 0.501775, 0.316189,
		0.200110, -0.731692, 0.651600,
		30.983482, 37.380390, 48.187984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573992, 37.675079, 47.709141>,  <30.843405, 37.892574, 47.731865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573992, 37.675079, 47.709141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.393435, 37.355053, 47.867199>,  <31.285101, 37.163036, 47.962032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.393435, 37.355053, 47.867199>,  <31.573992, 37.675079, 47.709141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393435, 37.355053, 47.867199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525840, -0.596265, -0.606597,
		0.720928, -0.066031, 0.689856,
		-0.451391, -0.800067, 0.395143,
		31.258017, 37.115032, 47.985741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132793, 37.239719, 47.923119>,  <31.573992, 37.675079, 47.709141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132793, 37.239719, 47.923119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.815947, 36.996971, 47.897026>,  <31.625839, 36.851322, 47.881371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.815947, 36.996971, 47.897026>,  <32.132793, 37.239719, 47.923119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815947, 36.996971, 47.897026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560469, -0.680874, -0.471471,
		0.241711, -0.410019, 0.879466,
		-0.792118, -0.606873, -0.065228,
		31.578312, 36.814911, 47.877457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421059, 36.552452, 48.061600>,  <32.132793, 37.239719, 47.923119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421059, 36.552452, 48.061600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.066654, 36.477985, 47.891739>,  <31.854012, 36.433304, 47.789822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.066654, 36.477985, 47.891739>,  <32.421059, 36.552452, 48.061600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066654, 36.477985, 47.891739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369728, -0.836340, -0.404767,
		-0.279798, -0.515633, 0.809837,
		-0.886010, -0.186166, -0.424650,
		31.800852, 36.422134, 47.764343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270824, 35.870022, 48.258873>,  <32.421059, 36.552452, 48.061600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270824, 35.870022, 48.258873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.053268, 35.943451, 47.931343>,  <31.922733, 35.987507, 47.734825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.053268, 35.943451, 47.931343>,  <32.270824, 35.870022, 48.258873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053268, 35.943451, 47.931343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183419, -0.926179, -0.329470,
		-0.818863, -0.329386, 0.470073,
		-0.543894, 0.183571, -0.818829,
		31.890100, 35.998524, 47.685696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853277, 35.297470, 48.065250>,  <32.270824, 35.870022, 48.258873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853277, 35.297470, 48.065250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.862246, 35.507801, 47.725132>,  <31.867626, 35.633999, 47.521061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.862246, 35.507801, 47.725132>,  <31.853277, 35.297470, 48.065250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862246, 35.507801, 47.725132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058937, -0.849726, -0.523920,
		-0.998010, -0.038367, -0.050042,
		0.022421, 0.525827, -0.850296,
		31.868971, 35.665550, 47.470043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400217, 34.805721, 47.746292>,  <31.853277, 35.297470, 48.065250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400217, 34.805721, 47.746292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.636772, 35.033737, 47.518143>,  <31.778706, 35.170547, 47.381252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.636772, 35.033737, 47.518143>,  <31.400217, 34.805721, 47.746292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636772, 35.033737, 47.518143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543728, -0.804219, -0.239985,
		-0.595502, -0.168202, -0.785548,
		0.591387, 0.570035, -0.570370,
		31.814188, 35.204746, 47.347031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623751, 34.382412, 47.230976>,  <31.400217, 34.805721, 47.746292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623751, 34.382412, 47.230976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891523, 34.669598, 47.154675>,  <32.052189, 34.841908, 47.108894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891523, 34.669598, 47.154675>,  <31.623751, 34.382412, 47.230976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891523, 34.669598, 47.154675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679721, -0.695591, -0.232663,
		-0.299730, 0.026093, -0.953667,
		0.669433, 0.717964, -0.190753,
		32.092354, 34.884987, 47.097450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900372, 34.246140, 46.604679>,  <31.623751, 34.382412, 47.230976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900372, 34.246140, 46.604679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.191170, 34.467579, 46.767166>,  <32.365650, 34.600441, 46.864658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.191170, 34.467579, 46.767166>,  <31.900372, 34.246140, 46.604679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191170, 34.467579, 46.767166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677129, -0.676150, -0.290374,
		0.113911, 0.486160, -0.866414,
		0.726994, 0.553597, 0.406214,
		32.409267, 34.633659, 46.889030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375851, 34.027748, 46.241383>,  <31.900372, 34.246140, 46.604679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375851, 34.027748, 46.241383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.577164, 34.237209, 46.516335>,  <32.697952, 34.362885, 46.681305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.577164, 34.237209, 46.516335>,  <32.375851, 34.027748, 46.241383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577164, 34.237209, 46.516335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789636, -0.601784, -0.119712,
		0.350966, 0.603029, -0.716365,
		0.503287, 0.523653, 0.687379,
		32.728149, 34.394306, 46.722549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088264, 34.156414, 45.990803>,  <32.375851, 34.027748, 46.241383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088264, 34.156414, 45.990803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.167622, 34.196003, 46.380848>,  <33.215237, 34.219757, 46.614876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.167622, 34.196003, 46.380848>,  <33.088264, 34.156414, 45.990803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167622, 34.196003, 46.380848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912754, -0.381136, -0.147021,
		0.357101, 0.919207, -0.165947,
		0.198391, 0.098968, 0.975113,
		33.227139, 34.225693, 46.673382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801723, 34.477634, 46.041977>,  <33.088264, 34.156414, 45.990803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801723, 34.477634, 46.041977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.707981, 34.294285, 46.384899>,  <33.651733, 34.184273, 46.590652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.707981, 34.294285, 46.384899>,  <33.801723, 34.477634, 46.041977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707981, 34.294285, 46.384899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814874, -0.573535, -0.083893,
		0.530147, 0.678931, 0.507934,
		-0.234360, -0.458377, 0.857301,
		33.637672, 34.156773, 46.642090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365711, 34.659885, 46.525032>,  <33.801723, 34.477634, 46.041977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365711, 34.659885, 46.525032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187870, 34.310886, 46.606098>,  <34.081165, 34.101486, 46.654739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187870, 34.310886, 46.606098>,  <34.365711, 34.659885, 46.525032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187870, 34.310886, 46.606098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886448, -0.461069, -0.040313,
		0.128616, 0.161729, 0.978418,
		-0.444598, -0.872501, 0.202665,
		34.054489, 34.049137, 46.666897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755329, 34.389317, 46.947021>,  <34.365711, 34.659885, 46.525032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755329, 34.389317, 46.947021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.547756, 34.096333, 46.770741>,  <34.423214, 33.920544, 46.664974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.547756, 34.096333, 46.770741>,  <34.755329, 34.389317, 46.947021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547756, 34.096333, 46.770741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836064, -0.542292, -0.083169,
		-0.178070, -0.411612, 0.893793,
		-0.518931, -0.732458, -0.440700,
		34.392078, 33.876595, 46.638531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879494, 33.834221, 47.359619>,  <34.755329, 34.389317, 46.947021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879494, 33.834221, 47.359619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.865803, 33.808796, 46.960663>,  <34.857586, 33.793541, 46.721291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.865803, 33.808796, 46.960663>,  <34.879494, 33.834221, 47.359619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865803, 33.808796, 46.960663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953205, -0.302025, -0.013468,
		-0.300381, -0.951179, 0.070922,
		-0.034231, -0.063557, -0.997391,
		34.855534, 33.789730, 46.661446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123985, 33.190914, 47.110588>,  <34.879494, 33.834221, 47.359619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123985, 33.190914, 47.110588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.186207, 33.459106, 46.820412>,  <35.223541, 33.620022, 46.646305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.186207, 33.459106, 46.820412>,  <35.123985, 33.190914, 47.110588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186207, 33.459106, 46.820412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986565, -0.142552, 0.079797,
		-0.049911, -0.728104, -0.683647,
		0.155556, 0.670480, -0.725437,
		35.232872, 33.660252, 46.602779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815414, 32.997746, 46.850040>,  <35.123985, 33.190914, 47.110588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815414, 32.997746, 46.850040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.710609, 33.349506, 46.691044>,  <35.647728, 33.560562, 46.595646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.710609, 33.349506, 46.691044>,  <35.815414, 32.997746, 46.850040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710609, 33.349506, 46.691044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959544, 0.193398, -0.204628,
		-0.103077, -0.435023, -0.894500,
		-0.262012, 0.879404, -0.397489,
		35.632008, 33.613327, 46.571796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983421, 32.826035, 46.150600>,  <35.815414, 32.997746, 46.850040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983421, 32.826035, 46.150600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.999813, 33.209454, 46.263390>,  <36.009647, 33.439507, 46.331062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.999813, 33.209454, 46.263390>,  <35.983421, 32.826035, 46.150600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999813, 33.209454, 46.263390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968710, 0.031023, -0.246250,
		-0.244790, 0.283237, -0.927284,
		0.040980, 0.958548, 0.281968,
		36.012108, 33.497017, 46.347980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233700, 33.354542, 45.550606>,  <35.983421, 32.826035, 46.150600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233700, 33.354542, 45.550606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.325268, 33.438927, 45.930729>,  <36.380207, 33.489559, 46.158802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.325268, 33.438927, 45.930729>,  <36.233700, 33.354542, 45.550606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325268, 33.438927, 45.930729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972888, -0.082649, -0.216006,
		0.032972, 0.973993, -0.224165,
		0.228916, 0.210965, 0.950311,
		36.393944, 33.502216, 46.215824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777306, 33.894844, 45.547318>,  <36.233700, 33.354542, 45.550606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777306, 33.894844, 45.547318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.816391, 33.724873, 45.907295>,  <36.839840, 33.622890, 46.123280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.816391, 33.724873, 45.907295>,  <36.777306, 33.894844, 45.547318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816391, 33.724873, 45.907295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977416, -0.129283, -0.167165,
		0.187380, 0.895949, 0.402696,
		0.097709, -0.424925, 0.899940,
		36.845703, 33.597397, 46.177277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395138, 34.211227, 45.794479>,  <36.777306, 33.894844, 45.547318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395138, 34.211227, 45.794479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.325893, 33.877632, 46.004047>,  <37.284348, 33.677475, 46.129791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.325893, 33.877632, 46.004047>,  <37.395138, 34.211227, 45.794479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325893, 33.877632, 46.004047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983451, -0.175231, 0.046018,
		0.053429, 0.523221, 0.850521,
		-0.173115, -0.833987, 0.523925,
		37.273960, 33.627438, 46.161224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854977, 34.244347, 46.363182>,  <37.395138, 34.211227, 45.794479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854977, 34.244347, 46.363182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.760376, 33.857018, 46.331131>,  <37.703613, 33.624622, 46.311901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.760376, 33.857018, 46.331131>,  <37.854977, 34.244347, 46.363182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760376, 33.857018, 46.331131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956234, -0.246588, 0.157516,
		-0.172284, -0.039367, 0.984260,
		-0.236506, -0.968320, -0.080127,
		37.689423, 33.566521, 46.307095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187473, 33.996613, 46.847607>,  <37.854977, 34.244347, 46.363182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187473, 33.996613, 46.847607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.099758, 33.675560, 46.625725>,  <38.047127, 33.482929, 46.492596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.099758, 33.675560, 46.625725>,  <38.187473, 33.996613, 46.847607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099758, 33.675560, 46.625725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886018, -0.401877, 0.231230,
		-0.408515, -0.440769, 0.799273,
		-0.219291, -0.802631, -0.554702,
		38.033970, 33.434772, 46.459312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504475, 33.416294, 47.226036>,  <38.187473, 33.996613, 46.847607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504475, 33.416294, 47.226036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.444008, 33.285442, 46.852913>,  <38.407730, 33.206932, 46.629040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.444008, 33.285442, 46.852913>,  <38.504475, 33.416294, 47.226036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444008, 33.285442, 46.852913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876381, -0.480882, 0.026624,
		-0.457281, -0.813473, 0.359383,
		-0.151163, -0.327132, -0.932810,
		38.398659, 33.187302, 46.573071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716251, 32.745201, 47.283115>,  <38.504475, 33.416294, 47.226036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716251, 32.745201, 47.283115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.722965, 32.837711, 46.894020>,  <38.726994, 32.893219, 46.660561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.722965, 32.837711, 46.894020>,  <38.716251, 32.745201, 47.283115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722965, 32.837711, 46.894020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871167, -0.480841, -0.099295,
		-0.490699, -0.845755, -0.209553,
		0.016783, 0.231280, -0.972742,
		38.728001, 32.907097, 46.602196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053207, 32.142719, 46.938046>,  <38.716251, 32.745201, 47.283115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053207, 32.142719, 46.938046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084393, 32.475739, 46.718670>,  <39.103104, 32.675549, 46.587044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084393, 32.475739, 46.718670>,  <39.053207, 32.142719, 46.938046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084393, 32.475739, 46.718670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930908, -0.257691, -0.258855,
		-0.356838, -0.490366, -0.795115,
		0.077960, 0.832548, -0.548439,
		39.107780, 32.725502, 46.554138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422993, 31.921917, 46.345299>,  <39.053207, 32.142719, 46.938046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422993, 31.921917, 46.345299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.452820, 32.320374, 46.363815>,  <39.470718, 32.559448, 46.374924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.452820, 32.320374, 46.363815>,  <39.422993, 31.921917, 46.345299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452820, 32.320374, 46.363815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992567, -0.069665, -0.099785,
		-0.096175, 0.053389, -0.993932,
		0.074570, 0.996141, 0.046292,
		39.475189, 32.619217, 46.377705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925259, 32.041992, 45.854763>,  <39.422993, 31.921917, 46.345299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925259, 32.041992, 45.854763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.895943, 32.353485, 46.103989>,  <39.878353, 32.540379, 46.253525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.895943, 32.353485, 46.103989>,  <39.925259, 32.041992, 45.854763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895943, 32.353485, 46.103989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997245, 0.064403, 0.036813,
		-0.011460, 0.624047, -0.781303,
		-0.073291, 0.778728, 0.623066,
		39.873955, 32.587105, 46.290909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423702, 32.600395, 45.648987>,  <39.925259, 32.041992, 45.854763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423702, 32.600395, 45.648987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.326344, 32.616196, 46.036636>,  <40.267929, 32.625675, 46.269226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.326344, 32.616196, 46.036636>,  <40.423702, 32.600395, 45.648987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326344, 32.616196, 46.036636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953736, -0.172048, 0.246550,
		0.176473, 0.984296, 0.004206,
		-0.243401, 0.039498, 0.969121,
		40.253323, 32.628044, 46.327374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694469, 33.137745, 46.116066>,  <40.423702, 32.600395, 45.648987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694469, 33.137745, 46.116066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.076447, 33.162868, 46.232098>,  <41.305634, 33.177940, 46.301716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.076447, 33.162868, 46.232098>,  <40.694469, 33.137745, 46.116066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076447, 33.162868, 46.232098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248589, 0.364712, -0.897323,
		-0.162153, 0.929000, 0.332664,
		0.954940, 0.062807, 0.290079,
		41.362930, 33.181709, 46.319122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088608, 33.784946, 45.923069>,  <40.694469, 33.137745, 46.116066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088608, 33.784946, 45.923069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.360672, 33.493347, 45.953918>,  <41.523911, 33.318390, 45.972427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.360672, 33.493347, 45.953918>,  <41.088608, 33.784946, 45.923069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360672, 33.493347, 45.953918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217152, 0.099873, -0.971015,
		0.700161, 0.677195, 0.226232,
		0.680161, -0.728994, 0.077127,
		41.564720, 33.274651, 45.977055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622875, 33.999256, 45.465408>,  <41.088608, 33.784946, 45.923069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622875, 33.999256, 45.465408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.660767, 33.610344, 45.550911>,  <41.683502, 33.376995, 45.602211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.660767, 33.610344, 45.550911>,  <41.622875, 33.999256, 45.465408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660767, 33.610344, 45.550911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395620, -0.160267, -0.904323,
		0.913515, 0.170234, 0.369472,
		0.094733, -0.972283, 0.213754,
		41.689186, 33.318661, 45.615036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267109, 33.672909, 45.194302>,  <41.622875, 33.999256, 45.465408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267109, 33.672909, 45.194302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.021851, 33.357620, 45.215343>,  <41.874695, 33.168449, 45.227966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.021851, 33.357620, 45.215343>,  <42.267109, 33.672909, 45.194302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021851, 33.357620, 45.215343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354784, -0.334252, -0.873157,
		0.705822, -0.516707, 0.484592,
		-0.613142, -0.788219, 0.052603,
		41.837910, 33.121155, 45.231125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676922, 33.074116, 45.199165>,  <42.267109, 33.672909, 45.194302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676922, 33.074116, 45.199165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.301670, 33.016777, 45.073078>,  <42.076519, 32.982376, 44.997425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.301670, 33.016777, 45.073078>,  <42.676922, 33.074116, 45.199165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301670, 33.016777, 45.073078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337421, -0.173772, -0.925176,
		0.077843, -0.974297, 0.211389,
		-0.938130, -0.143346, -0.315222,
		42.020229, 32.973774, 44.978512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628799, 32.441227, 44.862495>,  <42.676922, 33.074116, 45.199165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628799, 32.441227, 44.862495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.365250, 32.704929, 44.717571>,  <42.207119, 32.863152, 44.630615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.365250, 32.704929, 44.717571>,  <42.628799, 32.441227, 44.862495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365250, 32.704929, 44.717571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253767, -0.258613, -0.932053,
		-0.708156, -0.706050, 0.003098,
		-0.658876, 0.659252, -0.362310,
		42.167587, 32.902706, 44.608879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188656, 32.128269, 44.304810>,  <42.628799, 32.441227, 44.862495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188656, 32.128269, 44.304810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.190918, 32.515369, 44.204075>,  <42.192276, 32.747631, 44.143635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.190918, 32.515369, 44.204075>,  <42.188656, 32.128269, 44.304810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190918, 32.515369, 44.204075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251913, -0.245101, -0.936197,
		-0.967733, -0.058150, -0.245175,
		0.005653, 0.967752, -0.251841,
		42.192616, 32.805695, 44.128521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618549, 32.287796, 43.847523>,  <42.188656, 32.128269, 44.304810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618549, 32.287796, 43.847523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.941273, 32.518967, 43.798431>,  <42.134907, 32.657669, 43.768978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.941273, 32.518967, 43.798431>,  <41.618549, 32.287796, 43.847523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941273, 32.518967, 43.798431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083533, -0.094058, -0.992056,
		-0.584883, 0.810648, -0.027611,
		0.806805, 0.577930, -0.122729,
		42.183315, 32.692345, 43.761612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399338, 32.976635, 43.611130>,  <41.618549, 32.287796, 43.847523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399338, 32.976635, 43.611130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.756020, 32.854225, 43.477734>,  <41.970028, 32.780777, 43.397697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.756020, 32.854225, 43.477734>,  <41.399338, 32.976635, 43.611130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756020, 32.854225, 43.477734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339521, 0.035004, -0.939947,
		0.299324, 0.951379, -0.072690,
		0.891701, -0.306028, -0.333490,
		42.023529, 32.762417, 43.377686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651970, 33.560863, 43.165882>,  <41.399338, 32.976635, 43.611130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651970, 33.560863, 43.165882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.707561, 33.170685, 43.097549>,  <41.740917, 32.936577, 43.056549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.707561, 33.170685, 43.097549>,  <41.651970, 33.560863, 43.165882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707561, 33.170685, 43.097549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336889, 0.115644, -0.934416,
		0.931231, 0.187417, -0.312546,
		0.138981, -0.975450, -0.170830,
		41.749256, 32.878052, 43.046299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964386, 33.524460, 42.488201>,  <41.651970, 33.560863, 43.165882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964386, 33.524460, 42.488201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.776154, 33.179821, 42.564312>,  <41.663216, 32.973038, 42.609978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.776154, 33.179821, 42.564312>,  <41.964386, 33.524460, 42.488201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776154, 33.179821, 42.564312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475979, 0.066293, -0.876954,
		0.742967, -0.503245, -0.441299,
		-0.470578, -0.861597, 0.190281,
		41.634979, 32.921341, 42.621395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965633, 33.052135, 41.857449>,  <41.964386, 33.524460, 42.488201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965633, 33.052135, 41.857449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.673676, 32.906364, 42.088776>,  <41.498501, 32.818901, 42.227573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.673676, 32.906364, 42.088776>,  <41.965633, 33.052135, 41.857449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673676, 32.906364, 42.088776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656473, 0.137894, -0.741639,
		0.190528, -0.920965, -0.339885,
		-0.729892, -0.364428, 0.578316,
		41.454708, 32.797035, 42.262272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124908, 33.307613, 41.195015>,  <41.965633, 33.052135, 41.857449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124908, 33.307613, 41.195015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.233746, 33.240410, 40.816017>,  <42.299049, 33.200089, 40.588619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.233746, 33.240410, 40.816017>,  <42.124908, 33.307613, 41.195015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233746, 33.240410, 40.816017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143201, 0.980746, -0.132782,
		0.951556, -0.099553, 0.290913,
		0.272092, -0.168008, -0.947491,
		42.315372, 33.190006, 40.531769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527763, 33.887997, 41.125263>,  <42.124908, 33.307613, 41.195015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527763, 33.887997, 41.125263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.442062, 33.737297, 40.764786>,  <42.390640, 33.646877, 40.548500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.442062, 33.737297, 40.764786>,  <42.527763, 33.887997, 41.125263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442062, 33.737297, 40.764786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321013, 0.844214, -0.429248,
		0.922522, -0.381263, -0.059932,
		-0.214252, -0.376752, -0.901196,
		42.377789, 33.624271, 40.494427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072441, 33.973835, 40.577728>,  <42.527763, 33.887997, 41.125263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072441, 33.973835, 40.577728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.263668, 34.029839, 40.230892>,  <43.378407, 34.063442, 40.022789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.263668, 34.029839, 40.230892>,  <43.072441, 33.973835, 40.577728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263668, 34.029839, 40.230892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756033, -0.436885, -0.487386,
		-0.447058, 0.888554, -0.103009,
		0.478072, 0.140011, -0.867090,
		43.407089, 34.071842, 39.970764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677406, 34.479656, 40.209324>,  <43.072441, 33.973835, 40.577728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677406, 34.479656, 40.209324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.890701, 34.243698, 39.966778>,  <43.018681, 34.102123, 39.821251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.890701, 34.243698, 39.966778>,  <42.677406, 34.479656, 40.209324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890701, 34.243698, 39.966778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841886, -0.440325, -0.311996,
		-0.082952, 0.676859, -0.731424,
		0.533242, -0.589895, -0.606364,
		43.050674, 34.066730, 39.784870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218834, 34.479580, 39.710335>,  <42.677406, 34.479656, 40.209324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218834, 34.479580, 39.710335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.483948, 34.182133, 39.675121>,  <42.643017, 34.003666, 39.653992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.483948, 34.182133, 39.675121>,  <42.218834, 34.479580, 39.710335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483948, 34.182133, 39.675121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746867, -0.664945, -0.006188,
		-0.053936, 0.069851, -0.996098,
		0.662783, -0.743619, -0.088034,
		42.682781, 33.959045, 39.648712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913353, 33.870094, 39.341824>,  <42.218834, 34.479580, 39.710335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913353, 33.870094, 39.341824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.177078, 33.766254, 39.624073>,  <42.335312, 33.703949, 39.793423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.177078, 33.766254, 39.624073>,  <41.913353, 33.870094, 39.341824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177078, 33.766254, 39.624073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666303, -0.636554, 0.388381,
		0.348346, -0.726227, -0.592663,
		0.659315, -0.259602, 0.705628,
		42.374874, 33.688374, 39.835762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013542, 33.188694, 39.229774>,  <41.913353, 33.870094, 39.341824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013542, 33.188694, 39.229774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.102917, 33.308292, 39.600864>,  <42.156544, 33.380051, 39.823521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.102917, 33.308292, 39.600864>,  <42.013542, 33.188694, 39.229774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102917, 33.308292, 39.600864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418632, -0.830097, 0.368356,
		0.880240, -0.470682, -0.060309,
		0.223441, 0.298994, 0.927727,
		42.169949, 33.397991, 39.879181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465332, 32.752716, 39.568123>,  <42.013542, 33.188694, 39.229774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465332, 32.752716, 39.568123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.196957, 32.937908, 39.799809>,  <42.035931, 33.049023, 39.938820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.196957, 32.937908, 39.799809>,  <42.465332, 32.752716, 39.568123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196957, 32.937908, 39.799809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363450, -0.886192, 0.287345,
		0.646334, -0.017726, 0.762849,
		-0.670937, 0.462978, 0.579218,
		41.995674, 33.076801, 39.973576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.226128, 32.533424, 39.677185>,  <42.465332, 32.752716, 39.568123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.226128, 32.533424, 39.677185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.917381, 32.280956, 39.707764>,  <42.732132, 32.129475, 39.726109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.917381, 32.280956, 39.707764>,  <43.226128, 32.533424, 39.677185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917381, 32.280956, 39.707764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088868, -0.226160, -0.970028,
		0.629543, -0.741939, 0.230657,
		-0.771867, -0.631172, 0.076443,
		42.685822, 32.091606, 39.730698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432507, 31.899321, 39.523952>,  <43.226128, 32.533424, 39.677185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432507, 31.899321, 39.523952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.038731, 31.906723, 39.454044>,  <42.802467, 31.911165, 39.412102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.038731, 31.906723, 39.454044>,  <43.432507, 31.899321, 39.523952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038731, 31.906723, 39.454044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165204, -0.241748, -0.956172,
		-0.059944, -0.970163, 0.234928,
		-0.984436, 0.018506, -0.174766,
		42.743401, 31.912275, 39.401615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250919, 31.313215, 39.032326>,  <43.432507, 31.899321, 39.523952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250919, 31.313215, 39.032326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.032410, 31.647835, 39.015518>,  <42.901302, 31.848606, 39.005432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.032410, 31.647835, 39.015518>,  <43.250919, 31.313215, 39.032326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032410, 31.647835, 39.015518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130949, -0.134846, -0.982176,
		-0.827305, -0.531039, 0.183209,
		-0.546278, 0.836550, -0.042019,
		42.868526, 31.898800, 39.002911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413651, 31.182100, 38.865208>,  <43.250919, 31.313215, 39.032326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413651, 31.182100, 38.865208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.626244, 31.495987, 38.737614>,  <42.753799, 31.684319, 38.661057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.626244, 31.495987, 38.737614>,  <42.413651, 31.182100, 38.865208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626244, 31.495987, 38.737614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055741, -0.343359, -0.937549,
		-0.845235, 0.516069, -0.138748,
		0.531480, 0.784715, -0.318986,
		42.785686, 31.731401, 38.641918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277187, 31.133406, 38.182072>,  <42.413651, 31.182100, 38.865208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277187, 31.133406, 38.182072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.573772, 31.401794, 38.179787>,  <42.751724, 31.562828, 38.178417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.573772, 31.401794, 38.179787>,  <42.277187, 31.133406, 38.182072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573772, 31.401794, 38.179787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234806, -0.267433, -0.934529,
		-0.628569, 0.691577, -0.355840,
		0.741463, 0.670970, -0.005714,
		42.796211, 31.603085, 38.178074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166000, 31.681675, 37.657707>,  <42.277187, 31.133406, 38.182072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166000, 31.681675, 37.657707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.552586, 31.603037, 37.723801>,  <42.784534, 31.555855, 37.763458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.552586, 31.603037, 37.723801>,  <42.166000, 31.681675, 37.657707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552586, 31.603037, 37.723801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098081, -0.312086, -0.944977,
		0.237346, 0.929491, -0.282337,
		0.966461, -0.196595, 0.165237,
		42.842525, 31.544058, 37.773373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496590, 31.921103, 37.072048>,  <42.166000, 31.681675, 37.657707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496590, 31.921103, 37.072048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.748074, 31.657293, 37.236855>,  <42.898964, 31.499008, 37.335739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.748074, 31.657293, 37.236855>,  <42.496590, 31.921103, 37.072048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748074, 31.657293, 37.236855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298722, -0.284346, -0.910995,
		0.717975, 0.695830, 0.018243,
		0.628710, -0.659522, 0.412013,
		42.936687, 31.459436, 37.360458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152309, 32.046776, 36.858002>,  <42.496590, 31.921103, 37.072048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152309, 32.046776, 36.858002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.105263, 31.656273, 36.930759>,  <43.077034, 31.421970, 36.974415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.105263, 31.656273, 36.930759>,  <43.152309, 32.046776, 36.858002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105263, 31.656273, 36.930759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315103, -0.210385, -0.925445,
		0.941741, -0.051535, 0.332367,
		-0.117618, -0.976259, 0.181890,
		43.069977, 31.363396, 36.985325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662769, 31.574085, 36.918396>,  <43.152309, 32.046776, 36.858002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662769, 31.574085, 36.918396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.764458, 31.215626, 37.063885>,  <43.825470, 31.000551, 37.151176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.764458, 31.215626, 37.063885>,  <43.662769, 31.574085, 36.918396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764458, 31.215626, 37.063885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320795, -0.432916, -0.842422,
		0.912394, 0.097482, -0.397536,
		0.254221, -0.896148, 0.363718,
		43.840725, 30.946781, 37.173000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904430, 32.178459, 36.890884>,  <43.662769, 31.574085, 36.918396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904430, 32.178459, 36.890884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.207199, 32.213894, 36.631893>,  <44.388859, 32.235153, 36.476498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.207199, 32.213894, 36.631893>,  <43.904430, 32.178459, 36.890884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207199, 32.213894, 36.631893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168249, 0.983787, -0.062094,
		0.631480, 0.155938, 0.759550,
		0.756918, 0.088583, -0.647478,
		44.434273, 32.240467, 36.437649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.279446, 32.731113, 37.089802>,  <43.904430, 32.178459, 36.890884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.279446, 32.731113, 37.089802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.365822, 32.660736, 36.705631>,  <44.417648, 32.618511, 36.475128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.365822, 32.660736, 36.705631>,  <44.279446, 32.731113, 37.089802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365822, 32.660736, 36.705631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091646, 0.975636, -0.199337,
		0.972097, 0.131064, 0.194551,
		0.215937, -0.175945, -0.960424,
		44.430603, 32.607952, 36.417503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.919521, 33.070606, 36.902325>,  <44.279446, 32.731113, 37.089802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.919521, 33.070606, 36.902325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.624550, 33.036339, 36.634338>,  <44.447567, 33.015778, 36.473545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.624550, 33.036339, 36.634338>,  <44.919521, 33.070606, 36.902325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.624550, 33.036339, 36.634338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064552, 0.978444, -0.196165,
		0.672329, -0.187906, -0.716006,
		-0.737432, -0.085668, -0.669966,
		44.403320, 33.010639, 36.433350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.673687, 33.362984, 36.994915>,  <44.919521, 33.070606, 36.902325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.673687, 33.362984, 36.994915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.858109, 33.021706, 37.092468>,  <45.968761, 32.816936, 37.151001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.858109, 33.021706, 37.092468>,  <45.673687, 33.362984, 36.994915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.858109, 33.021706, 37.092468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334167, -0.421545, -0.842990,
		0.822046, 0.307169, -0.479467,
		0.461057, -0.853198, 0.243883,
		45.996426, 32.765747, 37.165634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.344315, 33.069954, 36.488117>,  <45.673687, 33.362984, 36.994915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.344315, 33.069954, 36.488117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.153618, 32.765209, 36.663517>,  <46.039200, 32.582363, 36.768757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.153618, 32.765209, 36.663517>,  <46.344315, 33.069954, 36.488117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.153618, 32.765209, 36.663517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283970, -0.338608, -0.897054,
		0.831911, -0.552184, -0.054918,
		-0.476744, -0.761864, 0.438496,
		46.010593, 32.536652, 36.795067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.560764, 32.364204, 36.321075>,  <46.344315, 33.069954, 36.488117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.560764, 32.364204, 36.321075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.166965, 32.425018, 36.356075>,  <45.930687, 32.461506, 36.377075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.166965, 32.425018, 36.356075>,  <46.560764, 32.364204, 36.321075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.166965, 32.425018, 36.356075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117166, -0.198698, -0.973032,
		-0.130541, -0.968198, 0.213430,
		-0.984495, 0.152027, 0.087502,
		45.871616, 32.470627, 36.382324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.682953, 32.708721, 35.697010>,  <46.560764, 32.364204, 36.321075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.682953, 32.708721, 35.697010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.040897, 32.651714, 35.527821>,  <47.255665, 32.617512, 35.426308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.040897, 32.651714, 35.527821>,  <46.682953, 32.708721, 35.697010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.040897, 32.651714, 35.527821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118376, 0.989497, -0.082962,
		0.430358, 0.024169, 0.902335,
		0.894863, -0.142518, -0.422977,
		47.309357, 32.608959, 35.400928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.231140, 32.946987, 36.081276>,  <46.682953, 32.708721, 35.697010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.231140, 32.946987, 36.081276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.336002, 32.953255, 35.695316>,  <47.398918, 32.957016, 35.463741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.336002, 32.953255, 35.695316>,  <47.231140, 32.946987, 36.081276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.336002, 32.953255, 35.695316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221810, 0.972120, 0.076048,
		0.939189, -0.233961, 0.251368,
		0.262152, 0.015668, -0.964899,
		47.414646, 32.957954, 35.405846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.854580, 33.309139, 36.029083>,  <47.231140, 32.946987, 36.081276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.854580, 33.309139, 36.029083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.675205, 33.412888, 35.686943>,  <47.567581, 33.475136, 35.481659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.675205, 33.412888, 35.686943>,  <47.854580, 33.309139, 36.029083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.675205, 33.412888, 35.686943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281031, 0.949353, 0.140536,
		0.848483, -0.177359, -0.498619,
		-0.448440, 0.259369, -0.855353,
		47.540672, 33.490700, 35.430336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.314701, 33.571884, 35.514877>,  <47.854580, 33.309139, 36.029083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.314701, 33.571884, 35.514877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.951176, 33.719543, 35.437126>,  <47.733059, 33.808140, 35.390476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.951176, 33.719543, 35.437126>,  <48.314701, 33.571884, 35.514877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.951176, 33.719543, 35.437126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353034, 0.928741, 0.113173,
		0.222303, 0.034232, -0.974376,
		-0.908817, 0.369146, -0.194377,
		47.678532, 33.830288, 35.378815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.488770, 34.260845, 35.408386>,  <48.314701, 33.571884, 35.514877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.488770, 34.260845, 35.408386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.091911, 34.259132, 35.358391>,  <47.853794, 34.258106, 35.328396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.091911, 34.259132, 35.358391>,  <48.488770, 34.260845, 35.408386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.091911, 34.259132, 35.358391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016357, 0.995269, 0.095776,
		0.123985, 0.097068, -0.987525,
		-0.992149, -0.004278, -0.124986,
		47.794266, 34.257851, 35.320896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.282452, 34.635040, 34.700920>,  <48.488770, 34.260845, 35.408386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.282452, 34.635040, 34.700920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.072567, 34.613190, 35.040730>,  <47.946636, 34.600079, 35.244614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.072567, 34.613190, 35.040730>,  <48.282452, 34.635040, 34.700920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.072567, 34.613190, 35.040730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059628, 0.993129, 0.100692,
		-0.849187, 0.103490, -0.517852,
		-0.524714, -0.054627, 0.849524,
		47.915154, 34.596802, 35.295586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.507587, 34.971745, 34.817387>,  <48.282452, 34.635040, 34.700920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.507587, 34.971745, 34.817387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.770737, 34.978931, 35.118549>,  <47.928627, 34.983246, 35.299248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.770737, 34.978931, 35.118549>,  <47.507587, 34.971745, 34.817387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.770737, 34.978931, 35.118549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146679, 0.983629, 0.104687,
		-0.738704, -0.179307, 0.649742,
		0.657877, 0.017971, 0.752911,
		47.968102, 34.984322, 35.344421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.764174, 32.324997, 56.229523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.066715, 32.518940, 56.405178>,  <32.248241, 32.635307, 56.510571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.066715, 32.518940, 56.405178>,  <31.764174, 32.324997, 56.229523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066715, 32.518940, 56.405178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576012, -0.175443, -0.798392,
		-0.310066, 0.856813, -0.411983,
		0.756353, 0.484861, 0.439135,
		32.293621, 32.664398, 56.536919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168633, 32.598515, 55.580334>,  <31.764174, 32.324997, 56.229523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168633, 32.598515, 55.580334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.425438, 32.639660, 55.884239>,  <32.579521, 32.664349, 56.066582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.425438, 32.639660, 55.884239>,  <32.168633, 32.598515, 55.580334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425438, 32.639660, 55.884239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762432, 0.018664, -0.646799,
		-0.080715, 0.994520, -0.066447,
		0.642015, 0.102867, 0.759760,
		32.618042, 32.670521, 56.112167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564800, 33.210854, 55.426201>,  <32.168633, 32.598515, 55.580334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564800, 33.210854, 55.426201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.767033, 32.972279, 55.675568>,  <32.888371, 32.829132, 55.825188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.767033, 32.972279, 55.675568>,  <32.564800, 33.210854, 55.426201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767033, 32.972279, 55.675568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758805, -0.036502, -0.650295,
		0.410617, 0.801829, 0.434125,
		0.505578, -0.596438, 0.623420,
		32.918705, 32.793346, 55.862595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177990, 33.465462, 55.485092>,  <32.564800, 33.210854, 55.426201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177990, 33.465462, 55.485092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.248192, 33.087234, 55.594704>,  <33.290314, 32.860298, 55.660473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.248192, 33.087234, 55.594704>,  <33.177990, 33.465462, 55.485092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248192, 33.087234, 55.594704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895935, 0.038035, -0.442553,
		0.408043, 0.323182, 0.853847,
		0.175501, -0.945572, 0.274031,
		33.300842, 32.803562, 55.676914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897961, 33.447769, 55.759663>,  <33.177990, 33.465462, 55.485092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897961, 33.447769, 55.759663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.784355, 33.086288, 55.631500>,  <33.716190, 32.869400, 55.554604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.784355, 33.086288, 55.631500>,  <33.897961, 33.447769, 55.759663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784355, 33.086288, 55.631500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805172, -0.043350, -0.591455,
		0.520609, -0.425966, 0.739946,
		-0.284016, -0.903700, -0.320408,
		33.699150, 32.815178, 55.535378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496529, 33.081520, 55.741985>,  <33.897961, 33.447769, 55.759663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496529, 33.081520, 55.741985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.272781, 32.848072, 55.506531>,  <34.138531, 32.708004, 55.365257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.272781, 32.848072, 55.506531>,  <34.496529, 33.081520, 55.741985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272781, 32.848072, 55.506531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794786, -0.175950, -0.580824,
		0.235408, -0.792738, 0.562272,
		-0.559373, -0.583616, -0.588637,
		34.104969, 32.672989, 55.329941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940258, 32.422066, 55.631203>,  <34.496529, 33.081520, 55.741985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940258, 32.422066, 55.631203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.680523, 32.456070, 55.328911>,  <34.524681, 32.476475, 55.147533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.680523, 32.456070, 55.328911>,  <34.940258, 32.422066, 55.631203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680523, 32.456070, 55.328911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629568, -0.497366, -0.596884,
		-0.426618, -0.863365, 0.269438,
		-0.649338, 0.085012, -0.755733,
		34.485722, 32.481575, 55.102192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875118, 31.818983, 55.318092>,  <34.940258, 32.422066, 55.631203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875118, 31.818983, 55.318092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.755630, 32.087975, 55.047230>,  <34.683937, 32.249371, 54.884712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.755630, 32.087975, 55.047230>,  <34.875118, 31.818983, 55.318092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755630, 32.087975, 55.047230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613574, -0.408137, -0.675982,
		-0.730956, -0.617413, -0.290697,
		-0.298716, 0.672476, -0.677159,
		34.666016, 32.289719, 54.844082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964836, 31.461473, 54.735863>,  <34.875118, 31.818983, 55.318092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964836, 31.461473, 54.735863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.899277, 31.822365, 54.576302>,  <34.859940, 32.038898, 54.480564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.899277, 31.822365, 54.576302>,  <34.964836, 31.461473, 54.735863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899277, 31.822365, 54.576302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737648, -0.156402, -0.656822,
		-0.654992, -0.401901, -0.639892,
		-0.163897, 0.902227, -0.398903,
		34.850109, 32.093033, 54.456631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807907, 31.435244, 53.991116>,  <34.964836, 31.461473, 54.735863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807907, 31.435244, 53.991116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.890678, 31.824152, 54.034698>,  <34.940342, 32.057495, 54.060848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.890678, 31.824152, 54.034698>,  <34.807907, 31.435244, 53.991116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890678, 31.824152, 54.034698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459592, 0.001710, -0.888129,
		-0.863688, 0.233852, -0.446494,
		0.206927, 0.972271, 0.108954,
		34.952755, 32.115833, 54.067383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429996, 31.852766, 53.478420>,  <34.807907, 31.435244, 53.991116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429996, 31.852766, 53.478420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.752880, 32.061241, 53.589249>,  <34.946609, 32.186325, 53.655746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.752880, 32.061241, 53.589249>,  <34.429996, 31.852766, 53.478420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752880, 32.061241, 53.589249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335146, -0.018290, -0.941989,
		-0.485884, 0.853247, -0.189438,
		0.807214, 0.521187, 0.277075,
		34.995045, 32.217598, 53.672371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532970, 32.424030, 53.010563>,  <34.429996, 31.852766, 53.478420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532970, 32.424030, 53.010563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.892303, 32.384182, 53.181713>,  <35.107903, 32.360275, 53.284405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.892303, 32.384182, 53.181713>,  <34.532970, 32.424030, 53.010563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892303, 32.384182, 53.181713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428397, -0.017178, -0.903427,
		0.097347, 0.994878, 0.027245,
		0.898332, -0.099618, 0.427875,
		35.161804, 32.354298, 53.310074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906895, 32.908360, 52.691406>,  <34.532970, 32.424030, 53.010563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906895, 32.908360, 52.691406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.153126, 32.630741, 52.840729>,  <35.300865, 32.464169, 52.930321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.153126, 32.630741, 52.840729>,  <34.906895, 32.908360, 52.691406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153126, 32.630741, 52.840729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390349, -0.142966, -0.909499,
		0.684607, 0.705588, 0.182915,
		0.615581, -0.694050, 0.373302,
		35.337799, 32.422527, 52.952721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640427, 33.115051, 52.531670>,  <34.906895, 32.908360, 52.691406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640427, 33.115051, 52.531670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.632660, 32.721512, 52.602840>,  <35.627998, 32.485386, 52.645542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.632660, 32.721512, 52.602840>,  <35.640427, 33.115051, 52.531670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632660, 32.721512, 52.602840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530122, -0.161017, -0.832493,
		0.847699, 0.078160, 0.524688,
		-0.019416, -0.983852, 0.177928,
		35.626835, 32.426357, 52.656219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207382, 32.906330, 52.284817>,  <35.640427, 33.115051, 52.531670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207382, 32.906330, 52.284817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.056957, 32.536110, 52.302380>,  <35.966702, 32.313976, 52.312916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.056957, 32.536110, 52.302380>,  <36.207382, 32.906330, 52.284817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056957, 32.536110, 52.302380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465461, -0.229671, -0.854750,
		0.801200, -0.301004, 0.517180,
		-0.376065, -0.925553, 0.043907,
		35.944138, 32.258446, 52.315552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644432, 32.435455, 51.872612>,  <36.207382, 32.906330, 52.284817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644432, 32.435455, 51.872612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.314304, 32.214058, 51.917313>,  <36.116226, 32.081219, 51.944134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.314304, 32.214058, 51.917313>,  <36.644432, 32.435455, 51.872612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314304, 32.214058, 51.917313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123725, -0.370355, -0.920614,
		0.550939, -0.745978, 0.374144,
		-0.825323, -0.553493, 0.111747,
		36.066708, 32.048012, 51.950836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813030, 31.710772, 51.780621>,  <36.644432, 32.435455, 51.872612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813030, 31.710772, 51.780621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.424641, 31.738535, 51.689064>,  <36.191608, 31.755194, 51.634132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.424641, 31.738535, 51.689064>,  <36.813030, 31.710772, 51.780621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424641, 31.738535, 51.689064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149203, -0.572176, -0.806445,
		-0.186938, -0.817188, 0.545213,
		-0.970975, 0.069408, -0.228888,
		36.133347, 31.759357, 51.620396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637875, 31.008156, 51.660400>,  <36.813030, 31.710772, 51.780621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637875, 31.008156, 51.660400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.389137, 31.271101, 51.490139>,  <36.239895, 31.428867, 51.387981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.389137, 31.271101, 51.490139>,  <36.637875, 31.008156, 51.660400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389137, 31.271101, 51.490139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105786, -0.468035, -0.877355,
		-0.775964, -0.590607, 0.221505,
		-0.621844, 0.657363, -0.425656,
		36.202583, 31.468309, 51.362442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323269, 30.653252, 51.157154>,  <36.637875, 31.008156, 51.660400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323269, 30.653252, 51.157154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.189922, 31.016146, 51.054558>,  <36.109913, 31.233883, 50.993000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.189922, 31.016146, 51.054558>,  <36.323269, 30.653252, 51.157154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189922, 31.016146, 51.054558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098201, -0.237162, -0.966494,
		-0.937668, -0.347387, -0.010029,
		-0.333369, 0.907236, -0.256493,
		36.089912, 31.288317, 50.977612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888512, 30.559278, 50.577187>,  <36.323269, 30.653252, 51.157154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888512, 30.559278, 50.577187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.980171, 30.948549, 50.569054>,  <36.035168, 31.182112, 50.564175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.980171, 30.948549, 50.569054>,  <35.888512, 30.559278, 50.577187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980171, 30.948549, 50.569054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133648, -0.052145, -0.989656,
		-0.964172, 0.224064, -0.142012,
		0.229151, 0.973178, -0.020331,
		36.048916, 31.240503, 50.562954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607300, 30.765718, 50.013821>,  <35.888512, 30.559278, 50.577187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607300, 30.765718, 50.013821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.848343, 31.077988, 50.080048>,  <35.992970, 31.265350, 50.119785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.848343, 31.077988, 50.080048>,  <35.607300, 30.765718, 50.013821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848343, 31.077988, 50.080048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039409, 0.178107, -0.983222,
		-0.797066, 0.599019, 0.076562,
		0.602605, 0.780675, 0.165569,
		36.029125, 31.312191, 50.129719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391773, 31.429413, 49.659885>,  <35.607300, 30.765718, 50.013821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391773, 31.429413, 49.659885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.789459, 31.436073, 49.702320>,  <36.028072, 31.440069, 49.727783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.789459, 31.436073, 49.702320>,  <35.391773, 31.429413, 49.659885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789459, 31.436073, 49.702320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105854, 0.014414, -0.994277,
		-0.018084, 0.999757, 0.012568,
		0.994217, 0.016650, 0.106089,
		36.087723, 31.441069, 49.734146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615131, 31.812807, 49.100422>,  <35.391773, 31.429413, 49.659885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615131, 31.812807, 49.100422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.916618, 31.582914, 49.227921>,  <36.097511, 31.444979, 49.304420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.916618, 31.582914, 49.227921>,  <35.615131, 31.812807, 49.100422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916618, 31.582914, 49.227921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325299, -0.095176, -0.940809,
		0.571049, 0.812789, 0.115224,
		0.753713, -0.574730, 0.318750,
		36.142731, 31.410496, 49.323544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164291, 32.178368, 48.762482>,  <35.615131, 31.812807, 49.100422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164291, 32.178368, 48.762482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.853806, 32.205975, 48.511810>,  <34.667515, 32.222538, 48.361408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.853806, 32.205975, 48.511810>,  <35.164291, 32.178368, 48.762482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853806, 32.205975, 48.511810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602072, 0.213798, 0.769285,
		0.187074, 0.974437, -0.124402,
		-0.776217, 0.069015, -0.626677,
		34.620941, 32.226681, 48.323807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769997, 32.850155, 48.849136>,  <35.164291, 32.178368, 48.762482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769997, 32.850155, 48.849136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.536091, 32.557568, 48.708851>,  <34.395748, 32.382015, 48.624680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.536091, 32.557568, 48.708851>,  <34.769997, 32.850155, 48.849136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536091, 32.557568, 48.708851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694096, 0.227396, 0.683025,
		-0.419862, 0.642838, -0.640684,
		-0.584763, -0.731472, -0.350716,
		34.360661, 32.338127, 48.603638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138111, 33.102463, 48.722252>,  <34.769997, 32.850155, 48.849136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138111, 33.102463, 48.722252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.068996, 32.711536, 48.771233>,  <34.027527, 32.476978, 48.800621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.068996, 32.711536, 48.771233>,  <34.138111, 33.102463, 48.722252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068996, 32.711536, 48.771233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767612, 0.211512, 0.605007,
		-0.617185, 0.010538, -0.786747,
		-0.172782, -0.977318, 0.122453,
		34.017162, 32.418343, 48.807968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470127, 33.095707, 48.865005>,  <34.138111, 33.102463, 48.722252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470127, 33.095707, 48.865005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.606422, 32.756828, 49.028053>,  <33.688202, 32.553501, 49.125881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.606422, 32.756828, 49.028053>,  <33.470127, 33.095707, 48.865005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606422, 32.756828, 49.028053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694454, 0.065450, 0.716555,
		-0.633742, -0.527229, -0.566039,
		0.340742, -0.847199, 0.407615,
		33.708645, 32.502670, 49.150337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905197, 32.738007, 49.034222>,  <33.470127, 33.095707, 48.865005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905197, 32.738007, 49.034222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.197937, 32.561333, 49.241802>,  <33.373581, 32.455326, 49.366348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.197937, 32.561333, 49.241802>,  <32.905197, 32.738007, 49.034222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197937, 32.561333, 49.241802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621033, -0.118757, 0.774736,
		-0.280566, -0.889272, -0.361217,
		0.731848, -0.441692, 0.518948,
		33.417492, 32.428825, 49.397488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555649, 32.126823, 49.353333>,  <32.905197, 32.738007, 49.034222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555649, 32.126823, 49.353333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.890377, 32.154640, 49.570549>,  <33.091213, 32.171329, 49.700878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.890377, 32.154640, 49.570549>,  <32.555649, 32.126823, 49.353333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890377, 32.154640, 49.570549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546177, 0.037714, 0.836820,
		0.037714, -0.996866, 0.069541,
		-0.836820, -0.069541, -0.543043,
		33.141422, 32.175503, 49.733463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493488, 31.574766, 49.889263>,  <32.555649, 32.126823, 49.353333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493488, 31.574766, 49.889263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.771580, 31.829268, 50.023029>,  <32.938435, 31.981968, 50.103291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.771580, 31.829268, 50.023029>,  <32.493488, 31.574766, 49.889263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771580, 31.829268, 50.023029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298890, -0.167218, 0.939523,
		0.653697, -0.753138, 0.073915,
		0.695231, 0.636255, 0.334416,
		32.980148, 32.020145, 50.123356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903271, 31.280439, 50.532928>,  <32.493488, 31.574766, 49.889263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903271, 31.280439, 50.532928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.932865, 31.678982, 50.549900>,  <32.950623, 31.918108, 50.560081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.932865, 31.678982, 50.549900>,  <32.903271, 31.280439, 50.532928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932865, 31.678982, 50.549900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355694, -0.013378, 0.934507,
		0.931669, -0.084231, 0.353408,
		0.073987, 0.996356, 0.042424,
		32.955063, 31.977888, 50.562626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123440, 31.290802, 51.239368>,  <32.903271, 31.280439, 50.532928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123440, 31.290802, 51.239368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.029099, 31.666248, 51.138672>,  <32.972496, 31.891516, 51.078255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.029099, 31.666248, 51.138672>,  <33.123440, 31.290802, 51.239368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029099, 31.666248, 51.138672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199381, 0.206797, 0.957853,
		0.951117, 0.276100, 0.138370,
		-0.235849, 0.938618, -0.251738,
		32.958344, 31.947834, 51.063152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465240, 31.701567, 51.684479>,  <33.123440, 31.290802, 51.239368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465240, 31.701567, 51.684479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.164948, 31.944807, 51.581242>,  <32.984772, 32.090752, 51.519299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.164948, 31.944807, 51.581242>,  <33.465240, 31.701567, 51.684479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164948, 31.944807, 51.581242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199377, 0.163907, 0.966118,
		0.629801, 0.776754, -0.001808,
		-0.750732, 0.608102, -0.258096,
		32.939728, 32.127239, 51.503815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516617, 32.302101, 52.128593>,  <33.465240, 31.701567, 51.684479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516617, 32.302101, 52.128593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.141842, 32.278893, 51.990738>,  <32.916977, 32.264969, 51.908024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.141842, 32.278893, 51.990738>,  <33.516617, 32.302101, 52.128593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141842, 32.278893, 51.990738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349214, 0.194655, 0.916602,
		0.013907, 0.979154, -0.202640,
		-0.936940, -0.058017, -0.344641,
		32.860760, 32.261486, 51.887344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229866, 32.807865, 52.442696>,  <33.516617, 32.302101, 52.128593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229866, 32.807865, 52.442696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.913277, 32.589672, 52.332413>,  <32.723324, 32.458755, 52.266243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.913277, 32.589672, 52.332413>,  <33.229866, 32.807865, 52.442696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913277, 32.589672, 52.332413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458019, 0.230645, 0.858500,
		-0.404704, 0.805763, -0.432390,
		-0.791475, -0.545481, -0.275711,
		32.675835, 32.426029, 52.249699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651279, 33.242989, 52.466293>,  <33.229866, 32.807865, 52.442696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651279, 33.242989, 52.466293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.465191, 32.892197, 52.514412>,  <32.353539, 32.681721, 52.543282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.465191, 32.892197, 52.514412>,  <32.651279, 33.242989, 52.466293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465191, 32.892197, 52.514412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524799, 0.382694, 0.760350,
		-0.712848, 0.290603, -0.638277,
		-0.465225, -0.876981, 0.120294,
		32.325623, 32.629101, 52.550499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950062, 33.389042, 52.540504>,  <32.651279, 33.242989, 52.466293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950062, 33.389042, 52.540504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.996351, 33.018570, 52.684063>,  <32.024124, 32.796288, 52.770199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.996351, 33.018570, 52.684063>,  <31.950062, 33.389042, 52.540504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996351, 33.018570, 52.684063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454933, 0.271775, 0.848042,
		-0.882975, -0.261411, -0.389898,
		0.115723, -0.926177, 0.358895,
		32.031067, 32.740719, 52.791733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331215, 33.223644, 52.697609>,  <31.950062, 33.389042, 52.540504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331215, 33.223644, 52.697609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.544504, 32.967857, 52.919151>,  <31.672478, 32.814384, 53.052078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.544504, 32.967857, 52.919151>,  <31.331215, 33.223644, 52.697609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544504, 32.967857, 52.919151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507712, 0.281785, 0.814141,
		-0.676685, -0.715317, -0.174412,
		0.533222, -0.639468, 0.553855,
		31.704472, 32.776016, 53.085308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841715, 32.745564, 52.982521>,  <31.331215, 33.223644, 52.697609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841715, 32.745564, 52.982521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.176525, 32.755749, 53.201149>,  <31.377411, 32.761860, 53.332325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.176525, 32.755749, 53.201149>,  <30.841715, 32.745564, 52.982521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176525, 32.755749, 53.201149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545825, 0.108711, 0.830817,
		-0.038262, -0.993747, 0.104893,
		0.837025, 0.025464, 0.546572,
		31.427633, 32.763390, 53.365120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690786, 32.274567, 53.665417>,  <30.841715, 32.745564, 52.982521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690786, 32.274567, 53.665417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.013355, 32.492229, 53.758007>,  <31.206896, 32.622826, 53.813560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.013355, 32.492229, 53.758007>,  <30.690786, 32.274567, 53.665417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013355, 32.492229, 53.758007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387206, 0.190055, 0.902192,
		0.446943, -0.817173, 0.363965,
		0.806420, 0.544158, 0.231471,
		31.255281, 32.655476, 53.827450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.909582, 32.151684, 54.388855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145643, 32.468674, 54.327263>,  <31.287279, 32.658867, 54.290306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145643, 32.468674, 54.327263>,  <30.909582, 32.151684, 54.388855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145643, 32.468674, 54.327263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273338, 0.375622, 0.885548,
		0.759609, -0.480520, 0.438287,
		0.590153, 0.792470, -0.153981,
		31.322689, 32.706413, 54.281067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239254, 32.214024, 55.014538>,  <30.909582, 32.151684, 54.388855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239254, 32.214024, 55.014538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237299, 32.574932, 54.842083>,  <31.236126, 32.791477, 54.738609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237299, 32.574932, 54.842083>,  <31.239254, 32.214024, 55.014538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237299, 32.574932, 54.842083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460320, 0.380714, 0.801974,
		0.887740, 0.202380, 0.413473,
		-0.004888, 0.902274, -0.431135,
		31.235832, 32.845615, 54.712742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449804, 32.646885, 55.508190>,  <31.239254, 32.214024, 55.014538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449804, 32.646885, 55.508190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259943, 32.863464, 55.230618>,  <31.146027, 32.993412, 55.064075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259943, 32.863464, 55.230618>,  <31.449804, 32.646885, 55.508190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259943, 32.863464, 55.230618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622884, 0.350395, 0.699457,
		0.621870, 0.764235, 0.170945,
		-0.474651, 0.541450, -0.693930,
		31.117548, 33.025898, 55.022438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492617, 33.332207, 55.749996>,  <31.449804, 32.646885, 55.508190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492617, 33.332207, 55.749996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184494, 33.344090, 55.495205>,  <30.999620, 33.351219, 55.342331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184494, 33.344090, 55.495205>,  <31.492617, 33.332207, 55.749996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184494, 33.344090, 55.495205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564512, 0.432807, 0.702855,
		0.296572, 0.900997, -0.316622,
		-0.770306, 0.029711, -0.636982,
		30.953402, 33.353004, 55.304111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265890, 34.077847, 55.787498>,  <31.492617, 33.332207, 55.749996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265890, 34.077847, 55.787498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978941, 33.828121, 55.663818>,  <30.806772, 33.678284, 55.589611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978941, 33.828121, 55.663818>,  <31.265890, 34.077847, 55.787498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978941, 33.828121, 55.663818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652264, 0.445917, 0.612952,
		-0.244800, 0.641394, -0.727109,
		-0.717373, -0.624318, -0.309197,
		30.763729, 33.640827, 55.571060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675713, 34.421928, 55.592155>,  <31.265890, 34.077847, 55.787498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675713, 34.421928, 55.592155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562943, 34.048317, 55.679886>,  <30.495281, 33.824150, 55.732525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562943, 34.048317, 55.679886>,  <30.675713, 34.421928, 55.592155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562943, 34.048317, 55.679886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751564, 0.357091, 0.554651,
		-0.596380, -0.008467, -0.802657,
		-0.281926, -0.934031, 0.219326,
		30.478365, 33.768108, 55.745682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797436, 34.508305, 55.664448>,  <30.675713, 34.421928, 55.592155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797436, 34.508305, 55.664448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882845, 34.144764, 55.807781>,  <29.934090, 33.926640, 55.893780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882845, 34.144764, 55.807781>,  <29.797436, 34.508305, 55.664448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882845, 34.144764, 55.807781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650024, 0.141647, 0.746596,
		-0.729299, -0.392340, -0.560528,
		0.213522, -0.908848, 0.358334,
		29.946901, 33.872108, 55.915283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203318, 34.241348, 55.650894>,  <29.797436, 34.508305, 55.664448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203318, 34.241348, 55.650894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406679, 34.028488, 55.921700>,  <29.528696, 33.900772, 56.084183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406679, 34.028488, 55.921700>,  <29.203318, 34.241348, 55.650894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406679, 34.028488, 55.921700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681118, 0.232535, 0.694266,
		-0.526882, -0.814092, -0.244234,
		0.508404, -0.532149, 0.677011,
		29.559200, 33.868843, 56.124802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804970, 33.748486, 55.887867>,  <29.203318, 34.241348, 55.650894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804970, 33.748486, 55.887867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055403, 33.787704, 56.197296>,  <29.205662, 33.811234, 56.382954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055403, 33.787704, 56.197296>,  <28.804970, 33.748486, 55.887867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055403, 33.787704, 56.197296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779617, 0.059841, 0.623391,
		0.014829, -0.993381, 0.113904,
		0.626081, 0.098046, 0.773569,
		29.243227, 33.817120, 56.429367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478458, 33.280880, 56.343727>,  <28.804970, 33.748486, 55.887867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478458, 33.280880, 56.343727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704769, 33.525574, 56.564880>,  <28.840555, 33.672390, 56.697571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704769, 33.525574, 56.564880>,  <28.478458, 33.280880, 56.343727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704769, 33.525574, 56.564880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760712, 0.128536, 0.636235,
		0.318144, -0.780548, 0.538079,
		0.565775, 0.611737, 0.552880,
		28.874502, 33.709095, 56.730743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468239, 33.057457, 57.094299>,  <28.478458, 33.280880, 56.343727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468239, 33.057457, 57.094299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587355, 33.439301, 57.096981>,  <28.658823, 33.668407, 57.098591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587355, 33.439301, 57.096981>,  <28.468239, 33.057457, 57.094299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587355, 33.439301, 57.096981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801108, 0.246073, 0.545596,
		0.519182, -0.167840, 0.838021,
		0.297787, 0.954609, 0.006702,
		28.676691, 33.725681, 57.098991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591236, 33.174427, 57.771034>,  <28.468239, 33.057457, 57.094299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591236, 33.174427, 57.771034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523453, 33.524685, 57.590134>,  <28.482782, 33.734840, 57.481594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523453, 33.524685, 57.590134>,  <28.591236, 33.174427, 57.771034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523453, 33.524685, 57.590134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660090, 0.239906, 0.711847,
		0.731823, 0.419153, 0.537351,
		-0.169460, 0.875646, -0.452248,
		28.472614, 33.787380, 57.454460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660955, 33.599304, 58.283882>,  <28.591236, 33.174427, 57.771034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660955, 33.599304, 58.283882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466209, 33.807766, 58.003494>,  <28.349361, 33.932842, 57.835262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466209, 33.807766, 58.003494>,  <28.660955, 33.599304, 58.283882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466209, 33.807766, 58.003494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554130, 0.436063, 0.709076,
		0.675204, 0.733655, 0.076481,
		-0.486867, 0.521152, -0.700972,
		28.320148, 33.964111, 57.793201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435621, 34.276024, 58.575264>,  <28.660955, 33.599304, 58.283882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435621, 34.276024, 58.575264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208525, 34.285656, 58.246120>,  <28.072268, 34.291435, 58.048634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208525, 34.285656, 58.246120>,  <28.435621, 34.276024, 58.575264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208525, 34.285656, 58.246120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786260, 0.280234, 0.550694,
		0.243854, 0.959630, -0.140165,
		-0.567741, 0.024082, -0.822855,
		28.038202, 34.292881, 57.999264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157671, 35.043385, 58.510651>,  <28.435621, 34.276024, 58.575264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157671, 35.043385, 58.510651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916973, 34.780853, 58.328606>,  <27.772554, 34.623333, 58.219379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916973, 34.780853, 58.328606>,  <28.157671, 35.043385, 58.510651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916973, 34.780853, 58.328606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758432, 0.290943, 0.583209,
		-0.250365, 0.696119, -0.672856,
		-0.601746, -0.656331, -0.455117,
		27.736450, 34.583954, 58.192070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674164, 35.403316, 58.373123>,  <28.157671, 35.043385, 58.510651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674164, 35.403316, 58.373123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476215, 35.060745, 58.314285>,  <27.357447, 34.855202, 58.278984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476215, 35.060745, 58.314285>,  <27.674164, 35.403316, 58.373123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476215, 35.060745, 58.314285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778501, 0.361751, 0.512906,
		-0.386054, 0.368335, -0.845749,
		-0.494872, -0.856426, -0.147094,
		27.327753, 34.803818, 58.270157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907318, 35.471405, 58.192600>,  <27.674164, 35.403316, 58.373123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907318, 35.471405, 58.192600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922419, 35.111420, 58.366329>,  <26.931479, 34.895428, 58.470566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922419, 35.111420, 58.366329>,  <26.907318, 35.471405, 58.192600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922419, 35.111420, 58.366329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740188, 0.266807, 0.617200,
		-0.671339, -0.344779, -0.656072,
		0.037753, -0.899967, 0.434319,
		26.933744, 34.841431, 58.496624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.299332, 35.315540, 58.379757>,  <26.907318, 35.471405, 58.192600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.299332, 35.315540, 58.379757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455372, 35.027828, 58.609699>,  <26.548996, 34.855202, 58.747665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455372, 35.027828, 58.609699>,  <26.299332, 35.315540, 58.379757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455372, 35.027828, 58.609699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728157, 0.141136, 0.670723,
		-0.563571, -0.680232, -0.468693,
		0.390098, -0.719281, 0.574855,
		26.572401, 34.812042, 58.782154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698975, 34.921299, 58.493946>,  <26.299332, 35.315540, 58.379757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698975, 34.921299, 58.493946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971346, 34.862820, 58.780991>,  <26.134769, 34.827732, 58.953217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971346, 34.862820, 58.780991>,  <25.698975, 34.921299, 58.493946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.971346, 34.862820, 58.780991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563731, 0.520853, 0.641030,
		-0.467488, -0.841034, 0.272246,
		0.680928, -0.146201, 0.717609,
		26.175625, 34.818958, 58.996273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.294180, 34.737530, 59.091354>,  <25.698975, 34.921299, 58.493946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.294180, 34.737530, 59.091354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652994, 34.873550, 59.204273>,  <25.868282, 34.955162, 59.272026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652994, 34.873550, 59.204273>,  <25.294180, 34.737530, 59.091354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.652994, 34.873550, 59.204273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422258, 0.470827, 0.774610,
		0.130493, -0.814055, 0.565938,
		0.897034, 0.340053, 0.282301,
		25.922104, 34.975567, 59.288963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.276894, 34.632324, 59.814217>,  <25.294180, 34.737530, 59.091354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.276894, 34.632324, 59.814217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.549644, 34.914623, 59.737309>,  <25.713295, 35.084003, 59.691166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.549644, 34.914623, 59.737309>,  <25.276894, 34.632324, 59.814217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.549644, 34.914623, 59.737309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406526, 0.584159, 0.702492,
		0.608100, -0.400846, 0.685227,
		0.681872, 0.705748, -0.192273,
		25.754208, 35.126347, 59.679626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.447384, 34.993637, 60.479939>,  <25.276894, 34.632324, 59.814217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.447384, 34.993637, 60.479939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531538, 35.252644, 60.186962>,  <25.582031, 35.408047, 60.011177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531538, 35.252644, 60.186962>,  <25.447384, 34.993637, 60.479939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531538, 35.252644, 60.186962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405918, 0.739430, 0.537097,
		0.889364, 0.184313, 0.418402,
		0.210385, 0.647512, -0.732439,
		25.594654, 35.446896, 59.967232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.675236, 35.656773, 60.819740>,  <25.447384, 34.993637, 60.479939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.675236, 35.656773, 60.819740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515793, 35.752575, 60.465622>,  <25.420128, 35.810059, 60.253151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515793, 35.752575, 60.465622>,  <25.675236, 35.656773, 60.819740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.515793, 35.752575, 60.465622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486817, 0.762825, 0.425567,
		0.777253, 0.600611, -0.187470,
		-0.398607, 0.239510, -0.885295,
		25.396210, 35.824429, 60.200035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034964, 36.332443, 60.825451>,  <25.675236, 35.656773, 60.819740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034964, 36.332443, 60.825451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805256, 36.523445, 60.559456>,  <25.667431, 36.638046, 60.399860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805256, 36.523445, 60.559456>,  <26.034964, 36.332443, 60.825451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.805256, 36.523445, 60.559456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272402, -0.654542, -0.705246,
		-0.772019, -0.586144, 0.245809,
		-0.574268, 0.477504, -0.664986,
		25.632975, 36.666695, 60.359959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469385, 35.886978, 60.410469>,  <26.034964, 36.332443, 60.825451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469385, 35.886978, 60.410469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684332, 35.994709, 60.730145>,  <26.813299, 36.059349, 60.921951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684332, 35.994709, 60.730145>,  <26.469385, 35.886978, 60.410469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684332, 35.994709, 60.730145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809190, -0.431630, -0.398632,
		0.237590, 0.860906, -0.449880,
		0.537366, 0.269328, 0.799187,
		26.845541, 36.075508, 60.969902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030846, 36.199112, 60.114056>,  <26.469385, 35.886978, 60.410469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030846, 36.199112, 60.114056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141415, 36.088066, 60.482082>,  <27.207756, 36.021439, 60.702900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141415, 36.088066, 60.482082>,  <27.030846, 36.199112, 60.114056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141415, 36.088066, 60.482082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753392, -0.531778, -0.386799,
		0.596651, 0.800090, 0.062155,
		0.276421, -0.277611, 0.920067,
		27.224340, 36.004784, 60.758102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806364, 36.271683, 60.152454>,  <27.030846, 36.199112, 60.114056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806364, 36.271683, 60.152454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726189, 36.028187, 60.459511>,  <27.678083, 35.882092, 60.643745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726189, 36.028187, 60.459511>,  <27.806364, 36.271683, 60.152454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726189, 36.028187, 60.459511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853053, -0.493764, -0.168815,
		0.481795, 0.620998, 0.618252,
		-0.200437, -0.608736, 0.767637,
		27.666058, 35.845566, 60.689800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295351, 36.337017, 60.712559>,  <27.806364, 36.271683, 60.152454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295351, 36.337017, 60.712559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146120, 35.973457, 60.787094>,  <28.056581, 35.755322, 60.831814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146120, 35.973457, 60.787094>,  <28.295351, 36.337017, 60.712559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146120, 35.973457, 60.787094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905135, -0.400670, -0.142105,
		0.203819, 0.115644, 0.972154,
		-0.373080, -0.908895, 0.186337,
		28.034197, 35.700790, 60.842995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936419, 35.993004, 61.001648>,  <28.295351, 36.337017, 60.712559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936419, 35.993004, 61.001648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654169, 35.731228, 60.892982>,  <28.484819, 35.574162, 60.827785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654169, 35.731228, 60.892982>,  <28.936419, 35.993004, 61.001648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654169, 35.731228, 60.892982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708088, -0.636842, -0.305029,
		0.026619, -0.407596, 0.912774,
		-0.705622, -0.654445, -0.271662,
		28.442482, 35.534893, 60.811485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088728, 35.480049, 61.402554>,  <28.936419, 35.993004, 61.001648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088728, 35.480049, 61.402554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916039, 35.335094, 61.072151>,  <28.812424, 35.248123, 60.873909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916039, 35.335094, 61.072151>,  <29.088728, 35.480049, 61.402554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916039, 35.335094, 61.072151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822503, -0.534074, -0.195584,
		-0.370273, -0.763833, 0.528637,
		-0.431724, -0.362386, -0.826009,
		28.786522, 35.226379, 60.824348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328583, 34.785572, 61.433277>,  <29.088728, 35.480049, 61.402554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328583, 34.785572, 61.433277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208714, 34.854919, 61.058014>,  <29.136791, 34.896526, 60.832855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208714, 34.854919, 61.058014>,  <29.328583, 34.785572, 61.433277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208714, 34.854919, 61.058014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709374, -0.617061, -0.340624,
		-0.637954, -0.767580, 0.061933,
		-0.299673, 0.173369, -0.938158,
		29.118811, 34.906929, 60.776566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474426, 34.189568, 61.151291>,  <29.328583, 34.785572, 61.433277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474426, 34.189568, 61.151291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429798, 34.429157, 60.834106>,  <29.403021, 34.572910, 60.643795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429798, 34.429157, 60.834106>,  <29.474426, 34.189568, 61.151291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429798, 34.429157, 60.834106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735539, -0.486785, -0.471193,
		-0.668232, -0.635823, -0.386257,
		-0.111571, 0.598974, -0.792958,
		29.396326, 34.608849, 60.596218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638531, 33.755486, 60.549057>,  <29.474426, 34.189568, 61.151291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638531, 33.755486, 60.549057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680435, 34.130268, 60.415707>,  <29.705578, 34.355137, 60.335697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680435, 34.130268, 60.415707>,  <29.638531, 33.755486, 60.549057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680435, 34.130268, 60.415707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639116, -0.320265, -0.699258,
		-0.761942, -0.139814, -0.632373,
		0.104761, 0.936954, -0.333380,
		29.711863, 34.411354, 60.315693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691568, 33.648247, 59.794426>,  <29.638531, 33.755486, 60.549057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691568, 33.648247, 59.794426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847050, 34.013016, 59.847046>,  <29.940338, 34.231876, 59.878616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847050, 34.013016, 59.847046>,  <29.691568, 33.648247, 59.794426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847050, 34.013016, 59.847046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538495, -0.109000, -0.835549,
		-0.747619, 0.395616, -0.533436,
		0.388701, 0.911925, 0.131547,
		29.963659, 34.286594, 59.886509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666157, 34.068832, 59.092022>,  <29.691568, 33.648247, 59.794426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666157, 34.068832, 59.092022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968504, 34.232712, 59.296299>,  <30.149912, 34.331039, 59.418865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968504, 34.232712, 59.296299>,  <29.666157, 34.068832, 59.092022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968504, 34.232712, 59.296299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559177, 0.001774, -0.829046,
		-0.340567, 0.912218, -0.227755,
		0.755867, 0.409701, 0.510695,
		30.195265, 34.355621, 59.449509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838860, 34.659290, 58.743179>,  <29.666157, 34.068832, 59.092022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838860, 34.659290, 58.743179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153250, 34.554264, 58.967072>,  <30.341885, 34.491249, 59.101406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153250, 34.554264, 58.967072>,  <29.838860, 34.659290, 58.743179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153250, 34.554264, 58.967072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558829, -0.085582, -0.824855,
		0.264484, 0.961111, 0.079465,
		0.785976, -0.262568, 0.559732,
		30.389042, 34.475494, 59.134991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397480, 34.906464, 58.426453>,  <29.838860, 34.659290, 58.743179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397480, 34.906464, 58.426453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564316, 34.639374, 58.673088>,  <30.664417, 34.479122, 58.821072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564316, 34.639374, 58.673088>,  <30.397480, 34.906464, 58.426453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564316, 34.639374, 58.673088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555863, -0.349333, -0.754310,
		0.719065, 0.657353, 0.225459,
		0.417088, -0.667722, 0.616591,
		30.689442, 34.439056, 58.858067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081358, 34.878784, 58.249081>,  <30.397480, 34.906464, 58.426453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081358, 34.878784, 58.249081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029640, 34.518452, 58.414871>,  <30.998610, 34.302254, 58.514343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029640, 34.518452, 58.414871>,  <31.081358, 34.878784, 58.249081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029640, 34.518452, 58.414871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506927, -0.419282, -0.753145,
		0.852237, 0.112728, 0.510867,
		-0.129297, -0.900830, 0.414472,
		30.990850, 34.248203, 58.539211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744425, 34.608681, 58.198223>,  <31.081358, 34.878784, 58.249081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744425, 34.608681, 58.198223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521198, 34.284737, 58.270542>,  <31.387262, 34.090370, 58.313934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521198, 34.284737, 58.270542>,  <31.744425, 34.608681, 58.198223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521198, 34.284737, 58.270542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616815, -0.550609, -0.562467,
		0.555068, -0.202376, 0.806811,
		-0.558067, -0.809860, 0.180796,
		31.353779, 34.041779, 58.324780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249493, 34.105854, 58.389423>,  <31.744425, 34.608681, 58.198223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249493, 34.105854, 58.389423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915571, 33.936707, 58.248402>,  <31.715219, 33.835220, 58.163788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915571, 33.936707, 58.248402>,  <32.249493, 34.105854, 58.389423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915571, 33.936707, 58.248402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549644, -0.603290, -0.577870,
		0.031668, -0.676185, 0.736051,
		-0.834799, -0.422865, -0.352556,
		31.665131, 33.809849, 58.142635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334965, 33.388271, 58.477421>,  <32.249493, 34.105854, 58.389423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334965, 33.388271, 58.477421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048977, 33.430752, 58.201004>,  <31.877384, 33.456242, 58.035152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048977, 33.430752, 58.201004>,  <32.334965, 33.388271, 58.477421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048977, 33.430752, 58.201004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411759, -0.734842, -0.538945,
		-0.565046, -0.669872, 0.481658,
		-0.714966, 0.106202, -0.691046,
		31.834488, 33.462612, 57.993690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205711, 32.710354, 58.232113>,  <32.334965, 33.388271, 58.477421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205711, 32.710354, 58.232113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049572, 32.934441, 57.939873>,  <31.955887, 33.068893, 57.764530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049572, 32.934441, 57.939873>,  <32.205711, 32.710354, 58.232113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049572, 32.934441, 57.939873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457972, -0.570256, -0.681960,
		-0.798678, -0.600800, -0.033964,
		-0.390353, 0.560221, -0.730601,
		31.932467, 33.102509, 57.720692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989485, 32.272224, 57.735394>,  <32.205711, 32.710354, 58.232113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989485, 32.272224, 57.735394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020214, 32.628017, 57.555210>,  <32.038651, 32.841496, 57.447102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020214, 32.628017, 57.555210>,  <31.989485, 32.272224, 57.735394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020214, 32.628017, 57.555210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474513, -0.429966, -0.768093,
		-0.876890, -0.154740, -0.455104,
		0.076824, 0.889486, -0.450459,
		32.043262, 32.894863, 57.420071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673666, 32.265144, 56.992737>,  <31.989485, 32.272224, 57.735394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673666, 32.265144, 56.992737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954844, 32.549610, 56.997086>,  <32.123550, 32.720291, 56.999695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954844, 32.549610, 56.997086>,  <31.673666, 32.265144, 56.992737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954844, 32.549610, 56.997086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451864, -0.434729, -0.778993,
		-0.549264, 0.552501, -0.626939,
		0.702943, 0.711163, 0.010874,
		32.165726, 32.762959, 57.000347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.228550, 34.615856, 53.359966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.328987, 34.770149, 53.004852>,  <47.389248, 34.862724, 52.791782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.328987, 34.770149, 53.004852>,  <47.228550, 34.615856, 53.359966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.328987, 34.770149, 53.004852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917421, -0.197662, -0.345354,
		-0.308695, 0.901190, 0.304245,
		0.251092, 0.385729, -0.887787,
		47.404316, 34.885868, 52.738518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.701950, 35.158005, 53.161621>,  <47.228550, 34.615856, 53.359966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.701950, 35.158005, 53.161621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.892670, 34.983921, 52.856136>,  <47.007103, 34.879471, 52.672844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.892670, 34.983921, 52.856136>,  <46.701950, 35.158005, 53.161621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892670, 34.983921, 52.856136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864762, -0.076430, -0.496332,
		0.157637, 0.897080, -0.412793,
		0.476799, -0.435207, -0.763713,
		47.035709, 34.853359, 52.627022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.375378, 35.393143, 52.587410>,  <46.701950, 35.158005, 53.161621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.375378, 35.393143, 52.587410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.557934, 35.076801, 52.424313>,  <46.667469, 34.886997, 52.326454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.557934, 35.076801, 52.424313>,  <46.375378, 35.393143, 52.587410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.557934, 35.076801, 52.424313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776718, -0.130547, -0.616171,
		0.434071, 0.597919, -0.673851,
		0.456389, -0.790855, -0.407747,
		46.694851, 34.839546, 52.301987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.108658, 35.449795, 51.902664>,  <46.375378, 35.393143, 52.587410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.108658, 35.449795, 51.902664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.254574, 35.077366, 51.904800>,  <46.342121, 34.853909, 51.906082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.254574, 35.077366, 51.904800>,  <46.108658, 35.449795, 51.902664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.254574, 35.077366, 51.904800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746812, -0.296011, -0.595524,
		0.556060, 0.213250, -0.803319,
		0.364787, -0.931076, 0.005342,
		46.364010, 34.798042, 51.906403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043056, 35.186573, 51.214561>,  <46.108658, 35.449795, 51.902664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043056, 35.186573, 51.214561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.073322, 34.879753, 51.469406>,  <46.091480, 34.695663, 51.622314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.073322, 34.879753, 51.469406>,  <46.043056, 35.186573, 51.214561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.073322, 34.879753, 51.469406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808221, -0.421396, -0.411346,
		0.583998, -0.483805, -0.651827,
		0.075666, -0.767045, 0.637115,
		46.096024, 34.649639, 51.660542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.071659, 34.574924, 50.806919>,  <46.043056, 35.186573, 51.214561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.071659, 34.574924, 50.806919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.951313, 34.453888, 51.168674>,  <45.879105, 34.381268, 51.385727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.951313, 34.453888, 51.168674>,  <46.071659, 34.574924, 50.806919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951313, 34.453888, 51.168674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869066, -0.303503, -0.390654,
		0.392693, -0.903508, -0.171657,
		-0.300860, -0.302589, 0.904391,
		45.861053, 34.363110, 51.439991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.715271, 34.025688, 50.574131>,  <46.071659, 34.574924, 50.806919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.715271, 34.025688, 50.574131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.603970, 34.036076, 50.958195>,  <45.537189, 34.042309, 51.188633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.603970, 34.036076, 50.958195>,  <45.715271, 34.025688, 50.574131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.603970, 34.036076, 50.958195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927103, -0.268602, -0.261407,
		0.251111, -0.962901, 0.098816,
		-0.278251, 0.025970, 0.960157,
		45.520493, 34.043865, 51.246243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338158, 33.467434, 50.624550>,  <45.715271, 34.025688, 50.574131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.338158, 33.467434, 50.624550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.208351, 33.699009, 50.923756>,  <45.130466, 33.837952, 51.103279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.208351, 33.699009, 50.923756>,  <45.338158, 33.467434, 50.624550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208351, 33.699009, 50.923756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945738, -0.184798, -0.267264,
		-0.016496, -0.794157, 0.607489,
		-0.324512, 0.578934, 0.748016,
		45.110996, 33.872688, 51.148159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849304, 33.051270, 50.995457>,  <45.338158, 33.467434, 50.624550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849304, 33.051270, 50.995457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.786137, 33.436432, 51.082970>,  <44.748238, 33.667530, 51.135479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.786137, 33.436432, 51.082970>,  <44.849304, 33.051270, 50.995457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786137, 33.436432, 51.082970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961835, -0.099859, -0.254758,
		-0.223461, -0.250666, 0.941930,
		-0.157919, 0.962909, 0.218784,
		44.738762, 33.725304, 51.148605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160625, 33.068516, 51.258488>,  <44.849304, 33.051270, 50.995457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160625, 33.068516, 51.258488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.241936, 33.449482, 51.167633>,  <44.290722, 33.678062, 51.113121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.241936, 33.449482, 51.167633>,  <44.160625, 33.068516, 51.258488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241936, 33.449482, 51.167633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901829, 0.091784, -0.422232,
		-0.381290, 0.290669, 0.877570,
		0.203277, 0.952411, -0.227138,
		44.302917, 33.735207, 51.099491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566139, 33.317402, 51.276665>,  <44.160625, 33.068516, 51.258488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566139, 33.317402, 51.276665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.751122, 33.605679, 51.070080>,  <43.862110, 33.778645, 50.946129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.751122, 33.605679, 51.070080>,  <43.566139, 33.317402, 51.276665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751122, 33.605679, 51.070080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836304, 0.161077, -0.524070,
		-0.294504, 0.674279, 0.677211,
		0.462453, 0.720695, -0.516465,
		43.889858, 33.821888, 50.915142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148102, 33.898800, 51.278625>,  <43.566139, 33.317402, 51.276665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148102, 33.898800, 51.278625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.403702, 33.945522, 50.974514>,  <43.557064, 33.973557, 50.792046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.403702, 33.945522, 50.974514>,  <43.148102, 33.898800, 51.278625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403702, 33.945522, 50.974514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747205, 0.328951, -0.577474,
		0.182642, 0.937095, 0.297481,
		0.639004, 0.116808, -0.760283,
		43.595402, 33.980564, 50.746429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992363, 34.592243, 51.003971>,  <43.148102, 33.898800, 51.278625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992363, 34.592243, 51.003971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.180809, 34.438362, 50.686466>,  <43.293877, 34.346031, 50.495964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.180809, 34.438362, 50.686466>,  <42.992363, 34.592243, 51.003971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180809, 34.438362, 50.686466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624831, 0.489627, -0.608154,
		0.622607, 0.782474, -0.009708,
		0.471111, -0.384707, -0.793760,
		43.322144, 34.322948, 50.448338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256664, 35.216473, 50.533096>,  <42.992363, 34.592243, 51.003971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256664, 35.216473, 50.533096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.193123, 34.866039, 50.351002>,  <43.154999, 34.655777, 50.241745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.193123, 34.866039, 50.351002>,  <43.256664, 35.216473, 50.533096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193123, 34.866039, 50.351002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678849, 0.431719, -0.593955,
		0.716889, 0.214684, -0.663310,
		-0.158851, -0.876087, -0.455233,
		43.145466, 34.603214, 50.214432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185886, 35.411209, 49.911045>,  <43.256664, 35.216473, 50.533096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185886, 35.411209, 49.911045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.067192, 35.030811, 49.876286>,  <42.995975, 34.802570, 49.855431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.067192, 35.030811, 49.876286>,  <43.185886, 35.411209, 49.911045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067192, 35.030811, 49.876286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708687, 0.280292, -0.647456,
		0.640085, -0.130541, -0.757132,
		-0.296738, -0.950997, -0.086898,
		42.978172, 34.745514, 49.850216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256779, 35.421799, 49.162189>,  <43.185886, 35.411209, 49.911045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256779, 35.421799, 49.162189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.042721, 35.098461, 49.260330>,  <42.914284, 34.904457, 49.319214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.042721, 35.098461, 49.260330>,  <43.256779, 35.421799, 49.162189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042721, 35.098461, 49.260330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796625, 0.386259, -0.464965,
		0.281081, -0.444280, -0.850652,
		-0.535147, -0.808344, 0.245354,
		42.882175, 34.855957, 49.333935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746578, 35.213692, 48.531174>,  <43.256779, 35.421799, 49.162189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746578, 35.213692, 48.531174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.579842, 35.025635, 48.842354>,  <42.479801, 34.912800, 49.029060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.579842, 35.025635, 48.842354>,  <42.746578, 35.213692, 48.531174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579842, 35.025635, 48.842354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906891, 0.273089, -0.320893,
		-0.061584, -0.839277, -0.540204,
		-0.416842, -0.470144, 0.777951,
		42.454788, 34.884590, 49.075741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221260, 34.758587, 48.281506>,  <42.746578, 35.213692, 48.531174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221260, 34.758587, 48.281506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.122684, 34.843990, 48.659645>,  <42.063538, 34.895233, 48.886528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.122684, 34.843990, 48.659645>,  <42.221260, 34.758587, 48.281506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122684, 34.843990, 48.659645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889437, 0.337590, -0.308115,
		-0.384926, -0.916758, 0.106709,
		-0.246443, 0.213512, 0.945346,
		42.048752, 34.908043, 48.943249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575867, 34.402603, 48.431255>,  <42.221260, 34.758587, 48.281506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575867, 34.402603, 48.431255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.603539, 34.728848, 48.661037>,  <41.620140, 34.924595, 48.798904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.603539, 34.728848, 48.661037>,  <41.575867, 34.402603, 48.431255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603539, 34.728848, 48.661037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946125, 0.236226, -0.221459,
		-0.316325, -0.528183, 0.788011,
		0.069177, 0.815610, 0.574451,
		41.624290, 34.973530, 48.833374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926502, 34.344620, 48.810673>,  <41.575867, 34.402603, 48.431255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926502, 34.344620, 48.810673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.054485, 34.721355, 48.851803>,  <41.131275, 34.947395, 48.876480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.054485, 34.721355, 48.851803>,  <40.926502, 34.344620, 48.810673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054485, 34.721355, 48.851803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946563, 0.322421, -0.007863,
		-0.040558, -0.094812, 0.994669,
		0.319957, 0.941836, 0.102822,
		41.150471, 35.003906, 48.882648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464386, 34.679611, 49.241493>,  <40.926502, 34.344620, 48.810673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464386, 34.679611, 49.241493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.659489, 34.983135, 49.068840>,  <40.776550, 35.165249, 48.965248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.659489, 34.983135, 49.068840>,  <40.464386, 34.679611, 49.241493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659489, 34.983135, 49.068840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870463, 0.460271, -0.174484,
		0.066268, 0.460825, 0.885013,
		0.487753, 0.758809, -0.431632,
		40.805813, 35.210777, 48.939350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747051, 35.057808, 49.073906>,  <40.464386, 34.679611, 49.241493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747051, 35.057808, 49.073906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.682346, 35.195488, 48.703964>,  <39.643524, 35.278095, 48.481998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.682346, 35.195488, 48.703964>,  <39.747051, 35.057808, 49.073906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682346, 35.195488, 48.703964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025085, -0.935464, -0.352531,
		-0.986511, -0.080227, 0.142690,
		-0.161764, 0.344196, -0.924857,
		39.633816, 35.298748, 48.426506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121990, 34.790031, 48.770874>,  <39.747051, 35.057808, 49.073906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121990, 34.790031, 48.770874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.424210, 34.861671, 48.518818>,  <39.605541, 34.904655, 48.367584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.424210, 34.861671, 48.518818>,  <39.121990, 34.790031, 48.770874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424210, 34.861671, 48.518818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116775, -0.983318, -0.139464,
		-0.644601, 0.031787, -0.763858,
		0.755548, 0.179098, -0.630136,
		39.650875, 34.915401, 48.329777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015240, 34.317417, 48.158134>,  <39.121990, 34.790031, 48.770874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015240, 34.317417, 48.158134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.397568, 34.434982, 48.156197>,  <39.626965, 34.505520, 48.155033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.397568, 34.434982, 48.156197>,  <39.015240, 34.317417, 48.158134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397568, 34.434982, 48.156197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292441, -0.952456, -0.085480,
		-0.029735, 0.080288, -0.996328,
		0.955821, 0.293909, -0.004842,
		39.684315, 34.523155, 48.154743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329891, 33.871014, 47.637871>,  <39.015240, 34.317417, 48.158134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329891, 33.871014, 47.637871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.611008, 34.019264, 47.880760>,  <39.779678, 34.108215, 48.026493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.611008, 34.019264, 47.880760>,  <39.329891, 33.871014, 47.637871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611008, 34.019264, 47.880760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413979, -0.907224, 0.074606,
		0.578539, 0.198946, -0.791021,
		0.702790, 0.370629, 0.607224,
		39.821846, 34.130451, 48.062927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712601, 33.745331, 46.941448>,  <39.329891, 33.871014, 47.637871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712601, 33.745331, 46.941448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.783348, 33.419704, 46.720173>,  <39.825798, 33.224331, 46.587406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.783348, 33.419704, 46.720173>,  <39.712601, 33.745331, 46.941448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783348, 33.419704, 46.720173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856385, 0.149727, -0.494152,
		0.485098, 0.561144, -0.670669,
		0.176873, -0.814064, -0.553187,
		39.836411, 33.175484, 46.554218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550426, 33.888096, 46.253326>,  <39.712601, 33.745331, 46.941448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550426, 33.888096, 46.253326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.533588, 33.491997, 46.306454>,  <39.523487, 33.254337, 46.338329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.533588, 33.491997, 46.306454>,  <39.550426, 33.888096, 46.253326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533588, 33.491997, 46.306454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896605, -0.021216, -0.442322,
		0.440825, -0.137705, -0.886967,
		-0.042092, -0.990246, 0.132819,
		39.520962, 33.194923, 46.346298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168011, 33.722061, 45.712669>,  <39.550426, 33.888096, 46.253326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168011, 33.722061, 45.712669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.149929, 33.403599, 45.954025>,  <39.139080, 33.212521, 46.098839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.149929, 33.403599, 45.954025>,  <39.168011, 33.722061, 45.712669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149929, 33.403599, 45.954025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978173, -0.087352, -0.188542,
		0.202817, -0.598747, -0.774834,
		-0.045205, -0.796160, 0.603395,
		39.136368, 33.164749, 46.135044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747261, 33.222790, 45.332283>,  <39.168011, 33.722061, 45.712669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747261, 33.222790, 45.332283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.746887, 33.110836, 45.716297>,  <38.746662, 33.043663, 45.946705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.746887, 33.110836, 45.716297>,  <38.747261, 33.222790, 45.332283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746887, 33.110836, 45.716297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999413, 0.033140, 0.008685,
		-0.034246, -0.959461, -0.279754,
		-0.000938, -0.279887, 0.960033,
		38.746605, 33.026871, 46.004307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318565, 32.721058, 45.373638>,  <38.747261, 33.222790, 45.332283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318565, 32.721058, 45.373638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.342720, 32.868263, 45.744781>,  <38.357212, 32.956585, 45.967468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.342720, 32.868263, 45.744781>,  <38.318565, 32.721058, 45.373638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342720, 32.868263, 45.744781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981621, 0.190487, -0.011662,
		-0.181036, -0.910101, 0.372750,
		0.060390, 0.368010, 0.927859,
		38.360836, 32.978668, 46.023140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885098, 32.309410, 45.746243>,  <38.318565, 32.721058, 45.373638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885098, 32.309410, 45.746243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925201, 32.655773, 45.942261>,  <37.949265, 32.863590, 46.059872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925201, 32.655773, 45.942261>,  <37.885098, 32.309410, 45.746243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925201, 32.655773, 45.942261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983067, 0.010283, 0.182960,
		0.153388, -0.500094, 0.852278,
		0.100261, 0.865910, 0.490048,
		37.955280, 32.915546, 46.089275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293419, 32.298733, 46.158760>,  <37.885098, 32.309410, 45.746243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293419, 32.298733, 46.158760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.413296, 32.677551, 46.204872>,  <37.485222, 32.904842, 46.232540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.413296, 32.677551, 46.204872>,  <37.293419, 32.298733, 46.158760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413296, 32.677551, 46.204872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932349, 0.265115, 0.245844,
		0.202263, -0.181159, 0.962430,
		0.299691, 0.947046, 0.115281,
		37.503204, 32.961666, 46.239456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111797, 32.522324, 46.816891>,  <37.293419, 32.298733, 46.158760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111797, 32.522324, 46.816891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.143372, 32.861362, 46.606995>,  <37.162315, 33.064785, 46.481056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.143372, 32.861362, 46.606995>,  <37.111797, 32.522324, 46.816891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143372, 32.861362, 46.606995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905683, 0.280922, 0.317523,
		0.416542, 0.450182, 0.789828,
		0.078937, 0.847596, -0.524738,
		37.167053, 33.115643, 46.449574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902557, 32.962048, 47.272411>,  <37.111797, 32.522324, 46.816891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902557, 32.962048, 47.272411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.901779, 33.166935, 46.928871>,  <36.901314, 33.289867, 46.722748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.901779, 33.166935, 46.928871>,  <36.902557, 32.962048, 47.272411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901779, 33.166935, 46.928871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956790, 0.248778, 0.150540,
		0.290773, 0.822035, 0.489602,
		-0.001947, 0.512219, -0.858852,
		36.901196, 33.320602, 46.671215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858112, 33.683517, 47.418034>,  <36.902557, 32.962048, 47.272411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858112, 33.683517, 47.418034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.693138, 33.591537, 47.065437>,  <36.594154, 33.536350, 46.853882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.693138, 33.591537, 47.065437>,  <36.858112, 33.683517, 47.418034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693138, 33.591537, 47.065437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874509, 0.371010, 0.312386,
		0.255206, 0.899707, -0.354113,
		-0.412435, -0.229952, -0.881487,
		36.569408, 33.522552, 46.800991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.603575, 32.353722, 51.508797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984331, 32.305618, 51.621536>,  <32.212784, 32.276756, 51.689178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984331, 32.305618, 51.621536>,  <31.603575, 32.353722, 51.508797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984331, 32.305618, 51.621536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295222, 0.113403, -0.948675,
		0.082126, 0.986244, 0.143451,
		0.951892, -0.120261, 0.281848,
		32.269897, 32.269539, 51.706089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935192, 32.840065, 51.143475>,  <31.603575, 32.353722, 51.508797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935192, 32.840065, 51.143475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.230686, 32.600292, 51.266727>,  <32.407982, 32.456429, 51.340679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.230686, 32.600292, 51.266727>,  <31.935192, 32.840065, 51.143475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230686, 32.600292, 51.266727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438342, 0.080016, -0.895239,
		0.511983, 0.796414, 0.321868,
		0.738735, -0.599435, 0.308135,
		32.452309, 32.420460, 51.359169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400200, 33.054783, 50.679745>,  <31.935192, 32.840065, 51.143475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400200, 33.054783, 50.679745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.604347, 32.745945, 50.831219>,  <32.726837, 32.560642, 50.922104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.604347, 32.745945, 50.831219>,  <32.400200, 33.054783, 50.679745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604347, 32.745945, 50.831219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494136, -0.097096, -0.863945,
		0.703813, 0.628051, 0.331963,
		0.510369, -0.772091, 0.378680,
		32.757458, 32.514317, 50.944824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117374, 33.227921, 50.690067>,  <32.400200, 33.054783, 50.679745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117374, 33.227921, 50.690067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.116211, 32.828461, 50.669315>,  <33.115513, 32.588783, 50.656864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.116211, 32.828461, 50.669315>,  <33.117374, 33.227921, 50.690067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116211, 32.828461, 50.669315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645235, 0.037761, -0.763050,
		0.763978, -0.035690, 0.644254,
		-0.002905, -0.998649, -0.051877,
		33.115337, 32.528866, 50.653751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847080, 32.907455, 50.519791>,  <33.117374, 33.227921, 50.690067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847080, 32.907455, 50.519791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.582237, 32.632309, 50.400826>,  <33.423332, 32.467220, 50.329445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.582237, 32.632309, 50.400826>,  <33.847080, 32.907455, 50.519791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582237, 32.632309, 50.400826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478364, -0.082433, -0.874284,
		0.576871, -0.721144, 0.383628,
		-0.662108, -0.687863, -0.297416,
		33.383606, 32.425949, 50.311600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303070, 32.300529, 50.284443>,  <33.847080, 32.907455, 50.519791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303070, 32.300529, 50.284443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.945171, 32.241314, 50.115917>,  <33.730431, 32.205784, 50.014801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.945171, 32.241314, 50.115917>,  <34.303070, 32.300529, 50.284443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945171, 32.241314, 50.115917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446411, -0.271441, -0.852665,
		0.011863, -0.951002, 0.308957,
		-0.894749, -0.148037, -0.421318,
		33.676746, 32.196903, 49.989521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345730, 31.716885, 49.929379>,  <34.303070, 32.300529, 50.284443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345730, 31.716885, 49.929379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.047066, 31.924688, 49.763199>,  <33.867867, 32.049370, 49.663490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.047066, 31.924688, 49.763199>,  <34.345730, 31.716885, 49.929379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047066, 31.924688, 49.763199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334465, -0.246664, -0.909555,
		-0.575002, -0.818086, 0.010417,
		-0.746663, 0.519512, -0.415454,
		33.823067, 32.080544, 49.638561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044819, 31.282248, 49.387344>,  <34.345730, 31.716885, 49.929379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044819, 31.282248, 49.387344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.938789, 31.658161, 49.301052>,  <33.875172, 31.883709, 49.249275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.938789, 31.658161, 49.301052>,  <34.044819, 31.282248, 49.387344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938789, 31.658161, 49.301052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230933, -0.155345, -0.960488,
		-0.936164, -0.304423, -0.175848,
		-0.265078, 0.939784, -0.215730,
		33.859264, 31.940096, 49.236332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598984, 31.240370, 48.764153>,  <34.044819, 31.282248, 49.387344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598984, 31.240370, 48.764153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.746258, 31.611820, 48.782467>,  <33.834621, 31.834690, 48.793457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.746258, 31.611820, 48.782467>,  <33.598984, 31.240370, 48.764153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746258, 31.611820, 48.782467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508354, -0.159831, -0.846186,
		-0.778471, 0.334829, -0.530917,
		0.368184, 0.928625, 0.045788,
		33.856712, 31.890408, 48.796204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416664, 31.551611, 48.049843>,  <33.598984, 31.240370, 48.764153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416664, 31.551611, 48.049843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.716698, 31.749704, 48.225170>,  <33.896717, 31.868561, 48.330368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.716698, 31.749704, 48.225170>,  <33.416664, 31.551611, 48.049843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716698, 31.749704, 48.225170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553887, -0.108261, -0.825523,
		-0.361372, 0.861989, -0.355507,
		0.750079, 0.495232, 0.438322,
		33.941723, 31.898273, 48.356667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625347, 32.157051, 47.561920>,  <33.416664, 31.551611, 48.049843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625347, 32.157051, 47.561920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.936821, 32.142231, 47.812450>,  <34.123703, 32.133339, 47.962769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.936821, 32.142231, 47.812450>,  <33.625347, 32.157051, 47.561920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936821, 32.142231, 47.812450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624151, -0.055998, -0.779295,
		0.063946, 0.997743, -0.020480,
		0.778683, -0.037051, 0.626323,
		34.170425, 32.131115, 48.000347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162292, 32.670990, 47.275867>,  <33.625347, 32.157051, 47.561920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162292, 32.670990, 47.275867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.317310, 32.373383, 47.493584>,  <34.410320, 32.194820, 47.624214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.317310, 32.373383, 47.493584>,  <34.162292, 32.670990, 47.275867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317310, 32.373383, 47.493584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799989, -0.021955, -0.599613,
		0.458071, 0.667803, 0.586694,
		0.387543, -0.744014, 0.544292,
		34.433575, 32.150177, 47.656872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539345, 33.070786, 47.154831>,  <34.162292, 32.670990, 47.275867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539345, 33.070786, 47.154831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.761608, 33.392357, 47.070034>,  <33.894966, 33.585300, 47.019154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.761608, 33.392357, 47.070034>,  <33.539345, 33.070786, 47.154831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761608, 33.392357, 47.070034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815388, 0.576755, 0.049958,
		0.162431, 0.145097, 0.975993,
		0.555660, 0.803928, -0.211994,
		33.928307, 33.633537, 47.006435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449955, 33.552189, 47.787342>,  <33.539345, 33.070786, 47.154831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449955, 33.552189, 47.787342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.515732, 33.739765, 47.440228>,  <33.555199, 33.852310, 47.231956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.515732, 33.739765, 47.440228>,  <33.449955, 33.552189, 47.787342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515732, 33.739765, 47.440228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795467, 0.583258, 0.164443,
		0.583258, 0.663255, 0.468937,
		-0.164443, -0.468937, 0.867788,
		33.565063, 33.880447, 47.179890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240887, 34.171822, 47.945919>,  <33.449955, 33.552189, 47.787342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240887, 34.171822, 47.945919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.253563, 34.193142, 47.546688>,  <33.261169, 34.205933, 47.307152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.253563, 34.193142, 47.546688>,  <33.240887, 34.171822, 47.945919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253563, 34.193142, 47.546688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703245, 0.710776, 0.015624,
		0.710241, 0.701397, 0.060002,
		0.031690, 0.053293, -0.998076,
		33.263069, 34.209129, 47.247265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410324, 34.890713, 47.749870>,  <33.240887, 34.171822, 47.945919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410324, 34.890713, 47.749870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.210621, 34.742390, 47.436634>,  <33.090797, 34.653397, 47.248692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.210621, 34.742390, 47.436634>,  <33.410324, 34.890713, 47.749870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210621, 34.742390, 47.436634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695730, 0.710252, 0.107244,
		0.516427, 0.598365, -0.612586,
		-0.499262, -0.370811, -0.783094,
		33.060841, 34.631145, 47.201706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260429, 35.496956, 47.338257>,  <33.410324, 34.890713, 47.749870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260429, 35.496956, 47.338257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.993073, 35.234177, 47.198734>,  <32.832657, 35.076508, 47.115021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.993073, 35.234177, 47.198734>,  <33.260429, 35.496956, 47.338257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993073, 35.234177, 47.198734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662819, 0.738862, -0.121469,
		0.337519, 0.150007, -0.929290,
		-0.668395, -0.656949, -0.348807,
		32.792553, 35.037090, 47.094093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938927, 35.878349, 46.817867>,  <33.260429, 35.496956, 47.338257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938927, 35.878349, 46.817867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.700863, 35.574303, 46.922184>,  <32.558025, 35.391876, 46.984772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.700863, 35.574303, 46.922184>,  <32.938927, 35.878349, 46.817867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700863, 35.574303, 46.922184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766004, 0.634715, 0.101855,
		-0.242948, -0.139144, -0.960008,
		-0.595159, -0.760115, 0.260788,
		32.522316, 35.346268, 47.000420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327618, 36.025600, 46.492210>,  <32.938927, 35.878349, 46.817867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327618, 36.025600, 46.492210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.176838, 35.762829, 46.753395>,  <32.086369, 35.605167, 46.910107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.176838, 35.762829, 46.753395>,  <32.327618, 36.025600, 46.492210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176838, 35.762829, 46.753395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770963, 0.613243, 0.171900,
		-0.513348, -0.438609, -0.737628,
		-0.376949, -0.656928, 0.652959,
		32.063755, 35.565750, 46.949284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646381, 36.014324, 46.302753>,  <32.327618, 36.025600, 46.492210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646381, 36.014324, 46.302753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.719975, 35.942593, 46.689327>,  <31.764132, 35.899551, 46.921272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.719975, 35.942593, 46.689327>,  <31.646381, 36.014324, 46.302753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719975, 35.942593, 46.689327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613190, 0.747494, 0.255442,
		-0.768211, -0.639603, 0.027561,
		0.183984, -0.179333, 0.966432,
		31.775169, 35.888794, 46.979256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137516, 36.338165, 46.709606>,  <31.646381, 36.014324, 46.302753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137516, 36.338165, 46.709606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.356720, 36.204472, 47.016323>,  <31.488241, 36.124256, 47.200356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.356720, 36.204472, 47.016323>,  <31.137516, 36.338165, 46.709606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356720, 36.204472, 47.016323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528024, 0.572747, 0.627019,
		-0.648751, -0.748497, 0.137385,
		0.548009, -0.334236, 0.766794,
		31.521122, 36.104202, 47.246361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685694, 36.248787, 47.163799>,  <31.137516, 36.338165, 46.709606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685694, 36.248787, 47.163799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.030218, 36.288910, 47.363029>,  <31.236933, 36.312984, 47.482567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.030218, 36.288910, 47.363029>,  <30.685694, 36.248787, 47.163799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030218, 36.288910, 47.363029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451262, 0.601486, 0.659225,
		-0.233466, -0.792562, 0.563329,
		0.861311, 0.100303, 0.498079,
		31.288612, 36.319000, 47.512455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550455, 36.056843, 47.842270>,  <30.685694, 36.248787, 47.163799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550455, 36.056843, 47.842270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.882544, 36.277401, 47.875011>,  <31.081797, 36.409737, 47.894657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.882544, 36.277401, 47.875011>,  <30.550455, 36.056843, 47.842270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882544, 36.277401, 47.875011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432977, 0.545389, 0.717691,
		0.351089, -0.631282, 0.691534,
		0.830221, 0.551392, 0.081851,
		31.131609, 36.442818, 47.899567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735260, 36.060890, 48.522652>,  <30.550455, 36.056843, 47.842270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735260, 36.060890, 48.522652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.931042, 36.380913, 48.383884>,  <31.048510, 36.572926, 48.300625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.931042, 36.380913, 48.383884>,  <30.735260, 36.060890, 48.522652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931042, 36.380913, 48.383884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281000, 0.521309, 0.805777,
		0.825516, -0.296905, 0.479970,
		0.489452, 0.800053, -0.346918,
		31.077877, 36.620930, 48.279808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127642, 36.440643, 49.111694>,  <30.735260, 36.060890, 48.522652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127642, 36.440643, 49.111694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.093420, 36.726105, 48.833591>,  <31.072887, 36.897381, 48.666729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.093420, 36.726105, 48.833591>,  <31.127642, 36.440643, 49.111694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093420, 36.726105, 48.833591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162364, 0.678498, 0.716435,
		0.983015, 0.174179, 0.057822,
		-0.085555, 0.713654, -0.695254,
		31.067753, 36.940201, 48.625015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578249, 36.947437, 49.306240>,  <31.127642, 36.440643, 49.111694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578249, 36.947437, 49.306240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.289347, 37.104389, 49.078419>,  <31.116005, 37.198559, 48.941727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.289347, 37.104389, 49.078419>,  <31.578249, 36.947437, 49.306240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289347, 37.104389, 49.078419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235725, 0.634533, 0.736071,
		0.650216, 0.665889, -0.365802,
		-0.722255, 0.392377, -0.569551,
		31.072670, 37.222103, 48.907555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688940, 37.615292, 49.378979>,  <31.578249, 36.947437, 49.306240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688940, 37.615292, 49.378979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.310286, 37.592766, 49.252041>,  <31.083094, 37.579250, 49.175877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.310286, 37.592766, 49.252041>,  <31.688940, 37.615292, 49.378979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310286, 37.592766, 49.252041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277394, 0.643699, 0.713235,
		0.164112, 0.763204, -0.624969,
		-0.946636, -0.056312, -0.317347,
		31.026295, 37.575871, 49.156837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398771, 38.311157, 49.502754>,  <31.688940, 37.615292, 49.378979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398771, 38.311157, 49.502754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.083742, 38.067505, 49.465462>,  <30.894724, 37.921314, 49.443085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.083742, 38.067505, 49.465462>,  <31.398771, 38.311157, 49.502754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083742, 38.067505, 49.465462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311019, 0.262316, 0.913487,
		-0.531974, 0.748434, -0.396043,
		-0.787573, -0.609127, -0.093232,
		30.847469, 37.884766, 49.437492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589119, 39.001713, 49.244583>,  <31.398771, 38.311157, 49.502754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589119, 39.001713, 49.244583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.873804, 39.225616, 49.414352>,  <32.044617, 39.359959, 49.516212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.873804, 39.225616, 49.414352>,  <31.589119, 39.001713, 49.244583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873804, 39.225616, 49.414352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610791, -0.194673, -0.767487,
		-0.346986, 0.805462, -0.480448,
		0.711712, 0.559761, 0.424421,
		32.087318, 39.393543, 49.541679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746716, 39.542610, 48.724636>,  <31.589119, 39.001713, 49.244583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746716, 39.542610, 48.724636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.067577, 39.511105, 48.961395>,  <32.260094, 39.492203, 49.103451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.067577, 39.511105, 48.961395>,  <31.746716, 39.542610, 48.724636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067577, 39.511105, 48.961395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557790, -0.254966, -0.789850,
		0.213123, 0.963737, -0.160590,
		0.802152, -0.078759, 0.591902,
		32.308224, 39.487476, 49.138966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269993, 39.890049, 48.309513>,  <31.746716, 39.542610, 48.724636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269993, 39.890049, 48.309513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.475227, 39.709946, 48.601818>,  <32.598366, 39.601883, 48.777203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.475227, 39.709946, 48.601818>,  <32.269993, 39.890049, 48.309513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475227, 39.709946, 48.601818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817400, -0.003491, -0.576060,
		0.261925, 0.892894, 0.366247,
		0.513082, -0.450254, 0.730765,
		32.629150, 39.574871, 48.821049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882336, 40.210777, 48.216011>,  <32.269993, 39.890049, 48.309513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882336, 40.210777, 48.216011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.921783, 39.866383, 48.415604>,  <32.945450, 39.659748, 48.535358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.921783, 39.866383, 48.415604>,  <32.882336, 40.210777, 48.216011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921783, 39.866383, 48.415604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780268, -0.244307, -0.575756,
		0.617621, 0.446120, 0.647704,
		0.098618, -0.860983, 0.498982,
		32.951370, 39.608089, 48.565300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603184, 40.187202, 48.412464>,  <32.882336, 40.210777, 48.216011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603184, 40.187202, 48.412464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.448936, 39.819183, 48.384720>,  <33.356388, 39.598373, 48.368073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.448936, 39.819183, 48.384720>,  <33.603184, 40.187202, 48.412464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448936, 39.819183, 48.384720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715501, -0.250731, -0.652068,
		0.582541, -0.301080, 0.754981,
		-0.385622, -0.920046, -0.069361,
		33.333248, 39.543171, 48.363911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108162, 39.765537, 48.489536>,  <33.603184, 40.187202, 48.412464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108162, 39.765537, 48.489536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.838318, 39.524132, 48.319511>,  <33.676411, 39.379288, 48.217499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.838318, 39.524132, 48.319511>,  <34.108162, 39.765537, 48.489536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838318, 39.524132, 48.319511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725455, -0.435608, -0.532880,
		0.136440, -0.667847, 0.731686,
		-0.674610, -0.603511, -0.425059,
		33.635933, 39.343079, 48.191994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304840, 39.128799, 48.702732>,  <34.108162, 39.765537, 48.489536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304840, 39.128799, 48.702732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.092720, 39.082138, 48.366833>,  <33.965446, 39.054142, 48.165295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.092720, 39.082138, 48.366833>,  <34.304840, 39.128799, 48.702732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092720, 39.082138, 48.366833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757548, -0.509922, -0.407555,
		-0.380662, -0.852274, 0.358783,
		-0.530300, -0.116655, -0.839746,
		33.933632, 39.047142, 48.114910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426895, 38.551716, 48.506386>,  <34.304840, 39.128799, 48.702732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426895, 38.551716, 48.506386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.261845, 38.695118, 48.171432>,  <34.162815, 38.781158, 47.970459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.261845, 38.695118, 48.171432>,  <34.426895, 38.551716, 48.506386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261845, 38.695118, 48.171432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718882, -0.436404, -0.541074,
		-0.559417, -0.825241, -0.077653,
		-0.412628, 0.358509, -0.837382,
		34.138058, 38.802670, 47.920219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589069, 37.994389, 48.164402>,  <34.426895, 38.551716, 48.506386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589069, 37.994389, 48.164402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.475426, 38.272507, 47.900330>,  <34.407238, 38.439377, 47.741886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.475426, 38.272507, 47.900330>,  <34.589069, 37.994389, 48.164402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475426, 38.272507, 47.900330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615766, -0.395464, -0.681499,
		-0.734924, -0.600139, -0.315785,
		-0.284112, 0.695299, -0.660181,
		34.390190, 38.481098, 47.702274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223228, 37.676865, 47.562325>,  <34.589069, 37.994389, 48.164402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223228, 37.676865, 47.562325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.382805, 38.022472, 47.439476>,  <34.478550, 38.229836, 47.365765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.382805, 38.022472, 47.439476>,  <34.223228, 37.676865, 47.562325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382805, 38.022472, 47.439476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665967, -0.503237, -0.550673,
		-0.630346, 0.015151, -0.776167,
		0.398939, 0.864015, -0.307123,
		34.502487, 38.281677, 47.347340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465546, 37.543301, 46.874008>,  <34.223228, 37.676865, 47.562325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465546, 37.543301, 46.874008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661823, 37.880737, 46.961243>,  <34.779591, 38.083199, 47.013584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661823, 37.880737, 46.961243>,  <34.465546, 37.543301, 46.874008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661823, 37.880737, 46.961243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695260, -0.228213, -0.681566,
		-0.525196, 0.486071, -0.698502,
		0.490696, 0.843596, 0.218089,
		34.809032, 38.133816, 47.026669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620098, 37.891750, 46.200558>,  <34.465546, 37.543301, 46.874008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620098, 37.891750, 46.200558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.898121, 37.998329, 46.467663>,  <35.064934, 38.062275, 46.627926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.898121, 37.998329, 46.467663>,  <34.620098, 37.891750, 46.200558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898121, 37.998329, 46.467663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714491, -0.152624, -0.682795,
		-0.080012, 0.951689, -0.296456,
		0.695055, 0.266447, 0.667761,
		35.106636, 38.078262, 46.667992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.950506, 39.580410, 55.096550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.683447, 39.867596, 55.017788>,  <30.523211, 40.039906, 54.970531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.683447, 39.867596, 55.017788>,  <30.950506, 39.580410, 55.096550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683447, 39.867596, 55.017788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023256, -0.244248, -0.969434,
		-0.744112, -0.651821, 0.146375,
		-0.667650, 0.717964, -0.196907,
		30.483152, 40.082985, 54.958717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547972, 39.284496, 54.518551>,  <30.950506, 39.580410, 55.096550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547972, 39.284496, 54.518551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.455183, 39.671516, 54.558636>,  <30.399509, 39.903728, 54.582687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.455183, 39.671516, 54.558636>,  <30.547972, 39.284496, 54.518551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455183, 39.671516, 54.558636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092458, 0.080626, -0.992447,
		-0.968318, -0.239487, 0.070754,
		-0.231973, 0.967546, 0.100214,
		30.385592, 39.961781, 54.588699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034382, 39.457146, 54.055103>,  <30.547972, 39.284496, 54.518551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034382, 39.457146, 54.055103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.216942, 39.805214, 54.129402>,  <30.326477, 40.014053, 54.173981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.216942, 39.805214, 54.129402>,  <30.034382, 39.457146, 54.055103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216942, 39.805214, 54.129402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159834, 0.125179, -0.979175,
		-0.875301, 0.476583, -0.081952,
		0.456399, 0.870172, 0.185744,
		30.353861, 40.066265, 54.185127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028107, 39.643757, 53.401318>,  <30.034382, 39.457146, 54.055103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028107, 39.643757, 53.401318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.275290, 39.910564, 53.567791>,  <30.423599, 40.070648, 53.667675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.275290, 39.910564, 53.567791>,  <30.028107, 39.643757, 53.401318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275290, 39.910564, 53.567791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529965, 0.037610, -0.847185,
		-0.580745, 0.744087, -0.330257,
		0.617959, 0.667023, 0.416182,
		30.460676, 40.110672, 53.692646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953835, 40.282230, 53.006943>,  <30.028107, 39.643757, 53.401318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953835, 40.282230, 53.006943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.305925, 40.256344, 53.194988>,  <30.517179, 40.240810, 53.307816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.305925, 40.256344, 53.194988>,  <29.953835, 40.282230, 53.006943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305925, 40.256344, 53.194988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473899, 0.171774, -0.863663,
		-0.024862, 0.983008, 0.181869,
		0.880228, -0.064715, 0.470118,
		30.569994, 40.236931, 53.336025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335876, 40.822136, 52.722809>,  <29.953835, 40.282230, 53.006943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335876, 40.822136, 52.722809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.606646, 40.571114, 52.876663>,  <30.769108, 40.420498, 52.968975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.606646, 40.571114, 52.876663>,  <30.335876, 40.822136, 52.722809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606646, 40.571114, 52.876663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585509, 0.142427, -0.798056,
		0.446043, 0.765432, 0.463853,
		0.676922, -0.627558, 0.384639,
		30.809723, 40.382847, 52.992054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927008, 41.064541, 52.447971>,  <30.335876, 40.822136, 52.722809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927008, 41.064541, 52.447971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.003689, 40.689774, 52.564884>,  <31.049698, 40.464912, 52.635033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.003689, 40.689774, 52.564884>,  <30.927008, 41.064541, 52.447971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003689, 40.689774, 52.564884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571178, -0.135674, -0.809536,
		0.798127, 0.322134, 0.509140,
		0.191702, -0.936922, 0.292281,
		31.061199, 40.408695, 52.652569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489000, 41.052933, 52.210171>,  <30.927008, 41.064541, 52.447971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489000, 41.052933, 52.210171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.434801, 40.659512, 52.257950>,  <31.402281, 40.423458, 52.286617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.434801, 40.659512, 52.257950>,  <31.489000, 41.052933, 52.210171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434801, 40.659512, 52.257950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547248, -0.174794, -0.818515,
		0.825930, -0.045541, 0.561931,
		-0.135498, -0.983551, 0.119445,
		31.394152, 40.364445, 52.293785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166939, 40.683708, 52.177174>,  <31.489000, 41.052933, 52.210171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166939, 40.683708, 52.177174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.876089, 40.420940, 52.097416>,  <31.701580, 40.263279, 52.049561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.876089, 40.420940, 52.097416>,  <32.166939, 40.683708, 52.177174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876089, 40.420940, 52.097416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499911, -0.307598, -0.809612,
		0.470514, -0.688365, 0.552060,
		-0.727121, -0.656915, -0.199392,
		31.657953, 40.223866, 52.037598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437935, 40.034889, 52.009777>,  <32.166939, 40.683708, 52.177174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437935, 40.034889, 52.009777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.092373, 39.991196, 51.813110>,  <31.885036, 39.964977, 51.695110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.092373, 39.991196, 51.813110>,  <32.437935, 40.034889, 52.009777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092373, 39.991196, 51.813110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482875, -0.457150, -0.746891,
		-0.143175, -0.882656, 0.447683,
		-0.863905, -0.109239, -0.491665,
		31.833200, 39.958424, 51.665611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542725, 39.425373, 51.619400>,  <32.437935, 40.034889, 52.009777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542725, 39.425373, 51.619400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.206261, 39.556900, 51.447670>,  <32.004383, 39.635818, 51.344631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.206261, 39.556900, 51.447670>,  <32.542725, 39.425373, 51.619400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206261, 39.556900, 51.447670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301588, -0.373742, -0.877133,
		-0.448880, -0.867290, 0.215208,
		-0.841161, 0.328823, -0.429329,
		31.953913, 39.655548, 51.318871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346561, 38.871498, 51.171509>,  <32.542725, 39.425373, 51.619400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346561, 38.871498, 51.171509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.180523, 39.207981, 51.032909>,  <32.080898, 39.409870, 50.949749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.180523, 39.207981, 51.032909>,  <32.346561, 38.871498, 51.171509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180523, 39.207981, 51.032909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116241, -0.328696, -0.937255,
		-0.902321, -0.429328, 0.038657,
		-0.415097, 0.841211, -0.346494,
		32.055992, 39.460346, 50.928963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007248, 38.694618, 50.575794>,  <32.346561, 38.871498, 51.171509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007248, 38.694618, 50.575794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.025940, 39.092144, 50.535492>,  <32.037155, 39.330658, 50.511311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.025940, 39.092144, 50.535492>,  <32.007248, 38.694618, 50.575794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025940, 39.092144, 50.535492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110903, -0.105401, -0.988226,
		-0.992732, 0.035010, -0.115142,
		0.046734, 0.993813, -0.100752,
		32.039959, 39.390289, 50.505268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566244, 38.788097, 50.030331>,  <32.007248, 38.694618, 50.575794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566244, 38.788097, 50.030331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.791660, 39.118366, 50.019844>,  <31.926910, 39.316528, 50.013554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.791660, 39.118366, 50.019844>,  <31.566244, 38.788097, 50.030331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791660, 39.118366, 50.019844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300314, -0.234329, -0.924609,
		-0.769566, 0.513184, -0.380015,
		0.563543, 0.825671, -0.026215,
		31.960724, 39.366066, 50.011978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846622, 38.692719, 49.742935>,  <31.566244, 38.788097, 50.030331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846622, 38.692719, 49.742935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.699696, 38.322174, 49.776234>,  <30.611540, 38.099846, 49.796215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.699696, 38.322174, 49.776234>,  <30.846622, 38.692719, 49.742935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699696, 38.322174, 49.776234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297152, 0.201696, 0.933284,
		-0.881350, 0.318075, -0.349357,
		-0.367318, -0.926362, 0.083248,
		30.589500, 38.044266, 49.801208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080847, 38.807259, 49.959755>,  <30.846622, 38.692719, 49.742935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080847, 38.807259, 49.959755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.182489, 38.437351, 50.073055>,  <30.243475, 38.215405, 50.141033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.182489, 38.437351, 50.073055>,  <30.080847, 38.807259, 49.959755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182489, 38.437351, 50.073055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089850, 0.269022, 0.958934,
		-0.962994, -0.269122, -0.014730,
		0.254107, -0.924771, 0.283247,
		30.258722, 38.159920, 50.158028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572876, 38.572140, 50.510647>,  <30.080847, 38.807259, 49.959755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572876, 38.572140, 50.510647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.875683, 38.313492, 50.548195>,  <30.057367, 38.158302, 50.570724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.875683, 38.313492, 50.548195>,  <29.572876, 38.572140, 50.510647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875683, 38.313492, 50.548195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130342, -0.008663, 0.991431,
		-0.640262, -0.762767, -0.090840,
		0.757018, -0.646616, 0.093874,
		30.102789, 38.119507, 50.576359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236929, 37.976299, 50.853695>,  <29.572876, 38.572140, 50.510647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236929, 37.976299, 50.853695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.618088, 37.883430, 50.931759>,  <29.846783, 37.827709, 50.978596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.618088, 37.883430, 50.931759>,  <29.236929, 37.976299, 50.853695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618088, 37.883430, 50.931759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268795, -0.348405, 0.897977,
		-0.140488, -0.908136, -0.394400,
		0.952897, -0.232168, 0.195155,
		29.903957, 37.813782, 50.990307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242737, 37.293159, 51.195538>,  <29.236929, 37.976299, 50.853695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242737, 37.293159, 51.195538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.563852, 37.514523, 51.284325>,  <29.756521, 37.647339, 51.337597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.563852, 37.514523, 51.284325>,  <29.242737, 37.293159, 51.195538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563852, 37.514523, 51.284325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203571, -0.095521, 0.974389,
		0.560438, -0.827415, 0.035975,
		0.802788, 0.553409, 0.221971,
		29.804689, 37.680546, 51.350918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434916, 37.069065, 51.807926>,  <29.242737, 37.293159, 51.195538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434916, 37.069065, 51.807926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.654909, 37.402103, 51.781689>,  <29.786905, 37.601925, 51.765945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.654909, 37.402103, 51.781689>,  <29.434916, 37.069065, 51.807926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654909, 37.402103, 51.781689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101170, 0.144374, 0.984338,
		0.829026, -0.534733, 0.163637,
		0.549982, 0.832597, -0.065591,
		29.819904, 37.651882, 51.762012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051281, 36.953728, 52.210430>,  <29.434916, 37.069065, 51.807926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051281, 36.953728, 52.210430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.946251, 37.337521, 52.169548>,  <29.883232, 37.567795, 52.145020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.946251, 37.337521, 52.169548>,  <30.051281, 36.953728, 52.210430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946251, 37.337521, 52.169548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045756, 0.093420, 0.994575,
		0.963826, 0.265828, 0.019373,
		-0.262576, 0.959484, -0.102204,
		29.867477, 37.625366, 52.138885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453463, 37.281826, 52.668095>,  <30.051281, 36.953728, 52.210430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453463, 37.281826, 52.668095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.168528, 37.553547, 52.597527>,  <29.997566, 37.716579, 52.555183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.168528, 37.553547, 52.597527>,  <30.453463, 37.281826, 52.668095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168528, 37.553547, 52.597527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218366, 0.024380, 0.975562,
		0.667003, 0.733453, 0.130970,
		-0.712336, 0.679303, -0.176423,
		29.954826, 37.757339, 52.544601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536499, 37.769894, 53.245609>,  <30.453463, 37.281826, 52.668095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536499, 37.769894, 53.245609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.178791, 37.835445, 53.079033>,  <29.964167, 37.874775, 52.979088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.178791, 37.835445, 53.079033>,  <30.536499, 37.769894, 53.245609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178791, 37.835445, 53.079033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398584, 0.131490, 0.907657,
		0.203503, 0.977678, -0.052269,
		-0.894269, 0.163878, -0.416445,
		29.910511, 37.884609, 52.954098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253887, 38.478397, 53.457409>,  <30.536499, 37.769894, 53.245609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253887, 38.478397, 53.457409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.944958, 38.250835, 53.344368>,  <29.759600, 38.114300, 53.276543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.944958, 38.250835, 53.344368>,  <30.253887, 38.478397, 53.457409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944958, 38.250835, 53.344368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441721, 0.161269, 0.882539,
		-0.456505, 0.806437, -0.375849,
		-0.772325, -0.568904, -0.282600,
		29.713261, 38.080166, 53.259586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653786, 38.852478, 53.513256>,  <30.253887, 38.478397, 53.457409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653786, 38.852478, 53.513256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.541965, 38.468834, 53.530941>,  <29.474874, 38.238647, 53.541553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.541965, 38.468834, 53.530941>,  <29.653786, 38.852478, 53.513256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541965, 38.468834, 53.530941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551839, 0.198184, 0.810059,
		-0.785701, 0.202053, -0.584678,
		-0.279549, -0.959113, 0.044213,
		29.458101, 38.181099, 53.544205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944492, 38.858128, 53.695866>,  <29.653786, 38.852478, 53.513256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944492, 38.858128, 53.695866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.040573, 38.476799, 53.769066>,  <29.098221, 38.248001, 53.812984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.040573, 38.476799, 53.769066>,  <28.944492, 38.858128, 53.695866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040573, 38.476799, 53.769066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571322, 0.013571, 0.820614,
		-0.784790, -0.301663, -0.541391,
		0.240201, -0.953318, 0.182997,
		29.112633, 38.190804, 53.823963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297018, 38.543907, 53.947853>,  <28.944492, 38.858128, 53.695866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297018, 38.543907, 53.947853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.579996, 38.291485, 54.075161>,  <28.749783, 38.140034, 54.151546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.579996, 38.291485, 54.075161>,  <28.297018, 38.543907, 53.947853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579996, 38.291485, 54.075161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491653, -0.115899, 0.863044,
		-0.507739, -0.767033, -0.392251,
		0.707445, -0.631053, 0.318268,
		28.792231, 38.102169, 54.170643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932232, 37.955460, 54.111259>,  <28.297018, 38.543907, 53.947853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932232, 37.955460, 54.111259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.278433, 37.890182, 54.300690>,  <28.486155, 37.851017, 54.414349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.278433, 37.890182, 54.300690>,  <27.932232, 37.955460, 54.111259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278433, 37.890182, 54.300690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497125, -0.163978, 0.852043,
		-0.061386, -0.972873, -0.223047,
		0.865505, -0.163186, 0.473574,
		28.538084, 37.841225, 54.442760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.907143, 35.303753, 59.581966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753906, 35.481773, 59.258194>,  <33.661964, 35.588585, 59.063931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753906, 35.481773, 59.258194>,  <33.907143, 35.303753, 59.581966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753906, 35.481773, 59.258194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805794, -0.267393, -0.528391,
		-0.451597, -0.854652, -0.256186,
		-0.383088, 0.445053, -0.809427,
		33.638981, 35.615288, 59.015366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123966, 34.851566, 59.080952>,  <33.907143, 35.303753, 59.581966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123966, 34.851566, 59.080952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.005413, 35.171734, 58.872536>,  <33.934280, 35.363834, 58.747486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.005413, 35.171734, 58.872536>,  <34.123966, 34.851566, 59.080952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005413, 35.171734, 58.872536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645367, -0.234306, -0.727051,
		-0.704029, -0.551749, -0.447120,
		-0.296386, 0.800421, -0.521039,
		33.916496, 35.411861, 58.716225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851990, 34.634438, 58.450665>,  <34.123966, 34.851566, 59.080952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851990, 34.634438, 58.450665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.964909, 35.014248, 58.395954>,  <34.032658, 35.242134, 58.363129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.964909, 35.014248, 58.395954>,  <33.851990, 34.634438, 58.450665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964909, 35.014248, 58.395954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527665, -0.272754, -0.804472,
		-0.801173, 0.154929, -0.578030,
		0.282296, 0.949527, -0.136773,
		34.049599, 35.299107, 58.354923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718700, 34.754963, 57.717808>,  <33.851990, 34.634438, 58.450665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718700, 34.754963, 57.717808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986145, 35.018085, 57.856514>,  <34.146610, 35.175961, 57.939739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986145, 35.018085, 57.856514>,  <33.718700, 34.754963, 57.717808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986145, 35.018085, 57.856514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587595, -0.181567, -0.788521,
		-0.455735, 0.730972, -0.507923,
		0.668608, 0.657810, 0.346769,
		34.186726, 35.215427, 57.960545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913071, 34.887413, 57.086258>,  <33.718700, 34.754963, 57.717808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913071, 34.887413, 57.086258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.178150, 35.063782, 57.328388>,  <34.337196, 35.169605, 57.473667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.178150, 35.063782, 57.328388>,  <33.913071, 34.887413, 57.086258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178150, 35.063782, 57.328388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714536, -0.130275, -0.687362,
		-0.224215, 0.888040, -0.401388,
		0.662696, 0.440924, 0.605326,
		34.376961, 35.196060, 57.509987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214184, 35.285908, 56.724865>,  <33.913071, 34.887413, 57.086258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214184, 35.285908, 56.724865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.471889, 35.212601, 57.021870>,  <34.626514, 35.168617, 57.200073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.471889, 35.212601, 57.021870>,  <34.214184, 35.285908, 56.724865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471889, 35.212601, 57.021870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719739, -0.183034, -0.669682,
		0.258640, 0.965873, 0.013985,
		0.644268, -0.183272, 0.742516,
		34.665169, 35.157619, 57.244625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797218, 35.613323, 56.507099>,  <34.214184, 35.285908, 56.724865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797218, 35.613323, 56.507099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.918350, 35.326530, 56.758251>,  <34.991032, 35.154453, 56.908943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.918350, 35.326530, 56.758251>,  <34.797218, 35.613323, 56.507099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918350, 35.326530, 56.758251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690538, -0.288989, -0.663055,
		0.656848, 0.634367, 0.407589,
		0.302832, -0.716982, 0.627877,
		35.009201, 35.111435, 56.946613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557808, 35.675049, 56.542927>,  <34.797218, 35.613323, 56.507099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557808, 35.675049, 56.542927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.457073, 35.311634, 56.676281>,  <35.396633, 35.093586, 56.756294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.457073, 35.311634, 56.676281>,  <35.557808, 35.675049, 56.542927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457073, 35.311634, 56.676281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703825, -0.408386, -0.581249,
		0.664233, 0.088262, 0.742296,
		-0.251841, -0.908532, 0.333385,
		35.381519, 35.039074, 56.776295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175091, 35.305626, 56.605858>,  <35.557808, 35.675049, 56.542927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175091, 35.305626, 56.605858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.922729, 34.995445, 56.615936>,  <35.771313, 34.809338, 56.621983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.922729, 34.995445, 56.615936>,  <36.175091, 35.305626, 56.605858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922729, 34.995445, 56.615936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525483, -0.450974, -0.721450,
		0.570811, -0.441928, 0.692008,
		-0.630906, -0.775450, 0.025195,
		35.733459, 34.762810, 56.623493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539253, 34.673367, 56.706444>,  <36.175091, 35.305626, 56.605858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539253, 34.673367, 56.706444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.194557, 34.564075, 56.535450>,  <35.987740, 34.498501, 56.432854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.194557, 34.564075, 56.535450>,  <36.539253, 34.673367, 56.706444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194557, 34.564075, 56.535450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505949, -0.525261, -0.684191,
		-0.037603, -0.805884, 0.590878,
		-0.861744, -0.273226, -0.427487,
		35.936035, 34.482109, 56.407204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657982, 33.860622, 56.545605>,  <36.539253, 34.673367, 56.706444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657982, 33.860622, 56.545605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.383152, 34.020374, 56.302814>,  <36.218254, 34.116226, 56.157139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.383152, 34.020374, 56.302814>,  <36.657982, 33.860622, 56.545605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383152, 34.020374, 56.302814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525408, -0.303928, -0.794717,
		-0.501870, -0.864942, -0.001014,
		-0.687076, 0.399378, -0.606980,
		36.177029, 34.140186, 56.120720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690388, 33.465130, 55.936790>,  <36.657982, 33.860622, 56.545605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690388, 33.465130, 55.936790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.466167, 33.760105, 55.786083>,  <36.331635, 33.937092, 55.695660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.466167, 33.760105, 55.786083>,  <36.690388, 33.465130, 55.936790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466167, 33.760105, 55.786083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281296, -0.258361, -0.924188,
		-0.778879, -0.624041, -0.062614,
		-0.560554, 0.737443, -0.376772,
		36.298000, 33.981339, 55.673050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414955, 33.164734, 55.308357>,  <36.690388, 33.465130, 55.936790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414955, 33.164734, 55.308357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.384773, 33.562271, 55.275898>,  <36.366665, 33.800793, 55.256424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.384773, 33.562271, 55.275898>,  <36.414955, 33.164734, 55.308357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384773, 33.562271, 55.275898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279052, -0.057079, -0.958578,
		-0.957307, -0.094972, -0.273027,
		-0.075454, 0.993842, -0.081144,
		36.362137, 33.860424, 55.251556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010857, 33.285645, 54.732967>,  <36.414955, 33.164734, 55.308357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010857, 33.285645, 54.732967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.226570, 33.617523, 54.790619>,  <36.355999, 33.816650, 54.825211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.226570, 33.617523, 54.790619>,  <36.010857, 33.285645, 54.732967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226570, 33.617523, 54.790619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397830, -0.100161, -0.911975,
		-0.742231, 0.549149, -0.384095,
		0.539281, 0.829701, 0.144125,
		36.388355, 33.866432, 54.833855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355915, 33.319801, 54.308926>,  <36.010857, 33.285645, 54.732967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355915, 33.319801, 54.308926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.226833, 32.962708, 54.183140>,  <35.149384, 32.748451, 54.107666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.226833, 32.962708, 54.183140>,  <35.355915, 33.319801, 54.308926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226833, 32.962708, 54.183140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818771, 0.096618, 0.565932,
		-0.474843, 0.440107, -0.762122,
		-0.322705, -0.892732, -0.314468,
		35.130020, 32.694889, 54.088799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681023, 33.350834, 54.083111>,  <35.355915, 33.319801, 54.308926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681023, 33.350834, 54.083111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.737057, 32.963177, 54.164238>,  <34.770676, 32.730583, 54.212914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.737057, 32.963177, 54.164238>,  <34.681023, 33.350834, 54.083111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737057, 32.963177, 54.164238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879286, -0.027582, 0.475495,
		-0.455229, -0.244946, -0.856019,
		0.140082, -0.969144, 0.202822,
		34.779079, 32.672432, 54.225086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120430, 33.027531, 53.942192>,  <34.681023, 33.350834, 54.083111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120430, 33.027531, 53.942192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.303799, 32.803101, 54.217884>,  <34.413818, 32.668442, 54.383301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.303799, 32.803101, 54.217884>,  <34.120430, 33.027531, 53.942192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303799, 32.803101, 54.217884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817852, 0.037170, 0.574227,
		-0.347805, -0.826928, -0.441839,
		0.458421, -0.561078, 0.689232,
		34.441326, 32.634777, 54.424652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545502, 32.525223, 54.144260>,  <34.120430, 33.027531, 53.942192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545502, 32.525223, 54.144260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.835411, 32.491764, 54.417816>,  <34.009357, 32.471687, 54.581951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.835411, 32.491764, 54.417816>,  <33.545502, 32.525223, 54.144260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835411, 32.491764, 54.417816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678859, -0.256292, 0.688088,
		0.117719, -0.962973, -0.242538,
		0.724771, -0.083649, 0.683893,
		34.052841, 32.466671, 54.622986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320076, 32.005379, 54.555576>,  <33.545502, 32.525223, 54.144260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320076, 32.005379, 54.555576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581799, 32.202404, 54.785099>,  <33.738834, 32.320621, 54.922813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581799, 32.202404, 54.785099>,  <33.320076, 32.005379, 54.555576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581799, 32.202404, 54.785099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699155, 0.104845, 0.707241,
		0.288201, -0.863937, 0.412981,
		0.654311, 0.492565, 0.573809,
		33.778091, 32.350174, 54.957241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355774, 31.592566, 55.142952>,  <33.320076, 32.005379, 54.555576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355774, 31.592566, 55.142952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466091, 31.956114, 55.268105>,  <33.532284, 32.174244, 55.343197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466091, 31.956114, 55.268105>,  <33.355774, 31.592566, 55.142952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466091, 31.956114, 55.268105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637059, -0.070913, 0.767546,
		0.719786, -0.411009, 0.559446,
		0.275796, 0.908869, 0.312879,
		33.548832, 32.228775, 55.361969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454094, 31.524569, 55.883129>,  <33.355774, 31.592566, 55.142952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454094, 31.524569, 55.883129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.410027, 31.917681, 55.823795>,  <33.383587, 32.153549, 55.788197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.410027, 31.917681, 55.823795>,  <33.454094, 31.524569, 55.883129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410027, 31.917681, 55.823795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792881, 0.003089, 0.609368,
		0.599335, 0.184742, 0.778889,
		-0.110170, 0.982782, -0.148330,
		33.376976, 32.212517, 55.779297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518806, 31.915163, 56.597137>,  <33.454094, 31.524569, 55.883129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518806, 31.915163, 56.597137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.334976, 32.190636, 56.372814>,  <33.224678, 32.355919, 56.238220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.334976, 32.190636, 56.372814>,  <33.518806, 31.915163, 56.597137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334976, 32.190636, 56.372814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660205, 0.157460, 0.734395,
		0.594069, 0.707761, 0.382306,
		-0.459578, 0.688681, -0.560809,
		33.197102, 32.397240, 56.204571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597652, 32.533195, 57.028370>,  <33.518806, 31.915163, 56.597137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597652, 32.533195, 57.028370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.290062, 32.578876, 56.776772>,  <33.105507, 32.606285, 56.625813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.290062, 32.578876, 56.776772>,  <33.597652, 32.533195, 57.028370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290062, 32.578876, 56.776772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542014, 0.405225, 0.736216,
		0.338959, 0.907056, -0.249711,
		-0.768978, 0.114201, -0.628992,
		33.059368, 32.613136, 56.588074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345657, 33.216011, 57.180912>,  <33.597652, 32.533195, 57.028370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345657, 33.216011, 57.180912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046764, 33.070141, 56.958687>,  <32.867428, 32.982616, 56.825352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046764, 33.070141, 56.958687>,  <33.345657, 33.216011, 57.180912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046764, 33.070141, 56.958687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660611, 0.498627, 0.561216,
		0.072356, 0.786372, -0.613501,
		-0.747233, -0.364679, -0.555565,
		32.822594, 32.960739, 56.792019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943878, 33.811691, 56.812859>,  <33.345657, 33.216011, 57.180912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943878, 33.811691, 56.812859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.725815, 33.492832, 56.916672>,  <32.594978, 33.301517, 56.978958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.725815, 33.492832, 56.916672>,  <32.943878, 33.811691, 56.812859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725815, 33.492832, 56.916672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648699, 0.597217, 0.471722,
		-0.531029, 0.088806, -0.842687,
		-0.545158, -0.797148, 0.259531,
		32.562267, 33.253689, 56.994530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285957, 33.993511, 56.758881>,  <32.943878, 33.811691, 56.812859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285957, 33.993511, 56.758881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191639, 33.669865, 56.974186>,  <32.135048, 33.475677, 57.103371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191639, 33.669865, 56.974186>,  <32.285957, 33.993511, 56.758881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191639, 33.669865, 56.974186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721612, 0.516765, 0.460685,
		-0.650905, -0.279793, -0.705719,
		-0.235794, -0.809117, 0.538266,
		32.120899, 33.427128, 57.135666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539536, 33.974518, 56.795570>,  <32.285957, 33.993511, 56.758881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539536, 33.974518, 56.795570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.667692, 33.716816, 57.073357>,  <31.744587, 33.562195, 57.240028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.667692, 33.716816, 57.073357>,  <31.539536, 33.974518, 56.795570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667692, 33.716816, 57.073357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542880, 0.475901, 0.691954,
		-0.776293, -0.598707, -0.197280,
		0.320392, -0.644258, 0.694465,
		31.763809, 33.523540, 57.281696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933027, 33.590931, 57.019859>,  <31.539536, 33.974518, 56.795570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933027, 33.590931, 57.019859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.212130, 33.587242, 57.306370>,  <31.379591, 33.585030, 57.478275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.212130, 33.587242, 57.306370>,  <30.933027, 33.590931, 57.019859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212130, 33.587242, 57.306370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668065, 0.352461, 0.655332,
		-0.258502, -0.935781, 0.239771,
		0.697758, -0.009222, 0.716275,
		31.421457, 33.584476, 57.521252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198843, 33.204151, 57.025074>,  <30.933027, 33.590931, 57.019859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198843, 33.204151, 57.025074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.986320, 33.387768, 56.740261>,  <29.858807, 33.497936, 56.569374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.986320, 33.387768, 56.740261>,  <30.198843, 33.204151, 57.025074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986320, 33.387768, 56.740261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694104, -0.246019, -0.676531,
		-0.485729, -0.853673, -0.187909,
		-0.531307, 0.459039, -0.712036,
		29.826929, 33.525478, 56.526649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245476, 32.685196, 56.443790>,  <30.198843, 33.204151, 57.025074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245476, 32.685196, 56.443790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.169046, 33.052528, 56.305138>,  <30.123190, 33.272930, 56.221947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.169046, 33.052528, 56.305138>,  <30.245476, 32.685196, 56.443790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169046, 33.052528, 56.305138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592567, -0.173614, -0.786589,
		-0.782532, -0.355699, -0.511001,
		-0.191072, 0.918334, -0.346634,
		30.111725, 33.328030, 56.201149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966904, 32.607418, 55.762375>,  <30.245476, 32.685196, 56.443790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966904, 32.607418, 55.762375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.108187, 32.981392, 55.748856>,  <30.192957, 33.205776, 55.740742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.108187, 32.981392, 55.748856>,  <29.966904, 32.607418, 55.762375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108187, 32.981392, 55.748856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448408, -0.200891, -0.870961,
		-0.821082, 0.292473, -0.490188,
		0.353207, 0.934935, -0.033801,
		30.214149, 33.261871, 55.738716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790024, 32.969631, 55.012627>,  <29.966904, 32.607418, 55.762375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790024, 32.969631, 55.012627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.086809, 33.196381, 55.155819>,  <30.264881, 33.332428, 55.241734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.086809, 33.196381, 55.155819>,  <29.790024, 32.969631, 55.012627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086809, 33.196381, 55.155819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455256, -0.034025, -0.889710,
		-0.492170, 0.823105, -0.283316,
		0.741964, 0.566869, 0.357977,
		30.309399, 33.366440, 55.263210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081348, 33.269287, 54.397614>,  <29.790024, 32.969631, 55.012627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081348, 33.269287, 54.397614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.360029, 33.332630, 54.677479>,  <30.527237, 33.370636, 54.845398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.360029, 33.332630, 54.677479>,  <30.081348, 33.269287, 54.397614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360029, 33.332630, 54.677479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717284, -0.139525, -0.682669,
		-0.010488, 0.977474, -0.210797,
		0.696702, 0.158362, 0.699662,
		30.569040, 33.380138, 54.887379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499334, 33.805454, 54.120991>,  <30.081348, 33.269287, 54.397614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499334, 33.805454, 54.120991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.696928, 33.602184, 54.403194>,  <30.815485, 33.480225, 54.572517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.696928, 33.602184, 54.403194>,  <30.499334, 33.805454, 54.120991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696928, 33.602184, 54.403194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727009, -0.203652, -0.655731,
		0.476902, 0.836832, 0.268844,
		0.493986, -0.508172, 0.705506,
		30.845123, 33.449734, 54.614845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182283, 34.051620, 54.061619>,  <30.499334, 33.805454, 54.120991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182283, 34.051620, 54.061619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.188143, 33.698940, 54.250248>,  <31.191658, 33.487331, 54.363426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.188143, 33.698940, 54.250248>,  <31.182283, 34.051620, 54.061619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188143, 33.698940, 54.250248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643768, -0.352553, -0.679168,
		0.765080, 0.313535, 0.562448,
		0.014651, -0.881704, 0.471575,
		31.192537, 33.434429, 54.391720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869993, 33.884510, 54.059784>,  <31.182283, 34.051620, 54.061619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869993, 33.884510, 54.059784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.683355, 33.535198, 54.115887>,  <31.571373, 33.325611, 54.149548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.683355, 33.535198, 54.115887>,  <31.869993, 33.884510, 54.059784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683355, 33.535198, 54.115887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688103, -0.458036, -0.562775,
		0.555702, -0.166078, 0.814624,
		-0.466592, -0.873282, 0.140253,
		31.543377, 33.273212, 54.157963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368015, 33.304447, 54.061420>,  <31.869993, 33.884510, 54.059784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368015, 33.304447, 54.061420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.021160, 33.121380, 53.982826>,  <31.813046, 33.011539, 53.935669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.021160, 33.121380, 53.982826>,  <32.368015, 33.304447, 54.061420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021160, 33.121380, 53.982826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441388, -0.523381, -0.728868,
		0.230741, -0.718759, 0.655854,
		-0.867142, -0.457666, -0.196486,
		31.761017, 32.984081, 53.923882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497551, 32.574268, 54.072685>,  <32.368015, 33.304447, 54.061420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497551, 32.574268, 54.072685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.172928, 32.645466, 53.850082>,  <31.978155, 32.688187, 53.716522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.172928, 32.645466, 53.850082>,  <32.497551, 32.574268, 54.072685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172928, 32.645466, 53.850082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461593, -0.388609, -0.797443,
		-0.358207, -0.904046, 0.233214,
		-0.811554, 0.177999, -0.556503,
		31.929462, 32.698864, 53.683132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498978, 31.930405, 53.581032>,  <32.497551, 32.574268, 54.072685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498978, 31.930405, 53.581032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.247402, 32.206192, 53.437328>,  <32.096455, 32.371666, 53.351109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.247402, 32.206192, 53.437328>,  <32.498978, 31.930405, 53.581032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247402, 32.206192, 53.437328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061858, -0.416250, -0.907143,
		-0.774987, -0.592763, 0.219148,
		-0.628942, 0.689469, -0.359256,
		32.058720, 32.413033, 53.329552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099892, 31.523512, 53.228424>,  <32.498978, 31.930405, 53.581032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099892, 31.523512, 53.228424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.076160, 31.901512, 53.099766>,  <32.061924, 32.128311, 53.022572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.076160, 31.901512, 53.099766>,  <32.099892, 31.523512, 53.228424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076160, 31.901512, 53.099766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216654, -0.302344, -0.928250,
		-0.974444, -0.124753, -0.186802,
		-0.059324, 0.945000, -0.321646,
		32.058365, 32.185013, 53.003273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816832, 31.430208, 52.471096>,  <32.099892, 31.523512, 53.228424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816832, 31.430208, 52.471096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.976658, 31.794483, 52.513039>,  <32.072552, 32.013050, 52.538204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.976658, 31.794483, 52.513039>,  <31.816832, 31.430208, 52.471096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976658, 31.794483, 52.513039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284354, -0.014386, -0.958611,
		-0.871488, 0.412844, -0.264706,
		0.399565, 0.910688, 0.104856,
		32.096527, 32.067688, 52.544495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622936, 31.759768, 51.917534>,  <31.816832, 31.430208, 52.471096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622936, 31.759768, 51.917534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.942602, 31.983877, 52.004650>,  <32.134399, 32.118343, 52.056919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.942602, 31.983877, 52.004650>,  <31.622936, 31.759768, 51.917534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942602, 31.983877, 52.004650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391187, -0.209640, -0.896116,
		-0.456411, 0.801340, -0.386708,
		0.799163, 0.560272, 0.217792,
		32.182350, 32.151958, 52.069988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.838360, 37.186543, 54.499641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.169075, 37.356701, 54.646862>,  <28.367504, 37.458797, 54.735195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.169075, 37.356701, 54.646862>,  <27.838360, 37.186543, 54.499641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169075, 37.356701, 54.646862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314801, -0.192330, 0.929467,
		0.466180, -0.884334, -0.025101,
		0.826787, 0.425398, 0.368049,
		28.417110, 37.484322, 54.757278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189623, 36.698624, 54.857414>,  <27.838360, 37.186543, 54.499641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189623, 36.698624, 54.857414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.261366, 37.063042, 55.005909>,  <28.304413, 37.281693, 55.095005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.261366, 37.063042, 55.005909>,  <28.189623, 36.698624, 54.857414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261366, 37.063042, 55.005909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323359, -0.301797, 0.896860,
		0.929123, -0.280904, 0.240467,
		0.179359, 0.911050, 0.371239,
		28.315174, 37.336357, 55.117279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395279, 36.626640, 55.586693>,  <28.189623, 36.698624, 54.857414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395279, 36.626640, 55.586693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.287842, 37.011158, 55.562122>,  <28.223379, 37.241867, 55.547382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.287842, 37.011158, 55.562122>,  <28.395279, 36.626640, 55.586693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287842, 37.011158, 55.562122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387689, -0.049508, 0.920460,
		0.881791, 0.271041, 0.385981,
		-0.268592, 0.961294, -0.061424,
		28.207264, 37.299545, 55.543694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462036, 36.860016, 56.276363>,  <28.395279, 36.626640, 55.586693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462036, 36.860016, 56.276363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.233215, 37.144974, 56.113758>,  <28.095922, 37.315948, 56.016193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.233215, 37.144974, 56.113758>,  <28.462036, 36.860016, 56.276363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233215, 37.144974, 56.113758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379400, 0.209582, 0.901183,
		0.727193, 0.669756, 0.150390,
		-0.572054, 0.712392, -0.406512,
		28.061600, 37.358692, 55.991806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513283, 37.535130, 56.841251>,  <28.462036, 36.860016, 56.276363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513283, 37.535130, 56.841251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.203436, 37.586037, 56.593456>,  <28.017529, 37.616581, 56.444778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.203436, 37.586037, 56.593456>,  <28.513283, 37.535130, 56.841251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203436, 37.586037, 56.593456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572047, 0.276702, 0.772139,
		0.269686, 0.952491, -0.141533,
		-0.774617, 0.127272, -0.619492,
		27.971050, 37.624218, 56.407608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267979, 38.159725, 57.010345>,  <28.513283, 37.535130, 56.841251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267979, 38.159725, 57.010345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.949614, 37.979645, 56.848438>,  <27.758595, 37.871597, 56.751293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.949614, 37.979645, 56.848438>,  <28.267979, 38.159725, 57.010345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949614, 37.979645, 56.848438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583261, 0.391011, 0.711981,
		-0.162268, 0.802761, -0.573798,
		-0.795912, -0.450206, -0.404771,
		27.710840, 37.844582, 56.727009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755993, 38.715813, 56.828175>,  <28.267979, 38.159725, 57.010345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755993, 38.715813, 56.828175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.559612, 38.368263, 56.853542>,  <27.441784, 38.159733, 56.868763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.559612, 38.368263, 56.853542>,  <27.755993, 38.715813, 56.828175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559612, 38.368263, 56.853542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572518, 0.376651, 0.728256,
		-0.656648, 0.321234, -0.682365,
		-0.490954, -0.868874, 0.063415,
		27.412327, 38.107601, 56.872566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063328, 38.821457, 56.865219>,  <27.755993, 38.715813, 56.828175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063328, 38.821457, 56.865219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.112812, 38.463234, 57.036179>,  <27.142502, 38.248299, 57.138756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.112812, 38.463234, 57.036179>,  <27.063328, 38.821457, 56.865219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112812, 38.463234, 57.036179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550075, 0.296589, 0.780675,
		-0.825902, -0.331679, -0.455933,
		0.123708, -0.895558, 0.427402,
		27.149925, 38.194565, 57.164398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314758, 38.586864, 57.122292>,  <27.063328, 38.821457, 56.865219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314758, 38.586864, 57.122292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.563601, 38.345379, 57.321697>,  <26.712906, 38.200489, 57.441341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.563601, 38.345379, 57.321697>,  <26.314758, 38.586864, 57.122292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563601, 38.345379, 57.321697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583859, 0.066488, 0.809128,
		-0.521624, -0.794426, -0.311119,
		0.622107, -0.603710, 0.498515,
		26.750233, 38.164265, 57.471252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824072, 38.083763, 57.491318>,  <26.314758, 38.586864, 57.122292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824072, 38.083763, 57.491318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.175573, 38.111755, 57.680164>,  <26.386475, 38.128551, 57.793472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.175573, 38.111755, 57.680164>,  <25.824072, 38.083763, 57.491318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.175573, 38.111755, 57.680164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470179, 0.296922, 0.831125,
		-0.082017, -0.952334, 0.293826,
		0.878752, 0.069985, 0.472120,
		26.439199, 38.132751, 57.821800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.668621, 37.774326, 58.106579>,  <25.824072, 38.083763, 57.491318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.668621, 37.774326, 58.106579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.021832, 37.939087, 58.196560>,  <26.233757, 38.037945, 58.250549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.021832, 37.939087, 58.196560>,  <25.668621, 37.774326, 58.106579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021832, 37.939087, 58.196560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388430, 0.372382, 0.842884,
		0.263419, -0.831666, 0.488818,
		0.883024, 0.411903, 0.224952,
		26.286739, 38.062656, 58.264046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819204, 37.589516, 58.845753>,  <25.668621, 37.774326, 58.106579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819204, 37.589516, 58.845753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.003565, 37.924419, 58.728062>,  <26.114182, 38.125362, 58.657448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.003565, 37.924419, 58.728062>,  <25.819204, 37.589516, 58.845753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003565, 37.924419, 58.728062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354569, 0.477664, 0.803815,
		0.813543, -0.266153, 0.517021,
		0.460900, 0.837257, -0.294230,
		26.141834, 38.175598, 58.639793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.054222, 37.803104, 59.430130>,  <25.819204, 37.589516, 58.845753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.054222, 37.803104, 59.430130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.994278, 38.108410, 59.178745>,  <25.958311, 38.291595, 59.027916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.994278, 38.108410, 59.178745>,  <26.054222, 37.803104, 59.430130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994278, 38.108410, 59.178745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514897, 0.482391, 0.708647,
		0.844051, 0.429792, 0.320712,
		-0.149863, 0.763268, -0.628461,
		25.949320, 38.337391, 58.990208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742683, 37.123573, 59.529110>,  <26.054222, 37.803104, 59.430130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742683, 37.123573, 59.529110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.703634, 36.893379, 59.204327>,  <25.680204, 36.755260, 59.009457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.703634, 36.893379, 59.204327>,  <25.742683, 37.123573, 59.529110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.703634, 36.893379, 59.204327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040942, 0.812847, -0.581037,
		0.994381, -0.089965, -0.055790,
		-0.097622, -0.575488, -0.811963,
		25.674347, 36.720734, 58.960739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863068, 36.358849, 59.406406>,  <25.742683, 37.123573, 59.529110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863068, 36.358849, 59.406406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.893572, 36.046879, 59.654888>,  <25.911875, 35.859695, 59.803978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.893572, 36.046879, 59.654888>,  <25.863068, 36.358849, 59.406406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.893572, 36.046879, 59.654888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454572, -0.527313, -0.717848,
		0.887439, 0.337128, 0.314319,
		0.076262, -0.779927, 0.621207,
		25.916451, 35.812901, 59.841251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655203, 36.010075, 59.505135>,  <25.863068, 36.358849, 59.406406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655203, 36.010075, 59.505135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.372890, 35.733746, 59.567921>,  <26.203503, 35.567947, 59.605591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.372890, 35.733746, 59.567921>,  <26.655203, 36.010075, 59.505135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372890, 35.733746, 59.567921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536169, -0.665702, -0.519003,
		0.463030, -0.282144, 0.840237,
		-0.705781, -0.690822, 0.156963,
		26.161156, 35.526501, 59.615009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036642, 35.418175, 59.842720>,  <26.655203, 36.010075, 59.505135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036642, 35.418175, 59.842720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.708513, 35.299454, 59.647175>,  <26.511637, 35.228222, 59.529850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.708513, 35.299454, 59.647175>,  <27.036642, 35.418175, 59.842720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708513, 35.299454, 59.647175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523470, -0.733932, -0.432809,
		-0.230333, -0.610946, 0.757425,
		-0.820321, -0.296799, -0.488860,
		26.462418, 35.210415, 59.500515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018654, 34.708260, 59.908508>,  <27.036642, 35.418175, 59.842720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018654, 34.708260, 59.908508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.770967, 34.763435, 59.599304>,  <26.622356, 34.796539, 59.413780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.770967, 34.763435, 59.599304>,  <27.018654, 34.708260, 59.908508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770967, 34.763435, 59.599304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631866, -0.496921, -0.594823,
		-0.466172, -0.856763, 0.220545,
		-0.619216, 0.137935, -0.773010,
		26.585203, 34.804817, 59.367401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145073, 33.993149, 59.591831>,  <27.018654, 34.708260, 59.908508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.145073, 33.993149, 59.591831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.943319, 34.236488, 59.346718>,  <26.822268, 34.382492, 59.199650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.943319, 34.236488, 59.346718>,  <27.145073, 33.993149, 59.591831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943319, 34.236488, 59.346718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461997, -0.409414, -0.786727,
		-0.729488, -0.679918, -0.074554,
		-0.504386, 0.608352, -0.612782,
		26.792004, 34.418995, 59.162884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895658, 33.620140, 58.918941>,  <27.145073, 33.993149, 59.591831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895658, 33.620140, 58.918941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.930748, 33.997868, 58.792088>,  <26.951801, 34.224503, 58.715977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.930748, 33.997868, 58.792088>,  <26.895658, 33.620140, 58.918941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930748, 33.997868, 58.792088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465997, -0.320280, -0.824784,
		-0.880427, -0.075431, -0.468144,
		0.087723, 0.944315, -0.317133,
		26.957066, 34.281162, 58.696949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706230, 33.639168, 58.199455>,  <26.895658, 33.620140, 58.918941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706230, 33.639168, 58.199455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.914499, 33.979290, 58.230129>,  <27.039461, 34.183365, 58.248535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.914499, 33.979290, 58.230129>,  <26.706230, 33.639168, 58.199455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914499, 33.979290, 58.230129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399781, -0.163458, -0.901918,
		-0.754372, 0.500260, -0.425044,
		0.520671, 0.850307, 0.076686,
		27.070700, 34.234383, 58.253136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959614, 33.815201, 57.531670>,  <26.706230, 33.639168, 58.199455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.959614, 33.815201, 57.531670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.206144, 34.060314, 57.729511>,  <27.354063, 34.207382, 57.848217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.206144, 34.060314, 57.729511>,  <26.959614, 33.815201, 57.531670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206144, 34.060314, 57.729511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721634, -0.188048, -0.666245,
		-0.315256, 0.767549, -0.558106,
		0.616327, 0.612786, 0.494606,
		27.391043, 34.244148, 57.877892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262636, 34.217400, 56.996700>,  <26.959614, 33.815201, 57.531670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262636, 34.217400, 56.996700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.503536, 34.248230, 57.314529>,  <27.648077, 34.266727, 57.505226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.503536, 34.248230, 57.314529>,  <27.262636, 34.217400, 56.996700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503536, 34.248230, 57.314529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797776, -0.094402, -0.595518,
		0.029108, 0.992546, -0.118346,
		0.602251, 0.077079, 0.794577,
		27.684212, 34.271355, 57.552902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746496, 34.707893, 56.896629>,  <27.262636, 34.217400, 56.996700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746496, 34.707893, 56.896629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.912291, 34.459480, 57.162716>,  <28.011766, 34.310432, 57.322369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.912291, 34.459480, 57.162716>,  <27.746496, 34.707893, 56.896629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912291, 34.459480, 57.162716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831206, -0.039276, -0.554576,
		0.370538, 0.782798, 0.499929,
		0.414486, -0.621036, 0.665219,
		28.036636, 34.273170, 57.362282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356661, 34.949364, 56.879677>,  <27.746496, 34.707893, 56.896629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356661, 34.949364, 56.879677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.408186, 34.592850, 57.053577>,  <28.439100, 34.378941, 57.157917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.408186, 34.592850, 57.053577>,  <28.356661, 34.949364, 56.879677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408186, 34.592850, 57.053577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874619, -0.104518, -0.473410,
		0.467384, 0.441227, 0.766075,
		0.128813, -0.891288, 0.434756,
		28.446831, 34.325462, 57.184006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074997, 34.940880, 57.236252>,  <28.356661, 34.949364, 56.879677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074997, 34.940880, 57.236252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.945339, 34.568844, 57.167126>,  <28.867544, 34.345623, 57.125648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.945339, 34.568844, 57.167126>,  <29.074997, 34.940880, 57.236252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945339, 34.568844, 57.167126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792125, -0.166979, -0.587074,
		0.517175, -0.327187, 0.790872,
		-0.324143, -0.930089, -0.172816,
		28.848097, 34.289818, 57.115280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688498, 34.514297, 57.374435>,  <29.074997, 34.940880, 57.236252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688498, 34.514297, 57.374435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.443613, 34.277225, 57.165081>,  <29.296682, 34.134983, 57.039471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.443613, 34.277225, 57.165081>,  <29.688498, 34.514297, 57.374435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443613, 34.277225, 57.165081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768699, -0.291091, -0.569533,
		0.185199, -0.750998, 0.633800,
		-0.612212, -0.592678, -0.523382,
		29.259949, 34.099422, 57.008068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131472, 33.850883, 57.301228>,  <29.688498, 34.514297, 57.374435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131472, 33.850883, 57.301228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.845375, 33.796413, 57.027035>,  <29.673717, 33.763729, 56.862518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.845375, 33.796413, 57.027035>,  <30.131472, 33.850883, 57.301228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845375, 33.796413, 57.027035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692149, -0.273788, -0.667809,
		-0.096734, -0.952100, 0.290081,
		-0.715242, -0.136179, -0.685481,
		29.630802, 33.755558, 56.821392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543093, 33.281773, 57.698776>,  <30.131472, 33.850883, 57.301228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543093, 33.281773, 57.698776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.887844, 33.414276, 57.852364>,  <31.094696, 33.493778, 57.944515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.887844, 33.414276, 57.852364>,  <30.543093, 33.281773, 57.698776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887844, 33.414276, 57.852364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476724, 0.271101, 0.836205,
		0.172905, -0.903755, 0.391575,
		0.861881, 0.331257, 0.383967,
		31.146408, 33.513653, 57.967552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652212, 32.956516, 58.408161>,  <30.543093, 33.281773, 57.698776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652212, 32.956516, 58.408161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.886724, 33.280323, 58.395802>,  <31.027431, 33.474606, 58.388386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.886724, 33.280323, 58.395802>,  <30.652212, 32.956516, 58.408161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886724, 33.280323, 58.395802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414239, 0.332354, 0.847317,
		0.696188, -0.483966, 0.530187,
		0.586283, 0.809517, -0.030903,
		31.062609, 33.523178, 58.386532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893894, 33.080647, 59.108463>,  <30.652212, 32.956516, 58.408161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893894, 33.080647, 59.108463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.930647, 33.443565, 58.944332>,  <30.952700, 33.661316, 58.845856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.930647, 33.443565, 58.944332>,  <30.893894, 33.080647, 59.108463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930647, 33.443565, 58.944332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243760, 0.420024, 0.874163,
		0.965473, 0.019700, 0.259757,
		0.091883, 0.907299, -0.410324,
		30.958212, 33.715755, 58.821236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260389, 33.526409, 59.593109>,  <30.893894, 33.080647, 59.108463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260389, 33.526409, 59.593109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.083420, 33.802315, 59.363853>,  <30.977238, 33.967857, 59.226299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.083420, 33.802315, 59.363853>,  <31.260389, 33.526409, 59.593109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083420, 33.802315, 59.363853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375553, 0.437851, 0.816852,
		0.814384, 0.576637, 0.065328,
		-0.442423, 0.689765, -0.573136,
		30.950693, 34.009243, 59.191914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388477, 34.171188, 59.838497>,  <31.260389, 33.526409, 59.593109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388477, 34.171188, 59.838497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.068670, 34.260265, 59.615364>,  <30.876785, 34.313709, 59.481483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.068670, 34.260265, 59.615364>,  <31.388477, 34.171188, 59.838497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068670, 34.260265, 59.615364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451135, 0.390506, 0.802485,
		0.396542, 0.893261, -0.211755,
		-0.799520, 0.222689, -0.557834,
		30.828814, 34.327072, 59.448013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158012, 34.768566, 60.177650>,  <31.388477, 34.171188, 59.838497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158012, 34.768566, 60.177650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.841360, 34.666889, 59.955402>,  <30.651369, 34.605885, 59.822056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.841360, 34.666889, 59.955402>,  <31.158012, 34.768566, 60.177650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841360, 34.666889, 59.955402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610933, 0.315737, 0.725997,
		-0.009113, 0.914165, -0.405240,
		-0.791630, -0.254191, -0.555616,
		30.603870, 34.590633, 59.788719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589491, 35.382904, 60.165604>,  <31.158012, 34.768566, 60.177650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589491, 35.382904, 60.165604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.391989, 35.046772, 60.076118>,  <30.273487, 34.845093, 60.022427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.391989, 35.046772, 60.076118>,  <30.589491, 35.382904, 60.165604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391989, 35.046772, 60.076118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797548, 0.335065, 0.501646,
		-0.346590, 0.426113, -0.835645,
		-0.493754, -0.840332, -0.223716,
		30.243862, 34.794674, 60.009003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565708, 36.002548, 59.607346>,  <30.589491, 35.382904, 60.165604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565708, 36.002548, 59.607346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.814247, 36.231354, 59.821533>,  <30.963371, 36.368637, 59.950047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.814247, 36.231354, 59.821533>,  <30.565708, 36.002548, 59.607346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814247, 36.231354, 59.821533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756658, -0.260588, -0.599636,
		-0.203460, 0.777753, -0.594731,
		0.621348, 0.572010, 0.535473,
		31.000652, 36.402958, 59.982174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022947, 36.321636, 59.143646>,  <30.565708, 36.002548, 59.607346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022947, 36.321636, 59.143646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.209677, 36.311855, 59.497250>,  <31.321714, 36.305984, 59.709412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.209677, 36.311855, 59.497250>,  <31.022947, 36.321636, 59.143646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209677, 36.311855, 59.497250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866318, -0.188190, -0.462685,
		0.177678, 0.981828, -0.066664,
		0.466822, -0.024456, 0.884013,
		31.349724, 36.304520, 59.762455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546238, 36.793343, 59.177967>,  <31.022947, 36.321636, 59.143646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546238, 36.793343, 59.177967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.667778, 36.539898, 59.462563>,  <31.740702, 36.387829, 59.633320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.667778, 36.539898, 59.462563>,  <31.546238, 36.793343, 59.177967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667778, 36.539898, 59.462563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912280, -0.021769, -0.408989,
		0.274629, 0.773344, 0.571418,
		0.303850, -0.633613, 0.711484,
		31.758932, 36.349815, 59.676006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235661, 36.991268, 59.280643>,  <31.546238, 36.793343, 59.177967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235661, 36.991268, 59.280643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.231243, 36.620850, 59.431541>,  <32.228592, 36.398598, 59.522079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.231243, 36.620850, 59.431541>,  <32.235661, 36.991268, 59.280643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231243, 36.620850, 59.431541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878290, -0.189325, -0.439048,
		0.478002, 0.326483, 0.815428,
		-0.011040, -0.926048, 0.377244,
		32.227932, 36.343037, 59.544716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919781, 36.924915, 59.568085>,  <32.235661, 36.991268, 59.280643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919781, 36.924915, 59.568085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.788914, 36.547298, 59.551361>,  <32.710392, 36.320728, 59.541325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.788914, 36.547298, 59.551361>,  <32.919781, 36.924915, 59.568085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788914, 36.547298, 59.551361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838445, -0.269599, -0.473631,
		0.435854, -0.190015, 0.879730,
		-0.327172, -0.944039, -0.041812,
		32.690762, 36.264088, 59.538818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557457, 36.565693, 59.764278>,  <32.919781, 36.924915, 59.568085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557457, 36.565693, 59.764278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.320980, 36.297745, 59.584606>,  <33.179096, 36.136974, 59.476803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.320980, 36.297745, 59.584606>,  <33.557457, 36.565693, 59.764278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320980, 36.297745, 59.584606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762451, -0.282575, -0.582082,
		0.262994, -0.686599, 0.677802,
		-0.591187, -0.669875, -0.449182,
		33.143623, 36.096783, 59.449852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882366, 35.990932, 59.803169>,  <33.557457, 36.565693, 59.764278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882366, 35.990932, 59.803169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.628799, 35.910988, 59.504314>,  <33.476662, 35.863022, 59.325001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.628799, 35.910988, 59.504314>,  <33.882366, 35.990932, 59.803169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628799, 35.910988, 59.504314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760176, -0.338917, -0.554317,
		-0.142428, -0.919342, 0.366776,
		-0.633913, -0.199864, -0.747133,
		33.438625, 35.851028, 59.280174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<28.589762, 40.520573, 59.415192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343428, 40.234138, 59.283760>,  <28.195627, 40.062279, 59.204903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343428, 40.234138, 59.283760>,  <28.589762, 40.520573, 59.415192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343428, 40.234138, 59.283760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406660, 0.068298, -0.911023,
		0.674813, -0.694661, 0.249143,
		-0.615836, -0.716087, -0.328580,
		28.158676, 40.019314, 59.185184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019646, 40.093540, 59.042572>,  <28.589762, 40.520573, 59.415192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019646, 40.093540, 59.042572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642542, 40.093342, 58.909187>,  <28.416279, 40.093224, 58.829155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642542, 40.093342, 58.909187>,  <29.019646, 40.093540, 59.042572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642542, 40.093342, 58.909187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329234, -0.160202, -0.930559,
		-0.052962, -0.987084, 0.151195,
		-0.942762, -0.000494, -0.333466,
		28.359713, 40.093193, 58.809147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970119, 39.524761, 58.679474>,  <29.019646, 40.093540, 59.042572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970119, 39.524761, 58.679474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711590, 39.809326, 58.569088>,  <28.556473, 39.980064, 58.502857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711590, 39.809326, 58.569088>,  <28.970119, 39.524761, 58.679474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711590, 39.809326, 58.569088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361431, -0.033098, -0.931811,
		-0.672037, -0.701994, -0.235735,
		-0.646324, 0.711413, -0.275965,
		28.517693, 40.022751, 58.486298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639467, 39.316879, 57.988758>,  <28.970119, 39.524761, 58.679474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639467, 39.316879, 57.988758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595757, 39.710861, 58.042309>,  <28.569530, 39.947250, 58.074440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595757, 39.710861, 58.042309>,  <28.639467, 39.316879, 57.988758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595757, 39.710861, 58.042309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459446, 0.169479, -0.871887,
		-0.881458, -0.033767, -0.471053,
		-0.109275, 0.984955, 0.133874,
		28.562975, 40.006348, 58.082470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442535, 39.618599, 57.314995>,  <28.639467, 39.316879, 57.988758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442535, 39.618599, 57.314995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595734, 39.921169, 57.527084>,  <28.687653, 40.102711, 57.654339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595734, 39.921169, 57.527084>,  <28.442535, 39.618599, 57.314995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595734, 39.921169, 57.527084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525883, 0.293359, -0.798366,
		-0.759449, 0.584607, -0.285435,
		0.382995, 0.756423, 0.530226,
		28.710632, 40.148098, 57.686153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274574, 40.300488, 56.908852>,  <28.442535, 39.618599, 57.314995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274574, 40.300488, 56.908852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585724, 40.383511, 57.146114>,  <28.772413, 40.433323, 57.288471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585724, 40.383511, 57.146114>,  <28.274574, 40.300488, 56.908852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585724, 40.383511, 57.146114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470667, 0.433003, -0.768753,
		-0.416397, 0.877171, 0.239132,
		0.777873, 0.207555, 0.593157,
		28.819086, 40.445778, 57.324062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392818, 40.964436, 56.800175>,  <28.274574, 40.300488, 56.908852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392818, 40.964436, 56.800175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721197, 40.775227, 56.928112>,  <28.918224, 40.661701, 57.004875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721197, 40.775227, 56.928112>,  <28.392818, 40.964436, 56.800175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721197, 40.775227, 56.928112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480973, 0.270944, -0.833819,
		0.307754, 0.838356, 0.449941,
		0.820946, -0.473020, 0.319843,
		28.967482, 40.633320, 57.024063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940657, 41.212906, 56.376823>,  <28.392818, 40.964436, 56.800175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940657, 41.212906, 56.376823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153774, 40.931606, 56.565105>,  <29.281645, 40.762825, 56.678074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153774, 40.931606, 56.565105>,  <28.940657, 41.212906, 56.376823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153774, 40.931606, 56.565105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645021, -0.022576, -0.763831,
		0.547792, 0.710583, 0.441583,
		0.532796, -0.703251, 0.470708,
		29.313614, 40.720631, 56.706318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642920, 41.445595, 56.264965>,  <28.940657, 41.212906, 56.376823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642920, 41.445595, 56.264965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661335, 41.049107, 56.314556>,  <29.672384, 40.811214, 56.344311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661335, 41.049107, 56.314556>,  <29.642920, 41.445595, 56.264965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661335, 41.049107, 56.314556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654845, -0.063773, -0.753068,
		0.754360, 0.115855, 0.646157,
		0.046039, -0.991217, 0.123975,
		29.675146, 40.751743, 56.351749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329865, 41.234600, 56.319855>,  <29.642920, 41.445595, 56.264965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329865, 41.234600, 56.319855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154884, 40.896454, 56.197224>,  <30.049896, 40.693565, 56.123646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154884, 40.896454, 56.197224>,  <30.329865, 41.234600, 56.319855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154884, 40.896454, 56.197224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592575, -0.014561, -0.805384,
		0.676381, -0.533987, 0.507314,
		-0.437451, -0.845368, -0.306578,
		30.023649, 40.642845, 56.105251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827820, 40.993435, 55.825481>,  <30.329865, 41.234600, 56.319855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827820, 40.993435, 55.825481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523726, 40.739128, 55.772049>,  <30.341269, 40.586544, 55.739990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523726, 40.739128, 55.772049>,  <30.827820, 40.993435, 55.825481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523726, 40.739128, 55.772049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285241, -0.141922, -0.947890,
		0.583680, -0.758721, 0.289241,
		-0.760234, -0.635768, -0.133582,
		30.295656, 40.548397, 55.731976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138872, 40.349396, 55.518730>,  <30.827820, 40.993435, 55.825481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138872, 40.349396, 55.518730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747358, 40.345844, 55.436852>,  <30.512449, 40.343712, 55.387722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747358, 40.345844, 55.436852>,  <31.138872, 40.349396, 55.518730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747358, 40.345844, 55.436852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201385, -0.225762, -0.953140,
		-0.037746, -0.974142, 0.222762,
		-0.978785, -0.008884, -0.204699,
		30.453724, 40.343178, 55.375443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860210, 40.052490, 55.411488>,  <31.138872, 40.349396, 55.518730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860210, 40.052490, 55.411488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236576, 40.019485, 55.542866>,  <32.462395, 39.999683, 55.621693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236576, 40.019485, 55.542866>,  <31.860210, 40.052490, 55.411488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236576, 40.019485, 55.542866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336794, -0.329429, 0.882069,
		0.035421, -0.940568, -0.337752,
		0.940912, -0.082509, 0.328446,
		32.518848, 39.994732, 55.641399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912882, 39.391964, 55.816814>,  <31.860210, 40.052490, 55.411488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912882, 39.391964, 55.816814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202431, 39.638878, 55.940083>,  <32.376160, 39.787025, 56.014046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202431, 39.638878, 55.940083>,  <31.912882, 39.391964, 55.816814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202431, 39.638878, 55.940083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196471, -0.243747, 0.949730,
		0.661371, -0.748028, -0.055163,
		0.723870, 0.617286, 0.308173,
		32.419590, 39.824062, 56.032536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282757, 38.930283, 56.141136>,  <31.912882, 39.391964, 55.816814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282757, 38.930283, 56.141136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338829, 39.296539, 56.291843>,  <32.372471, 39.516293, 56.382267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338829, 39.296539, 56.291843>,  <32.282757, 38.930283, 56.141136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338829, 39.296539, 56.291843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131048, -0.360017, 0.923696,
		0.981415, -0.178859, 0.069526,
		0.140181, 0.915641, 0.376765,
		32.380882, 39.571232, 56.404873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655327, 38.764786, 56.879612>,  <32.282757, 38.930283, 56.141136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655327, 38.764786, 56.879612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487690, 39.127312, 56.901375>,  <32.387108, 39.344826, 56.914433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487690, 39.127312, 56.901375>,  <32.655327, 38.764786, 56.879612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487690, 39.127312, 56.901375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111816, -0.110986, 0.987512,
		0.901031, 0.407777, 0.147854,
		-0.419094, 0.906311, 0.054406,
		32.361961, 39.399204, 56.917698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922497, 38.991989, 57.503193>,  <32.655327, 38.764786, 56.879612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922497, 38.991989, 57.503193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604294, 39.219929, 57.420780>,  <32.413372, 39.356693, 57.371334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604294, 39.219929, 57.420780>,  <32.922497, 38.991989, 57.503193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604294, 39.219929, 57.420780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380653, -0.205406, 0.901616,
		0.471463, 0.795665, 0.380315,
		-0.795503, 0.569847, -0.206031,
		32.365643, 39.390884, 57.358971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972027, 39.454651, 58.021168>,  <32.922497, 38.991989, 57.503193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972027, 39.454651, 58.021168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603668, 39.428864, 57.867397>,  <32.382652, 39.413391, 57.775135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603668, 39.428864, 57.867397>,  <32.972027, 39.454651, 58.021168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603668, 39.428864, 57.867397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353416, -0.277942, 0.893222,
		-0.164432, 0.958432, 0.233173,
		-0.920901, -0.064467, -0.384428,
		32.327396, 39.409523, 57.752068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523373, 39.747921, 58.541767>,  <32.972027, 39.454651, 58.021168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523373, 39.747921, 58.541767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252071, 39.552734, 58.321999>,  <32.089291, 39.435623, 58.190136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252071, 39.552734, 58.321999>,  <32.523373, 39.747921, 58.541767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252071, 39.552734, 58.321999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436815, -0.333507, 0.835443,
		-0.590907, 0.806634, 0.013048,
		-0.678249, -0.487970, -0.549422,
		32.048595, 39.406345, 58.157173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938160, 40.105816, 58.717957>,  <32.523373, 39.747921, 58.541767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938160, 40.105816, 58.717957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856819, 39.743099, 58.570236>,  <31.808014, 39.525471, 58.481606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856819, 39.743099, 58.570236>,  <31.938160, 40.105816, 58.717957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856819, 39.743099, 58.570236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639612, -0.162546, 0.751316,
		-0.741313, 0.388990, -0.546939,
		-0.203352, -0.906788, -0.369300,
		31.795815, 39.471062, 58.459446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256971, 40.053982, 58.718399>,  <31.938160, 40.105816, 58.717957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256971, 40.053982, 58.718399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352839, 39.668140, 58.674393>,  <31.410358, 39.436638, 58.647987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352839, 39.668140, 58.674393>,  <31.256971, 40.053982, 58.718399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352839, 39.668140, 58.674393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726945, -0.253412, 0.638227,
		-0.643515, -0.072982, -0.761946,
		0.239665, -0.964601, -0.110021,
		31.424738, 39.378761, 58.641388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666595, 39.708809, 58.459682>,  <31.256971, 40.053982, 58.718399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666595, 39.708809, 58.459682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881226, 39.432667, 58.653793>,  <31.010004, 39.266983, 58.770260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881226, 39.432667, 58.653793>,  <30.666595, 39.708809, 58.459682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881226, 39.432667, 58.653793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732670, -0.095817, 0.673806,
		-0.418667, -0.717098, -0.557215,
		0.536576, -0.690355, 0.485281,
		31.042198, 39.225559, 58.799377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147371, 39.243999, 58.617966>,  <30.666595, 39.708809, 58.459682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147371, 39.243999, 58.617966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437281, 39.133553, 58.870461>,  <30.611227, 39.067284, 59.021957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437281, 39.133553, 58.870461>,  <30.147371, 39.243999, 58.617966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437281, 39.133553, 58.870461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647840, 0.038748, 0.760790,
		-0.234530, -0.960341, -0.150800,
		0.724775, -0.276122, 0.631236,
		30.654713, 39.050716, 59.059830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907890, 38.682182, 59.086140>,  <30.147371, 39.243999, 58.617966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907890, 38.682182, 59.086140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220604, 38.851894, 59.268917>,  <30.408232, 38.953720, 59.378582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220604, 38.851894, 59.268917>,  <29.907890, 38.682182, 59.086140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220604, 38.851894, 59.268917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566597, 0.177402, 0.804672,
		0.260341, -0.887985, 0.379084,
		0.781787, 0.424276, 0.456945,
		30.455139, 38.979179, 59.406002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864393, 38.456581, 59.810604>,  <29.907890, 38.682182, 59.086140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864393, 38.456581, 59.810604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112387, 38.770420, 59.812786>,  <30.261183, 38.958725, 59.814095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112387, 38.770420, 59.812786>,  <29.864393, 38.456581, 59.810604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112387, 38.770420, 59.812786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381959, 0.295732, 0.875585,
		0.685368, -0.544931, 0.483033,
		0.619982, 0.784597, 0.005456,
		30.298382, 39.005798, 59.814423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076942, 38.493557, 60.552368>,  <29.864393, 38.456581, 59.810604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076942, 38.493557, 60.552368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144735, 38.854641, 60.394184>,  <30.185411, 39.071293, 60.299274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144735, 38.854641, 60.394184>,  <30.076942, 38.493557, 60.552368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144735, 38.854641, 60.394184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211348, 0.425221, 0.880068,
		0.962605, -0.065576, 0.262853,
		0.169482, 0.902711, -0.395460,
		30.195580, 39.125454, 60.275547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503151, 39.018349, 61.039932>,  <30.076942, 38.493557, 60.552368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503151, 39.018349, 61.039932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177620, 38.863667, 61.213432>,  <29.982302, 38.770859, 61.317532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177620, 38.863667, 61.213432>,  <30.503151, 39.018349, 61.039932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177620, 38.863667, 61.213432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332275, -0.922038, -0.198594,
		0.476734, -0.017497, 0.878873,
		-0.813829, -0.386704, 0.433753,
		29.933472, 38.747654, 61.343559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698267, 38.510204, 61.545708>,  <30.503151, 39.018349, 61.039932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698267, 38.510204, 61.545708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328247, 38.389427, 61.453522>,  <30.106236, 38.316959, 61.398212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328247, 38.389427, 61.453522>,  <30.698267, 38.510204, 61.545708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328247, 38.389427, 61.453522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327742, -0.941165, -0.082422,
		-0.192016, -0.151777, 0.969584,
		-0.925049, -0.301947, -0.230462,
		30.050732, 38.298843, 61.384384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657457, 37.937771, 61.866917>,  <30.698267, 38.510204, 61.545708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657457, 37.937771, 61.866917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374285, 37.909893, 61.585781>,  <30.204382, 37.893166, 61.417099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374285, 37.909893, 61.585781>,  <30.657457, 37.937771, 61.866917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374285, 37.909893, 61.585781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269422, -0.946519, -0.177519,
		-0.652875, -0.315031, 0.688847,
		-0.707931, -0.069693, -0.702835,
		30.161905, 37.888985, 61.374931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389807, 37.300545, 61.976696>,  <30.657457, 37.937771, 61.866917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389807, 37.300545, 61.976696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277050, 37.383026, 61.601887>,  <30.209396, 37.432514, 61.376999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277050, 37.383026, 61.601887>,  <30.389807, 37.300545, 61.976696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277050, 37.383026, 61.601887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365976, -0.879682, -0.303681,
		-0.886906, -0.428533, 0.172505,
		-0.281887, 0.206203, -0.937027,
		30.192482, 37.444885, 61.320778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263603, 36.683853, 61.706181>,  <30.389807, 37.300545, 61.976696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263603, 36.683853, 61.706181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323803, 36.912514, 61.383549>,  <30.359922, 37.049709, 61.189972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323803, 36.912514, 61.383549>,  <30.263603, 36.683853, 61.706181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323803, 36.912514, 61.383549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379953, -0.786653, -0.486634,
		-0.912680, -0.233222, -0.335593,
		0.150501, 0.571651, -0.806576,
		30.368954, 37.084007, 61.141575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101542, 36.232872, 61.247726>,  <30.263603, 36.683853, 61.706181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101542, 36.232872, 61.247726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303661, 36.500313, 61.029499>,  <30.424934, 36.660778, 60.898563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303661, 36.500313, 61.029499>,  <30.101542, 36.232872, 61.247726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303661, 36.500313, 61.029499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446624, -0.743583, -0.497605,
		-0.738375, 0.007776, -0.674346,
		0.505302, 0.668598, -0.545570,
		30.455252, 36.700893, 60.865829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132378, 35.960423, 60.562969>,  <30.101542, 36.232872, 61.247726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132378, 35.960423, 60.562969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443472, 36.211521, 60.576027>,  <30.630129, 36.362179, 60.583862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443472, 36.211521, 60.576027>,  <30.132378, 35.960423, 60.562969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443472, 36.211521, 60.576027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622388, -0.761737, -0.179974,
		-0.088110, 0.160291, -0.983129,
		0.777734, 0.627745, 0.032646,
		30.676792, 36.399845, 60.585819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872625, 35.627068, 59.949135>,  <30.132378, 35.960423, 60.562969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872625, 35.627068, 59.949135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830866, 35.243668, 60.055256>,  <29.805809, 35.013630, 60.118931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830866, 35.243668, 60.055256>,  <29.872625, 35.627068, 59.949135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830866, 35.243668, 60.055256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900616, 0.204279, 0.383616,
		-0.421891, -0.198889, -0.884563,
		-0.104401, -0.958495, 0.265307,
		29.799545, 34.956120, 60.134850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277634, 35.450363, 59.624405>,  <29.872625, 35.627068, 59.949135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277634, 35.450363, 59.624405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305592, 35.163818, 59.902092>,  <29.322367, 34.991890, 60.068707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305592, 35.163818, 59.902092>,  <29.277634, 35.450363, 59.624405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305592, 35.163818, 59.902092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900762, 0.253717, 0.352499,
		-0.428652, -0.649965, -0.627537,
		0.069895, -0.716361, 0.694220,
		29.326561, 34.948910, 60.110359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789087, 34.977619, 59.517525>,  <29.277634, 35.450363, 59.624405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789087, 34.977619, 59.517525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880383, 34.967236, 59.906830>,  <28.935160, 34.961006, 60.140411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880383, 34.967236, 59.906830>,  <28.789087, 34.977619, 59.517525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880383, 34.967236, 59.906830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949706, 0.214193, 0.228428,
		-0.214394, -0.976446, 0.024237,
		0.228239, -0.025955, 0.973260,
		28.948854, 34.959450, 60.198807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164583, 34.656940, 59.814163>,  <28.789087, 34.977619, 59.517525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164583, 34.656940, 59.814163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356836, 34.826939, 60.120983>,  <28.472189, 34.928940, 60.305077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356836, 34.826939, 60.120983>,  <28.164583, 34.656940, 59.814163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356836, 34.826939, 60.120983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873104, 0.150402, 0.463755,
		0.081727, -0.892614, 0.443352,
		0.480635, 0.424994, 0.767053,
		28.501026, 34.954437, 60.351097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735014, 34.503532, 60.385010>,  <28.164583, 34.656940, 59.814163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735014, 34.503532, 60.385010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939547, 34.813408, 60.533817>,  <28.062267, 34.999332, 60.623100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939547, 34.813408, 60.533817>,  <27.735014, 34.503532, 60.385010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939547, 34.813408, 60.533817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826562, 0.324845, 0.459642,
		0.235229, -0.542528, 0.806431,
		0.511334, 0.774686, 0.372020,
		28.092947, 35.045815, 60.645424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454113, 34.585045, 61.154236>,  <27.735014, 34.503532, 60.385010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454113, 34.585045, 61.154236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644808, 34.912090, 61.025101>,  <27.759226, 35.108318, 60.947620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644808, 34.912090, 61.025101>,  <27.454113, 34.585045, 61.154236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644808, 34.912090, 61.025101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769992, 0.565586, 0.295338,
		0.424066, 0.107784, 0.899194,
		0.476739, 0.817616, -0.322839,
		27.787830, 35.157375, 60.928249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362078, 35.069908, 61.750519>,  <27.454113, 34.585045, 61.154236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362078, 35.069908, 61.750519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447212, 35.301029, 61.435345>,  <27.498293, 35.439701, 61.246239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447212, 35.301029, 61.435345>,  <27.362078, 35.069908, 61.750519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447212, 35.301029, 61.435345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699201, 0.653356, 0.290250,
		0.682510, 0.489149, 0.543059,
		0.212835, 0.577805, -0.787935,
		27.511063, 35.474373, 61.198963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607180, 35.789688, 61.992332>,  <27.362078, 35.069908, 61.750519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607180, 35.789688, 61.992332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477699, 35.835777, 61.616684>,  <27.400011, 35.863430, 61.391296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477699, 35.835777, 61.616684>,  <27.607180, 35.789688, 61.992332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477699, 35.835777, 61.616684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617574, 0.726232, 0.301974,
		0.716812, 0.677724, -0.163922,
		-0.323700, 0.115225, -0.939117,
		27.380589, 35.870346, 61.334949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672262, 36.481464, 61.911377>,  <27.607180, 35.789688, 61.992332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672262, 36.481464, 61.911377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396322, 36.359570, 61.648701>,  <27.230759, 36.286434, 61.491096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396322, 36.359570, 61.648701>,  <27.672262, 36.481464, 61.911377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396322, 36.359570, 61.648701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627490, 0.704084, 0.332448,
		0.361058, 0.641407, -0.676930,
		-0.689850, -0.304734, -0.656692,
		27.189367, 36.268150, 61.451694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<38.182095, 34.333549, 48.560909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.107662, 34.542984, 48.228348>,  <38.063004, 34.668644, 48.028812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.107662, 34.542984, 48.228348>,  <38.182095, 34.333549, 48.560909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107662, 34.542984, 48.228348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868137, 0.308650, 0.388681,
		0.460121, 0.794097, 0.397112,
		-0.186082, 0.523588, -0.831402,
		38.051838, 34.700062, 47.978928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174755, 35.095905, 48.697842>,  <38.182095, 34.333549, 48.560909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174755, 35.095905, 48.697842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953804, 35.064259, 48.365910>,  <37.821232, 35.045273, 48.166752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953804, 35.064259, 48.365910>,  <38.174755, 35.095905, 48.697842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953804, 35.064259, 48.365910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765915, 0.441083, 0.467782,
		0.329015, 0.893972, -0.304240,
		-0.552379, -0.079115, -0.829830,
		37.788090, 35.040524, 48.116962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846600, 35.690872, 48.731064>,  <38.174755, 35.095905, 48.697842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846600, 35.690872, 48.731064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.633362, 35.483120, 48.463913>,  <37.505421, 35.358471, 48.303623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.633362, 35.483120, 48.463913>,  <37.846600, 35.690872, 48.731064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633362, 35.483120, 48.463913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838216, 0.431452, 0.333532,
		0.114929, 0.737629, -0.665353,
		-0.533091, -0.519377, -0.667879,
		37.473434, 35.327309, 48.263550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321503, 36.113045, 48.566761>,  <37.846600, 35.690872, 48.731064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321503, 36.113045, 48.566761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.186798, 35.752403, 48.458168>,  <37.105976, 35.536018, 48.393013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.186798, 35.752403, 48.458168>,  <37.321503, 36.113045, 48.566761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186798, 35.752403, 48.458168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925831, 0.264533, 0.269923,
		-0.171547, 0.342248, -0.923817,
		-0.336761, -0.901603, -0.271484,
		37.085770, 35.481922, 48.376724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752163, 36.257534, 48.152508>,  <37.321503, 36.113045, 48.566761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752163, 36.257534, 48.152508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.728279, 35.883717, 48.292824>,  <36.713947, 35.659424, 48.377014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.728279, 35.883717, 48.292824>,  <36.752163, 36.257534, 48.152508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728279, 35.883717, 48.292824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982753, 0.116653, 0.143487,
		-0.175016, -0.336173, -0.925396,
		-0.059714, -0.934548, 0.350791,
		36.710365, 35.603352, 48.398060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224354, 35.992657, 47.821789>,  <36.752163, 36.257534, 48.152508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224354, 35.992657, 47.821789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.238316, 35.747536, 48.137573>,  <36.246693, 35.600464, 48.327045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.238316, 35.747536, 48.137573>,  <36.224354, 35.992657, 47.821789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238316, 35.747536, 48.137573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992485, 0.071446, 0.099341,
		-0.117281, -0.786997, -0.605706,
		0.034906, -0.612806, 0.789463,
		36.248787, 35.563694, 48.374413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672386, 35.678295, 47.737759>,  <36.224354, 35.992657, 47.821789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672386, 35.678295, 47.737759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757744, 35.548168, 48.106243>,  <35.808960, 35.470093, 48.327335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757744, 35.548168, 48.106243>,  <35.672386, 35.678295, 47.737759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757744, 35.548168, 48.106243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970814, -0.176262, 0.162643,
		0.109464, -0.929031, -0.353438,
		0.213398, -0.325319, 0.921211,
		35.821762, 35.450573, 48.382607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345848, 35.129517, 47.840027>,  <35.672386, 35.678295, 47.737759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345848, 35.129517, 47.840027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.402348, 35.249939, 48.217262>,  <35.436249, 35.322193, 48.443604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.402348, 35.249939, 48.217262>,  <35.345848, 35.129517, 47.840027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402348, 35.249939, 48.217262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966892, -0.162555, 0.196710,
		0.212525, -0.939648, 0.268131,
		0.141252, 0.301059, 0.943086,
		35.444725, 35.340256, 48.500187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920132, 34.703381, 48.150120>,  <35.345848, 35.129517, 47.840027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920132, 34.703381, 48.150120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.981785, 34.988224, 48.424095>,  <35.018776, 35.159130, 48.588482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.981785, 34.988224, 48.424095>,  <34.920132, 34.703381, 48.150120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981785, 34.988224, 48.424095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975224, -0.001694, 0.221213,
		0.158688, -0.702065, 0.694206,
		0.154130, 0.712110, 0.684940,
		35.028023, 35.201859, 48.629578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616528, 34.426720, 48.629646>,  <34.920132, 34.703381, 48.150120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616528, 34.426720, 48.629646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.635883, 34.817043, 48.714928>,  <34.647499, 35.051239, 48.766094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.635883, 34.817043, 48.714928>,  <34.616528, 34.426720, 48.629646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635883, 34.817043, 48.714928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949517, -0.021295, 0.312993,
		0.309961, -0.217583, 0.925517,
		0.048393, 0.975810, 0.213199,
		34.650402, 35.109787, 48.778889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222919, 34.478374, 49.153133>,  <34.616528, 34.426720, 48.629646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222919, 34.478374, 49.153133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.264362, 34.862881, 49.050968>,  <34.289227, 35.093586, 48.989670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.264362, 34.862881, 49.050968>,  <34.222919, 34.478374, 49.153133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264362, 34.862881, 49.050968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969423, 0.155029, 0.190225,
		0.222452, 0.227891, 0.947935,
		0.103607, 0.961266, -0.255409,
		34.295444, 35.151260, 48.974346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938866, 34.835308, 49.675880>,  <34.222919, 34.478374, 49.153133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938866, 34.835308, 49.675880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.931702, 35.080723, 49.360096>,  <33.927402, 35.227974, 49.170624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.931702, 35.080723, 49.360096>,  <33.938866, 34.835308, 49.675880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931702, 35.080723, 49.360096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967619, 0.188201, 0.168210,
		0.251781, 0.766910, 0.590301,
		-0.017906, 0.613538, -0.789462,
		33.926331, 35.264786, 49.123257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689747, 35.609940, 49.765575>,  <33.938866, 34.835308, 49.675880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689747, 35.609940, 49.765575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.585052, 35.503273, 49.394547>,  <33.522236, 35.439274, 49.171928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.585052, 35.503273, 49.394547>,  <33.689747, 35.609940, 49.765575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585052, 35.503273, 49.394547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956700, 0.198501, 0.212891,
		0.127354, 0.943127, -0.307072,
		-0.261737, -0.266663, -0.927569,
		33.506531, 35.423275, 49.116276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243404, 35.487354, 50.436691>,  <33.689747, 35.609940, 49.765575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243404, 35.487354, 50.436691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.490852, 35.643856, 50.709229>,  <33.639320, 35.737755, 50.872749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.490852, 35.643856, 50.709229>,  <33.243404, 35.487354, 50.436691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490852, 35.643856, 50.709229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405092, 0.584212, -0.703276,
		-0.673206, 0.711069, 0.202915,
		0.618623, 0.391250, 0.681344,
		33.676437, 35.761230, 50.913631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820244, 35.308384, 51.042164>,  <33.243404, 35.487354, 50.436691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820244, 35.308384, 51.042164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.664425, 34.945862, 51.107716>,  <32.570934, 34.728348, 51.147045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.664425, 34.945862, 51.107716>,  <32.820244, 35.308384, 51.042164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664425, 34.945862, 51.107716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899796, 0.336537, -0.277687,
		0.196520, -0.255627, -0.946591,
		-0.389547, -0.906310, 0.163876,
		32.547562, 34.673969, 51.156879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252842, 35.363811, 50.516193>,  <32.820244, 35.308384, 51.042164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252842, 35.363811, 50.516193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.163353, 35.079754, 50.783222>,  <32.109657, 34.909321, 50.943439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.163353, 35.079754, 50.783222>,  <32.252842, 35.363811, 50.516193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163353, 35.079754, 50.783222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971315, 0.105823, -0.212952,
		0.080582, -0.696062, -0.713446,
		-0.223726, -0.710140, 0.667568,
		32.096233, 34.866711, 50.983494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625862, 34.916592, 50.266434>,  <32.252842, 35.363811, 50.516193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625862, 34.916592, 50.266434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.648083, 34.850704, 50.660343>,  <31.661415, 34.811172, 50.896690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.648083, 34.850704, 50.660343>,  <31.625862, 34.916592, 50.266434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648083, 34.850704, 50.660343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998339, 0.005936, 0.057310,
		-0.015286, -0.986322, -0.164117,
		0.055552, -0.164720, 0.984775,
		31.664749, 34.801289, 50.955776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054785, 34.496796, 50.348915>,  <31.625862, 34.916592, 50.266434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054785, 34.496796, 50.348915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.138891, 34.626110, 50.717972>,  <31.189356, 34.703701, 50.939407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.138891, 34.626110, 50.717972>,  <31.054785, 34.496796, 50.348915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138891, 34.626110, 50.717972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974437, -0.007070, 0.224549,
		0.079116, -0.946275, 0.313535,
		0.210268, 0.323286, 0.922645,
		31.201971, 34.723095, 50.994766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588894, 34.132011, 50.819698>,  <31.054785, 34.496796, 50.348915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588894, 34.132011, 50.819698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.709696, 34.456413, 51.020126>,  <30.782177, 34.651054, 51.140381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.709696, 34.456413, 51.020126>,  <30.588894, 34.132011, 50.819698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709696, 34.456413, 51.020126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953237, 0.263258, 0.148439,
		-0.011526, -0.522466, 0.852582,
		0.302004, 0.811002, 0.501069,
		30.800297, 34.699715, 51.170448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404682, 33.897358, 51.400257>,  <30.588894, 34.132011, 50.819698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404682, 33.897358, 51.400257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.422298, 34.296917, 51.406647>,  <30.432867, 34.536652, 51.410480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.422298, 34.296917, 51.406647>,  <30.404682, 33.897358, 51.400257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422298, 34.296917, 51.406647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981650, 0.040297, 0.186386,
		0.185538, -0.023893, 0.982347,
		0.044039, 0.998902, 0.015978,
		30.435511, 34.596588, 51.411442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088547, 34.051701, 52.051224>,  <30.404682, 33.897358, 51.400257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088547, 34.051701, 52.051224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.059017, 34.356239, 51.793571>,  <30.041300, 34.538963, 51.638981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.059017, 34.356239, 51.793571>,  <30.088547, 34.051701, 52.051224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059017, 34.356239, 51.793571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961950, 0.116012, 0.247373,
		0.263063, 0.637882, 0.723813,
		-0.073824, 0.761346, -0.644129,
		30.036871, 34.584644, 51.600334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572271, 34.536587, 52.359310>,  <30.088547, 34.051701, 52.051224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572271, 34.536587, 52.359310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.579302, 34.712070, 51.999928>,  <29.583519, 34.817360, 51.784298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.579302, 34.712070, 51.999928>,  <29.572271, 34.536587, 52.359310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579302, 34.712070, 51.999928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890524, 0.415430, 0.185431,
		0.454596, 0.796840, 0.397980,
		0.017574, 0.438707, -0.898458,
		29.584574, 34.843681, 51.730389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182400, 35.206387, 52.435246>,  <29.572271, 34.536587, 52.359310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182400, 35.206387, 52.435246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.214193, 35.132030, 52.043507>,  <29.233269, 35.087418, 51.808464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.214193, 35.132030, 52.043507>,  <29.182400, 35.206387, 52.435246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214193, 35.132030, 52.043507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969905, 0.212408, -0.119032,
		0.230148, 0.959338, -0.163410,
		0.079483, -0.185887, -0.979351,
		29.238039, 35.076263, 51.749702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770603, 35.717880, 52.053871>,  <29.182400, 35.206387, 52.435246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770603, 35.717880, 52.053871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.806383, 35.407368, 51.804268>,  <28.827850, 35.221062, 51.654507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.806383, 35.407368, 51.804268>,  <28.770603, 35.717880, 52.053871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806383, 35.407368, 51.804268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988742, 0.006241, -0.149498,
		0.119947, 0.630355, -0.766985,
		0.089450, -0.776282, -0.624007,
		28.833218, 35.174484, 51.617065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415693, 35.905563, 51.506477>,  <28.770603, 35.717880, 52.053871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415693, 35.905563, 51.506477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.420345, 35.505608, 51.502838>,  <28.423136, 35.265633, 51.500656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.420345, 35.505608, 51.502838>,  <28.415693, 35.905563, 51.506477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420345, 35.505608, 51.502838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991660, -0.010364, -0.128464,
		0.128356, 0.010513, -0.991672,
		0.011628, -0.999891, -0.009095,
		28.423834, 35.205639, 51.500111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995798, 35.769028, 50.959877>,  <28.415693, 35.905563, 51.506477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995798, 35.769028, 50.959877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.003063, 35.434147, 51.178513>,  <28.007421, 35.233219, 51.309692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.003063, 35.434147, 51.178513>,  <27.995798, 35.769028, 50.959877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003063, 35.434147, 51.178513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999797, -0.019980, 0.002616,
		0.008731, -0.546524, -0.837398,
		0.018161, -0.837206, 0.546587,
		28.008511, 35.182983, 51.342487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411661, 35.282631, 50.785183>,  <27.995798, 35.769028, 50.959877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411661, 35.282631, 50.785183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.515717, 35.154099, 51.149399>,  <27.578150, 35.076981, 51.367928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.515717, 35.154099, 51.149399>,  <27.411661, 35.282631, 50.785183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515717, 35.154099, 51.149399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965501, -0.097987, 0.241261,
		0.011698, -0.941886, -0.335728,
		0.260137, -0.321324, 0.910538,
		27.593758, 35.057701, 51.422558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946064, 34.605663, 50.872128>,  <27.411661, 35.282631, 50.785183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946064, 34.605663, 50.872128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.083679, 34.746891, 51.220146>,  <27.166248, 34.831627, 51.428955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.083679, 34.746891, 51.220146>,  <26.946064, 34.605663, 50.872128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083679, 34.746891, 51.220146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933964, 0.033267, 0.355815,
		0.096684, -0.935005, 0.341201,
		0.344040, 0.353071, 0.870044,
		27.186892, 34.852814, 51.481159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660509, 34.142265, 51.352352>,  <26.946064, 34.605663, 50.872128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.660509, 34.142265, 51.352352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.759893, 34.483978, 51.534988>,  <26.819523, 34.689007, 51.644569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.759893, 34.483978, 51.534988>,  <26.660509, 34.142265, 51.352352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759893, 34.483978, 51.534988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897801, 0.026148, 0.439624,
		0.363622, -0.519158, 0.773469,
		0.248459, 0.854278, 0.456592,
		26.834431, 34.740261, 51.671967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303373, 34.152435, 51.957600>,  <26.660509, 34.142265, 51.352352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303373, 34.152435, 51.957600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.372808, 34.546314, 51.963795>,  <26.414469, 34.782642, 51.967510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.372808, 34.546314, 51.963795>,  <26.303373, 34.152435, 51.957600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372808, 34.546314, 51.963795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863558, 0.144633, 0.483062,
		0.473430, -0.097226, 0.875449,
		0.173585, 0.984697, 0.015487,
		26.424885, 34.841724, 51.968441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.147747, 34.409725, 52.688938>,  <26.303373, 34.152435, 51.957600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.147747, 34.409725, 52.688938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.104534, 34.719997, 52.440212>,  <26.078606, 34.906162, 52.290977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.104534, 34.719997, 52.440212>,  <26.147747, 34.409725, 52.688938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104534, 34.719997, 52.440212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899263, 0.190423, 0.393781,
		0.423856, 0.601714, 0.676968,
		-0.108034, 0.775680, -0.621811,
		26.072124, 34.952702, 52.253670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806097, 34.948441, 53.036625>,  <26.147747, 34.409725, 52.688938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806097, 34.948441, 53.036625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.737795, 35.050419, 52.655922>,  <25.696814, 35.111607, 52.427498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.737795, 35.050419, 52.655922>,  <25.806097, 34.948441, 53.036625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737795, 35.050419, 52.655922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886691, 0.381473, 0.261262,
		0.429678, 0.888528, 0.160918,
		-0.170753, 0.254943, -0.951760,
		25.686569, 35.126904, 52.370396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.522953, 35.646862, 53.029675>,  <25.806097, 34.948441, 53.036625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.522953, 35.646862, 53.029675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.399561, 35.497787, 52.679600>,  <25.325525, 35.408344, 52.469555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.399561, 35.497787, 52.679600>,  <25.522953, 35.646862, 53.029675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.399561, 35.497787, 52.679600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908341, 0.388567, 0.154702,
		0.282412, 0.842688, -0.458389,
		-0.308480, -0.372684, -0.875184,
		25.307016, 35.385983, 52.417046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.997932, 36.161991, 52.758160>,  <25.522953, 35.646862, 53.029675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.997932, 36.161991, 52.758160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.917519, 35.856155, 52.513214>,  <24.869270, 35.672653, 52.366245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.917519, 35.856155, 52.513214>,  <24.997932, 36.161991, 52.758160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.917519, 35.856155, 52.513214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924549, 0.354681, -0.139322,
		0.323719, 0.538155, -0.778200,
		-0.201036, -0.764585, -0.612367,
		24.857208, 35.626781, 52.329502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.699373, 36.457539, 52.085964>,  <24.997932, 36.161991, 52.758160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.699373, 36.457539, 52.085964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.597046, 36.072407, 52.120640>,  <24.535648, 35.841328, 52.141445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.597046, 36.072407, 52.120640>,  <24.699373, 36.457539, 52.085964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.597046, 36.072407, 52.120640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965729, 0.258596, 0.022271,
		-0.043861, -0.078021, -0.995986,
		-0.255820, -0.962829, 0.086690,
		24.520300, 35.783558, 52.146648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<37.322289, 31.354332, 50.058708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.944096, 31.429605, 49.952385>,  <36.717182, 31.474770, 49.888592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.944096, 31.429605, 49.952385>,  <37.322289, 31.354332, 50.058708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944096, 31.429605, 49.952385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231835, 0.184332, 0.955131,
		0.228738, 0.964681, -0.130654,
		-0.945479, 0.188184, -0.265811,
		36.660450, 31.486061, 49.872643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105492, 31.961750, 50.405495>,  <37.322289, 31.354332, 50.058708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105492, 31.961750, 50.405495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.767498, 31.776209, 50.299030>,  <36.564701, 31.664885, 50.235153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.767498, 31.776209, 50.299030>,  <37.105492, 31.961750, 50.405495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767498, 31.776209, 50.299030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404103, 0.227814, 0.885890,
		-0.350288, 0.856120, -0.379944,
		-0.844985, -0.463853, -0.266160,
		36.514004, 31.637053, 50.219181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507519, 32.414421, 50.484184>,  <37.105492, 31.961750, 50.405495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507519, 32.414421, 50.484184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.364632, 32.041759, 50.510765>,  <36.278900, 31.818163, 50.526714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.364632, 32.041759, 50.510765>,  <36.507519, 32.414421, 50.484184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364632, 32.041759, 50.510765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575314, 0.275524, 0.770130,
		-0.735805, 0.236872, -0.634415,
		-0.357219, -0.931653, 0.066457,
		36.257465, 31.762264, 50.530701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817741, 32.528255, 50.645226>,  <36.507519, 32.414421, 50.484184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817741, 32.528255, 50.645226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.905731, 32.146500, 50.725979>,  <35.958527, 31.917446, 50.774433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.905731, 32.146500, 50.725979>,  <35.817741, 32.528255, 50.645226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905731, 32.146500, 50.725979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470130, 0.077617, 0.879178,
		-0.854744, -0.288312, -0.431612,
		0.219976, -0.954385, 0.201887,
		35.971725, 31.860184, 50.786545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264492, 32.308575, 50.998875>,  <35.817741, 32.528255, 50.645226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264492, 32.308575, 50.998875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.567287, 32.062046, 51.085705>,  <35.748962, 31.914129, 51.137802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.567287, 32.062046, 51.085705>,  <35.264492, 32.308575, 50.998875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567287, 32.062046, 51.085705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321191, -0.061655, 0.945005,
		-0.569045, -0.785076, -0.244630,
		0.756984, -0.616323, 0.217075,
		35.794384, 31.877150, 51.150826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884418, 31.864691, 51.358864>,  <35.264492, 32.308575, 50.998875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884418, 31.864691, 51.358864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.274117, 31.827309, 51.440952>,  <35.507935, 31.804880, 51.490204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.274117, 31.827309, 51.440952>,  <34.884418, 31.864691, 51.358864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274117, 31.827309, 51.440952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203214, 0.030626, 0.978655,
		-0.097744, -0.995152, 0.010846,
		0.974243, -0.093454, 0.205223,
		35.566391, 31.799273, 51.502518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822750, 31.623682, 51.985939>,  <34.884418, 31.864691, 51.358864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822750, 31.623682, 51.985939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.215549, 31.697298, 51.968906>,  <35.451229, 31.741467, 51.958687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.215549, 31.697298, 51.968906>,  <34.822750, 31.623682, 51.985939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215549, 31.697298, 51.968906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033169, 0.053924, 0.997994,
		0.185966, -0.981438, 0.046849,
		0.981996, 0.184039, -0.042582,
		35.510147, 31.752510, 51.956131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195152, 31.248875, 52.422565>,  <34.822750, 31.623682, 51.985939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195152, 31.248875, 52.422565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.448925, 31.555540, 52.383118>,  <35.601189, 31.739540, 52.359447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.448925, 31.555540, 52.383118>,  <35.195152, 31.248875, 52.422565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448925, 31.555540, 52.383118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038573, 0.158823, 0.986553,
		0.772019, -0.622093, 0.130335,
		0.634428, 0.766665, -0.098619,
		35.639252, 31.785540, 52.353531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724327, 31.157785, 53.004448>,  <35.195152, 31.248875, 52.422565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724327, 31.157785, 53.004448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.703110, 31.541803, 52.894539>,  <35.690380, 31.772215, 52.828594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.703110, 31.541803, 52.894539>,  <35.724327, 31.157785, 53.004448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703110, 31.541803, 52.894539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264327, 0.251847, 0.930969,
		0.962974, 0.122007, 0.240408,
		-0.053039, 0.960046, -0.274772,
		35.687199, 31.829817, 52.812107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967403, 31.537575, 53.573860>,  <35.724327, 31.157785, 53.004448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967403, 31.537575, 53.573860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.810604, 31.850725, 53.380596>,  <35.716526, 32.038616, 53.264637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.810604, 31.850725, 53.380596>,  <35.967403, 31.537575, 53.573860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810604, 31.850725, 53.380596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148767, 0.464338, 0.873074,
		0.907857, 0.414123, -0.065554,
		-0.391999, 0.782875, -0.483160,
		35.693005, 32.085587, 53.235649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306076, 32.237358, 53.827854>,  <35.967403, 31.537575, 53.573860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306076, 32.237358, 53.827854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.937309, 32.287487, 53.681236>,  <35.716049, 32.317566, 53.593266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.937309, 32.287487, 53.681236>,  <36.306076, 32.237358, 53.827854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937309, 32.287487, 53.681236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266201, 0.482458, 0.834489,
		0.281426, 0.866907, -0.411426,
		-0.921920, 0.125324, -0.366548,
		35.660732, 32.325085, 53.571274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008526, 32.999203, 54.043816>,  <36.306076, 32.237358, 53.827854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008526, 32.999203, 54.043816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.709641, 32.760571, 53.926670>,  <35.530308, 32.617393, 53.856384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.709641, 32.760571, 53.926670>,  <36.008526, 32.999203, 54.043816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709641, 32.760571, 53.926670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555666, 0.319088, 0.767736,
		-0.364564, 0.736397, -0.569924,
		-0.747214, -0.596576, -0.292863,
		35.485477, 32.581596, 53.838810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910080, 33.775764, 54.147572>,  <36.008526, 32.999203, 54.043816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910080, 33.775764, 54.147572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.256462, 33.898491, 54.305546>,  <36.464291, 33.972126, 54.400330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.256462, 33.898491, 54.305546>,  <35.910080, 33.775764, 54.147572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256462, 33.898491, 54.305546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442052, -0.100265, -0.891368,
		-0.233890, 0.946472, -0.222455,
		0.865959, 0.306819, 0.394939,
		36.516251, 33.990536, 54.424026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174583, 34.162857, 53.667530>,  <35.910080, 33.775764, 54.147572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174583, 34.162857, 53.667530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.513210, 34.121529, 53.876392>,  <36.716389, 34.096733, 54.001709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.513210, 34.121529, 53.876392>,  <36.174583, 34.162857, 53.667530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513210, 34.121529, 53.876392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512958, -0.103544, -0.852146,
		0.142108, 0.989244, -0.034659,
		0.846569, -0.103319, 0.522155,
		36.767181, 34.090534, 54.033039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564266, 34.679039, 53.441273>,  <36.174583, 34.162857, 53.667530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564266, 34.679039, 53.441273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822445, 34.412689, 53.590939>,  <36.977352, 34.252880, 53.680740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822445, 34.412689, 53.590939>,  <36.564266, 34.679039, 53.441273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822445, 34.412689, 53.590939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647129, 0.216521, -0.730987,
		0.405733, 0.713950, 0.570663,
		0.645449, -0.665878, 0.374168,
		37.016079, 34.212925, 53.703190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290096, 34.968361, 53.474716>,  <36.564266, 34.679039, 53.441273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290096, 34.968361, 53.474716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.341179, 34.571735, 53.483574>,  <37.371826, 34.333759, 53.488888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.341179, 34.571735, 53.483574>,  <37.290096, 34.968361, 53.474716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341179, 34.571735, 53.483574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810626, 0.091483, -0.578374,
		0.571470, 0.091809, 0.815471,
		0.127702, -0.991565, 0.022143,
		37.379490, 34.274265, 53.490215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942142, 34.950211, 53.478394>,  <37.290096, 34.968361, 53.474716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942142, 34.950211, 53.478394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.840034, 34.582760, 53.357750>,  <37.778770, 34.362289, 53.285362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.840034, 34.582760, 53.357750>,  <37.942142, 34.950211, 53.478394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840034, 34.582760, 53.357750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616820, 0.085497, -0.782447,
		0.744561, -0.385773, 0.544801,
		-0.255268, -0.918624, -0.301611,
		37.763454, 34.307175, 53.267265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573048, 34.678635, 53.381912>,  <37.942142, 34.950211, 53.478394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573048, 34.678635, 53.381912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309475, 34.453808, 53.181957>,  <38.151333, 34.318913, 53.061985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309475, 34.453808, 53.181957>,  <38.573048, 34.678635, 53.381912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309475, 34.453808, 53.181957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579322, 0.044682, -0.813873,
		0.479789, -0.825883, 0.296177,
		-0.658930, -0.562069, -0.499890,
		38.111797, 34.285187, 53.031990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944828, 34.224098, 53.119282>,  <38.573048, 34.678635, 53.381912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944828, 34.224098, 53.119282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.615097, 34.198975, 52.894238>,  <38.417259, 34.183903, 52.759209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.615097, 34.198975, 52.894238>,  <38.944828, 34.224098, 53.119282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615097, 34.198975, 52.894238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549739, 0.148466, -0.822037,
		0.135152, -0.986921, -0.087862,
		-0.824331, -0.062799, -0.562615,
		38.367798, 34.180134, 52.725452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967388, 33.645271, 52.703285>,  <38.944828, 34.224098, 53.119282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967388, 33.645271, 52.703285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.736435, 33.921761, 52.529465>,  <38.597862, 34.087654, 52.425171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.736435, 33.921761, 52.529465>,  <38.967388, 33.645271, 52.703285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736435, 33.921761, 52.529465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635740, 0.046655, -0.770492,
		-0.512309, -0.721133, -0.466377,
		-0.577386, 0.691224, -0.434551,
		38.563221, 34.129128, 52.399101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236416, 33.773853, 51.953285>,  <38.967388, 33.645271, 52.703285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236416, 33.773853, 51.953285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930618, 34.031528, 51.962845>,  <38.747139, 34.186134, 51.968582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930618, 34.031528, 51.962845>,  <39.236416, 33.773853, 51.953285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930618, 34.031528, 51.962845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209411, 0.283240, -0.935907,
		-0.609669, -0.710491, -0.351436,
		-0.764494, 0.644188, 0.023898,
		38.701271, 34.224785, 51.970013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010616, 33.729687, 51.349159>,  <39.236416, 33.773853, 51.953285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010616, 33.729687, 51.349159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.882488, 34.085999, 51.478096>,  <38.805611, 34.299786, 51.555458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.882488, 34.085999, 51.478096>,  <39.010616, 33.729687, 51.349159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882488, 34.085999, 51.478096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066076, 0.360447, -0.930436,
		-0.945001, -0.276742, -0.174319,
		-0.320324, 0.890782, 0.322337,
		38.786392, 34.353233, 51.574799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582333, 33.846931, 50.885265>,  <39.010616, 33.729687, 51.349159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582333, 33.846931, 50.885265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.677856, 34.192104, 51.063400>,  <38.735168, 34.399208, 51.170280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.677856, 34.192104, 51.063400>,  <38.582333, 33.846931, 50.885265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677856, 34.192104, 51.063400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165693, 0.415666, -0.894297,
		-0.956827, 0.287353, -0.043717,
		0.238807, 0.862931, 0.445333,
		38.749500, 34.450985, 51.196999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234722, 34.394543, 50.566780>,  <38.582333, 33.846931, 50.885265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234722, 34.394543, 50.566780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.545872, 34.575115, 50.741650>,  <38.732563, 34.683460, 50.846573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.545872, 34.575115, 50.741650>,  <38.234722, 34.394543, 50.566780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545872, 34.575115, 50.741650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252500, 0.412523, -0.875253,
		-0.575464, 0.791222, 0.206904,
		0.777873, 0.451433, 0.437176,
		38.779232, 34.710545, 50.872803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130863, 35.163551, 50.461102>,  <38.234722, 34.394543, 50.566780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130863, 35.163551, 50.461102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506901, 35.030746, 50.492073>,  <38.732521, 34.951061, 50.510654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506901, 35.030746, 50.492073>,  <38.130863, 35.163551, 50.461102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506901, 35.030746, 50.492073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226291, 0.437812, -0.870122,
		0.254994, 0.835516, 0.486715,
		0.940091, -0.332015, 0.077430,
		38.788929, 34.931141, 50.515301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492741, 35.792744, 50.333374>,  <38.130863, 35.163551, 50.461102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492741, 35.792744, 50.333374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.748737, 35.489513, 50.283199>,  <38.902336, 35.307575, 50.253094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.748737, 35.489513, 50.283199>,  <38.492741, 35.792744, 50.333374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748737, 35.489513, 50.283199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389365, 0.460687, -0.797598,
		0.662426, 0.461613, 0.590003,
		0.639989, -0.758077, -0.125435,
		38.940735, 35.262089, 50.245567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465565, 36.207104, 49.722252>,  <38.492741, 35.792744, 50.333374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465565, 36.207104, 49.722252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.658825, 36.542572, 49.822811>,  <38.774780, 36.743855, 49.883144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.658825, 36.542572, 49.822811>,  <38.465565, 36.207104, 49.722252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658825, 36.542572, 49.822811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714171, -0.211407, -0.667283,
		-0.506483, 0.501937, -0.701095,
		0.483151, 0.838669, 0.251395,
		38.803768, 36.794174, 49.898232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609623, 36.578968, 49.097248>,  <38.465565, 36.207104, 49.722252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609623, 36.578968, 49.097248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.871723, 36.666557, 49.386440>,  <39.028984, 36.719112, 49.559956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.871723, 36.666557, 49.386440>,  <38.609623, 36.578968, 49.097248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871723, 36.666557, 49.386440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752857, -0.110663, -0.648814,
		-0.062068, 0.969434, -0.237370,
		0.655251, 0.218976, 0.722977,
		39.068298, 36.732250, 49.603333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038513, 37.117931, 48.892265>,  <38.609623, 36.578968, 49.097248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038513, 37.117931, 48.892265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.242306, 36.972717, 49.204327>,  <39.364582, 36.885590, 49.391563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.242306, 36.972717, 49.204327>,  <39.038513, 37.117931, 48.892265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242306, 36.972717, 49.204327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846720, 0.050000, -0.529683,
		0.153284, 0.930434, 0.332860,
		0.509479, -0.363032, 0.780153,
		39.395149, 36.863808, 49.438374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587231, 37.501938, 48.441319>,  <39.038513, 37.117931, 48.892265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587231, 37.501938, 48.441319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278336, 37.605618, 48.209293>,  <38.092999, 37.667824, 48.070080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278336, 37.605618, 48.209293>,  <38.587231, 37.501938, 48.441319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278336, 37.605618, 48.209293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336244, 0.607921, 0.719286,
		0.539069, 0.750499, -0.382303,
		-0.772233, 0.259197, -0.580062,
		38.046665, 37.683376, 48.035275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407356, 38.285370, 48.449333>,  <38.587231, 37.501938, 48.441319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407356, 38.285370, 48.449333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.080341, 38.063717, 48.386642>,  <37.884132, 37.930725, 48.349026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.080341, 38.063717, 48.386642>,  <38.407356, 38.285370, 48.449333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080341, 38.063717, 48.386642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545458, 0.657844, 0.519342,
		-0.184682, 0.510072, -0.840071,
		-0.817538, -0.554137, -0.156731,
		37.835079, 37.897476, 48.339622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816570, 38.735107, 48.225071>,  <38.407356, 38.285370, 48.449333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816570, 38.735107, 48.225071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.634907, 38.399651, 48.345348>,  <37.525909, 38.198376, 48.417515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.634907, 38.399651, 48.345348>,  <37.816570, 38.735107, 48.225071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634907, 38.399651, 48.345348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662836, 0.543583, 0.514943,
		-0.595305, 0.034556, -0.802757,
		-0.454159, -0.838644, 0.300692,
		37.498657, 38.148056, 48.435555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093258, 38.944614, 48.075172>,  <37.816570, 38.735107, 48.225071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093258, 38.944614, 48.075172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.108242, 38.644169, 48.338818>,  <37.117233, 38.463902, 48.497005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.108242, 38.644169, 48.338818>,  <37.093258, 38.944614, 48.075172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108242, 38.644169, 48.338818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620689, 0.499427, 0.604415,
		-0.783161, -0.431748, -0.447496,
		0.037463, -0.751110, 0.659113,
		37.119480, 38.418835, 48.536552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369270, 38.836098, 48.358379>,  <37.093258, 38.944614, 48.075172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369270, 38.836098, 48.358379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621323, 38.687122, 48.630917>,  <36.772556, 38.597736, 48.794437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621323, 38.687122, 48.630917>,  <36.369270, 38.836098, 48.358379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621323, 38.687122, 48.630917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560158, 0.389624, 0.731038,
		-0.537730, -0.842309, 0.036893,
		0.630135, -0.372435, 0.681338,
		36.810364, 38.575394, 48.835320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929161, 38.687828, 48.878391>,  <36.369270, 38.836098, 48.358379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929161, 38.687828, 48.878391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.291992, 38.710377, 49.045261>,  <36.509689, 38.723904, 49.145382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.291992, 38.710377, 49.045261>,  <35.929161, 38.687828, 48.878391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291992, 38.710377, 49.045261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418551, 0.226690, 0.879447,
		-0.044997, -0.972335, 0.229218,
		0.907078, 0.056367, 0.417172,
		36.564117, 38.727287, 49.170414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870113, 38.216766, 49.522793>,  <35.929161, 38.687828, 48.878391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870113, 38.216766, 49.522793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.185425, 38.454227, 49.587524>,  <36.374611, 38.596703, 49.626362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.185425, 38.454227, 49.587524>,  <35.870113, 38.216766, 49.522793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185425, 38.454227, 49.587524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422010, 0.330212, 0.844315,
		0.447792, -0.733851, 0.510828,
		0.788283, 0.593651, 0.161827,
		36.421909, 38.632324, 49.636074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085655, 38.068447, 50.187237>,  <35.870113, 38.216766, 49.522793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085655, 38.068447, 50.187237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218170, 38.428719, 50.074783>,  <36.297680, 38.644882, 50.007313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218170, 38.428719, 50.074783>,  <36.085655, 38.068447, 50.187237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218170, 38.428719, 50.074783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522667, 0.423241, 0.740058,
		0.785538, -0.098231, 0.610967,
		0.331283, 0.900676, -0.281130,
		36.317554, 38.698921, 49.990444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450253, 38.337254, 50.887032>,  <36.085655, 38.068447, 50.187237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450253, 38.337254, 50.887032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.377480, 38.645538, 50.642765>,  <36.333817, 38.830509, 50.496204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.377480, 38.645538, 50.642765>,  <36.450253, 38.337254, 50.887032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377480, 38.645538, 50.642765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511659, 0.456133, 0.728113,
		0.839706, 0.444919, 0.311354,
		-0.181933, 0.770707, -0.610664,
		36.322899, 38.876751, 50.459564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539024, 38.956882, 51.285248>,  <36.450253, 38.337254, 50.887032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539024, 38.956882, 51.285248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316414, 39.041458, 50.963860>,  <36.182846, 39.092201, 50.771027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316414, 39.041458, 50.963860>,  <36.539024, 38.956882, 51.285248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316414, 39.041458, 50.963860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653845, 0.485203, 0.580573,
		0.512601, 0.848453, -0.131784,
		-0.556531, 0.211436, -0.803473,
		36.149456, 39.104889, 50.722816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368927, 39.641514, 51.300247>,  <36.539024, 38.956882, 51.285248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368927, 39.641514, 51.300247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.071060, 39.509693, 51.068089>,  <35.892338, 39.430599, 50.928791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.071060, 39.509693, 51.068089>,  <36.368927, 39.641514, 51.300247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071060, 39.509693, 51.068089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647576, 0.567287, 0.508753,
		0.161593, 0.754706, -0.635852,
		-0.744670, -0.329552, -0.580399,
		35.847660, 39.410828, 50.893970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975773, 40.176750, 51.129944>,  <36.368927, 39.641514, 51.300247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975773, 40.176750, 51.129944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.730003, 39.866806, 51.070515>,  <35.582542, 39.680840, 51.034859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.730003, 39.866806, 51.070515>,  <35.975773, 40.176750, 51.129944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730003, 39.866806, 51.070515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722374, 0.476767, 0.500868,
		-0.317268, 0.415070, -0.852677,
		-0.614424, -0.774861, -0.148573,
		35.545677, 39.634346, 51.025944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380016, 40.499485, 51.195389>,  <35.975773, 40.176750, 51.129944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380016, 40.499485, 51.195389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.315525, 40.105717, 51.223450>,  <35.276829, 39.869457, 51.240288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.315525, 40.105717, 51.223450>,  <35.380016, 40.499485, 51.195389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315525, 40.105717, 51.223450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725543, 0.166419, 0.667752,
		-0.669023, 0.056764, -0.741071,
		-0.161233, -0.984420, 0.070153,
		35.267155, 39.810390, 51.244495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670055, 40.373795, 51.041557>,  <35.380016, 40.499485, 51.195389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670055, 40.373795, 51.041557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.801758, 40.082653, 51.282162>,  <34.880779, 39.907967, 51.426525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.801758, 40.082653, 51.282162>,  <34.670055, 40.373795, 51.041557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801758, 40.082653, 51.282162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729007, 0.208916, 0.651846,
		-0.600115, -0.653130, -0.461825,
		0.329258, -0.727857, 0.601510,
		34.900536, 39.864296, 51.462616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098591, 40.008675, 51.161427>,  <34.670055, 40.373795, 51.041557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098591, 40.008675, 51.161427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.365536, 39.909912, 51.442474>,  <34.525703, 39.850655, 51.611103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.365536, 39.909912, 51.442474>,  <34.098591, 40.008675, 51.161427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365536, 39.909912, 51.442474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731589, -0.040852, 0.680521,
		-0.139320, -0.968179, -0.207895,
		0.667359, -0.246904, 0.702617,
		34.565742, 39.835842, 51.653259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748852, 39.640388, 51.647995>,  <34.098591, 40.008675, 51.161427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748852, 39.640388, 51.647995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.068932, 39.714306, 51.876221>,  <34.260979, 39.758656, 52.013157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.068932, 39.714306, 51.876221>,  <33.748852, 39.640388, 51.647995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068932, 39.714306, 51.876221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545133, -0.172515, 0.820408,
		0.250036, -0.967517, -0.037309,
		0.800195, 0.184793, 0.570560,
		34.308990, 39.769745, 52.047390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754162, 39.215199, 52.243057>,  <33.748852, 39.640388, 51.647995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754162, 39.215199, 52.243057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.001842, 39.507618, 52.357712>,  <34.150452, 39.683071, 52.426506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.001842, 39.507618, 52.357712>,  <33.754162, 39.215199, 52.243057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001842, 39.507618, 52.357712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494246, 0.079188, 0.865708,
		0.610175, -0.677716, 0.410351,
		0.619199, 0.731048, 0.286640,
		34.187603, 39.726933, 52.443703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946880, 39.099930, 52.979759>,  <33.754162, 39.215199, 52.243057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946880, 39.099930, 52.979759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.017403, 39.488747, 52.917725>,  <34.059715, 39.722038, 52.880505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.017403, 39.488747, 52.917725>,  <33.946880, 39.099930, 52.979759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017403, 39.488747, 52.917725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487451, 0.223099, 0.844167,
		0.855165, -0.073239, 0.513156,
		0.176310, 0.972040, -0.155086,
		34.070297, 39.780357, 52.871201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324280, 39.270256, 53.570011>,  <33.946880, 39.099930, 52.979759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324280, 39.270256, 53.570011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.228367, 39.631008, 53.426277>,  <34.170818, 39.847458, 53.340038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.228367, 39.631008, 53.426277>,  <34.324280, 39.270256, 53.570011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228367, 39.631008, 53.426277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276163, 0.291474, 0.915848,
		0.930719, 0.318840, 0.179175,
		-0.239784, 0.901878, -0.359332,
		34.156433, 39.901573, 53.318478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666283, 39.684093, 54.003777>,  <34.324280, 39.270256, 53.570011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666283, 39.684093, 54.003777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.364674, 39.906807, 53.864380>,  <34.183708, 40.040436, 53.780743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.364674, 39.906807, 53.864380>,  <34.666283, 39.684093, 54.003777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364674, 39.906807, 53.864380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292709, 0.190133, 0.937108,
		0.588023, 0.808606, 0.019610,
		-0.754023, 0.556781, -0.348490,
		34.138466, 40.073841, 53.759834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600292, 40.200745, 54.557167>,  <34.666283, 39.684093, 54.003777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600292, 40.200745, 54.557167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.263809, 40.231750, 54.343117>,  <34.061920, 40.250355, 54.214687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.263809, 40.231750, 54.343117>,  <34.600292, 40.200745, 54.557167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263809, 40.231750, 54.343117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532916, 0.048583, 0.844772,
		0.091481, 0.995807, 0.000441,
		-0.841208, 0.077516, -0.535126,
		34.011448, 40.255005, 54.182579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288803, 40.821201, 54.793144>,  <34.600292, 40.200745, 54.557167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288803, 40.821201, 54.793144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.994530, 40.600445, 54.636078>,  <33.817966, 40.467991, 54.541840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.994530, 40.600445, 54.636078>,  <34.288803, 40.821201, 54.793144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994530, 40.600445, 54.636078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523206, 0.094883, 0.846908,
		-0.430144, 0.828501, -0.358556,
		-0.735685, -0.551891, -0.392663,
		33.773823, 40.434879, 54.518280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722740, 41.164314, 54.953098>,  <34.288803, 40.821201, 54.793144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722740, 41.164314, 54.953098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.576809, 40.798496, 54.883232>,  <33.489250, 40.579006, 54.841312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.576809, 40.798496, 54.883232>,  <33.722740, 41.164314, 54.953098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576809, 40.798496, 54.883232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485533, 0.026803, 0.873807,
		-0.794456, 0.403592, -0.453821,
		-0.364825, -0.914546, -0.174663,
		33.467361, 40.524132, 54.830833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936699, 41.204716, 55.056316>,  <33.722740, 41.164314, 54.953098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936699, 41.204716, 55.056316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.054775, 40.824028, 55.089993>,  <33.125622, 40.595615, 55.110199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.054775, 40.824028, 55.089993>,  <32.936699, 41.204716, 55.056316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054775, 40.824028, 55.089993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718995, -0.163244, 0.675572,
		-0.629211, -0.259959, -0.732471,
		0.295192, -0.951721, 0.084194,
		33.143333, 40.538513, 55.115250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283943, 40.748558, 55.022766>,  <32.936699, 41.204716, 55.056316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283943, 40.748558, 55.022766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.575424, 40.532356, 55.190979>,  <32.750313, 40.402634, 55.291904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.575424, 40.532356, 55.190979>,  <32.283943, 40.748558, 55.022766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575424, 40.532356, 55.190979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597363, -0.201402, 0.776269,
		-0.334883, -0.816878, -0.469641,
		0.728705, -0.540506, 0.420527,
		32.794037, 40.370205, 55.317139>
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
