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
	right 1.6 * <1, 0, 0>
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<23.118902, 17.230896, -1.993538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.906677, 17.024883, -1.724243>,  <22.779343, 16.901276, -1.562667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.906677, 17.024883, -1.724243>,  <23.118902, 17.230896, -1.993538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.906677, 17.024883, -1.724243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615491, 0.312020, 0.723750,
		-0.582818, 0.798364, 0.151452,
		-0.530560, -0.515032, 0.673237,
		22.747509, 16.870373, -1.522272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.936628, 17.665331, -1.341563>,  <23.118902, 17.230896, -1.993538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.936628, 17.665331, -1.341563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.933464, 17.272503, -1.266223>,  <22.931564, 17.036806, -1.221019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.933464, 17.272503, -1.266223>,  <22.936628, 17.665331, -1.341563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.933464, 17.272503, -1.266223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501096, 0.159105, 0.850640,
		-0.865355, 0.101112, 0.490853,
		-0.007913, -0.982070, 0.188350,
		22.931089, 16.977882, -1.209718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.676954, 17.443235, -0.583216>,  <22.936628, 17.665331, -1.341563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.676954, 17.443235, -0.583216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.925304, 17.143585, -0.675585>,  <23.074314, 16.963795, -0.731007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.925304, 17.143585, -0.675585>,  <22.676954, 17.443235, -0.583216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.925304, 17.143585, -0.675585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463478, 0.113223, 0.878845,
		-0.632218, -0.652682, 0.417500,
		0.620877, -0.749124, -0.230922,
		23.111567, 16.918848, -0.744862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.648897, 16.994732, -0.010526>,  <22.676954, 17.443235, -0.583216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.648897, 16.994732, -0.010526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.998646, 16.946896, -0.198643>,  <23.208494, 16.918194, -0.311513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.998646, 16.946896, -0.198643>,  <22.648897, 16.994732, -0.010526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.998646, 16.946896, -0.198643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467653, -0.051025, 0.882438,
		-0.129532, -0.991511, 0.011314,
		0.874370, -0.119595, -0.470292,
		23.260958, 16.911018, -0.339731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.176016, 16.383078, 0.278909>,  <22.648897, 16.994732, -0.010526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.176016, 16.383078, 0.278909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.340267, 16.702633, 0.103108>,  <23.438818, 16.894365, -0.002373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.340267, 16.702633, 0.103108>,  <23.176016, 16.383078, 0.278909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.340267, 16.702633, 0.103108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534172, 0.179867, 0.826019,
		0.738949, -0.573956, -0.352885,
		0.410627, 0.798888, -0.439504,
		23.463455, 16.942299, -0.028744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.960548, 16.257090, 0.068128>,  <23.176016, 16.383078, 0.278909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.960548, 16.257090, 0.068128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.866871, 16.631065, 0.174741>,  <23.810665, 16.855452, 0.238709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.866871, 16.631065, 0.174741>,  <23.960548, 16.257090, 0.068128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.866871, 16.631065, 0.174741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574786, -0.087952, 0.813564,
		0.784075, 0.343731, -0.516792,
		-0.234194, 0.934940, 0.266533,
		23.796612, 16.911547, 0.254701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.569019, 16.599445, 0.296116>,  <23.960548, 16.257090, 0.068128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.569019, 16.599445, 0.296116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.261585, 16.769142, 0.487655>,  <24.077124, 16.870960, 0.602578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.261585, 16.769142, 0.487655>,  <24.569019, 16.599445, 0.296116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.261585, 16.769142, 0.487655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454477, -0.164709, 0.875398,
		0.450251, 0.890443, -0.066215,
		-0.768586, 0.424242, 0.478846,
		24.031010, 16.896416, 0.631309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.765995, 17.087633, 0.778301>,  <24.569019, 16.599445, 0.296116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.765995, 17.087633, 0.778301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.411430, 16.962650, 0.914915>,  <24.198692, 16.887661, 0.996884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.411430, 16.962650, 0.914915>,  <24.765995, 17.087633, 0.778301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.411430, 16.962650, 0.914915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400105, -0.146113, 0.904747,
		-0.232793, 0.938627, 0.254533,
		-0.886410, -0.312459, 0.341535,
		24.145508, 16.868912, 1.017376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.885416, 17.254980, 1.417930>,  <24.765995, 17.087633, 0.778301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.885416, 17.254980, 1.417930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.571163, 17.010555, 1.456689>,  <24.382612, 16.863901, 1.479944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.571163, 17.010555, 1.456689>,  <24.885416, 17.254980, 1.417930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.571163, 17.010555, 1.456689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265789, -0.191912, 0.944736,
		-0.558694, 0.767969, 0.313185,
		-0.785631, -0.611060, 0.096898,
		24.335474, 16.827238, 1.485758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.473339, 17.486563, 1.983563>,  <24.885416, 17.254980, 1.417930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.473339, 17.486563, 1.983563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474220, 17.088013, 1.949546>,  <24.474749, 16.848883, 1.929136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474220, 17.088013, 1.949546>,  <24.473339, 17.486563, 1.983563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.474220, 17.088013, 1.949546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253732, -0.081702, 0.963818,
		-0.967272, -0.023700, 0.252632,
		0.002202, -0.996375, -0.085042,
		24.474880, 16.789101, 1.924034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.928879, 17.138748, 2.474424>,  <24.473339, 17.486563, 1.983563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.928879, 17.138748, 2.474424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272091, 16.962090, 2.369556>,  <24.478018, 16.856094, 2.306635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272091, 16.962090, 2.369556>,  <23.928879, 17.138748, 2.474424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.272091, 16.962090, 2.369556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166304, -0.244051, 0.955396,
		-0.485929, -0.863359, -0.135956,
		0.858030, -0.441645, -0.262172,
		24.529499, 16.829596, 2.290904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.983309, 16.419046, 2.705527>,  <23.928879, 17.138748, 2.474424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.983309, 16.419046, 2.705527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323135, 16.629868, 2.697033>,  <24.527031, 16.756359, 2.691937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323135, 16.629868, 2.697033>,  <23.983309, 16.419046, 2.705527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.323135, 16.629868, 2.697033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072064, -0.076093, 0.994493,
		0.522533, -0.846420, -0.102628,
		0.849568, 0.527052, -0.021235,
		24.578007, 16.787983, 2.690663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.537598, 16.102591, 3.193950>,  <23.983309, 16.419046, 2.705527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.537598, 16.102591, 3.193950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544159, 16.497166, 3.128624>,  <24.548096, 16.733912, 3.089428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544159, 16.497166, 3.128624>,  <24.537598, 16.102591, 3.193950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.544159, 16.497166, 3.128624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066480, 0.161899, 0.984565,
		0.997653, -0.027006, -0.062923,
		0.016402, 0.986438, -0.163315,
		24.549080, 16.793097, 3.079629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.115547, 16.436642, 3.532829>,  <24.537598, 16.102591, 3.193950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.115547, 16.436642, 3.532829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.795483, 16.672329, 3.487999>,  <24.603443, 16.813742, 3.461100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.795483, 16.672329, 3.487999>,  <25.115547, 16.436642, 3.532829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.795483, 16.672329, 3.487999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065694, 0.099639, 0.992853,
		0.596175, 0.801806, -0.041019,
		-0.800162, 0.589219, -0.112076,
		24.555433, 16.849094, 3.454376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.217192, 17.181812, 3.806506>,  <25.115547, 16.436642, 3.532829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.217192, 17.181812, 3.806506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838436, 17.054413, 3.824220>,  <24.611183, 16.977974, 3.834849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838436, 17.054413, 3.824220>,  <25.217192, 17.181812, 3.806506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.838436, 17.054413, 3.824220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012626, 0.100788, 0.994828,
		-0.321314, 0.942550, -0.091414,
		-0.946888, -0.318498, 0.044285,
		24.554369, 16.958864, 3.837506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.883272, 17.585682, 4.253110>,  <25.217192, 17.181812, 3.806506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.883272, 17.585682, 4.253110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686760, 17.237709, 4.270381>,  <24.568853, 17.028925, 4.280743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686760, 17.237709, 4.270381>,  <24.883272, 17.585682, 4.253110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.686760, 17.237709, 4.270381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065666, 0.012436, 0.997764,
		-0.868523, 0.493017, 0.051016,
		-0.491280, -0.869931, 0.043176,
		24.539375, 16.976730, 4.283334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.457956, 17.885551, 4.797437>,  <24.883272, 17.585682, 4.253110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.457956, 17.885551, 4.797437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.261463, 18.123955, 4.543362>,  <24.143568, 18.266996, 4.390916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.261463, 18.123955, 4.543362>,  <24.457956, 17.885551, 4.797437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.261463, 18.123955, 4.543362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004343, 0.727553, 0.686037,
		0.871018, 0.339761, -0.354809,
		-0.491231, 0.596010, -0.635188,
		24.114094, 18.302757, 4.352805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.702871, 18.554552, 4.941086>,  <24.457956, 17.885551, 4.797437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.702871, 18.554552, 4.941086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355930, 18.600899, 4.747477>,  <24.147766, 18.628706, 4.631311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355930, 18.600899, 4.747477>,  <24.702871, 18.554552, 4.941086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.355930, 18.600899, 4.747477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164906, 0.850682, 0.499145,
		0.469584, 0.512752, -0.718732,
		-0.867350, 0.115867, -0.484023,
		24.095726, 18.635658, 4.602270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588593, 19.305721, 4.632578>,  <24.702871, 18.554552, 4.941086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588593, 19.305721, 4.632578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301865, 19.091629, 4.811328>,  <24.129827, 18.963173, 4.918578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301865, 19.091629, 4.811328>,  <24.588593, 19.305721, 4.632578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.301865, 19.091629, 4.811328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284375, 0.809593, 0.513507,
		-0.636631, 0.241012, -0.732539,
		-0.716820, -0.535231, 0.446875,
		24.086819, 18.931061, 4.945390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.247030, 19.789816, 5.020604>,  <24.588593, 19.305721, 4.632578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.247030, 19.789816, 5.020604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.031784, 19.470631, 5.129187>,  <23.902637, 19.279119, 5.194336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.031784, 19.470631, 5.129187>,  <24.247030, 19.789816, 5.020604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.031784, 19.470631, 5.129187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605440, 0.590002, 0.534173,
		-0.586410, 0.123094, -0.800607,
		-0.538113, -0.797963, 0.271457,
		23.870350, 19.231241, 5.210624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.666792, 19.946209, 4.804254>,  <24.247030, 19.789816, 5.020604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.666792, 19.946209, 4.804254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.584866, 19.690025, 5.100325>,  <23.535709, 19.536314, 5.277967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.584866, 19.690025, 5.100325>,  <23.666792, 19.946209, 4.804254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.584866, 19.690025, 5.100325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741442, 0.595197, 0.309847,
		-0.638995, -0.485337, -0.596769,
		-0.204815, -0.640460, 0.740177,
		23.523420, 19.497887, 5.322378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.037512, 19.476814, 4.743085>,  <23.666792, 19.946209, 4.804254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.037512, 19.476814, 4.743085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.102760, 19.550117, 5.130860>,  <23.141909, 19.594099, 5.363525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.102760, 19.550117, 5.130860>,  <23.037512, 19.476814, 4.743085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.102760, 19.550117, 5.130860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903573, 0.422305, 0.072206,
		-0.396166, -0.887736, 0.234475,
		0.163120, 0.183259, 0.969437,
		23.151697, 19.605095, 5.421691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.674757, 19.094704, 5.138310>,  <23.037512, 19.476814, 4.743085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.674757, 19.094704, 5.138310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.745567, 19.444458, 5.319027>,  <22.788054, 19.654310, 5.427457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.745567, 19.444458, 5.319027>,  <22.674757, 19.094704, 5.138310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.745567, 19.444458, 5.319027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965170, 0.244077, -0.094198,
		-0.192637, -0.419380, 0.887137,
		0.177025, 0.874384, 0.451791,
		22.798676, 19.706774, 5.454565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.020544, 19.222696, 5.580665>,  <22.674757, 19.094704, 5.138310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.020544, 19.222696, 5.580665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.244156, 19.548256, 5.517350>,  <22.378323, 19.743591, 5.479362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.244156, 19.548256, 5.517350>,  <22.020544, 19.222696, 5.580665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.244156, 19.548256, 5.517350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828449, 0.556122, -0.066335,
		0.034036, 0.168216, 0.985162,
		0.559029, 0.813899, -0.158287,
		22.411865, 19.792425, 5.469864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.885902, 19.630154, 6.112441>,  <22.020544, 19.222696, 5.580665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.885902, 19.630154, 6.112441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.991825, 19.825581, 5.779892>,  <22.055380, 19.942837, 5.580363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.991825, 19.825581, 5.779892>,  <21.885902, 19.630154, 6.112441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.991825, 19.825581, 5.779892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791256, 0.602874, 0.102255,
		0.551171, 0.630750, 0.546227,
		0.264809, 0.488566, -0.831372,
		22.071268, 19.972151, 5.530480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.008789, 20.367390, 6.178716>,  <21.885902, 19.630154, 6.112441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.008789, 20.367390, 6.178716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.907799, 20.328518, 5.793632>,  <21.847204, 20.305195, 5.562581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.907799, 20.328518, 5.793632>,  <22.008789, 20.367390, 6.178716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.907799, 20.328518, 5.793632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665466, 0.739719, 0.099852,
		0.702432, 0.665861, -0.251432,
		-0.252477, -0.097180, -0.962711,
		21.832056, 20.299364, 5.504818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.035505, 21.041233, 5.694298>,  <22.008789, 20.367390, 6.178716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.035505, 21.041233, 5.694298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.740269, 20.801056, 5.571212>,  <21.563126, 20.656950, 5.497360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.740269, 20.801056, 5.571212>,  <22.035505, 21.041233, 5.694298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.740269, 20.801056, 5.571212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666049, 0.721233, 0.190267,
		0.107690, 0.345388, -0.932261,
		-0.738093, -0.600441, -0.307715,
		21.518841, 20.620924, 5.478897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.652769, 21.338013, 5.005719>,  <22.035505, 21.041233, 5.694298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.652769, 21.338013, 5.005719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.440556, 21.125378, 5.269825>,  <21.313229, 20.997797, 5.428288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.440556, 21.125378, 5.269825>,  <21.652769, 21.338013, 5.005719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.440556, 21.125378, 5.269825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650560, 0.754697, 0.084881,
		-0.543422, -0.384509, -0.746221,
		-0.530533, -0.531587, 0.660265,
		21.281395, 20.965902, 5.467905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.941814, 21.378147, 4.735689>,  <21.652769, 21.338013, 5.005719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.941814, 21.378147, 4.735689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.957577, 21.351406, 5.134482>,  <20.967033, 21.335361, 5.373759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.957577, 21.351406, 5.134482>,  <20.941814, 21.378147, 4.735689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.957577, 21.351406, 5.134482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576149, 0.813679, 0.077331,
		-0.816395, -0.577458, -0.006454,
		0.039404, -0.066851, 0.996984,
		20.969398, 21.331350, 5.433578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.265186, 21.362154, 5.039378>,  <20.941814, 21.378147, 4.735689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.265186, 21.362154, 5.039378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.477146, 21.468269, 5.361578>,  <20.604322, 21.531939, 5.554898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.477146, 21.468269, 5.361578>,  <20.265186, 21.362154, 5.039378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.477146, 21.468269, 5.361578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712704, 0.654084, 0.253431,
		-0.459632, -0.708376, 0.535670,
		0.529897, 0.265289, 0.805500,
		20.636116, 21.547855, 5.603228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.794832, 21.354887, 5.653368>,  <20.265186, 21.362154, 5.039378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.794832, 21.354887, 5.653368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.105194, 21.601913, 5.704874>,  <20.291412, 21.750130, 5.735778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.105194, 21.601913, 5.704874>,  <19.794832, 21.354887, 5.653368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.105194, 21.601913, 5.704874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630222, 0.767910, 0.114599,
		-0.028108, -0.170070, 0.985031,
		0.775905, 0.617567, 0.128766,
		20.337965, 21.787184, 5.743504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.504602, 20.703295, 5.850149>,  <19.794832, 21.354887, 5.653368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.504602, 20.703295, 5.850149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.669060, 20.393337, 5.658106>,  <19.767735, 20.207363, 5.542880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.669060, 20.393337, 5.658106>,  <19.504602, 20.703295, 5.850149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.669060, 20.393337, 5.658106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504517, -0.245228, 0.827844,
		-0.759226, -0.582584, 0.290123,
		0.411143, -0.774892, -0.480107,
		19.792402, 20.160870, 5.514073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.677429, 20.278164, 6.349785>,  <19.504602, 20.703295, 5.850149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.677429, 20.278164, 6.349785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.871056, 20.072506, 6.066566>,  <19.987230, 19.949110, 5.896634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.871056, 20.072506, 6.066566>,  <19.677429, 20.278164, 6.349785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.871056, 20.072506, 6.066566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539705, -0.461497, 0.704088,
		-0.688768, -0.722962, 0.054093,
		0.484064, -0.514147, -0.708050,
		20.016275, 19.918262, 5.854151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.562336, 19.609081, 6.345311>,  <19.677429, 20.278164, 6.349785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.562336, 19.609081, 6.345311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.951401, 19.624050, 6.253637>,  <20.184839, 19.633032, 6.198633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.951401, 19.624050, 6.253637>,  <19.562336, 19.609081, 6.345311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.951401, 19.624050, 6.253637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230917, -0.260210, 0.937533,
		-0.024550, -0.964826, -0.261739,
		0.972663, 0.037424, -0.229183,
		20.243200, 19.635277, 6.184882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.999294, 19.075630, 6.720096>,  <19.562336, 19.609081, 6.345311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.999294, 19.075630, 6.720096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.286377, 19.341103, 6.635788>,  <20.458626, 19.500385, 6.585203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.286377, 19.341103, 6.635788>,  <19.999294, 19.075630, 6.720096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.286377, 19.341103, 6.635788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485259, -0.259601, 0.834944,
		0.499420, -0.701523, -0.508374,
		0.717707, 0.663681, -0.210771,
		20.501690, 19.540207, 6.572556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.641413, 18.559155, 6.727148>,  <19.999294, 19.075630, 6.720096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.641413, 18.559155, 6.727148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.681351, 18.947098, 6.816060>,  <20.705313, 19.179863, 6.869408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.681351, 18.947098, 6.816060>,  <20.641413, 18.559155, 6.727148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.681351, 18.947098, 6.816060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593763, -0.237336, 0.768842,
		0.798421, 0.055219, -0.599562,
		0.099843, 0.969857, 0.222281,
		20.711304, 19.238054, 6.882744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.280659, 18.785240, 6.671606>,  <20.641413, 18.559155, 6.727148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.280659, 18.785240, 6.671606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.136055, 19.057407, 6.926586>,  <21.049292, 19.220707, 7.079574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.136055, 19.057407, 6.926586>,  <21.280659, 18.785240, 6.671606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.136055, 19.057407, 6.926586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687518, -0.267271, 0.675192,
		0.629784, 0.682349, -0.371177,
		-0.361512, 0.680416, 0.637450,
		21.027601, 19.261532, 7.117821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.834229, 19.290775, 7.017741>,  <21.280659, 18.785240, 6.671606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.834229, 19.290775, 7.017741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.527691, 19.300873, 7.274515>,  <21.343769, 19.306932, 7.428580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.527691, 19.300873, 7.274515>,  <21.834229, 19.290775, 7.017741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.527691, 19.300873, 7.274515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642131, -0.000478, 0.766595,
		0.019660, 0.999681, -0.015845,
		-0.766343, 0.025246, 0.641935,
		21.297789, 19.308447, 7.467096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.054176, 19.661770, 7.613114>,  <21.834229, 19.290775, 7.017741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.054176, 19.661770, 7.613114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.719822, 19.489079, 7.748704>,  <21.519209, 19.385464, 7.830058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.719822, 19.489079, 7.748704>,  <22.054176, 19.661770, 7.613114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.719822, 19.489079, 7.748704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362809, 0.028859, 0.931417,
		-0.411901, 0.901542, 0.132512,
		-0.835887, -0.431728, 0.338974,
		21.469055, 19.359560, 7.850396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.026426, 19.963858, 8.235542>,  <22.054176, 19.661770, 7.613114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.026426, 19.963858, 8.235542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.766975, 19.661003, 8.266601>,  <21.611305, 19.479290, 8.285235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.766975, 19.661003, 8.266601>,  <22.026426, 19.963858, 8.235542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.766975, 19.661003, 8.266601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165469, -0.040702, 0.985375,
		-0.742903, 0.651988, 0.151683,
		-0.648626, -0.757136, 0.077646,
		21.572388, 19.433863, 8.289894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.603434, 20.100683, 8.812532>,  <22.026426, 19.963858, 8.235542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.603434, 20.100683, 8.812532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.600693, 19.703758, 8.763112>,  <21.599049, 19.465603, 8.733459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.600693, 19.703758, 8.763112>,  <21.603434, 20.100683, 8.812532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.600693, 19.703758, 8.763112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132753, -0.123364, 0.983442,
		-0.991125, -0.009664, 0.132578,
		-0.006852, -0.992314, -0.123552,
		21.598637, 19.406063, 8.726047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.137197, 19.866644, 9.271786>,  <21.603434, 20.100683, 8.812532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.137197, 19.866644, 9.271786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.382828, 19.561031, 9.192617>,  <21.530205, 19.377665, 9.145117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.382828, 19.561031, 9.192617>,  <21.137197, 19.866644, 9.271786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.382828, 19.561031, 9.192617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086478, -0.184125, 0.979091,
		-0.784497, -0.618349, -0.046995,
		0.614073, -0.764030, -0.197920,
		21.567049, 19.331821, 9.133242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.917412, 19.305494, 9.591315>,  <21.137197, 19.866644, 9.271786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.917412, 19.305494, 9.591315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.296619, 19.193268, 9.531253>,  <21.524143, 19.125933, 9.495215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.296619, 19.193268, 9.531253>,  <20.917412, 19.305494, 9.591315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.296619, 19.193268, 9.531253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064777, -0.291839, 0.954271,
		-0.311557, -0.914392, -0.258494,
		0.948017, -0.280566, -0.150156,
		21.581024, 19.109098, 9.486206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.074471, 18.813961, 10.168922>,  <20.917412, 19.305494, 9.591315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.074471, 18.813961, 10.168922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.443130, 18.877380, 10.027261>,  <21.664326, 18.915432, 9.942264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.443130, 18.877380, 10.027261>,  <21.074471, 18.813961, 10.168922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.443130, 18.877380, 10.027261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385981, -0.281078, 0.878643,
		0.039764, -0.946497, -0.320253,
		0.921649, 0.158549, -0.354153,
		21.719625, 18.924946, 9.921015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.436831, 18.234266, 10.395541>,  <21.074471, 18.813961, 10.168922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.436831, 18.234266, 10.395541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.673763, 18.550343, 10.332624>,  <21.815924, 18.739988, 10.294874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.673763, 18.550343, 10.332624>,  <21.436831, 18.234266, 10.395541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.673763, 18.550343, 10.332624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405075, -0.123316, 0.905929,
		0.696461, -0.600325, -0.393130,
		0.592331, 0.790192, -0.157292,
		21.851463, 18.787399, 10.285437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.111629, 18.003757, 10.602598>,  <21.436831, 18.234266, 10.395541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.111629, 18.003757, 10.602598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.107788, 18.403557, 10.614689>,  <22.105484, 18.643436, 10.621943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.107788, 18.403557, 10.614689>,  <22.111629, 18.003757, 10.602598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.107788, 18.403557, 10.614689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602656, -0.018338, 0.797790,
		0.797943, 0.025876, -0.602177,
		-0.009601, 0.999497, 0.030227,
		22.104908, 18.703405, 10.623757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.847952, 18.183081, 10.732272>,  <22.111629, 18.003757, 10.602598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.847952, 18.183081, 10.732272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.599545, 18.483814, 10.820891>,  <22.450500, 18.664255, 10.874063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.599545, 18.483814, 10.820891>,  <22.847952, 18.183081, 10.732272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.599545, 18.483814, 10.820891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479521, 0.140852, 0.866152,
		0.619997, 0.644133, -0.447992,
		-0.621018, 0.751833, 0.221548,
		22.413239, 18.709364, 10.887356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.299046, 18.670649, 11.010583>,  <22.847952, 18.183081, 10.732272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.299046, 18.670649, 11.010583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.937431, 18.791302, 11.131734>,  <22.720463, 18.863693, 11.204424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.937431, 18.791302, 11.131734>,  <23.299046, 18.670649, 11.010583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.937431, 18.791302, 11.131734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372709, 0.209297, 0.904037,
		0.209297, 0.930168, -0.301633,
		-0.904037, 0.301633, 0.302877,
		22.666220, 18.881792, 11.222597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.410089, 19.330784, 11.284272>,  <23.299046, 18.670649, 11.010583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.410089, 19.330784, 11.284272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.072041, 19.180420, 11.436303>,  <22.869211, 19.090200, 11.527522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.072041, 19.180420, 11.436303>,  <23.410089, 19.330784, 11.284272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.072041, 19.180420, 11.436303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392886, 0.045363, 0.918468,
		-0.362504, 0.925544, 0.109353,
		-0.845122, -0.375912, 0.380077,
		22.818504, 19.067646, 11.550326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.295893, 19.743118, 11.838059>,  <23.410089, 19.330784, 11.284272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.295893, 19.743118, 11.838059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.100166, 19.402954, 11.915389>,  <22.982731, 19.198856, 11.961786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.100166, 19.402954, 11.915389>,  <23.295893, 19.743118, 11.838059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.100166, 19.402954, 11.915389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399552, -0.021560, 0.916457,
		-0.775195, 0.525681, 0.350332,
		-0.489317, -0.850409, 0.193323,
		22.953371, 19.147831, 11.973386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.969654, 19.991693, 12.390422>,  <23.295893, 19.743118, 11.838059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.969654, 19.991693, 12.390422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.971718, 19.591724, 12.394894>,  <22.972956, 19.351742, 12.397576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.971718, 19.591724, 12.394894>,  <22.969654, 19.991693, 12.390422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.971718, 19.591724, 12.394894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232596, 0.012072, 0.972499,
		-0.972560, -0.002417, 0.232641,
		0.005159, -0.999924, 0.011179,
		22.973265, 19.291748, 12.398247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.695192, 19.767958, 13.038955>,  <22.969654, 19.991693, 12.390422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.695192, 19.767958, 13.038955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.887123, 19.442226, 12.908334>,  <23.002281, 19.246788, 12.829962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.887123, 19.442226, 12.908334>,  <22.695192, 19.767958, 13.038955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.887123, 19.442226, 12.908334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401812, -0.126908, 0.906886,
		-0.779943, -0.566362, 0.266312,
		0.479829, -0.814327, -0.326552,
		23.031073, 19.197927, 12.810369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.516920, 19.258930, 13.598579>,  <22.695192, 19.767958, 13.038955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.516920, 19.258930, 13.598579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.852612, 19.149258, 13.410742>,  <23.054028, 19.083454, 13.298039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.852612, 19.149258, 13.410742>,  <22.516920, 19.258930, 13.598579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.852612, 19.149258, 13.410742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445613, -0.148162, 0.882880,
		-0.311646, -0.950196, -0.002163,
		0.839229, -0.274182, -0.469594,
		23.104380, 19.067003, 13.269863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.779245, 18.761637, 13.995634>,  <22.516920, 19.258930, 13.598579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.779245, 18.761637, 13.995634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.098328, 18.876366, 13.783444>,  <23.289776, 18.945202, 13.656131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.098328, 18.876366, 13.783444>,  <22.779245, 18.761637, 13.995634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.098328, 18.876366, 13.783444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571087, -0.076715, 0.817297,
		0.193722, -0.954908, -0.224995,
		0.797704, 0.286820, -0.530474,
		23.337639, 18.962412, 13.624302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.398628, 18.355875, 14.266003>,  <22.779245, 18.761637, 13.995634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.398628, 18.355875, 14.266003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.569187, 18.667225, 14.081693>,  <23.671522, 18.854034, 13.971107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.569187, 18.667225, 14.081693>,  <23.398628, 18.355875, 14.266003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.569187, 18.667225, 14.081693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645564, 0.094939, 0.757782,
		0.633585, -0.620577, -0.462011,
		0.426399, 0.778377, -0.460774,
		23.697107, 18.900738, 13.943460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.078417, 18.317940, 14.471558>,  <23.398628, 18.355875, 14.266003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.078417, 18.317940, 14.471558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.022602, 18.691147, 14.338889>,  <23.989113, 18.915071, 14.259288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.022602, 18.691147, 14.338889>,  <24.078417, 18.317940, 14.471558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.022602, 18.691147, 14.338889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450357, 0.358097, 0.817891,
		0.881878, -0.035247, -0.470158,
		-0.139535, 0.933019, -0.331672,
		23.980742, 18.971052, 14.239388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.684380, 18.644726, 14.760428>,  <24.078417, 18.317940, 14.471558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.684380, 18.644726, 14.760428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.425819, 18.939949, 14.683030>,  <24.270683, 19.117083, 14.636591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.425819, 18.939949, 14.683030>,  <24.684380, 18.644726, 14.760428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.425819, 18.939949, 14.683030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311705, 0.486911, 0.815940,
		0.696425, 0.467109, -0.544795,
		-0.646399, 0.738056, -0.193497,
		24.231899, 19.161366, 14.624981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056137, 19.348385, 14.996359>,  <24.684380, 18.644726, 14.760428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.056137, 19.348385, 14.996359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664520, 19.408882, 14.941806>,  <24.429550, 19.445181, 14.909074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664520, 19.408882, 14.941806>,  <25.056137, 19.348385, 14.996359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.664520, 19.408882, 14.941806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026659, 0.568736, 0.822088,
		0.201903, 0.808495, -0.552785,
		-0.979043, 0.151245, -0.136383,
		24.370808, 19.454256, 14.900891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060846, 19.982317, 15.193365>,  <25.056137, 19.348385, 14.996359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060846, 19.982317, 15.193365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.694427, 19.826633, 15.232099>,  <24.474577, 19.733223, 15.255339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.694427, 19.826633, 15.232099>,  <25.060846, 19.982317, 15.193365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.694427, 19.826633, 15.232099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090587, 0.435975, 0.895388,
		-0.390709, 0.811445, -0.434631,
		-0.916046, -0.389208, 0.096833,
		24.419613, 19.709871, 15.261148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.599915, 20.595728, 15.500713>,  <25.060846, 19.982317, 15.193365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.599915, 20.595728, 15.500713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460480, 20.228668, 15.577033>,  <24.376820, 20.008432, 15.622825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460480, 20.228668, 15.577033>,  <24.599915, 20.595728, 15.500713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.460480, 20.228668, 15.577033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130434, 0.249082, 0.959659,
		-0.928156, 0.309638, -0.206519,
		-0.348587, -0.917650, 0.190800,
		24.355904, 19.953373, 15.634273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.199482, 20.782158, 16.083611>,  <24.599915, 20.595728, 15.500713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.199482, 20.782158, 16.083611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.147167, 20.385616, 16.087841>,  <24.115778, 20.147692, 16.090380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.147167, 20.385616, 16.087841>,  <24.199482, 20.782158, 16.083611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.147167, 20.385616, 16.087841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253065, 0.043698, 0.966462,
		-0.958568, 0.123724, -0.256592,
		-0.130787, -0.991354, 0.010577,
		24.107931, 20.088209, 16.091015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.529432, 20.679094, 16.451672>,  <24.199482, 20.782158, 16.083611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.529432, 20.679094, 16.451672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.762962, 20.354343, 16.452711>,  <23.903080, 20.159492, 16.453335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.762962, 20.354343, 16.452711>,  <23.529432, 20.679094, 16.451672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.762962, 20.354343, 16.452711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042384, -0.027283, 0.998729,
		-0.810773, -0.583192, -0.050339,
		0.583824, -0.811876, 0.002598,
		23.938110, 20.110781, 16.453491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.266115, 20.324791, 16.992794>,  <23.529432, 20.679094, 16.451672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.266115, 20.324791, 16.992794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.626904, 20.160183, 16.940493>,  <23.843376, 20.061419, 16.909111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.626904, 20.160183, 16.940493>,  <23.266115, 20.324791, 16.992794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.626904, 20.160183, 16.940493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085296, -0.127042, 0.988223,
		-0.423287, -0.902502, -0.079487,
		0.901972, -0.411522, -0.130755,
		23.897495, 20.036726, 16.901266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.208069, 19.775320, 17.383942>,  <23.266115, 20.324791, 16.992794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.208069, 19.775320, 17.383942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.582550, 19.907879, 17.337126>,  <23.807240, 19.987413, 17.309036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.582550, 19.907879, 17.337126>,  <23.208069, 19.775320, 17.383942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.582550, 19.907879, 17.337126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045770, 0.215215, 0.975493,
		0.348466, -0.918617, 0.186317,
		0.936203, 0.331398, -0.117040,
		23.863411, 20.007298, 17.302013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.509825, 19.663830, 17.969687>,  <23.208069, 19.775320, 17.383942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.509825, 19.663830, 17.969687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.783756, 19.927826, 17.846123>,  <23.948114, 20.086224, 17.771984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.783756, 19.927826, 17.846123>,  <23.509825, 19.663830, 17.969687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.783756, 19.927826, 17.846123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233721, 0.202586, 0.950964,
		0.690207, -0.723445, -0.015517,
		0.684827, 0.659989, -0.308911,
		23.989204, 20.125822, 17.753450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.146719, 19.523024, 18.392973>,  <23.509825, 19.663830, 17.969687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.146719, 19.523024, 18.392973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.098228, 19.888557, 18.237947>,  <24.069134, 20.107878, 18.144932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.098228, 19.888557, 18.237947>,  <24.146719, 19.523024, 18.392973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.098228, 19.888557, 18.237947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111605, 0.400517, 0.909467,
		0.986331, 0.066998, -0.150542,
		-0.121227, 0.913837, -0.387565,
		24.061861, 20.162708, 18.121677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.608061, 19.841883, 18.699131>,  <24.146719, 19.523024, 18.392973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.608061, 19.841883, 18.699131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392578, 20.154598, 18.573528>,  <24.263288, 20.342228, 18.498167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392578, 20.154598, 18.573528>,  <24.608061, 19.841883, 18.699131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.392578, 20.154598, 18.573528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208259, 0.484714, 0.849518,
		0.816349, 0.392245, -0.423932,
		-0.538705, 0.781791, -0.314007,
		24.230967, 20.389135, 18.479326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040054, 20.374655, 18.834599>,  <24.608061, 19.841883, 18.699131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.040054, 20.374655, 18.834599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.659473, 20.496529, 18.817156>,  <24.431124, 20.569653, 18.806690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.659473, 20.496529, 18.817156>,  <25.040054, 20.374655, 18.834599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.659473, 20.496529, 18.817156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074716, 0.366073, 0.927582,
		0.298584, 0.879294, -0.371066,
		-0.951454, 0.304686, -0.043607,
		24.374037, 20.587934, 18.804073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.975742, 21.063643, 19.169331>,  <25.040054, 20.374655, 18.834599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.975742, 21.063643, 19.169331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598255, 20.932850, 19.189257>,  <24.371763, 20.854374, 19.201212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598255, 20.932850, 19.189257>,  <24.975742, 21.063643, 19.169331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.598255, 20.932850, 19.189257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056675, 0.308241, 0.949619,
		-0.325862, 0.893348, -0.309424,
		-0.943717, -0.326981, 0.049814,
		24.315140, 20.834755, 19.204201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.474195, 21.647608, 19.497791>,  <24.975742, 21.063643, 19.169331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.474195, 21.647608, 19.497791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.287544, 21.295979, 19.536758>,  <24.175554, 21.085001, 19.560139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.287544, 21.295979, 19.536758>,  <24.474195, 21.647608, 19.497791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.287544, 21.295979, 19.536758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146571, 0.185478, 0.971656,
		-0.872225, 0.439123, -0.215396,
		-0.466627, -0.879073, 0.097415,
		24.147556, 21.032257, 19.565983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.828161, 21.856726, 19.816303>,  <24.474195, 21.647608, 19.497791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.828161, 21.856726, 19.816303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.827030, 21.460930, 19.874132>,  <23.826351, 21.223452, 19.908829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.827030, 21.460930, 19.874132>,  <23.828161, 21.856726, 19.816303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.827030, 21.460930, 19.874132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233657, 0.141222, 0.962009,
		-0.972315, -0.031061, -0.231601,
		-0.002826, -0.989491, 0.144570,
		23.826183, 21.164083, 19.917503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.219206, 21.723001, 20.188194>,  <23.828161, 21.856726, 19.816303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.219206, 21.723001, 20.188194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.492573, 21.439236, 20.257097>,  <23.656593, 21.268976, 20.298439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.492573, 21.439236, 20.257097>,  <23.219206, 21.723001, 20.188194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.492573, 21.439236, 20.257097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108833, 0.134315, 0.984944,
		-0.721871, -0.691874, 0.014585,
		0.683416, -0.709415, 0.172257,
		23.697598, 21.226412, 20.308775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.945002, 21.160744, 20.627289>,  <23.219206, 21.723001, 20.188194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.945002, 21.160744, 20.627289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.338146, 21.117928, 20.687317>,  <23.574034, 21.092237, 20.723333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.338146, 21.117928, 20.687317>,  <22.945002, 21.160744, 20.627289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.338146, 21.117928, 20.687317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148155, 0.025669, 0.988631,
		-0.109679, -0.993923, 0.009370,
		0.982864, -0.107044, 0.150070,
		23.633005, 21.085815, 20.732338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.969028, 20.620512, 21.195301>,  <22.945002, 21.160744, 20.627289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.969028, 20.620512, 21.195301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.322296, 20.806053, 21.167437>,  <23.534256, 20.917377, 21.150719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.322296, 20.806053, 21.167437>,  <22.969028, 20.620512, 21.195301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.322296, 20.806053, 21.167437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052433, 0.049949, 0.997375,
		0.466116, -0.884502, 0.019792,
		0.883169, 0.463854, -0.069659,
		23.587246, 20.945210, 21.146540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.131063, 20.445997, 21.838867>,  <22.969028, 20.620512, 21.195301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.131063, 20.445997, 21.838867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.380032, 20.736565, 21.722313>,  <23.529413, 20.910906, 21.652380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.380032, 20.736565, 21.722313>,  <23.131063, 20.445997, 21.838867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.380032, 20.736565, 21.722313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033107, 0.347520, 0.937088,
		0.781982, -0.592910, 0.192254,
		0.622421, 0.726421, -0.291384,
		23.566757, 20.954491, 21.634897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.712179, 20.459293, 22.258575>,  <23.131063, 20.445997, 21.838867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.712179, 20.459293, 22.258575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.667706, 20.829399, 22.113510>,  <23.641022, 21.051462, 22.026470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.667706, 20.829399, 22.113510>,  <23.712179, 20.459293, 22.258575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.667706, 20.829399, 22.113510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038586, 0.360632, 0.931910,
		0.993051, 0.117606, -0.004394,
		-0.111182, 0.925264, -0.362664,
		23.634352, 21.106977, 22.004711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.025358, 20.754704, 22.765865>,  <23.712179, 20.459293, 22.258575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.025358, 20.754704, 22.765865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.800438, 21.011074, 22.556856>,  <23.665485, 21.164896, 22.431450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.800438, 21.011074, 22.556856>,  <24.025358, 20.754704, 22.765865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.800438, 21.011074, 22.556856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359546, 0.379536, 0.852455,
		0.744676, 0.667209, 0.017028,
		-0.562303, 0.640925, -0.522524,
		23.631746, 21.203352, 22.400099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.161137, 21.532419, 22.918032>,  <24.025358, 20.754704, 22.765865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.161137, 21.532419, 22.918032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.780056, 21.457073, 22.822632>,  <23.551409, 21.411865, 22.765392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.780056, 21.457073, 22.822632>,  <24.161137, 21.532419, 22.918032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.780056, 21.457073, 22.822632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298940, 0.722198, 0.623751,
		0.054749, 0.665544, -0.744348,
		-0.952700, -0.188366, -0.238498,
		23.494246, 21.400564, 22.751083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.849922, 22.134535, 22.709261>,  <24.161137, 21.532419, 22.918032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.849922, 22.134535, 22.709261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.573017, 21.891979, 22.865753>,  <23.406874, 21.746445, 22.959648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.573017, 21.891979, 22.865753>,  <23.849922, 22.134535, 22.709261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.573017, 21.891979, 22.865753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246387, 0.708166, 0.661660,
		-0.678280, 0.361650, -0.639645,
		-0.692264, -0.606391, 0.391229,
		23.365337, 21.710062, 22.983122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.160757, 22.480721, 22.748440>,  <23.849922, 22.134535, 22.709261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.160757, 22.480721, 22.748440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.228275, 22.208733, 23.033859>,  <23.268785, 22.045540, 23.205111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.228275, 22.208733, 23.033859>,  <23.160757, 22.480721, 22.748440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.228275, 22.208733, 23.033859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162219, 0.694897, 0.700573,
		-0.972210, -0.234005, 0.006992,
		0.168796, -0.679970, 0.713546,
		23.278913, 22.004742, 23.247923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.516615, 22.308084, 23.197462>,  <23.160757, 22.480721, 22.748440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.516615, 22.308084, 23.197462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.881508, 22.286800, 23.359941>,  <23.100445, 22.274029, 23.457428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.881508, 22.286800, 23.359941>,  <22.516615, 22.308084, 23.197462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.881508, 22.286800, 23.359941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254101, 0.704257, 0.662914,
		-0.321342, -0.707948, 0.628926,
		0.912235, -0.053212, 0.406198,
		23.155178, 22.270838, 23.481800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.462088, 22.082140, 23.868826>,  <22.516615, 22.308084, 23.197462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.462088, 22.082140, 23.868826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.763237, 22.339733, 23.814463>,  <22.943926, 22.494289, 23.781845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.763237, 22.339733, 23.814463>,  <22.462088, 22.082140, 23.868826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.763237, 22.339733, 23.814463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377006, 0.591222, 0.712968,
		0.539488, -0.485537, 0.687900,
		0.752873, 0.643980, -0.135907,
		22.989100, 22.532928, 23.773689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.092228, 21.985811, 24.423162>,  <22.462088, 22.082140, 23.868826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.092228, 21.985811, 24.423162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.702801, 21.895142, 24.434370>,  <21.469145, 21.840740, 24.441093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.702801, 21.895142, 24.434370>,  <22.092228, 21.985811, 24.423162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.702801, 21.895142, 24.434370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070944, 0.183521, -0.980452,
		0.217114, -0.956521, -0.194752,
		-0.973565, -0.226686, 0.028015,
		21.410730, 21.827139, 24.442776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.080324, 21.488829, 23.875265>,  <22.092228, 21.985811, 24.423162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.080324, 21.488829, 23.875265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.719223, 21.627209, 23.977526>,  <21.502563, 21.710236, 24.038881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.719223, 21.627209, 23.977526>,  <22.080324, 21.488829, 23.875265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.719223, 21.627209, 23.977526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197082, 0.195637, -0.960669,
		-0.382358, -0.917630, -0.108432,
		-0.902752, 0.345950, 0.255652,
		21.448397, 21.730993, 24.054222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.538893, 21.158218, 23.508198>,  <22.080324, 21.488829, 23.875265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.538893, 21.158218, 23.508198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.464943, 21.544693, 23.580097>,  <21.420574, 21.776577, 23.623236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.464943, 21.544693, 23.580097>,  <21.538893, 21.158218, 23.508198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.464943, 21.544693, 23.580097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192242, 0.143813, -0.970753,
		-0.963776, -0.214021, 0.159155,
		-0.184873, 0.966185, 0.179747,
		21.409481, 21.834549, 23.634022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.977608, 21.409370, 23.035309>,  <21.538893, 21.158218, 23.508198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.977608, 21.409370, 23.035309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.144211, 21.748177, 23.167419>,  <21.244173, 21.951462, 23.246687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.144211, 21.748177, 23.167419>,  <20.977608, 21.409370, 23.035309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.144211, 21.748177, 23.167419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026965, 0.374638, -0.926779,
		-0.908733, 0.377104, 0.178879,
		0.416507, 0.847018, 0.330278,
		21.269163, 22.002281, 23.266502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.717161, 21.978037, 22.964621>,  <20.977608, 21.409370, 23.035309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.717161, 21.978037, 22.964621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.070034, 22.165825, 22.979309>,  <21.281757, 22.278498, 22.988123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.070034, 22.165825, 22.979309>,  <20.717161, 21.978037, 22.964621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.070034, 22.165825, 22.979309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214930, 0.470806, -0.855656,
		-0.418996, 0.746953, 0.516240,
		0.882183, 0.469472, 0.036723,
		21.334688, 22.306667, 22.990326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.734070, 22.732567, 22.798758>,  <20.717161, 21.978037, 22.964621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.734070, 22.732567, 22.798758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.094536, 22.582294, 22.712257>,  <21.310816, 22.492130, 22.660357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.094536, 22.582294, 22.712257>,  <20.734070, 22.732567, 22.798758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.094536, 22.582294, 22.712257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158332, 0.179129, -0.971001,
		0.403525, 0.909272, 0.101942,
		0.901165, -0.375682, -0.216250,
		21.364885, 22.469589, 22.647383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.999580, 23.197346, 22.366930>,  <20.734070, 22.732567, 22.798758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.999580, 23.197346, 22.366930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.209000, 22.864201, 22.295116>,  <21.334652, 22.664312, 22.252028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.209000, 22.864201, 22.295116>,  <20.999580, 23.197346, 22.366930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.209000, 22.864201, 22.295116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032361, 0.191131, -0.981031,
		0.851380, 0.519429, 0.073115,
		0.523550, -0.832864, -0.179534,
		21.366064, 22.614342, 22.241257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.511059, 23.340136, 21.906450>,  <20.999580, 23.197346, 22.366930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.511059, 23.340136, 21.906450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.467190, 22.950714, 21.826283>,  <21.440868, 22.717062, 21.778181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.467190, 22.950714, 21.826283>,  <21.511059, 23.340136, 21.906450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.467190, 22.950714, 21.826283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167460, 0.216851, -0.961734,
		0.979760, -0.071913, -0.186814,
		-0.109672, -0.973552, -0.200419,
		21.434288, 22.658648, 21.766157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.977530, 23.158712, 21.249182>,  <21.511059, 23.340136, 21.906450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.977530, 23.158712, 21.249182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.731167, 22.846260, 21.290163>,  <21.583349, 22.658789, 21.314753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.731167, 22.846260, 21.290163>,  <21.977530, 23.158712, 21.249182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.731167, 22.846260, 21.290163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298749, 0.111241, -0.947826,
		0.728978, -0.614380, -0.301876,
		-0.615906, -0.781129, 0.102453,
		21.546394, 22.611921, 21.320898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.145340, 22.779465, 20.725901>,  <21.977530, 23.158712, 21.249182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.145340, 22.779465, 20.725901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.777519, 22.672256, 20.840857>,  <21.556828, 22.607931, 20.909830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.777519, 22.672256, 20.840857>,  <22.145340, 22.779465, 20.725901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.777519, 22.672256, 20.840857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282939, -0.055965, -0.957504,
		0.272716, -0.961786, -0.024371,
		-0.919550, -0.268022, 0.287389,
		21.501654, 22.591850, 20.927073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.012182, 22.292952, 20.278023>,  <22.145340, 22.779465, 20.725901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.012182, 22.292952, 20.278023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.655327, 22.416000, 20.410358>,  <21.441214, 22.489830, 20.489759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.655327, 22.416000, 20.410358>,  <22.012182, 22.292952, 20.278023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.655327, 22.416000, 20.410358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326907, 0.065849, -0.942760,
		-0.311799, -0.949227, 0.041817,
		-0.892140, 0.307622, 0.330841,
		21.387684, 22.508287, 20.509611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.515724, 21.789213, 20.055916>,  <22.012182, 22.292952, 20.278023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.515724, 21.789213, 20.055916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.327782, 22.135670, 20.124079>,  <21.215017, 22.343544, 20.164976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.327782, 22.135670, 20.124079>,  <21.515724, 21.789213, 20.055916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.327782, 22.135670, 20.124079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274059, 0.040377, -0.960865,
		-0.839123, -0.498169, 0.218402,
		-0.469855, 0.866139, 0.170409,
		21.186825, 22.395512, 20.175201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.801971, 21.632435, 19.911646>,  <21.515724, 21.789213, 20.055916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.801971, 21.632435, 19.911646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.822498, 22.031853, 19.904997>,  <20.834814, 22.271503, 19.901009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.822498, 22.031853, 19.904997>,  <20.801971, 21.632435, 19.911646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.822498, 22.031853, 19.904997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435036, 0.007370, -0.900383,
		-0.898949, 0.053436, 0.434781,
		0.051317, 0.998544, -0.016621,
		20.837893, 22.331415, 19.900011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.172153, 21.893406, 19.590658>,  <20.801971, 21.632435, 19.911646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.172153, 21.893406, 19.590658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.397923, 22.222702, 19.566317>,  <20.533384, 22.420279, 19.551712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.397923, 22.222702, 19.566317>,  <20.172153, 21.893406, 19.590658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.397923, 22.222702, 19.566317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375797, 0.190612, -0.906887,
		-0.734985, 0.534738, 0.416957,
		0.564424, 0.823239, -0.060855,
		20.567249, 22.469673, 19.548059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.762812, 22.448782, 19.383196>,  <20.172153, 21.893406, 19.590658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.762812, 22.448782, 19.383196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.132740, 22.557667, 19.276907>,  <20.354696, 22.622997, 19.213133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.132740, 22.557667, 19.276907>,  <19.762812, 22.448782, 19.383196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.132740, 22.557667, 19.276907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328663, 0.220045, -0.918456,
		-0.191546, 0.936739, 0.292969,
		0.924819, 0.272214, -0.265723,
		20.410187, 22.639332, 19.197189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.797571, 23.212843, 19.098976>,  <19.762812, 22.448782, 19.383196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.797571, 23.212843, 19.098976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.125271, 23.030148, 18.960285>,  <20.321890, 22.920530, 18.877071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.125271, 23.030148, 18.960285>,  <19.797571, 23.212843, 19.098976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.125271, 23.030148, 18.960285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272329, 0.222221, -0.936192,
		0.504646, 0.861398, 0.057671,
		0.819249, -0.456740, -0.346727,
		20.371046, 22.893126, 18.856268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.816851, 23.469517, 18.464781>,  <19.797571, 23.212843, 19.098976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.816851, 23.469517, 18.464781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.080288, 23.170586, 18.429550>,  <20.238350, 22.991226, 18.408413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.080288, 23.170586, 18.429550>,  <19.816851, 23.469517, 18.464781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.080288, 23.170586, 18.429550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087965, 0.039783, -0.995329,
		0.747342, 0.663262, -0.039538,
		0.658591, -0.747329, -0.088075,
		20.277864, 22.946386, 18.403128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.326042, 23.688946, 17.936611>,  <19.816851, 23.469517, 18.464781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.326042, 23.688946, 17.936611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.365879, 23.292461, 17.971443>,  <20.389780, 23.054571, 17.992342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.365879, 23.292461, 17.971443>,  <20.326042, 23.688946, 17.936611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.365879, 23.292461, 17.971443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173197, -0.068913, -0.982473,
		0.979839, 0.112928, 0.164811,
		0.099591, -0.991211, 0.087082,
		20.395756, 22.995098, 17.997568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.932518, 23.574213, 17.517349>,  <20.326042, 23.688946, 17.936611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.932518, 23.574213, 17.517349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.717762, 23.237347, 17.537378>,  <20.588909, 23.035227, 17.549395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.717762, 23.237347, 17.537378>,  <20.932518, 23.574213, 17.517349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.717762, 23.237347, 17.537378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191585, -0.179507, -0.964921,
		0.821612, -0.508462, 0.257721,
		-0.536888, -0.842166, 0.050072,
		20.556696, 22.984697, 17.552401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.255903, 23.209290, 17.000013>,  <20.932518, 23.574213, 17.517349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.255903, 23.209290, 17.000013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.938862, 22.977428, 17.075674>,  <20.748636, 22.838312, 17.121071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.938862, 22.977428, 17.075674>,  <21.255903, 23.209290, 17.000013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.938862, 22.977428, 17.075674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034449, -0.352297, -0.935254,
		0.608762, -0.734770, 0.299201,
		-0.792605, -0.579654, 0.189153,
		20.701080, 22.803532, 17.132420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.474276, 22.435322, 16.996935>,  <21.255903, 23.209290, 17.000013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.474276, 22.435322, 16.996935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.092609, 22.507790, 16.901649>,  <20.863609, 22.551270, 16.844479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.092609, 22.507790, 16.901649>,  <21.474276, 22.435322, 16.996935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.092609, 22.507790, 16.901649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135756, -0.447358, -0.883992,
		-0.266718, -0.875813, 0.402259,
		-0.954166, 0.181167, -0.238215,
		20.806360, 22.562140, 16.830185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.224968, 21.850412, 16.707277>,  <21.474276, 22.435322, 16.996935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.224968, 21.850412, 16.707277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.940777, 22.107800, 16.593315>,  <20.770262, 22.262232, 16.524939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.940777, 22.107800, 16.593315>,  <21.224968, 21.850412, 16.707277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.940777, 22.107800, 16.593315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093404, -0.487502, -0.868112,
		-0.697494, -0.590162, 0.406461,
		-0.710478, 0.643468, -0.284906,
		20.727633, 22.300840, 16.507843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.666111, 21.469141, 16.403259>,  <21.224968, 21.850412, 16.707277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.666111, 21.469141, 16.403259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.610336, 21.843124, 16.272778>,  <20.576872, 22.067514, 16.194489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.610336, 21.843124, 16.272778>,  <20.666111, 21.469141, 16.403259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.610336, 21.843124, 16.272778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150200, -0.345581, -0.926290,
		-0.978773, -0.080163, 0.188617,
		-0.139437, 0.934959, -0.326205,
		20.568504, 22.123611, 16.174915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.237717, 21.343586, 15.839170>,  <20.666111, 21.469141, 16.403259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.237717, 21.343586, 15.839170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.393593, 21.708008, 15.785317>,  <20.487118, 21.926661, 15.753006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.393593, 21.708008, 15.785317>,  <20.237717, 21.343586, 15.839170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.393593, 21.708008, 15.785317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044886, -0.127227, -0.990857,
		-0.919852, 0.392170, -0.008686,
		0.389689, 0.911052, -0.134633,
		20.510500, 21.981323, 15.744927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.811176, 21.661129, 15.272949>,  <20.237717, 21.343586, 15.839170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.811176, 21.661129, 15.272949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.127808, 21.903854, 15.301740>,  <20.317787, 22.049490, 15.319014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.127808, 21.903854, 15.301740>,  <19.811176, 21.661129, 15.272949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.127808, 21.903854, 15.301740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116539, -0.034290, -0.992594,
		-0.599850, 0.794105, -0.097860,
		0.791580, 0.606812, 0.071975,
		20.365282, 22.085897, 15.323332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.803915, 22.118925, 14.799778>,  <19.811176, 21.661129, 15.272949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.803915, 22.118925, 14.799778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.193047, 22.162228, 14.881637>,  <20.426525, 22.188210, 14.930752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.193047, 22.162228, 14.881637>,  <19.803915, 22.118925, 14.799778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.193047, 22.162228, 14.881637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202053, 0.034517, -0.978766,
		-0.113023, 0.993524, 0.011705,
		0.972831, 0.108258, 0.204646,
		20.484896, 22.194704, 14.943030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.943789, 22.628784, 14.401285>,  <19.803915, 22.118925, 14.799778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.943789, 22.628784, 14.401285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.280132, 22.427898, 14.482018>,  <20.481939, 22.307367, 14.530458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.280132, 22.427898, 14.482018>,  <19.943789, 22.628784, 14.401285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.280132, 22.427898, 14.482018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188006, -0.078671, -0.979012,
		0.507552, 0.861157, 0.028268,
		0.840859, -0.502214, 0.201833,
		20.532391, 22.277235, 14.542568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.437288, 22.876795, 13.968823>,  <19.943789, 22.628784, 14.401285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.437288, 22.876795, 13.968823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.554092, 22.506233, 14.063905>,  <20.624174, 22.283895, 14.120954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.554092, 22.506233, 14.063905>,  <20.437288, 22.876795, 13.968823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.554092, 22.506233, 14.063905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212743, -0.179393, -0.960499,
		0.932454, 0.331045, 0.144702,
		0.292010, -0.926406, 0.237703,
		20.641695, 22.228312, 14.135216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.053310, 22.841917, 13.614131>,  <20.437288, 22.876795, 13.968823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.053310, 22.841917, 13.614131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.959568, 22.460258, 13.688624>,  <20.903322, 22.231264, 13.733320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.959568, 22.460258, 13.688624>,  <21.053310, 22.841917, 13.614131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.959568, 22.460258, 13.688624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131302, -0.220881, -0.966422,
		0.963243, -0.202034, 0.177046,
		-0.234356, -0.954146, 0.186234,
		20.889261, 22.174015, 13.744494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.502781, 22.366125, 13.183944>,  <21.053310, 22.841917, 13.614131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.502781, 22.366125, 13.183944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.174927, 22.157837, 13.279481>,  <20.978214, 22.032864, 13.336803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.174927, 22.157837, 13.279481>,  <21.502781, 22.366125, 13.183944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.174927, 22.157837, 13.279481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146656, -0.212301, -0.966137,
		0.553793, -0.826909, 0.097643,
		-0.819637, -0.520720, 0.238842,
		20.929035, 22.001621, 13.351133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.543297, 21.879103, 12.767033>,  <21.502781, 22.366125, 13.183944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.543297, 21.879103, 12.767033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.154903, 21.846073, 12.856805>,  <20.921867, 21.826256, 12.910668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.154903, 21.846073, 12.856805>,  <21.543297, 21.879103, 12.767033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.154903, 21.846073, 12.856805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198231, -0.247023, -0.948517,
		0.133763, -0.965485, 0.223487,
		-0.970985, -0.082574, 0.224431,
		20.863607, 21.821301, 12.924134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.325476, 21.212952, 12.500867>,  <21.543297, 21.879103, 12.767033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.325476, 21.212952, 12.500867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.980232, 21.410606, 12.542578>,  <20.773087, 21.529200, 12.567604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.980232, 21.410606, 12.542578>,  <21.325476, 21.212952, 12.500867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.980232, 21.410606, 12.542578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346989, -0.430218, -0.833374,
		-0.366939, -0.755475, 0.542784,
		-0.863108, 0.494137, 0.104278,
		20.721300, 21.558847, 12.573861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.802263, 20.744272, 12.286674>,  <21.325476, 21.212952, 12.500867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.802263, 20.744272, 12.286674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.633537, 21.105072, 12.249860>,  <20.532301, 21.321552, 12.227772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.633537, 21.105072, 12.249860>,  <20.802263, 20.744272, 12.286674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.633537, 21.105072, 12.249860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450713, -0.296678, -0.841926,
		-0.786721, -0.313656, 0.531685,
		-0.421815, 0.901999, -0.092034,
		20.506992, 21.375671, 12.222250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.076904, 20.679327, 11.848301>,  <20.802263, 20.744272, 12.286674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.076904, 20.679327, 11.848301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.178089, 21.065063, 11.817176>,  <20.238800, 21.296505, 11.798501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.178089, 21.065063, 11.817176>,  <20.076904, 20.679327, 11.848301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.178089, 21.065063, 11.817176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384050, 0.026271, -0.922939,
		-0.887984, 0.263353, 0.377001,
		0.252963, 0.964342, -0.077812,
		20.253979, 21.354366, 11.793832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.556143, 21.120508, 11.545208>,  <20.076904, 20.679327, 11.848301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.556143, 21.120508, 11.545208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.885006, 21.339779, 11.483809>,  <20.082323, 21.471342, 11.446970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.885006, 21.339779, 11.483809>,  <19.556143, 21.120508, 11.545208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.885006, 21.339779, 11.483809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314906, 0.213330, -0.924838,
		-0.474230, 0.808698, 0.348015,
		0.822156, 0.548177, -0.153496,
		20.131653, 21.504232, 11.437760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.327213, 21.677227, 11.211615>,  <19.556143, 21.120508, 11.545208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.327213, 21.677227, 11.211615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.720104, 21.698071, 11.139487>,  <19.955839, 21.710577, 11.096211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.720104, 21.698071, 11.139487>,  <19.327213, 21.677227, 11.211615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.720104, 21.698071, 11.139487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187687, 0.262998, -0.946364,
		-0.001893, 0.963388, 0.268105,
		0.982227, 0.052111, -0.180318,
		20.014772, 21.713703, 11.085392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.333248, 22.271400, 10.829556>,  <19.327213, 21.677227, 11.211615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.333248, 22.271400, 10.829556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.673176, 22.076042, 10.750280>,  <19.877132, 21.958828, 10.702715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.673176, 22.076042, 10.750280>,  <19.333248, 22.271400, 10.829556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.673176, 22.076042, 10.750280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091524, 0.233571, -0.968023,
		0.519067, 0.840783, 0.153793,
		0.849819, -0.488393, -0.198191,
		19.928122, 21.929523, 10.690824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.670191, 22.665432, 10.309177>,  <19.333248, 22.271400, 10.829556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.670191, 22.665432, 10.309177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.816639, 22.294392, 10.279488>,  <19.904509, 22.071768, 10.261674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.816639, 22.294392, 10.279488>,  <19.670191, 22.665432, 10.309177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.816639, 22.294392, 10.279488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202789, -0.001685, -0.979221,
		0.908203, 0.373565, -0.188724,
		0.366121, -0.927603, -0.074225,
		19.926476, 22.016111, 10.257220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.115749, 22.733660, 9.874131>,  <19.670191, 22.665432, 10.309177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.115749, 22.733660, 9.874131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.021675, 22.344891, 9.877002>,  <19.965231, 22.111629, 9.878724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.021675, 22.344891, 9.877002>,  <20.115749, 22.733660, 9.874131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.021675, 22.344891, 9.877002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218727, 0.045729, -0.974714,
		0.947020, -0.230808, -0.223341,
		-0.235185, -0.971924, 0.007177,
		19.951120, 22.053314, 9.879155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.566944, 22.461887, 9.426188>,  <20.115749, 22.733660, 9.874131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.566944, 22.461887, 9.426188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.284374, 22.180126, 9.453841>,  <20.114832, 22.011070, 9.470433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.284374, 22.180126, 9.453841>,  <20.566944, 22.461887, 9.426188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.284374, 22.180126, 9.453841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029591, -0.068198, -0.997233,
		0.707167, -0.706518, 0.027333,
		-0.706427, -0.704402, 0.069134,
		20.072447, 21.968805, 9.474582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.847221, 21.892765, 8.976270>,  <20.566944, 22.461887, 9.426188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.847221, 21.892765, 8.976270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.452793, 21.843479, 9.020955>,  <20.216135, 21.813908, 9.047767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.452793, 21.843479, 9.020955>,  <20.847221, 21.892765, 8.976270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.452793, 21.843479, 9.020955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078010, -0.250573, -0.964950,
		0.146889, -0.960225, 0.237471,
		-0.986072, -0.123216, 0.111713,
		20.156971, 21.806515, 9.054469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.635490, 21.266590, 8.567101>,  <20.847221, 21.892765, 8.976270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.635490, 21.266590, 8.567101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.286129, 21.449173, 8.635003>,  <20.076511, 21.558722, 8.675744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.286129, 21.449173, 8.635003>,  <20.635490, 21.266590, 8.567101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.286129, 21.449173, 8.635003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343749, -0.330910, -0.878826,
		-0.344979, -0.825918, 0.445925,
		-0.873399, 0.456463, 0.169752,
		20.024109, 21.586109, 8.685929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.127188, 20.691729, 8.507095>,  <20.635490, 21.266590, 8.567101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.127188, 20.691729, 8.507095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.938217, 21.039803, 8.451109>,  <19.824835, 21.248648, 8.417517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.938217, 21.039803, 8.451109>,  <20.127188, 20.691729, 8.507095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.938217, 21.039803, 8.451109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297275, -0.306820, -0.904151,
		-0.829724, -0.385534, 0.403634,
		-0.472424, 0.870187, -0.139966,
		19.796490, 21.300859, 8.409120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.442846, 20.509453, 8.255527>,  <20.127188, 20.691729, 8.507095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.442846, 20.509453, 8.255527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.536293, 20.885868, 8.157653>,  <19.592361, 21.111717, 8.098928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.536293, 20.885868, 8.157653>,  <19.442846, 20.509453, 8.255527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.536293, 20.885868, 8.157653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338707, -0.157125, -0.927679,
		-0.911428, 0.299596, 0.282030,
		0.233615, 0.941039, -0.244684,
		19.606379, 21.168180, 8.084248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.893192, 20.765869, 7.909781>,  <19.442846, 20.509453, 8.255527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.893192, 20.765869, 7.909781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.201580, 20.994125, 7.796662>,  <19.386614, 21.131079, 7.728791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.201580, 20.994125, 7.796662>,  <18.893192, 20.765869, 7.909781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.201580, 20.994125, 7.796662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273298, -0.104639, -0.956221,
		-0.575250, 0.814506, 0.075281,
		0.770971, 0.570640, -0.282797,
		19.432871, 21.165318, 7.711823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.340740, 21.172731, 7.978384>,  <18.893192, 20.765869, 7.909781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.340740, 21.172731, 7.978384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.001549, 20.963493, 7.944194>,  <17.798035, 20.837952, 7.923680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.001549, 20.963493, 7.944194>,  <18.340740, 21.172731, 7.978384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.001549, 20.963493, 7.944194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119068, 0.030858, 0.992406,
		-0.516484, 0.851716, -0.088451,
		-0.847978, -0.523094, -0.085475,
		17.747156, 20.806564, 7.918551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.926085, 21.474133, 8.392561>,  <18.340740, 21.172731, 7.978384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.926085, 21.474133, 8.392561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.719307, 21.132168, 8.375170>,  <17.595240, 20.926989, 8.364735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.719307, 21.132168, 8.375170>,  <17.926085, 21.474133, 8.392561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.719307, 21.132168, 8.375170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251236, 0.102970, 0.962433,
		-0.818320, 0.508448, -0.268015,
		-0.516945, -0.854914, -0.043478,
		17.564224, 20.875694, 8.362126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.305216, 21.622217, 8.700718>,  <17.926085, 21.474133, 8.392561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.305216, 21.622217, 8.700718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.330002, 21.223320, 8.717036>,  <17.344873, 20.983982, 8.726828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.330002, 21.223320, 8.717036>,  <17.305216, 21.622217, 8.700718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.330002, 21.223320, 8.717036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323427, 0.018607, 0.946070,
		-0.944222, -0.071818, -0.321383,
		0.061965, -0.997244, 0.040797,
		17.348591, 20.924147, 8.729276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.640739, 21.438948, 9.098631>,  <17.305216, 21.622217, 8.700718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.640739, 21.438948, 9.098631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.909134, 21.142773, 9.114278>,  <17.070171, 20.965069, 9.123666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.909134, 21.142773, 9.114278>,  <16.640739, 21.438948, 9.098631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.909134, 21.142773, 9.114278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127402, -0.063158, 0.989838,
		-0.730441, -0.669153, -0.136711,
		0.670987, -0.740436, 0.039118,
		17.110430, 20.920643, 9.126014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.246138, 20.855328, 9.412227>,  <16.640739, 21.438948, 9.098631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.246138, 20.855328, 9.412227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.642136, 20.843830, 9.467478>,  <16.879734, 20.836931, 9.500628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.642136, 20.843830, 9.467478>,  <16.246138, 20.855328, 9.412227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.642136, 20.843830, 9.467478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139337, -0.045463, 0.989201,
		-0.022141, -0.998553, -0.049012,
		0.989997, -0.028731, 0.138129,
		16.939135, 20.835207, 9.508916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293728, 20.267662, 9.889612>,  <16.246138, 20.855328, 9.412227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.293728, 20.267662, 9.889612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.649437, 20.449642, 9.908437>,  <16.862862, 20.558830, 9.919732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.649437, 20.449642, 9.908437>,  <16.293728, 20.267662, 9.889612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.649437, 20.449642, 9.908437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049651, -0.198312, 0.978881,
		0.454676, -0.868154, -0.198942,
		0.889272, 0.454951, 0.047063,
		16.916218, 20.586128, 9.922556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.769470, 19.758667, 10.191781>,  <16.293728, 20.267662, 9.889612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.769470, 19.758667, 10.191781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.956303, 20.106998, 10.253091>,  <17.068403, 20.315996, 10.289877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.956303, 20.106998, 10.253091>,  <16.769470, 19.758667, 10.191781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.956303, 20.106998, 10.253091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263501, -0.302556, 0.915984,
		0.844039, -0.387452, -0.370782,
		0.467082, 0.870828, 0.153275,
		17.096428, 20.368246, 10.299073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.350100, 19.634483, 10.638287>,  <16.769470, 19.758667, 10.191781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.350100, 19.634483, 10.638287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.307308, 20.031029, 10.668620>,  <17.281633, 20.268957, 10.686820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.307308, 20.031029, 10.668620>,  <17.350100, 19.634483, 10.638287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.307308, 20.031029, 10.668620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228296, -0.049741, 0.972320,
		0.967696, 0.121331, -0.221003,
		-0.106980, 0.991365, 0.075834,
		17.275215, 20.328438, 10.691370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.935188, 19.899710, 10.983035>,  <17.350100, 19.634483, 10.638287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.935188, 19.899710, 10.983035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.662441, 20.185448, 11.045988>,  <17.498793, 20.356890, 11.083760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.662441, 20.185448, 11.045988>,  <17.935188, 19.899710, 10.983035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.662441, 20.185448, 11.045988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256913, 0.032429, 0.965890,
		0.684874, 0.699042, -0.205637,
		-0.681867, 0.714344, 0.157383,
		17.457882, 20.399752, 11.093203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.234833, 20.500509, 11.327477>,  <17.935188, 19.899710, 10.983035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.234833, 20.500509, 11.327477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.847401, 20.555031, 11.410686>,  <17.614941, 20.587744, 11.460612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.847401, 20.555031, 11.410686>,  <18.234833, 20.500509, 11.327477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.847401, 20.555031, 11.410686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235353, 0.232008, 0.943812,
		0.080380, 0.963117, -0.256797,
		-0.968580, 0.136302, 0.208024,
		17.556826, 20.595921, 11.473094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.293419, 20.986588, 11.699575>,  <18.234833, 20.500509, 11.327477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.293419, 20.986588, 11.699575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.925240, 20.864521, 11.797267>,  <17.704332, 20.791281, 11.855882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.925240, 20.864521, 11.797267>,  <18.293419, 20.986588, 11.699575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.925240, 20.864521, 11.797267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166068, 0.260309, 0.951137,
		-0.353831, 0.916031, -0.188922,
		-0.920448, -0.305168, 0.244228,
		17.649105, 20.772970, 11.870536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.971771, 21.587612, 12.135739>,  <18.293419, 20.986588, 11.699575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.971771, 21.587612, 12.135739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.786564, 21.240242, 12.206682>,  <17.675440, 21.031820, 12.249248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.786564, 21.240242, 12.206682>,  <17.971771, 21.587612, 12.135739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.786564, 21.240242, 12.206682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044731, 0.176950, 0.983203,
		-0.885219, 0.463174, -0.043085,
		-0.463018, -0.868423, 0.177357,
		17.647659, 20.979715, 12.259890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.444780, 21.714752, 12.567673>,  <17.971771, 21.587612, 12.135739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.444780, 21.714752, 12.567673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.478127, 21.319630, 12.620275>,  <17.498135, 21.082556, 12.651837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.478127, 21.319630, 12.620275>,  <17.444780, 21.714752, 12.567673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.478127, 21.319630, 12.620275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040222, 0.128522, 0.990891,
		-0.995707, -0.087894, -0.029017,
		0.083364, -0.987804, 0.131506,
		17.503136, 21.023289, 12.659727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.050880, 21.621506, 13.170040>,  <17.444780, 21.714752, 12.567673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.050880, 21.621506, 13.170040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.260021, 21.284504, 13.118178>,  <17.385506, 21.082302, 13.087062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.260021, 21.284504, 13.118178>,  <17.050880, 21.621506, 13.170040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.260021, 21.284504, 13.118178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027345, -0.168599, 0.985305,
		-0.851986, -0.511622, -0.111191,
		0.522850, -0.842507, -0.129654,
		17.416876, 21.031752, 13.079282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.749292, 21.150848, 13.593672>,  <17.050880, 21.621506, 13.170040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.749292, 21.150848, 13.593672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.120544, 21.010754, 13.543221>,  <17.343296, 20.926697, 13.512951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.120544, 21.010754, 13.543221>,  <16.749292, 21.150848, 13.593672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.120544, 21.010754, 13.543221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069583, -0.169615, 0.983051,
		-0.365696, -0.921175, -0.133054,
		0.928130, -0.350240, -0.126126,
		17.398983, 20.905682, 13.505383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.859285, 20.658268, 14.095478>,  <16.749292, 21.150848, 13.593672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.859285, 20.658268, 14.095478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.229244, 20.765617, 13.987741>,  <17.451220, 20.830027, 13.923099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.229244, 20.765617, 13.987741>,  <16.859285, 20.658268, 14.095478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.229244, 20.765617, 13.987741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286665, -0.026819, 0.957655,
		0.249784, -0.962942, -0.101738,
		0.924895, 0.268372, -0.269343,
		17.506712, 20.846128, 13.906938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.278532, 20.082291, 14.358109>,  <16.859285, 20.658268, 14.095478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.278532, 20.082291, 14.358109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.511055, 20.398743, 14.282006>,  <17.650568, 20.588614, 14.236344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.511055, 20.398743, 14.282006>,  <17.278532, 20.082291, 14.358109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.511055, 20.398743, 14.282006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265994, 0.036214, 0.963294,
		0.768981, -0.610575, -0.189384,
		0.581305, 0.791130, -0.190257,
		17.685446, 20.636082, 14.224929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.040169, 20.034412, 14.553137>,  <17.278532, 20.082291, 14.358109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.040169, 20.034412, 14.553137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.940819, 20.421532, 14.569503>,  <17.881208, 20.653803, 14.579322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.940819, 20.421532, 14.569503>,  <18.040169, 20.034412, 14.553137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.940819, 20.421532, 14.569503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351610, 0.050720, 0.934771,
		0.902596, 0.246561, -0.352886,
		-0.248377, 0.967799, 0.040914,
		17.866306, 20.711872, 14.581777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.609207, 20.321281, 14.843763>,  <18.040169, 20.034412, 14.553137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.609207, 20.321281, 14.843763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.343914, 20.615700, 14.897958>,  <18.184738, 20.792351, 14.930474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.343914, 20.615700, 14.897958>,  <18.609207, 20.321281, 14.843763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.343914, 20.615700, 14.897958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349568, 0.144595, 0.925686,
		0.661758, 0.661308, -0.353199,
		-0.663234, 0.736047, 0.135485,
		18.144943, 20.836514, 14.938603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.038408, 20.951303, 15.116262>,  <18.609207, 20.321281, 14.843763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.038408, 20.951303, 15.116262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.660606, 21.049587, 15.203473>,  <18.433926, 21.108559, 15.255799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.660606, 21.049587, 15.203473>,  <19.038408, 20.951303, 15.116262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.660606, 21.049587, 15.203473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285291, 0.284542, 0.915229,
		0.162845, 0.926640, -0.338851,
		-0.944505, 0.245711, 0.218026,
		18.377254, 21.123301, 15.268881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.038671, 21.538363, 15.607263>,  <19.038408, 20.951303, 15.116262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.038671, 21.538363, 15.607263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.681721, 21.368702, 15.668923>,  <18.467550, 21.266907, 15.705919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.681721, 21.368702, 15.668923>,  <19.038671, 21.538363, 15.607263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.681721, 21.368702, 15.668923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088801, 0.169868, 0.981458,
		-0.442471, 0.889518, -0.113921,
		-0.892375, -0.424150, 0.154151,
		18.414007, 21.241457, 15.715169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.693840, 22.022409, 16.100639>,  <19.038671, 21.538363, 15.607263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.693840, 22.022409, 16.100639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.553425, 21.647919, 16.106922>,  <18.469175, 21.423223, 16.110691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.553425, 21.647919, 16.106922>,  <18.693840, 22.022409, 16.100639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.553425, 21.647919, 16.106922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076319, -0.011889, 0.997013,
		-0.933245, 0.351189, 0.075626,
		-0.351039, -0.936229, 0.015708,
		18.448112, 21.367050, 16.111635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.435526, 21.992762, 16.683458>,  <18.693840, 22.022409, 16.100639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.435526, 21.992762, 16.683458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.402500, 21.604065, 16.595007>,  <18.382685, 21.370846, 16.541935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.402500, 21.604065, 16.595007>,  <18.435526, 21.992762, 16.683458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.402500, 21.604065, 16.595007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068550, -0.226900, 0.971502,
		-0.994225, 0.065055, 0.085348,
		-0.082567, -0.971743, -0.221130,
		18.377729, 21.312542, 16.528667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.822803, 21.703363, 17.058498>,  <18.435526, 21.992762, 16.683458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.822803, 21.703363, 17.058498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.086815, 21.408916, 16.998510>,  <18.245222, 21.232248, 16.962517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.086815, 21.408916, 16.998510>,  <17.822803, 21.703363, 17.058498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.086815, 21.408916, 16.998510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003613, -0.196517, 0.980494,
		-0.751231, -0.647696, -0.127047,
		0.660029, -0.736119, -0.149970,
		18.284824, 21.188082, 16.953520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.544950, 21.224100, 17.455519>,  <17.822803, 21.703363, 17.058498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.544950, 21.224100, 17.455519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.931755, 21.137291, 17.402170>,  <18.163837, 21.085205, 17.370161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.931755, 21.137291, 17.402170>,  <17.544950, 21.224100, 17.455519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.931755, 21.137291, 17.402170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094831, -0.179239, 0.979224,
		-0.236422, -0.959570, -0.152746,
		0.967012, -0.217025, -0.133373,
		18.221859, 21.072184, 17.362158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.694973, 20.641867, 17.921610>,  <17.544950, 21.224100, 17.455519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.694973, 20.641867, 17.921610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.041992, 20.816864, 17.826984>,  <18.250204, 20.921862, 17.770208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.041992, 20.816864, 17.826984>,  <17.694973, 20.641867, 17.921610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.041992, 20.816864, 17.826984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348440, -0.195230, 0.916774,
		0.354898, -0.877773, -0.321811,
		0.867546, 0.437493, -0.236565,
		18.302256, 20.948112, 17.756016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.240944, 20.245211, 18.337254>,  <17.694973, 20.641867, 17.921610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.240944, 20.245211, 18.337254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.505112, 20.531162, 18.245348>,  <18.663612, 20.702734, 18.190205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.505112, 20.531162, 18.245348>,  <18.240944, 20.245211, 18.337254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.505112, 20.531162, 18.245348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531620, -0.229045, 0.815426,
		0.530305, -0.660671, -0.531310,
		0.660421, 0.714880, -0.229762,
		18.703238, 20.745626, 18.176420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.895767, 19.910084, 18.248003>,  <18.240944, 20.245211, 18.337254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.895767, 19.910084, 18.248003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.980648, 20.292271, 18.330034>,  <19.031576, 20.521582, 18.379253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.980648, 20.292271, 18.330034>,  <18.895767, 19.910084, 18.248003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.980648, 20.292271, 18.330034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656566, -0.294832, 0.694258,
		0.723803, -0.012676, -0.689890,
		0.212202, 0.955465, 0.205078,
		19.044310, 20.578911, 18.391558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.542728, 20.003426, 18.292753>,  <18.895767, 19.910084, 18.248003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.542728, 20.003426, 18.292753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.398354, 20.314896, 18.498041>,  <19.311729, 20.501778, 18.621214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.398354, 20.314896, 18.498041>,  <19.542728, 20.003426, 18.292753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.398354, 20.314896, 18.498041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691834, -0.145462, 0.707253,
		0.625372, 0.610335, -0.486210,
		-0.360937, 0.778673, 0.513218,
		19.290073, 20.548498, 18.652006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.155373, 20.302599, 18.616417>,  <19.542728, 20.003426, 18.292753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.155373, 20.302599, 18.616417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.871117, 20.465691, 18.845762>,  <19.700563, 20.563545, 18.983370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.871117, 20.465691, 18.845762>,  <20.155373, 20.302599, 18.616417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.871117, 20.465691, 18.845762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587178, -0.105223, 0.802589,
		0.387569, 0.907020, -0.164633,
		-0.710642, 0.407728, 0.573364,
		19.657925, 20.588009, 19.017771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.577639, 20.598751, 19.099087>,  <20.155373, 20.302599, 18.616417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.577639, 20.598751, 19.099087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.209843, 20.554134, 19.249868>,  <19.989164, 20.527365, 19.340338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.209843, 20.554134, 19.249868>,  <20.577639, 20.598751, 19.099087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.209843, 20.554134, 19.249868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388199, -0.106561, 0.915394,
		-0.061936, 0.988030, 0.141283,
		-0.919492, -0.111542, 0.376953,
		19.933994, 20.520672, 19.362955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.586903, 20.960949, 19.736019>,  <20.577639, 20.598751, 19.099087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.586903, 20.960949, 19.736019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.296906, 20.685593, 19.744965>,  <20.122908, 20.520378, 19.750332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.296906, 20.685593, 19.744965>,  <20.586903, 20.960949, 19.736019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.296906, 20.685593, 19.744965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290937, -0.276650, 0.915872,
		-0.624291, 0.670508, 0.400848,
		-0.724994, -0.688392, 0.022365,
		20.079407, 20.479074, 19.751675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.328003, 21.044489, 20.396544>,  <20.586903, 20.960949, 19.736019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.328003, 21.044489, 20.396544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.196857, 20.679790, 20.297567>,  <20.118170, 20.460972, 20.238182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.196857, 20.679790, 20.297567>,  <20.328003, 21.044489, 20.396544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.196857, 20.679790, 20.297567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192023, -0.320765, 0.927489,
		-0.925005, 0.256574, 0.280243,
		-0.327862, -0.911745, -0.247441,
		20.098499, 20.406267, 20.223335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.975542, 20.909365, 20.957222>,  <20.328003, 21.044489, 20.396544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.975542, 20.909365, 20.957222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.063374, 20.572079, 20.760946>,  <20.116072, 20.369707, 20.643181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.063374, 20.572079, 20.760946>,  <19.975542, 20.909365, 20.957222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.063374, 20.572079, 20.760946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356017, -0.399023, 0.845004,
		-0.908316, -0.360238, 0.212582,
		0.219577, -0.843214, -0.490690,
		20.129248, 20.319115, 20.613739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.589817, 20.344450, 21.372850>,  <19.975542, 20.909365, 20.957222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.589817, 20.344450, 21.372850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.886555, 20.175545, 21.164482>,  <20.064598, 20.074202, 21.039461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.886555, 20.175545, 21.164482>,  <19.589817, 20.344450, 21.372850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.886555, 20.175545, 21.164482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426636, -0.302119, 0.852470,
		-0.517349, -0.854644, -0.043972,
		0.741844, -0.422264, -0.520923,
		20.109108, 20.048866, 21.008205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.573345, 19.558470, 21.437803>,  <19.589817, 20.344450, 21.372850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.573345, 19.558470, 21.437803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.936424, 19.701931, 21.350670>,  <20.154272, 19.788008, 21.298389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.936424, 19.701931, 21.350670>,  <19.573345, 19.558470, 21.437803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.936424, 19.701931, 21.350670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338421, -0.318749, 0.885365,
		0.248106, -0.877363, -0.410704,
		0.907697, 0.358655, -0.217835,
		20.208733, 19.809526, 21.285320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.077364, 19.023024, 21.597195>,  <19.573345, 19.558470, 21.437803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.077364, 19.023024, 21.597195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.273701, 19.371098, 21.579969>,  <20.391502, 19.579941, 21.569635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.273701, 19.371098, 21.579969>,  <20.077364, 19.023024, 21.597195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.273701, 19.371098, 21.579969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510733, -0.247342, 0.823392,
		0.705851, -0.426149, -0.565837,
		0.490843, 0.870183, -0.043062,
		20.420954, 19.632153, 21.567051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.730947, 18.863785, 21.929407>,  <20.077364, 19.023024, 21.597195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.730947, 18.863785, 21.929407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.708473, 19.263035, 21.939148>,  <20.694988, 19.502584, 21.944992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.708473, 19.263035, 21.939148>,  <20.730947, 18.863785, 21.929407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.708473, 19.263035, 21.939148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502869, 0.007220, 0.864332,
		0.862534, 0.060809, -0.502331,
		-0.056186, 0.998123, 0.024351,
		20.691618, 19.562471, 21.946453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.704405, 18.284006, 22.357691>,  <20.730947, 18.863785, 21.929407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.704405, 18.284006, 22.357691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.704338, 17.898598, 22.464746>,  <20.704298, 17.667353, 22.528980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.704338, 17.898598, 22.464746>,  <20.704405, 18.284006, 22.357691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.704338, 17.898598, 22.464746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584184, -0.217128, -0.782039,
		0.811621, -0.156481, -0.562837,
		-0.000166, -0.963519, 0.267639,
		20.704288, 17.609543, 22.545038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.055283, 17.945362, 21.808504>,  <20.704405, 18.284006, 22.357691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.055283, 17.945362, 21.808504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.792629, 17.720753, 22.009909>,  <20.635036, 17.585987, 22.130751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.792629, 17.720753, 22.009909>,  <21.055283, 17.945362, 21.808504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.792629, 17.720753, 22.009909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468298, -0.219771, -0.855803,
		0.591211, -0.797741, -0.118652,
		-0.656633, -0.561525, 0.503511,
		20.595640, 17.552296, 22.160961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.963305, 17.351194, 21.422831>,  <21.055283, 17.945362, 21.808504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.963305, 17.351194, 21.422831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635349, 17.316605, 21.649214>,  <20.438576, 17.295851, 21.785044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635349, 17.316605, 21.649214>,  <20.963305, 17.351194, 21.422831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.635349, 17.316605, 21.649214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558463, -0.096946, -0.823845,
		0.126110, -0.991526, 0.031191,
		-0.819888, -0.086476, 0.565956,
		20.389383, 17.290663, 21.819000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.668844, 16.764694, 21.204292>,  <20.963305, 17.351194, 21.422831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.668844, 16.764694, 21.204292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.390465, 16.998512, 21.371126>,  <20.223436, 17.138803, 21.471228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.390465, 16.998512, 21.371126>,  <20.668844, 16.764694, 21.204292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.390465, 16.998512, 21.371126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575737, -0.107088, -0.810592,
		-0.429162, -0.804264, 0.411071,
		-0.695951, 0.584544, 0.417086,
		20.181679, 17.173876, 21.496252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.085691, 16.465376, 21.045992>,  <20.668844, 16.764694, 21.204292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.085691, 16.465376, 21.045992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.938148, 16.826294, 21.135263>,  <19.849623, 17.042845, 21.188826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.938148, 16.826294, 21.135263>,  <20.085691, 16.465376, 21.045992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.938148, 16.826294, 21.135263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701582, -0.112772, -0.703609,
		-0.609696, -0.416107, 0.674630,
		-0.368856, 0.902296, 0.223177,
		19.827492, 17.096983, 21.202217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.302307, 16.462523, 21.057501>,  <20.085691, 16.465376, 21.045992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.302307, 16.462523, 21.057501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.393906, 16.848061, 21.003010>,  <19.448866, 17.079384, 20.970314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.393906, 16.848061, 21.003010>,  <19.302307, 16.462523, 21.057501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.393906, 16.848061, 21.003010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687275, 0.060982, -0.723833,
		-0.689357, 0.259383, 0.676393,
		0.228998, 0.963848, -0.136229,
		19.462605, 17.137215, 20.962141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.620947, 16.777185, 20.901178>,  <19.302307, 16.462523, 21.057501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.620947, 16.777185, 20.901178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.889065, 17.057953, 20.804834>,  <19.049936, 17.226414, 20.747028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.889065, 17.057953, 20.804834>,  <18.620947, 16.777185, 20.901178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.889065, 17.057953, 20.804834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504168, 0.192571, -0.841862,
		-0.544537, 0.685730, 0.482965,
		0.670294, 0.701920, -0.240861,
		19.090153, 17.268528, 20.732576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.185921, 17.304394, 20.748768>,  <18.620947, 16.777185, 20.901178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.185921, 17.304394, 20.748768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.538654, 17.346046, 20.564800>,  <18.750294, 17.371038, 20.454420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.538654, 17.346046, 20.564800>,  <18.185921, 17.304394, 20.748768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.538654, 17.346046, 20.564800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468971, 0.091622, -0.878448,
		-0.049334, 0.990334, 0.129630,
		0.881835, 0.104130, -0.459918,
		18.803205, 17.377285, 20.426825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.039852, 17.881594, 20.283304>,  <18.185921, 17.304394, 20.748768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.039852, 17.881594, 20.283304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.367382, 17.702183, 20.140003>,  <18.563900, 17.594536, 20.054022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.367382, 17.702183, 20.140003>,  <18.039852, 17.881594, 20.283304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.367382, 17.702183, 20.140003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346893, 0.110622, -0.931358,
		0.457372, 0.886896, -0.065012,
		0.818826, -0.448529, -0.358254,
		18.613029, 17.567623, 20.032528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.166094, 18.290379, 19.685780>,  <18.039852, 17.881594, 20.283304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.166094, 18.290379, 19.685780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.388145, 17.961529, 19.635279>,  <18.521378, 17.764219, 19.604979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.388145, 17.961529, 19.635279>,  <18.166094, 18.290379, 19.685780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.388145, 17.961529, 19.635279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264809, -0.030798, -0.963809,
		0.788483, 0.568473, -0.234803,
		0.555131, -0.822125, -0.126253,
		18.554686, 17.714891, 19.597403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.570915, 18.445219, 19.087246>,  <18.166094, 18.290379, 19.685780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.570915, 18.445219, 19.087246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.517456, 18.051289, 19.131523>,  <18.485380, 17.814930, 19.158091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.517456, 18.051289, 19.131523>,  <18.570915, 18.445219, 19.087246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.517456, 18.051289, 19.131523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272145, -0.070932, -0.959638,
		0.952930, -0.158379, -0.258536,
		-0.133648, -0.984828, 0.110695,
		18.477362, 17.755840, 19.164732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.877502, 18.163128, 18.477301>,  <18.570915, 18.445219, 19.087246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.877502, 18.163128, 18.477301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.655659, 17.857620, 18.609398>,  <18.522552, 17.674314, 18.688656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.655659, 17.857620, 18.609398>,  <18.877502, 18.163128, 18.477301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.655659, 17.857620, 18.609398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357373, -0.139776, -0.923443,
		0.751459, -0.630172, -0.195430,
		-0.554611, -0.763771, 0.330242,
		18.489275, 17.628489, 18.708471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.053116, 17.500519, 18.146908>,  <18.877502, 18.163128, 18.477301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.053116, 17.500519, 18.146908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.670971, 17.489716, 18.264589>,  <18.441685, 17.483234, 18.335197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.670971, 17.489716, 18.264589>,  <19.053116, 17.500519, 18.146908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.670971, 17.489716, 18.264589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279364, -0.241442, -0.929334,
		0.096134, -0.970039, 0.223119,
		-0.955361, -0.027009, 0.294205,
		18.384363, 17.481613, 18.352850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.788460, 16.963198, 17.945404>,  <19.053116, 17.500519, 18.146908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.788460, 16.963198, 17.945404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.464760, 17.191956, 17.999142>,  <18.270540, 17.329210, 18.031385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.464760, 17.191956, 17.999142>,  <18.788460, 16.963198, 17.945404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.464760, 17.191956, 17.999142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300334, -0.206213, -0.931276,
		-0.504890, -0.793983, 0.338638,
		-0.809250, 0.571897, 0.134345,
		18.221985, 17.363525, 18.039446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.144928, 16.606562, 17.619728>,  <18.788460, 16.963198, 17.945404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.144928, 16.606562, 17.619728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.048050, 16.994648, 17.621471>,  <17.989923, 17.227501, 17.622519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.048050, 16.994648, 17.621471>,  <18.144928, 16.606562, 17.619728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.048050, 16.994648, 17.621471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469060, -0.113155, -0.875887,
		-0.849308, -0.214180, 0.482496,
		-0.242195, 0.970218, 0.004360,
		17.975391, 17.285713, 17.622780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.641218, 16.555780, 17.134020>,  <18.144928, 16.606562, 17.619728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.641218, 16.555780, 17.134020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.638290, 16.952797, 17.182688>,  <17.636534, 17.191008, 17.211889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.638290, 16.952797, 17.182688>,  <17.641218, 16.555780, 17.134020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.638290, 16.952797, 17.182688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445273, 0.105710, -0.889133,
		-0.895365, -0.060685, 0.441179,
		-0.007320, 0.992544, 0.121671,
		17.636095, 17.250561, 17.219189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.018770, 16.761255, 16.812298>,  <17.641218, 16.555780, 17.134020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.018770, 16.761255, 16.812298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.265205, 17.076141, 16.823042>,  <17.413067, 17.265074, 16.829489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.265205, 17.076141, 16.823042>,  <17.018770, 16.761255, 16.812298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.265205, 17.076141, 16.823042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333763, 0.291792, -0.896359,
		-0.713467, 0.543274, 0.442514,
		0.616090, 0.787217, 0.026859,
		17.450033, 17.312307, 16.831100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.637873, 17.366558, 16.620127>,  <17.018770, 16.761255, 16.812298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.637873, 17.366558, 16.620127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.018192, 17.484219, 16.581232>,  <17.246384, 17.554815, 16.557896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.018192, 17.484219, 16.581232>,  <16.637873, 17.366558, 16.620127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.018192, 17.484219, 16.581232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204789, 0.361236, -0.909709,
		-0.232466, 0.884864, 0.403701,
		0.950800, 0.294150, -0.097235,
		17.303432, 17.572464, 16.552061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.700815, 18.189802, 16.351965>,  <16.637873, 17.366558, 16.620127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.700815, 18.189802, 16.351965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.018818, 17.959332, 16.276087>,  <17.209620, 17.821049, 16.230560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.018818, 17.959332, 16.276087>,  <16.700815, 18.189802, 16.351965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.018818, 17.959332, 16.276087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037784, 0.265073, -0.963488,
		0.605424, 0.773146, 0.188964,
		0.795006, -0.576179, -0.189694,
		17.257320, 17.786478, 16.219179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.108881, 18.613871, 15.929310>,  <16.700815, 18.189802, 16.351965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.108881, 18.613871, 15.929310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.261631, 18.254921, 15.840865>,  <17.353281, 18.039551, 15.787798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.261631, 18.254921, 15.840865>,  <17.108881, 18.613871, 15.929310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.261631, 18.254921, 15.840865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167339, 0.302424, -0.938369,
		0.908939, 0.321338, 0.265654,
		0.381874, -0.897375, -0.221113,
		17.376194, 17.985708, 15.774531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.723473, 18.785767, 15.565049>,  <17.108881, 18.613871, 15.929310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.723473, 18.785767, 15.565049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.618496, 18.411572, 15.470403>,  <17.555510, 18.187054, 15.413615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.618496, 18.411572, 15.470403>,  <17.723473, 18.785767, 15.565049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.618496, 18.411572, 15.470403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068169, 0.262572, -0.962501,
		0.962537, -0.236471, -0.132681,
		-0.262442, -0.935488, -0.236615,
		17.539762, 18.130924, 15.399418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.255299, 18.662542, 15.091393>,  <17.723473, 18.785767, 15.565049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.255299, 18.662542, 15.091393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.975903, 18.387489, 15.012124>,  <17.808266, 18.222458, 14.964563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.975903, 18.387489, 15.012124>,  <18.255299, 18.662542, 15.091393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.975903, 18.387489, 15.012124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061031, 0.218672, -0.973888,
		0.713013, -0.692345, -0.110773,
		-0.698489, -0.687634, -0.198171,
		17.766356, 18.181200, 14.952673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.486034, 18.191107, 14.551555>,  <18.255299, 18.662542, 15.091393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.486034, 18.191107, 14.551555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.086075, 18.195995, 14.554563>,  <17.846100, 18.198929, 14.556367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.086075, 18.195995, 14.554563>,  <18.486034, 18.191107, 14.551555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.086075, 18.195995, 14.554563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004800, 0.209024, -0.977899,
		-0.013523, -0.977834, -0.208944,
		-0.999897, 0.012221, 0.007520,
		17.786106, 18.199661, 14.556819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.407629, 18.022415, 13.905641>,  <18.486034, 18.191107, 14.551555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.407629, 18.022415, 13.905641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.030449, 18.117176, 13.999209>,  <17.804140, 18.174032, 14.055350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.030449, 18.117176, 13.999209>,  <18.407629, 18.022415, 13.905641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.030449, 18.117176, 13.999209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177185, 0.237755, -0.955028,
		-0.281863, -0.941992, -0.182217,
		-0.942952, 0.236901, 0.233921,
		17.747562, 18.188246, 14.069386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.986353, 17.643826, 13.408144>,  <18.407629, 18.022415, 13.905641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.986353, 17.643826, 13.408144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.728981, 17.910046, 13.559426>,  <17.574558, 18.069778, 13.650195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.728981, 17.910046, 13.559426>,  <17.986353, 17.643826, 13.408144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.728981, 17.910046, 13.559426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341323, 0.192797, -0.919961,
		-0.685197, -0.721022, 0.103115,
		-0.643432, 0.665550, 0.378205,
		17.535952, 18.109711, 13.672888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.331982, 17.377588, 13.539434>,  <17.986353, 17.643826, 13.408144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.331982, 17.377588, 13.539434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.271061, 17.767456, 13.473919>,  <17.234509, 18.001377, 13.434609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.271061, 17.767456, 13.473919>,  <17.331982, 17.377588, 13.539434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.271061, 17.767456, 13.473919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536975, -0.220730, -0.814209,
		-0.829736, -0.036054, 0.556990,
		-0.152300, 0.974668, -0.163788,
		17.225370, 18.059856, 13.424783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.654730, 17.389263, 13.383009>,  <17.331982, 17.377588, 13.539434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.654730, 17.389263, 13.383009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.832924, 17.713604, 13.231188>,  <16.939840, 17.908209, 13.140095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.832924, 17.713604, 13.231188>,  <16.654730, 17.389263, 13.383009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.832924, 17.713604, 13.231188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387353, -0.207648, -0.898243,
		-0.807156, 0.547175, 0.221582,
		0.445485, 0.810853, -0.379554,
		16.966570, 17.956860, 13.117322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.167274, 17.704662, 13.172755>,  <16.654730, 17.389263, 13.383009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.167274, 17.704662, 13.172755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.469547, 17.849594, 12.954522>,  <16.650911, 17.936552, 12.823583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.469547, 17.849594, 12.954522>,  <16.167274, 17.704662, 13.172755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.469547, 17.849594, 12.954522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525213, -0.162408, -0.835329,
		-0.391270, 0.917792, 0.067570,
		0.755684, 0.362328, -0.545582,
		16.696253, 17.958292, 12.790848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.845491, 18.035538, 12.684945>,  <16.167274, 17.704662, 13.172755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.845491, 18.035538, 12.684945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.214931, 18.048939, 12.532188>,  <16.436596, 18.056980, 12.440535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.214931, 18.048939, 12.532188>,  <15.845491, 18.035538, 12.684945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.214931, 18.048939, 12.532188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377710, -0.090853, -0.921456,
		-0.065569, 0.995301, -0.071256,
		0.923599, 0.033504, -0.381892,
		16.492012, 18.058990, 12.417621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.956570, 18.613176, 12.276156>,  <15.845491, 18.035538, 12.684945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.956570, 18.613176, 12.276156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.210831, 18.325787, 12.163205>,  <16.363388, 18.153353, 12.095434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.210831, 18.325787, 12.163205>,  <15.956570, 18.613176, 12.276156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.210831, 18.325787, 12.163205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390463, 0.016318, -0.920474,
		0.665947, 0.695360, -0.270166,
		0.635652, -0.718476, -0.282379,
		16.401525, 18.110243, 12.078491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.169725, 18.805950, 11.643360>,  <15.956570, 18.613176, 12.276156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.169725, 18.805950, 11.643360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.280067, 18.421505, 11.638183>,  <16.346272, 18.190838, 11.635077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.280067, 18.421505, 11.638183>,  <16.169725, 18.805950, 11.643360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.280067, 18.421505, 11.638183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320152, -0.079175, -0.944052,
		0.906315, 0.264564, -0.329543,
		0.275854, -0.961112, -0.012943,
		16.362823, 18.133171, 11.634299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.604101, 18.699453, 11.064800>,  <16.169725, 18.805950, 11.643360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.604101, 18.699453, 11.064800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.486786, 18.322601, 11.129763>,  <16.416397, 18.096491, 11.168740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.486786, 18.322601, 11.129763>,  <16.604101, 18.699453, 11.064800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.486786, 18.322601, 11.129763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304143, -0.069103, -0.950117,
		0.906355, -0.328051, -0.266275,
		-0.293287, -0.942129, 0.162406,
		16.398800, 18.039963, 11.178485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.842390, 18.253273, 10.467927>,  <16.604101, 18.699453, 11.064800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.842390, 18.253273, 10.467927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.560120, 18.028893, 10.641066>,  <16.390759, 17.894264, 10.744948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.560120, 18.028893, 10.641066>,  <16.842390, 18.253273, 10.467927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.560120, 18.028893, 10.641066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321323, -0.291102, -0.901117,
		0.631487, -0.774978, 0.025176,
		-0.705674, -0.560953, 0.432846,
		16.348417, 17.860607, 10.770919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.840839, 17.574926, 10.167541>,  <16.842390, 18.253273, 10.467927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.840839, 17.574926, 10.167541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.478722, 17.583088, 10.337257>,  <16.261450, 17.587984, 10.439087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.478722, 17.583088, 10.337257>,  <16.840839, 17.574926, 10.167541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.478722, 17.583088, 10.337257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402713, -0.358986, -0.841992,
		0.135136, -0.933120, 0.333205,
		-0.905296, 0.020402, 0.424292,
		16.207132, 17.589209, 10.464544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.540106, 16.926737, 9.992762>,  <16.840839, 17.574926, 10.167541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.540106, 16.926737, 9.992762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.217503, 17.121353, 10.127116>,  <16.023941, 17.238123, 10.207729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.217503, 17.121353, 10.127116>,  <16.540106, 16.926737, 9.992762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.217503, 17.121353, 10.127116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530603, -0.345072, -0.774200,
		-0.260774, -0.802623, 0.536464,
		-0.806509, 0.486541, 0.335888,
		15.975550, 17.267317, 10.227882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.977877, 16.377874, 10.047219>,  <16.540106, 16.926737, 9.992762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.977877, 16.377874, 10.047219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.816936, 16.741974, 10.008101>,  <15.720371, 16.960434, 9.984631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.816936, 16.741974, 10.008101>,  <15.977877, 16.377874, 10.047219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.816936, 16.741974, 10.008101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730265, -0.383535, -0.565345,
		-0.552111, -0.156052, 0.819037,
		-0.402352, 0.910247, -0.097795,
		15.696230, 17.015047, 9.978764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.278802, 16.273470, 10.246843>,  <15.977877, 16.377874, 10.047219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.278802, 16.273470, 10.246843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.312747, 16.593899, 10.009835>,  <15.333115, 16.786156, 9.867630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.312747, 16.593899, 10.009835>,  <15.278802, 16.273470, 10.246843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.312747, 16.593899, 10.009835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569403, -0.449009, -0.688601,
		-0.817667, 0.395820, 0.418028,
		0.084864, 0.801072, -0.592521,
		15.338206, 16.834221, 9.832079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.742971, 16.293873, 9.864957>,  <15.278802, 16.273470, 10.246843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.742971, 16.293873, 9.864957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.944583, 16.566547, 9.652822>,  <15.065550, 16.730152, 9.525542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.944583, 16.566547, 9.652822>,  <14.742971, 16.293873, 9.864957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.944583, 16.566547, 9.652822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449494, -0.317287, -0.835035,
		-0.737502, 0.659265, 0.146493,
		0.504029, 0.681688, -0.530336,
		15.095792, 16.771053, 9.493722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.260015, 16.680059, 9.490475>,  <14.742971, 16.293873, 9.864957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.260015, 16.680059, 9.490475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.592315, 16.742657, 9.276796>,  <14.791695, 16.780214, 9.148589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.592315, 16.742657, 9.276796>,  <14.260015, 16.680059, 9.490475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.592315, 16.742657, 9.276796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461967, -0.341569, -0.818484,
		-0.310552, 0.926736, -0.211464,
		0.830749, 0.156493, -0.534197,
		14.841539, 16.789604, 9.116537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.046950, 16.918066, 8.822996>,  <14.260015, 16.680059, 9.490475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.046950, 16.918066, 8.822996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.417068, 16.775280, 8.771759>,  <14.639138, 16.689608, 8.741017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.417068, 16.775280, 8.771759>,  <14.046950, 16.918066, 8.822996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.417068, 16.775280, 8.771759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231587, -0.264354, -0.936207,
		0.300333, 0.895931, -0.327274,
		0.925293, -0.356967, -0.128092,
		14.694655, 16.668190, 8.733332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.238488, 16.708876, 8.171750>,  <14.046950, 16.918066, 8.822996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.238488, 16.708876, 8.171750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.620479, 16.598804, 8.216110>,  <14.849673, 16.532763, 8.242726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.620479, 16.598804, 8.216110>,  <14.238488, 16.708876, 8.171750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.620479, 16.598804, 8.216110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092724, -0.631903, -0.769481,
		0.281820, 0.724553, -0.628968,
		0.954976, -0.275176, 0.110900,
		14.906972, 16.516253, 8.249380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.720342, 16.781792, 7.538005>,  <14.238488, 16.708876, 8.171750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.720342, 16.781792, 7.538005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.761708, 16.473892, 7.789971>,  <14.786528, 16.289152, 7.941151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.761708, 16.473892, 7.789971>,  <14.720342, 16.781792, 7.538005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.761708, 16.473892, 7.789971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407325, -0.610546, -0.679205,
		0.907409, -0.186341, -0.376677,
		0.103415, -0.769747, 0.629916,
		14.792733, 16.242968, 7.978946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.141510, 16.233377, 7.197806>,  <14.720342, 16.781792, 7.538005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.141510, 16.233377, 7.197806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.915860, 16.074619, 7.487423>,  <14.780470, 15.979363, 7.661193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.915860, 16.074619, 7.487423>,  <15.141510, 16.233377, 7.197806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.915860, 16.074619, 7.487423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260531, -0.746535, -0.612216,
		0.783509, -0.534001, 0.317735,
		-0.564125, -0.396898, 0.724041,
		14.746623, 15.955550, 7.704635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.363510, 15.484696, 7.471958>,  <15.141510, 16.233377, 7.197806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.363510, 15.484696, 7.471958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.968905, 15.525196, 7.523404>,  <14.732142, 15.549496, 7.554272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.968905, 15.525196, 7.523404>,  <15.363510, 15.484696, 7.471958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.968905, 15.525196, 7.523404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158963, -0.780012, -0.605237,
		0.039041, -0.617519, 0.785587,
		-0.986513, 0.101250, 0.128616,
		14.672952, 15.555572, 7.561989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.908448, 14.816868, 7.631724>,  <15.363510, 15.484696, 7.471958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.908448, 14.816868, 7.631724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.716643, 15.087166, 7.407782>,  <14.601561, 15.249345, 7.273417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.716643, 15.087166, 7.407782>,  <14.908448, 14.816868, 7.631724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.716643, 15.087166, 7.407782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183139, -0.700999, -0.689246,
		-0.858212, -0.227971, 0.459893,
		-0.479512, 0.675744, -0.559856,
		14.572789, 15.289889, 7.239825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.701767, 14.488213, 7.037998>,  <14.908448, 14.816868, 7.631724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.701767, 14.488213, 7.037998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.609126, 14.833851, 6.859247>,  <14.553541, 15.041234, 6.751997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.609126, 14.833851, 6.859247>,  <14.701767, 14.488213, 7.037998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.609126, 14.833851, 6.859247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105374, -0.478948, -0.871496,
		-0.967087, -0.154752, 0.201979,
		-0.231603, 0.864095, -0.446878,
		14.539645, 15.093080, 6.725184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.680799, 14.181627, 6.440638>,  <14.701767, 14.488213, 7.037998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.680799, 14.181627, 6.440638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.614463, 14.573021, 6.391543>,  <14.574661, 14.807858, 6.362087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.614463, 14.573021, 6.391543>,  <14.680799, 14.181627, 6.440638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.614463, 14.573021, 6.391543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035256, -0.130263, -0.990852,
		-0.985522, -0.159996, 0.056101,
		-0.165841, 0.978485, -0.122736,
		14.564711, 14.866567, 6.354722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.050896, 14.405927, 6.036179>,  <14.680799, 14.181627, 6.440638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.050896, 14.405927, 6.036179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.358144, 14.661018, 6.013224>,  <14.542493, 14.814074, 5.999450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.358144, 14.661018, 6.013224>,  <14.050896, 14.405927, 6.036179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.358144, 14.661018, 6.013224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038845, -0.043050, -0.998318,
		-0.639127, 0.769056, -0.008295,
		0.768119, 0.637730, -0.057388,
		14.588579, 14.852337, 5.996007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.892666, 15.022393, 5.695282>,  <14.050896, 14.405927, 6.036179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.892666, 15.022393, 5.695282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.262370, 14.881565, 5.636239>,  <14.484193, 14.797068, 5.600813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.262370, 14.881565, 5.636239>,  <13.892666, 15.022393, 5.695282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.262370, 14.881565, 5.636239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179572, -0.059732, -0.981930,
		0.336892, 0.934065, -0.118430,
		0.924260, -0.352071, -0.147609,
		14.539648, 14.775944, 5.591956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.418360, 15.535490, 5.309376>,  <13.892666, 15.022393, 5.695282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.418360, 15.535490, 5.309376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.478086, 15.143135, 5.259474>,  <14.513921, 14.907722, 5.229532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.478086, 15.143135, 5.259474>,  <14.418360, 15.535490, 5.309376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.478086, 15.143135, 5.259474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280661, 0.078938, -0.956555,
		0.948122, 0.177842, -0.263510,
		0.149315, -0.980888, -0.124756,
		14.522880, 14.848868, 5.222047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.879825, 15.424910, 4.744272>,  <14.418360, 15.535490, 5.309376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.879825, 15.424910, 4.744272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.657649, 15.096119, 4.794620>,  <14.524343, 14.898845, 4.824828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.657649, 15.096119, 4.794620>,  <14.879825, 15.424910, 4.744272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.657649, 15.096119, 4.794620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163650, -0.040354, -0.985693,
		0.815296, -0.568090, -0.112102,
		-0.555439, -0.821976, 0.125868,
		14.491017, 14.849526, 4.832380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.166213, 14.952595, 4.342688>,  <14.879825, 15.424910, 4.744272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.166213, 14.952595, 4.342688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.774459, 14.902859, 4.406368>,  <14.539407, 14.873017, 4.444576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.774459, 14.902859, 4.406368>,  <15.166213, 14.952595, 4.342688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.774459, 14.902859, 4.406368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158821, -0.013021, -0.987222,
		0.124823, -0.992154, -0.006995,
		-0.979385, -0.124339, 0.159201,
		14.480643, 14.865557, 4.454128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.879324, 14.342389, 3.966691>,  <15.166213, 14.952595, 4.342688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.879324, 14.342389, 3.966691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.603562, 14.621971, 4.042779>,  <14.438106, 14.789721, 4.088432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.603562, 14.621971, 4.042779>,  <14.879324, 14.342389, 3.966691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.603562, 14.621971, 4.042779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033173, 0.231860, -0.972183,
		-0.723617, -0.676537, -0.136659,
		-0.689404, 0.698955, 0.190221,
		14.396741, 14.831657, 4.099845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.205991, 14.285670, 3.486278>,  <14.879324, 14.342389, 3.966691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.205991, 14.285670, 3.486278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.263297, 14.654842, 3.629205>,  <14.297681, 14.876346, 3.714960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.263297, 14.654842, 3.629205>,  <14.205991, 14.285670, 3.486278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.263297, 14.654842, 3.629205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077934, 0.370440, -0.925581,
		-0.986611, 0.104757, 0.124998,
		0.143266, 0.922930, 0.357316,
		14.306276, 14.931722, 3.736399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.614019, 14.697100, 3.342935>,  <14.205991, 14.285670, 3.486278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.614019, 14.697100, 3.342935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.938668, 14.929920, 3.362879>,  <14.133457, 15.069613, 3.374845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.938668, 14.929920, 3.362879>,  <13.614019, 14.697100, 3.342935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.938668, 14.929920, 3.362879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060650, 0.168843, -0.983775,
		-0.581026, 0.795430, 0.172338,
		0.811622, 0.582051, 0.049859,
		14.182155, 15.104535, 3.377836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.545649, 15.474851, 2.965438>,  <13.614019, 14.697100, 3.342935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.545649, 15.474851, 2.965438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.910802, 15.311893, 2.955046>,  <14.129894, 15.214119, 2.948812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.910802, 15.311893, 2.955046>,  <13.545649, 15.474851, 2.965438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.910802, 15.311893, 2.955046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132540, 0.355982, -0.925046,
		0.386105, 0.841016, 0.378966,
		0.912884, -0.407393, -0.025978,
		14.184667, 15.189675, 2.947253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.087214, 16.026394, 2.863516>,  <13.545649, 15.474851, 2.965438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.087214, 16.026394, 2.863516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.156093, 15.667656, 2.700536>,  <14.197420, 15.452413, 2.602749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.156093, 15.667656, 2.700536>,  <14.087214, 16.026394, 2.863516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.156093, 15.667656, 2.700536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029145, 0.418085, -0.907940,
		0.984631, 0.144470, 0.098132,
		0.172198, -0.896846, -0.407449,
		14.207752, 15.398602, 2.578302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.523871, 16.229885, 2.346598>,  <14.087214, 16.026394, 2.863516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.523871, 16.229885, 2.346598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.352036, 15.890575, 2.222736>,  <14.248936, 15.686990, 2.148418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.352036, 15.890575, 2.222736>,  <14.523871, 16.229885, 2.346598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.352036, 15.890575, 2.222736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201925, 0.424462, -0.882643,
		0.880160, -0.316644, -0.353630,
		-0.429586, -0.848274, -0.309657,
		14.223161, 15.636093, 2.129839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.738206, 15.949379, 1.637715>,  <14.523871, 16.229885, 2.346598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.738206, 15.949379, 1.637715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.351428, 15.861607, 1.689663>,  <14.119361, 15.808944, 1.720832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.351428, 15.861607, 1.689663>,  <14.738206, 15.949379, 1.637715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.351428, 15.861607, 1.689663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207788, 0.382909, -0.900114,
		0.147782, -0.897347, -0.415847,
		-0.966946, -0.219429, 0.129871,
		14.061344, 15.795777, 1.728624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.536695, 15.446576, 1.141241>,  <14.738206, 15.949379, 1.637715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.536695, 15.446576, 1.141241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.253055, 15.695278, 1.274265>,  <14.082870, 15.844500, 1.354080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.253055, 15.695278, 1.274265>,  <14.536695, 15.446576, 1.141241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.253055, 15.695278, 1.274265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120768, 0.357580, -0.926041,
		-0.694687, -0.696820, -0.178473,
		-0.709102, 0.621755, 0.332560,
		14.040324, 15.881804, 1.374033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.006340, 15.302222, 0.741267>,  <14.536695, 15.446576, 1.141241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.006340, 15.302222, 0.741267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.968417, 15.680340, 0.866124>,  <13.945663, 15.907210, 0.941038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.968417, 15.680340, 0.866124>,  <14.006340, 15.302222, 0.741267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.968417, 15.680340, 0.866124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182946, 0.291670, -0.938861,
		-0.978541, -0.146115, 0.145286,
		-0.094806, 0.945293, 0.312142,
		13.939975, 15.963928, 0.959766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.387265, 15.563736, 0.405638>,  <14.006340, 15.302222, 0.741267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.387265, 15.563736, 0.405638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.602052, 15.877373, 0.530133>,  <13.730924, 16.065556, 0.604830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.602052, 15.877373, 0.530133>,  <13.387265, 15.563736, 0.405638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.602052, 15.877373, 0.530133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167450, 0.460661, -0.871638,
		-0.826818, 0.415923, 0.378655,
		0.536965, 0.784092, 0.311237,
		13.763142, 16.112600, 0.623504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.104486, 15.995257, -0.078866>,  <13.387265, 15.563736, 0.405638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.104486, 15.995257, -0.078866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.392493, 16.226379, 0.074869>,  <13.565297, 16.365053, 0.167109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.392493, 16.226379, 0.074869>,  <13.104486, 15.995257, -0.078866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.392493, 16.226379, 0.074869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190088, 0.696868, -0.691550,
		-0.667413, 0.424871, 0.611592,
		0.720018, 0.577806, 0.384336,
		13.608499, 16.399721, 0.190169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.849871, 16.542297, -0.102626>,  <13.104486, 15.995257, -0.078866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.849871, 16.542297, -0.102626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.245620, 16.599464, -0.113332>,  <13.483069, 16.633764, -0.119755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.245620, 16.599464, -0.113332>,  <12.849871, 16.542297, -0.102626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.245620, 16.599464, -0.113332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101586, 0.547715, -0.830475,
		-0.104032, 0.824368, 0.556413,
		0.989372, 0.142919, -0.026765,
		13.542432, 16.642340, -0.121361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.132921, 17.271397, -0.163871>,  <12.849871, 16.542297, -0.102626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.132921, 17.271397, -0.163871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.060225, 17.224689, -0.554426>,  <13.016608, 17.196665, -0.788760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.060225, 17.224689, -0.554426>,  <13.132921, 17.271397, -0.163871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.060225, 17.224689, -0.554426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323932, 0.930395, -0.171561,
		0.928460, -0.347463, -0.131269,
		-0.181743, -0.116765, -0.976389,
		13.005703, 17.189659, -0.847343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.812496, 17.296293, -0.529906>,  <13.132921, 17.271397, -0.163871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.812496, 17.296293, -0.529906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.492076, 17.404037, -0.743734>,  <13.299824, 17.468683, -0.872030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.492076, 17.404037, -0.743734>,  <13.812496, 17.296293, -0.529906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.492076, 17.404037, -0.743734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464640, 0.842826, -0.271575,
		0.377397, -0.465927, -0.800302,
		-0.801050, 0.269361, -0.534569,
		13.251761, 17.484846, -0.904104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.911476, 17.387657, -1.320251>,  <13.812496, 17.296293, -0.529906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.911476, 17.387657, -1.320251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.627707, 17.609749, -1.146612>,  <13.457446, 17.743004, -1.042428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.627707, 17.609749, -1.146612>,  <13.911476, 17.387657, -1.320251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.627707, 17.609749, -1.146612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497255, 0.830807, -0.249996,
		-0.499457, 0.038505, -0.865483,
		-0.709423, 0.555228, 0.434099,
		13.414881, 17.776318, -1.016382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.554329, 17.829151, -1.839752>,  <13.911476, 17.387657, -1.320251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.554329, 17.829151, -1.839752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.540439, 17.991642, -1.474507>,  <13.532104, 18.089136, -1.255360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.540439, 17.991642, -1.474507>,  <13.554329, 17.829151, -1.839752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.540439, 17.991642, -1.474507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383234, 0.849232, -0.363232,
		-0.922998, 0.337322, -0.185170,
		-0.034727, 0.406226, 0.913113,
		13.530021, 18.113510, -1.200573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.078013, 18.405544, -1.890146>,  <13.554329, 17.829151, -1.839752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.078013, 18.405544, -1.890146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.363387, 18.468327, -1.616979>,  <13.534612, 18.505997, -1.453079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.363387, 18.468327, -1.616979>,  <13.078013, 18.405544, -1.890146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.363387, 18.468327, -1.616979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222485, 0.873423, -0.433167,
		-0.664464, 0.460975, 0.588209,
		0.713434, 0.156956, 0.682918,
		13.577417, 18.515413, -1.412104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.995337, 18.979008, -1.456961>,  <13.078013, 18.405544, -1.890146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.995337, 18.979008, -1.456961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.392076, 18.932568, -1.435941>,  <13.630118, 18.904703, -1.423328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.392076, 18.932568, -1.435941>,  <12.995337, 18.979008, -1.456961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.392076, 18.932568, -1.435941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126293, 0.950652, -0.283392,
		-0.017056, 0.287719, 0.957563,
		0.991846, -0.116100, 0.052551,
		13.689630, 18.897738, -1.420175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.350240, 19.424692, -0.952134>,  <12.995337, 18.979008, -1.456961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.350240, 19.424692, -0.952134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.588824, 19.368015, -1.268149>,  <13.731976, 19.334009, -1.457757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.588824, 19.368015, -1.268149>,  <13.350240, 19.424692, -0.952134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.588824, 19.368015, -1.268149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043126, 0.977215, -0.207822,
		0.801482, 0.158030, 0.576761,
		0.596462, -0.141692, -0.790036,
		13.767763, 19.325508, -1.505159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.803765, 20.073246, -0.906801>,  <13.350240, 19.424692, -0.952134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.803765, 20.073246, -0.906801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.734490, 19.908485, -1.264649>,  <13.692925, 19.809629, -1.479357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.734490, 19.908485, -1.264649>,  <13.803765, 20.073246, -0.906801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.734490, 19.908485, -1.264649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203177, 0.903750, -0.376770,
		0.963704, 0.116514, -0.240206,
		-0.173187, -0.411899, -0.894620,
		13.682534, 19.784916, -1.533035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.156195, 20.405602, -1.432179>,  <13.803765, 20.073246, -0.906801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.156195, 20.405602, -1.432179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.831002, 20.237305, -1.593194>,  <13.635887, 20.136326, -1.689803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.831002, 20.237305, -1.593194>,  <14.156195, 20.405602, -1.432179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.831002, 20.237305, -1.593194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147019, 0.817220, -0.557258,
		0.563424, -0.393860, -0.726242,
		-0.812981, -0.420744, -0.402537,
		13.587108, 20.111082, -1.713955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.196452, 20.290224, -2.197590>,  <14.156195, 20.405602, -1.432179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.196452, 20.290224, -2.197590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.825042, 20.387058, -2.084996>,  <13.602196, 20.445160, -2.017439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.825042, 20.387058, -2.084996>,  <14.196452, 20.290224, -2.197590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.825042, 20.387058, -2.084996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024076, 0.717314, -0.696334,
		-0.370487, -0.653340, -0.660216,
		-0.928525, 0.242087, 0.281485,
		13.546484, 20.459684, -2.000550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.333796, 19.594547, -2.267608>,  <14.196452, 20.290224, -2.197590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.333796, 19.594547, -2.267608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.549880, 19.580608, -1.931286>,  <14.679531, 19.572245, -1.729492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.549880, 19.580608, -1.931286>,  <14.333796, 19.594547, -2.267608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.549880, 19.580608, -1.931286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483614, -0.830530, 0.276294,
		0.688686, -0.555883, -0.465516,
		0.540212, -0.034849, 0.840807,
		14.711944, 19.570154, -1.679044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<22.599787, 16.107237, 15.871716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.734222, 16.476456, 15.796853>,  <22.814884, 16.697987, 15.751936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.734222, 16.476456, 15.796853>,  <22.599787, 16.107237, 15.871716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.734222, 16.476456, 15.796853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267647, -0.096917, -0.958630,
		-0.903000, 0.372276, 0.214478,
		0.336088, 0.923048, -0.187155,
		22.835049, 16.753370, 15.740706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.031975, 16.455210, 15.588812>,  <22.599787, 16.107237, 15.871716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.031975, 16.455210, 15.588812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.331669, 16.692390, 15.470788>,  <22.511484, 16.834698, 15.399974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.331669, 16.692390, 15.470788>,  <22.031975, 16.455210, 15.588812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.331669, 16.692390, 15.470788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264413, -0.140666, -0.954096,
		-0.607236, 0.792858, 0.051392,
		0.749233, 0.592950, -0.295060,
		22.556438, 16.870275, 15.382270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.735344, 16.919376, 15.159181>,  <22.031975, 16.455210, 15.588812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.735344, 16.919376, 15.159181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.116959, 16.918961, 15.039308>,  <22.345928, 16.918711, 14.967384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.116959, 16.918961, 15.039308>,  <21.735344, 16.919376, 15.159181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.116959, 16.918961, 15.039308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299084, 0.059909, -0.952344,
		0.018945, 0.998203, 0.056844,
		0.954039, -0.001041, -0.299682,
		22.403170, 16.918648, 14.949403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.760288, 17.395578, 14.725498>,  <21.735344, 16.919376, 15.159181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.760288, 17.395578, 14.725498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.094269, 17.189835, 14.647225>,  <22.294657, 17.066387, 14.600262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.094269, 17.189835, 14.647225>,  <21.760288, 17.395578, 14.725498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.094269, 17.189835, 14.647225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195025, 0.055945, -0.979201,
		0.514610, 0.855747, -0.053602,
		0.834950, -0.514360, -0.195682,
		22.344753, 17.035526, 14.588521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.110844, 17.827192, 14.326530>,  <21.760288, 17.395578, 14.725498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.110844, 17.827192, 14.326530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.267582, 17.464764, 14.262662>,  <22.361624, 17.247307, 14.224341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.267582, 17.464764, 14.262662>,  <22.110844, 17.827192, 14.326530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.267582, 17.464764, 14.262662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093541, 0.133414, -0.986636,
		0.915264, 0.401543, -0.032477,
		0.391844, -0.906071, -0.159670,
		22.385136, 17.192942, 14.214761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.658129, 17.935843, 13.773470>,  <22.110844, 17.827192, 14.326530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.658129, 17.935843, 13.773470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.584511, 17.542675, 13.773084>,  <22.540340, 17.306774, 13.772852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.584511, 17.542675, 13.773084>,  <22.658129, 17.935843, 13.773470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.584511, 17.542675, 13.773084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002381, 0.001428, -0.999996,
		0.982915, -0.184042, -0.002603,
		-0.184045, -0.982917, -0.000965,
		22.529297, 17.247799, 13.772794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.062790, 17.554665, 13.250054>,  <22.658129, 17.935843, 13.773470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.062790, 17.554665, 13.250054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.762375, 17.297539, 13.310362>,  <22.582127, 17.143263, 13.346546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.762375, 17.297539, 13.310362>,  <23.062790, 17.554665, 13.250054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.762375, 17.297539, 13.310362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220731, 0.029235, -0.974896,
		0.622272, -0.765462, -0.163846,
		-0.751036, -0.642817, 0.150769,
		22.537064, 17.104694, 13.355593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.206877, 16.875423, 12.885185>,  <23.062790, 17.554665, 13.250054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.206877, 16.875423, 12.885185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.813061, 16.890465, 12.953620>,  <22.576771, 16.899490, 12.994680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.813061, 16.890465, 12.953620>,  <23.206877, 16.875423, 12.885185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.813061, 16.890465, 12.953620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174514, -0.126074, -0.976550,
		-0.015150, -0.991308, 0.130687,
		-0.984538, 0.037601, 0.171087,
		22.517700, 16.901745, 13.004946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.906635, 16.312670, 12.511105>,  <23.206877, 16.875423, 12.885185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.906635, 16.312670, 12.511105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.592785, 16.550175, 12.582445>,  <22.404474, 16.692678, 12.625250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.592785, 16.550175, 12.582445>,  <22.906635, 16.312670, 12.511105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.592785, 16.550175, 12.582445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330956, -0.157887, -0.930344,
		-0.524246, -0.788997, 0.320392,
		-0.784624, 0.593764, 0.178351,
		22.357397, 16.728304, 12.635951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.347425, 15.972620, 12.205857>,  <22.906635, 16.312670, 12.511105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.347425, 15.972620, 12.205857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.231731, 16.353233, 12.247667>,  <22.162315, 16.581602, 12.272754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.231731, 16.353233, 12.247667>,  <22.347425, 15.972620, 12.205857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.231731, 16.353233, 12.247667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506763, -0.059566, -0.860025,
		-0.812118, -0.301718, 0.499430,
		-0.289234, 0.951535, 0.104525,
		22.144960, 16.638693, 12.279025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.611195, 15.956743, 12.224013>,  <22.347425, 15.972620, 12.205857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.611195, 15.956743, 12.224013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.703285, 16.331833, 12.119962>,  <21.758539, 16.556887, 12.057530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.703285, 16.331833, 12.119962>,  <21.611195, 15.956743, 12.224013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.703285, 16.331833, 12.119962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692675, -0.029842, -0.720632,
		-0.683517, 0.346095, 0.642668,
		0.230228, 0.937725, -0.260129,
		21.772354, 16.613150, 12.041924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.927162, 16.322882, 12.109879>,  <21.611195, 15.956743, 12.224013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.927162, 16.322882, 12.109879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.204777, 16.561798, 11.949101>,  <21.371346, 16.705149, 11.852635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.204777, 16.561798, 11.949101>,  <20.927162, 16.322882, 12.109879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.204777, 16.561798, 11.949101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609156, 0.189625, -0.770046,
		-0.383723, 0.779285, 0.495450,
		0.694036, 0.597291, -0.401943,
		21.412987, 16.740986, 11.828519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.541321, 17.031778, 11.979305>,  <20.927162, 16.322882, 12.109879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.541321, 17.031778, 11.979305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.865837, 16.994034, 11.748513>,  <21.060547, 16.971386, 11.610038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.865837, 16.994034, 11.748513>,  <20.541321, 17.031778, 11.979305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.865837, 16.994034, 11.748513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563870, 0.134454, -0.814845,
		0.154469, 0.986417, 0.055873,
		0.811289, -0.094363, -0.576979,
		21.109224, 16.965725, 11.575419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.405418, 17.447115, 11.496553>,  <20.541321, 17.031778, 11.979305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.405418, 17.447115, 11.496553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.690754, 17.225033, 11.325490>,  <20.861956, 17.091784, 11.222852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.690754, 17.225033, 11.325490>,  <20.405418, 17.447115, 11.496553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.690754, 17.225033, 11.325490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531102, -0.030130, -0.846772,
		0.457248, 0.831167, -0.316364,
		0.713341, -0.555206, -0.427658,
		20.904757, 17.058472, 11.197193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.523386, 17.738384, 10.927929>,  <20.405418, 17.447115, 11.496553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.523386, 17.738384, 10.927929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.630894, 17.354389, 10.896462>,  <20.695398, 17.123993, 10.877583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.630894, 17.354389, 10.896462>,  <20.523386, 17.738384, 10.927929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.630894, 17.354389, 10.896462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610446, -0.106593, -0.784853,
		0.745062, 0.258968, -0.614669,
		0.268771, -0.959986, -0.078667,
		20.711525, 17.066393, 10.872862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.697309, 17.749624, 10.255784>,  <20.523386, 17.738384, 10.927929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.697309, 17.749624, 10.255784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.646206, 17.367500, 10.362413>,  <20.615543, 17.138226, 10.426391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.646206, 17.367500, 10.362413>,  <20.697309, 17.749624, 10.255784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.646206, 17.367500, 10.362413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549442, -0.155592, -0.820917,
		0.825706, -0.251346, -0.505009,
		-0.127758, -0.955309, 0.266573,
		20.607878, 17.080908, 10.442386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.058264, 17.300430, 9.765076>,  <20.697309, 17.749624, 10.255784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.058264, 17.300430, 9.765076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.784431, 17.045841, 9.907202>,  <20.620132, 16.893087, 9.992477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.784431, 17.045841, 9.907202>,  <21.058264, 17.300430, 9.765076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.784431, 17.045841, 9.907202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263216, -0.238710, -0.934738,
		0.679753, -0.733429, -0.004114,
		-0.684582, -0.636474, 0.355314,
		20.579056, 16.854898, 10.013796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.118767, 16.790575, 9.375141>,  <21.058264, 17.300430, 9.765076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.118767, 16.790575, 9.375141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.770756, 16.711182, 9.555655>,  <20.561949, 16.663546, 9.663964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.770756, 16.711182, 9.555655>,  <21.118767, 16.790575, 9.375141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.770756, 16.711182, 9.555655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428229, -0.149319, -0.891249,
		0.244286, -0.968662, 0.044913,
		-0.870025, -0.198487, 0.451285,
		20.509748, 16.651636, 9.691041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.798794, 16.248335, 8.953529>,  <21.118767, 16.790575, 9.375141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.798794, 16.248335, 8.953529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.502724, 16.422604, 9.158402>,  <20.325081, 16.527164, 9.281326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.502724, 16.422604, 9.158402>,  <20.798794, 16.248335, 8.953529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.502724, 16.422604, 9.158402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613353, -0.125293, -0.779807,
		-0.275566, -0.891343, 0.359959,
		-0.740176, 0.435670, 0.512182,
		20.280670, 16.553305, 9.312057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.215269, 15.720339, 8.940369>,  <20.798794, 16.248335, 8.953529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.215269, 15.720339, 8.940369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.082809, 16.092579, 9.002751>,  <20.003334, 16.315924, 9.040181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.082809, 16.092579, 9.002751>,  <20.215269, 15.720339, 8.940369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.082809, 16.092579, 9.002751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758029, -0.163946, -0.631280,
		-0.561901, -0.327266, 0.759713,
		-0.331149, 0.930601, 0.155956,
		19.983465, 16.371759, 9.049538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.478098, 15.629209, 9.143524>,  <20.215269, 15.720339, 8.940369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.478098, 15.629209, 9.143524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.544792, 16.014828, 9.060763>,  <19.584808, 16.246199, 9.011106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.544792, 16.014828, 9.060763>,  <19.478098, 15.629209, 9.143524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.544792, 16.014828, 9.060763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797175, 0.008313, -0.603691,
		-0.580268, 0.265596, 0.769901,
		0.166738, 0.964049, -0.206903,
		19.594814, 16.304043, 8.998693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842482, 15.978685, 9.027019>,  <19.478098, 15.629209, 9.143524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.842482, 15.978685, 9.027019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.119595, 16.188107, 8.828648>,  <19.285862, 16.313759, 8.709625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.119595, 16.188107, 8.828648>,  <18.842482, 15.978685, 9.027019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.119595, 16.188107, 8.828648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647562, 0.149009, -0.747302,
		-0.317354, 0.838862, 0.442264,
		0.692784, 0.523553, -0.495926,
		19.327431, 16.345173, 8.679870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.283375, 16.412378, 8.725397>,  <18.842482, 15.978685, 9.027019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.283375, 16.412378, 8.725397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.063099, 16.081062, 8.766727>,  <17.930933, 15.882273, 8.791526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.063099, 16.081062, 8.766727>,  <18.283375, 16.412378, 8.725397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.063099, 16.081062, 8.766727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289138, -0.073166, 0.954488,
		-0.783034, 0.555501, 0.279782,
		-0.550689, -0.828291, 0.103325,
		17.897892, 15.832575, 8.797725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.924818, 16.447899, 9.485956>,  <18.283375, 16.412378, 8.725397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.924818, 16.447899, 9.485956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.872578, 16.065025, 9.382621>,  <17.841234, 15.835300, 9.320620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.872578, 16.065025, 9.382621>,  <17.924818, 16.447899, 9.485956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.872578, 16.065025, 9.382621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016128, -0.262587, 0.964773,
		-0.991304, 0.121834, 0.049732,
		-0.130602, -0.957186, -0.258338,
		17.833397, 15.777869, 9.305120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.327534, 16.277472, 9.828753>,  <17.924818, 16.447899, 9.485956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.327534, 16.277472, 9.828753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.538177, 15.943306, 9.765803>,  <17.664564, 15.742806, 9.728034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.538177, 15.943306, 9.765803>,  <17.327534, 16.277472, 9.828753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.538177, 15.943306, 9.765803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142030, -0.268981, 0.952616,
		-0.838158, -0.479306, -0.260302,
		0.526611, -0.835413, -0.157372,
		17.696161, 15.692682, 9.718592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.938095, 15.689336, 10.082058>,  <17.327534, 16.277472, 9.828753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.938095, 15.689336, 10.082058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.313648, 15.552963, 10.063033>,  <17.538980, 15.471140, 10.051619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.313648, 15.552963, 10.063033>,  <16.938095, 15.689336, 10.082058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.313648, 15.552963, 10.063033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051731, -0.276340, 0.959666,
		-0.340329, -0.898553, -0.277088,
		0.938882, -0.340936, -0.047564,
		17.595314, 15.450684, 10.048764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.012850, 15.039803, 10.421176>,  <16.938095, 15.689336, 10.082058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.012850, 15.039803, 10.421176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.384495, 15.187672, 10.417404>,  <17.607483, 15.276393, 10.415141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.384495, 15.187672, 10.417404>,  <17.012850, 15.039803, 10.421176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.384495, 15.187672, 10.417404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033680, -0.059198, 0.997678,
		0.368256, -0.927274, -0.067453,
		0.929114, 0.369672, -0.009431,
		17.663229, 15.298573, 10.414575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.308264, 14.827032, 11.009528>,  <17.012850, 15.039803, 10.421176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.308264, 14.827032, 11.009528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.565388, 15.111900, 10.896667>,  <17.719662, 15.282822, 10.828951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.565388, 15.111900, 10.896667>,  <17.308264, 14.827032, 11.009528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.565388, 15.111900, 10.896667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279909, 0.124489, 0.951921,
		0.713056, -0.690879, -0.119320,
		0.642809, 0.712172, -0.282151,
		17.758230, 15.325552, 10.812022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.917845, 14.660530, 11.316360>,  <17.308264, 14.827032, 11.009528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.917845, 14.660530, 11.316360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.960995, 15.050072, 11.236388>,  <17.986885, 15.283796, 11.188405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.960995, 15.050072, 11.236388>,  <17.917845, 14.660530, 11.316360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.960995, 15.050072, 11.236388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502581, 0.120092, 0.856149,
		0.857773, -0.192839, -0.476485,
		0.107877, 0.973854, -0.199929,
		17.993359, 15.342228, 11.176410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.568302, 14.795680, 11.671519>,  <17.917845, 14.660530, 11.316360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.568302, 14.795680, 11.671519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.439888, 15.168640, 11.605109>,  <18.362839, 15.392416, 11.565264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.439888, 15.168640, 11.605109>,  <18.568302, 14.795680, 11.671519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.439888, 15.168640, 11.605109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397660, 0.291813, 0.869892,
		0.859536, 0.213246, -0.464461,
		-0.321037, 0.932401, -0.166025,
		18.343576, 15.448360, 11.555302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.169991, 15.217005, 11.661184>,  <18.568302, 14.795680, 11.671519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.169991, 15.217005, 11.661184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.858807, 15.453144, 11.747222>,  <18.672096, 15.594828, 11.798844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.858807, 15.453144, 11.747222>,  <19.169991, 15.217005, 11.661184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.858807, 15.453144, 11.747222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438360, 0.264718, 0.858932,
		0.450128, 0.762505, -0.464726,
		-0.777962, 0.590347, 0.215095,
		18.625418, 15.630248, 11.811750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.390125, 15.993536, 11.864993>,  <19.169991, 15.217005, 11.661184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.390125, 15.993536, 11.864993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.034748, 15.938026, 12.039995>,  <18.821522, 15.904720, 12.144997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.034748, 15.938026, 12.039995>,  <19.390125, 15.993536, 11.864993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.034748, 15.938026, 12.039995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385613, 0.291308, 0.875467,
		-0.248942, 0.946510, -0.205297,
		-0.888443, -0.138775, 0.437506,
		18.768215, 15.896394, 12.171247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.212534, 16.593554, 12.293072>,  <19.390125, 15.993536, 11.864993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.212534, 16.593554, 12.293072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.986599, 16.311237, 12.464100>,  <18.851038, 16.141848, 12.566717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.986599, 16.311237, 12.464100>,  <19.212534, 16.593554, 12.293072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.986599, 16.311237, 12.464100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300671, 0.306500, 0.903136,
		-0.768475, 0.638685, 0.039087,
		-0.564839, -0.705790, 0.427571,
		18.817148, 16.099501, 12.592371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.005733, 16.986782, 12.786445>,  <19.212534, 16.593554, 12.293072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.005733, 16.986782, 12.786445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.931286, 16.603497, 12.873337>,  <18.886618, 16.373526, 12.925472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.931286, 16.603497, 12.873337>,  <19.005733, 16.986782, 12.786445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.931286, 16.603497, 12.873337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252184, 0.167099, 0.953143,
		-0.949612, 0.232180, 0.210545,
		-0.186119, -0.958212, 0.217231,
		18.875450, 16.316032, 12.938506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.782551, 17.029446, 13.543223>,  <19.005733, 16.986782, 12.786445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.782551, 17.029446, 13.543223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.876766, 16.643948, 13.493083>,  <18.933296, 16.412649, 13.462999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.876766, 16.643948, 13.493083>,  <18.782551, 17.029446, 13.543223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.876766, 16.643948, 13.493083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199083, -0.078397, 0.976842,
		-0.951256, -0.255039, 0.173401,
		0.235538, -0.963748, -0.125350,
		18.947428, 16.354824, 13.455478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.512337, 16.580406, 14.109424>,  <18.782551, 17.029446, 13.543223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.512337, 16.580406, 14.109424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.785988, 16.320904, 13.976104>,  <18.950178, 16.165203, 13.896111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.785988, 16.320904, 13.976104>,  <18.512337, 16.580406, 14.109424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.785988, 16.320904, 13.976104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269235, -0.200073, 0.942063,
		-0.677853, -0.734226, 0.037792,
		0.684126, -0.648755, -0.333299,
		18.991226, 16.126278, 13.876114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.481770, 16.233389, 14.607286>,  <18.512337, 16.580406, 14.109424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.481770, 16.233389, 14.607286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.820274, 16.130741, 14.420531>,  <19.023378, 16.069153, 14.308478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.820274, 16.130741, 14.420531>,  <18.481770, 16.233389, 14.607286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.820274, 16.130741, 14.420531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377828, -0.328764, 0.865540,
		-0.375610, -0.908878, -0.181264,
		0.846264, -0.256619, -0.466887,
		19.074154, 16.053755, 14.280465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.548407, 15.521627, 14.683719>,  <18.481770, 16.233389, 14.607286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.548407, 15.521627, 14.683719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.918839, 15.646294, 14.598639>,  <19.141098, 15.721093, 14.547592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.918839, 15.646294, 14.598639>,  <18.548407, 15.521627, 14.683719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.918839, 15.646294, 14.598639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293247, -0.239751, 0.925487,
		0.237448, -0.919448, -0.313424,
		0.926080, 0.311665, -0.212697,
		19.196663, 15.739793, 14.534830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.079727, 14.967179, 14.841812>,  <18.548407, 15.521627, 14.683719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.079727, 14.967179, 14.841812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.293980, 15.304691, 14.828322>,  <19.422531, 15.507198, 14.820229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.293980, 15.304691, 14.828322>,  <19.079727, 14.967179, 14.841812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.293980, 15.304691, 14.828322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393164, -0.213838, 0.894257,
		0.747344, -0.492249, -0.446282,
		0.535629, 0.843779, -0.033724,
		19.454668, 15.557825, 14.818205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.745531, 14.844014, 15.110820>,  <19.079727, 14.967179, 14.841812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.745531, 14.844014, 15.110820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.711132, 15.239162, 15.162534>,  <19.690493, 15.476252, 15.193563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.711132, 15.239162, 15.162534>,  <19.745531, 14.844014, 15.110820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.711132, 15.239162, 15.162534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533498, -0.063934, 0.843381,
		0.841418, 0.141501, -0.521530,
		-0.085996, 0.987871, 0.129285,
		19.685333, 15.535524, 15.201320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<20.551600, 15.218351, 15.095560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.342094, 15.513214, 15.266334>,  <20.216393, 15.690132, 15.368797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.342094, 15.513214, 15.266334>,  <20.551600, 15.218351, 15.095560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.342094, 15.513214, 15.266334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621727, -0.011820, 0.783145,
		0.582347, 0.675617, -0.452120,
		-0.523762, 0.737158, 0.426933,
		20.184965, 15.734362, 15.394413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.045959, 15.605689, 15.505390>,  <20.551600, 15.218351, 15.095560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.045959, 15.605689, 15.505390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.705166, 15.744041, 15.662612>,  <20.500690, 15.827053, 15.756945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.705166, 15.744041, 15.662612>,  <21.045959, 15.605689, 15.505390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.705166, 15.744041, 15.662612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463718, 0.149946, 0.873202,
		0.243087, 0.926219, -0.288143,
		-0.851983, 0.345881, 0.393054,
		20.449572, 15.847806, 15.780528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.188658, 16.206339, 15.775830>,  <21.045959, 15.605689, 15.505390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.188658, 16.206339, 15.775830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.852985, 16.095085, 15.962771>,  <20.651583, 16.028334, 16.074936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.852985, 16.095085, 15.962771>,  <21.188658, 16.206339, 15.775830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.852985, 16.095085, 15.962771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446169, 0.139296, 0.884042,
		-0.310981, 0.950389, 0.007200,
		-0.839180, -0.278132, 0.467353,
		20.601231, 16.011646, 16.102978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.976284, 16.838923, 16.296360>,  <21.188658, 16.206339, 15.775830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.976284, 16.838923, 16.296360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.795696, 16.505154, 16.422796>,  <20.687344, 16.304892, 16.498657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.795696, 16.505154, 16.422796>,  <20.976284, 16.838923, 16.296360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.795696, 16.505154, 16.422796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155601, 0.275196, 0.948713,
		-0.878615, 0.477499, 0.005595,
		-0.451469, -0.834423, 0.316091,
		20.660255, 16.254827, 16.517624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.712479, 17.000109, 17.004333>,  <20.976284, 16.838923, 16.296360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.712479, 17.000109, 17.004333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.736050, 16.600807, 17.002909>,  <20.750193, 16.361225, 17.002054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.736050, 16.600807, 17.002909>,  <20.712479, 17.000109, 17.004333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.736050, 16.600807, 17.002909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121178, 0.003612, 0.992625,
		-0.990880, -0.058927, 0.121179,
		0.058930, -0.998256, -0.003562,
		20.753729, 16.301331, 17.001841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.526056, 16.870798, 17.638454>,  <20.712479, 17.000109, 17.004333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.526056, 16.870798, 17.638454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.665646, 16.505054, 17.556320>,  <20.749399, 16.285608, 17.507040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.665646, 16.505054, 17.556320>,  <20.526056, 16.870798, 17.638454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.665646, 16.505054, 17.556320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333317, -0.083678, 0.939094,
		-0.875852, -0.396162, 0.275570,
		0.348975, -0.914360, -0.205337,
		20.770338, 16.230747, 17.494719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.348793, 16.436562, 18.198067>,  <20.526056, 16.870798, 17.638454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.348793, 16.436562, 18.198067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.664486, 16.271614, 18.016050>,  <20.853903, 16.172646, 17.906841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.664486, 16.271614, 18.016050>,  <20.348793, 16.436562, 18.198067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.664486, 16.271614, 18.016050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335769, -0.330641, 0.882006,
		-0.514167, -0.848898, -0.122493,
		0.789235, -0.412370, -0.455039,
		20.901257, 16.147903, 17.879539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.479570, 15.889121, 18.518648>,  <20.348793, 16.436562, 18.198067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.479570, 15.889121, 18.518648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.830978, 15.915115, 18.329342>,  <21.041822, 15.930712, 18.215759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.830978, 15.915115, 18.329342>,  <20.479570, 15.889121, 18.518648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.830978, 15.915115, 18.329342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472275, -0.267107, 0.840006,
		-0.071823, -0.961473, -0.265351,
		0.878520, 0.064987, -0.473264,
		21.094534, 15.934611, 18.187363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.889402, 15.247269, 18.546766>,  <20.479570, 15.889121, 18.518648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.889402, 15.247269, 18.546766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.126049, 15.569351, 18.530609>,  <21.268038, 15.762601, 18.520914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.126049, 15.569351, 18.530609>,  <20.889402, 15.247269, 18.546766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.126049, 15.569351, 18.530609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480538, -0.311955, 0.819614,
		0.647358, -0.504308, -0.571490,
		0.591617, 0.805207, -0.040393,
		21.303534, 15.810913, 18.518492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.545094, 14.985507, 18.618191>,  <20.889402, 15.247269, 18.546766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.545094, 14.985507, 18.618191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.555367, 15.372501, 18.718840>,  <21.561531, 15.604698, 18.779228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.555367, 15.372501, 18.718840>,  <21.545094, 14.985507, 18.618191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.555367, 15.372501, 18.718840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451311, -0.235816, 0.860645,
		0.891997, 0.091454, -0.442694,
		0.025685, 0.967485, 0.251621,
		21.563072, 15.662746, 18.794327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.101227, 14.929770, 18.996187>,  <21.545094, 14.985507, 18.618191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.101227, 14.929770, 18.996187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.985806, 15.299252, 19.096992>,  <21.916553, 15.520940, 19.157475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.985806, 15.299252, 19.096992>,  <22.101227, 14.929770, 18.996187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.985806, 15.299252, 19.096992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487135, -0.084963, 0.869184,
		0.824280, 0.373569, -0.425452,
		-0.288552, 0.923703, 0.252012,
		21.899240, 15.576363, 19.172596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.654903, 15.210884, 19.344542>,  <22.101227, 14.929770, 18.996187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.654903, 15.210884, 19.344542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.340870, 15.435787, 19.448471>,  <22.152451, 15.570729, 19.510830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.340870, 15.435787, 19.448471>,  <22.654903, 15.210884, 19.344542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.340870, 15.435787, 19.448471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432767, 0.197834, 0.879531,
		0.443120, 0.802950, -0.398643,
		-0.785084, 0.562258, 0.259826,
		22.105345, 15.604465, 19.526419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.970949, 15.886231, 19.492880>,  <22.654903, 15.210884, 19.344542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.970949, 15.886231, 19.492880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.605671, 15.881390, 19.655819>,  <22.386505, 15.878485, 19.753582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.605671, 15.881390, 19.655819>,  <22.970949, 15.886231, 19.492880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.605671, 15.881390, 19.655819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366229, 0.414072, 0.833319,
		-0.178758, 0.910164, -0.373695,
		-0.913193, -0.012104, 0.407347,
		22.331713, 15.877758, 19.778023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.887314, 16.570881, 19.766363>,  <22.970949, 15.886231, 19.492880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.887314, 16.570881, 19.766363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.658092, 16.311321, 19.966578>,  <22.520559, 16.155584, 20.086706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.658092, 16.311321, 19.966578>,  <22.887314, 16.570881, 19.766363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.658092, 16.311321, 19.966578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385031, 0.325978, 0.863418,
		-0.723436, 0.687507, 0.063044,
		-0.573055, -0.648901, 0.500535,
		22.486176, 16.116652, 20.116737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.798275, 16.921312, 20.376482>,  <22.887314, 16.570881, 19.766363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.798275, 16.921312, 20.376482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.691776, 16.546181, 20.465559>,  <22.627878, 16.321102, 20.519005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.691776, 16.546181, 20.465559>,  <22.798275, 16.921312, 20.376482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.691776, 16.546181, 20.465559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154450, 0.186539, 0.970231,
		-0.951451, 0.292715, 0.095182,
		-0.266246, -0.937828, 0.222692,
		22.611902, 16.264832, 20.532366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.296286, 16.959341, 20.839926>,  <22.798275, 16.921312, 20.376482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.296286, 16.959341, 20.839926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.471428, 16.607201, 20.912880>,  <22.576513, 16.395916, 20.956654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.471428, 16.607201, 20.912880>,  <22.296286, 16.959341, 20.839926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.471428, 16.607201, 20.912880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080804, 0.240580, 0.967260,
		-0.895408, -0.408781, 0.176474,
		0.437854, -0.880352, 0.182386,
		22.602783, 16.343096, 20.967596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.943810, 16.711040, 21.392776>,  <22.296286, 16.959341, 20.839926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.943810, 16.711040, 21.392776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.253353, 16.457951, 21.404100>,  <22.439079, 16.306097, 21.410894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.253353, 16.457951, 21.404100>,  <21.943810, 16.711040, 21.392776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.253353, 16.457951, 21.404100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021037, 0.018993, 0.999598,
		-0.633008, -0.774144, 0.001387,
		0.773859, -0.632724, 0.028308,
		22.485512, 16.268133, 21.412592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.795580, 16.166262, 21.889740>,  <21.943810, 16.711040, 21.392776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.795580, 16.166262, 21.889740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.192532, 16.148163, 21.843901>,  <22.430702, 16.137302, 21.816397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.192532, 16.148163, 21.843901>,  <21.795580, 16.166262, 21.889740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.192532, 16.148163, 21.843901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111501, -0.065878, 0.991578,
		-0.052400, -0.996802, -0.060333,
		0.992382, -0.045232, -0.114596,
		22.490246, 16.134588, 21.809521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.037674, 15.646142, 22.341612>,  <21.795580, 16.166262, 21.889740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.037674, 15.646142, 22.341612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.372135, 15.853611, 22.270256>,  <22.572813, 15.978092, 22.227442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.372135, 15.853611, 22.270256>,  <22.037674, 15.646142, 22.341612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.372135, 15.853611, 22.270256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190704, 0.030034, 0.981188,
		0.514274, -0.854445, -0.073800,
		0.836155, 0.518674, -0.178391,
		22.622982, 16.009212, 22.216738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.563208, 15.490788, 22.826250>,  <22.037674, 15.646142, 22.341612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.563208, 15.490788, 22.826250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.687332, 15.849472, 22.700003>,  <22.761806, 16.064682, 22.624254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.687332, 15.849472, 22.700003>,  <22.563208, 15.490788, 22.826250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.687332, 15.849472, 22.700003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437729, 0.159936, 0.884768,
		0.843860, -0.412711, -0.342886,
		0.310313, 0.896711, -0.315619,
		22.780426, 16.118484, 22.605316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.236868, 15.532928, 23.103498>,  <22.563208, 15.490788, 22.826250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.236868, 15.532928, 23.103498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.135628, 15.913799, 23.035038>,  <23.074884, 16.142323, 22.993961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.135628, 15.913799, 23.035038>,  <23.236868, 15.532928, 23.103498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.135628, 15.913799, 23.035038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358494, 0.256628, 0.897565,
		0.898567, 0.165817, -0.406304,
		-0.253101, 0.952180, -0.171153,
		23.059698, 16.199453, 22.983692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.907402, 15.988770, 23.066502>,  <23.236868, 15.532928, 23.103498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.907402, 15.988770, 23.066502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.567608, 16.177814, 23.160324>,  <23.363731, 16.291241, 23.216618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.567608, 16.177814, 23.160324>,  <23.907402, 15.988770, 23.066502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.567608, 16.177814, 23.160324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429898, 0.362269, 0.827012,
		0.305881, 0.803369, -0.510915,
		-0.849485, 0.472609, 0.234555,
		23.312763, 16.319597, 23.230690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.950455, 16.804358, 23.059288>,  <23.907402, 15.988770, 23.066502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.950455, 16.804358, 23.059288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.711811, 16.616882, 23.319868>,  <23.568624, 16.504396, 23.476215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.711811, 16.616882, 23.319868>,  <23.950455, 16.804358, 23.059288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.711811, 16.616882, 23.319868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511572, 0.403337, 0.758692,
		-0.618345, 0.785906, -0.000867,
		-0.596610, -0.468690, 0.651449,
		23.532827, 16.476274, 23.515303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.586277, 17.266558, 23.519369>,  <23.950455, 16.804358, 23.059288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.586277, 17.266558, 23.519369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.669571, 16.904194, 23.666864>,  <23.719547, 16.686775, 23.755362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.669571, 16.904194, 23.666864>,  <23.586277, 17.266558, 23.519369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.669571, 16.904194, 23.666864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671937, 0.406454, 0.619108,
		-0.710731, 0.118851, 0.693351,
		0.208234, -0.905908, 0.368740,
		23.732040, 16.632421, 23.777487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.933548, 17.913071, 23.343498>,  <23.586277, 17.266558, 23.519369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.933548, 17.913071, 23.343498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.178604, 18.228104, 23.316994>,  <24.325638, 18.417124, 23.301090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.178604, 18.228104, 23.316994>,  <23.933548, 17.913071, 23.343498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.178604, 18.228104, 23.316994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160671, 0.042017, -0.986113,
		-0.773860, 0.614777, 0.152283,
		0.612638, 0.787581, -0.066261,
		24.362396, 18.464378, 23.297115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.570381, 18.343561, 22.864704>,  <23.933548, 17.913071, 23.343498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.570381, 18.343561, 22.864704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.964241, 18.412106, 22.877970>,  <24.200558, 18.453232, 22.885929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.964241, 18.412106, 22.877970>,  <23.570381, 18.343561, 22.864704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.964241, 18.412106, 22.877970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002499, 0.203828, -0.979003,
		-0.174524, 0.963893, 0.201128,
		0.984650, 0.171362, 0.033164,
		24.259636, 18.463514, 22.887918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.683186, 18.979399, 22.544014>,  <23.570381, 18.343561, 22.864704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.683186, 18.979399, 22.544014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.049168, 18.819622, 22.521023>,  <24.268757, 18.723757, 22.507229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.049168, 18.819622, 22.521023>,  <23.683186, 18.979399, 22.544014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.049168, 18.819622, 22.521023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053951, 0.262217, -0.963499,
		0.399933, 0.878458, 0.261467,
		0.914955, -0.399442, -0.057476,
		24.323654, 18.699789, 22.503780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.016211, 19.450054, 22.176691>,  <23.683186, 18.979399, 22.544014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.016211, 19.450054, 22.176691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.232597, 19.114857, 22.148077>,  <24.362431, 18.913738, 22.130909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.232597, 19.114857, 22.148077>,  <24.016211, 19.450054, 22.176691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.232597, 19.114857, 22.148077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028411, 0.066797, -0.997362,
		0.840562, 0.541575, 0.012327,
		0.540969, -0.837995, -0.071534,
		24.394888, 18.863459, 22.126617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.494507, 19.627186, 21.732059>,  <24.016211, 19.450054, 22.176691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.494507, 19.627186, 21.732059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.489178, 19.227222, 21.733032>,  <24.485979, 18.987244, 21.733616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.489178, 19.227222, 21.733032>,  <24.494507, 19.627186, 21.732059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.489178, 19.227222, 21.733032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013478, -0.002250, -0.999907,
		0.999821, -0.013357, -0.013447,
		-0.013325, -0.999908, 0.002430,
		24.485180, 18.927250, 21.733761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.937325, 19.329590, 21.075245>,  <24.494507, 19.627186, 21.732059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.937325, 19.329590, 21.075245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.705341, 19.025066, 21.191212>,  <24.566151, 18.842352, 21.260792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.705341, 19.025066, 21.191212>,  <24.937325, 19.329590, 21.075245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.705341, 19.025066, 21.191212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206968, -0.206509, -0.956304,
		0.787915, -0.614622, -0.037800,
		-0.579960, -0.761310, 0.289919,
		24.531353, 18.796673, 21.278187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199667, 18.856451, 20.694174>,  <24.937325, 19.329590, 21.075245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.199667, 18.856451, 20.694174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.821678, 18.779869, 20.800283>,  <24.594885, 18.733921, 20.863949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.821678, 18.779869, 20.800283>,  <25.199667, 18.856451, 20.694174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.821678, 18.779869, 20.800283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240465, -0.143305, -0.960021,
		0.221814, -0.970984, 0.089382,
		-0.944974, -0.191453, 0.265275,
		24.538187, 18.722433, 20.879866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061213, 18.229261, 20.320555>,  <25.199667, 18.856451, 20.694174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.061213, 18.229261, 20.320555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.699890, 18.355701, 20.436569>,  <24.483097, 18.431566, 20.506178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.699890, 18.355701, 20.436569>,  <25.061213, 18.229261, 20.320555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.699890, 18.355701, 20.436569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369632, -0.230339, -0.900176,
		-0.217723, -0.920345, 0.324902,
		-0.903310, 0.316083, 0.290039,
		24.428898, 18.450531, 20.523579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.572596, 17.654991, 20.176537>,  <25.061213, 18.229261, 20.320555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.572596, 17.654991, 20.176537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.360504, 17.993847, 20.190458>,  <24.233250, 18.197161, 20.198811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.360504, 17.993847, 20.190458>,  <24.572596, 17.654991, 20.176537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.360504, 17.993847, 20.190458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487012, -0.270707, -0.830383,
		-0.694030, -0.457242, 0.556104,
		-0.530228, 0.847141, 0.034803,
		24.201435, 18.247990, 20.200899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.809763, 17.401861, 20.080515>,  <24.572596, 17.654991, 20.176537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.809763, 17.401861, 20.080515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.833126, 17.785694, 19.970396>,  <23.847145, 18.015993, 19.904324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.833126, 17.785694, 19.970396>,  <23.809763, 17.401861, 20.080515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.833126, 17.785694, 19.970396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310573, -0.244618, -0.918535,
		-0.948753, 0.139151, 0.283732,
		0.058409, 0.959583, -0.275299,
		23.850649, 18.073568, 19.887806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.155561, 17.569246, 19.808161>,  <23.809763, 17.401861, 20.080515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.155561, 17.569246, 19.808161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.373093, 17.883984, 19.691454>,  <23.503611, 18.072826, 19.621429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.373093, 17.883984, 19.691454>,  <23.155561, 17.569246, 19.808161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.373093, 17.883984, 19.691454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321906, -0.125488, -0.938419,
		-0.775002, 0.604261, 0.185045,
		0.543828, 0.786843, -0.291768,
		23.536242, 18.120037, 19.603924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.735376, 18.000696, 19.454451>,  <23.155561, 17.569246, 19.808161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.735376, 18.000696, 19.454451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.087223, 18.134487, 19.319159>,  <23.298332, 18.214762, 19.237984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.087223, 18.134487, 19.319159>,  <22.735376, 18.000696, 19.454451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.087223, 18.134487, 19.319159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359571, 0.002029, -0.933116,
		-0.311419, 0.942402, 0.122053,
		0.879618, 0.334476, -0.338229,
		23.351109, 18.234831, 19.217690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.630600, 18.478186, 18.883842>,  <22.735376, 18.000696, 19.454451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.630600, 18.478186, 18.883842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.992233, 18.315556, 18.831184>,  <23.209213, 18.217978, 18.799589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.992233, 18.315556, 18.831184>,  <22.630600, 18.478186, 18.883842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.992233, 18.315556, 18.831184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203841, -0.139517, -0.969012,
		0.375608, 0.902902, -0.209012,
		0.904084, -0.406574, -0.131645,
		23.263458, 18.193583, 18.791691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.872160, 18.817299, 18.306572>,  <22.630600, 18.478186, 18.883842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.872160, 18.817299, 18.306572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.079956, 18.476440, 18.331791>,  <23.204634, 18.271925, 18.346922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.079956, 18.476440, 18.331791>,  <22.872160, 18.817299, 18.306572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.079956, 18.476440, 18.331791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276603, -0.237518, -0.931169,
		0.808467, 0.466297, -0.359095,
		0.519493, -0.852146, 0.063047,
		23.235804, 18.220797, 18.350704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.076252, 18.646276, 17.564787>,  <22.872160, 18.817299, 18.306572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.076252, 18.646276, 17.564787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.177570, 18.301777, 17.741009>,  <23.238361, 18.095078, 17.846743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.177570, 18.301777, 17.741009>,  <23.076252, 18.646276, 17.564787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.177570, 18.301777, 17.741009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063647, -0.469258, -0.880764,
		0.965292, 0.195056, -0.173678,
		0.253298, -0.861249, 0.440556,
		23.253559, 18.043402, 17.873175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.570368, 18.415844, 17.166821>,  <23.076252, 18.646276, 17.564787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.570368, 18.415844, 17.166821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.481373, 18.076023, 17.358137>,  <23.427977, 17.872131, 17.472927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.481373, 18.076023, 17.358137>,  <23.570368, 18.415844, 17.166821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.481373, 18.076023, 17.358137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041286, -0.498357, -0.865988,
		0.974061, -0.172924, 0.145953,
		-0.222487, -0.849551, 0.478291,
		23.414627, 17.821157, 17.501625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.060150, 17.933506, 17.027452>,  <23.570368, 18.415844, 17.166821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.060150, 17.933506, 17.027452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.733410, 17.735085, 17.145224>,  <23.537365, 17.616032, 17.215885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.733410, 17.735085, 17.145224>,  <24.060150, 17.933506, 17.027452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.733410, 17.735085, 17.145224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097360, -0.384524, -0.917966,
		0.568574, -0.778507, 0.265803,
		-0.816851, -0.496053, 0.294426,
		23.488354, 17.586269, 17.233551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.131767, 17.224131, 16.840666>,  <24.060150, 17.933506, 17.027452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.131767, 17.224131, 16.840666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.739395, 17.292629, 16.877434>,  <23.503971, 17.333729, 16.899494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.739395, 17.292629, 16.877434>,  <24.131767, 17.224131, 16.840666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.739395, 17.292629, 16.877434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153539, -0.392807, -0.906713,
		-0.119164, -0.903536, 0.411610,
		-0.980931, 0.171246, 0.091920,
		23.445116, 17.344004, 16.905010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.810034, 16.546928, 16.581697>,  <24.131767, 17.224131, 16.840666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.810034, 16.546928, 16.581697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.529209, 16.830357, 16.553297>,  <23.360714, 17.000414, 16.536257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.529209, 16.830357, 16.553297>,  <23.810034, 16.546928, 16.581697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.529209, 16.830357, 16.553297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188466, -0.281029, -0.941012,
		-0.686726, -0.647265, 0.330840,
		-0.702060, 0.708570, -0.071002,
		23.318592, 17.042927, 16.531996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.309425, 16.212809, 16.158407>,  <23.810034, 16.546928, 16.581697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.309425, 16.212809, 16.158407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.195908, 16.596249, 16.149035>,  <23.127796, 16.826313, 16.143412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.195908, 16.596249, 16.149035>,  <23.309425, 16.212809, 16.158407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.195908, 16.596249, 16.149035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386283, -0.136657, -0.912201,
		-0.877637, -0.249827, 0.409073,
		-0.283795, 0.958599, -0.023431,
		23.110769, 16.883829, 16.142006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<18.398809, 15.104259, 13.275730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.558372, 15.459091, 13.182810>,  <18.654110, 15.671990, 13.127058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.558372, 15.459091, 13.182810>,  <18.398809, 15.104259, 13.275730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.558372, 15.459091, 13.182810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470605, -0.019379, -0.882131,
		-0.787021, 0.461212, 0.409733,
		0.398910, 0.887078, -0.232301,
		18.678045, 15.725215, 13.113120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.868464, 15.352679, 13.057971>,  <18.398809, 15.104259, 13.275730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.868464, 15.352679, 13.057971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.161247, 15.582760, 12.911888>,  <18.336918, 15.720808, 12.824238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.161247, 15.582760, 12.911888>,  <17.868464, 15.352679, 13.057971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.161247, 15.582760, 12.911888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448216, 0.002798, -0.893921,
		-0.513163, 0.818007, 0.259863,
		0.731961, 0.575202, -0.365208,
		18.380835, 15.755321, 12.802326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.572611, 15.898444, 12.660872>,  <17.868464, 15.352679, 13.057971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.572611, 15.898444, 12.660872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.943310, 15.881752, 12.511528>,  <18.165730, 15.871737, 12.421922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.943310, 15.881752, 12.511528>,  <17.572611, 15.898444, 12.660872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.943310, 15.881752, 12.511528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375355, -0.061286, -0.924853,
		0.015712, 0.997247, -0.072460,
		0.926748, -0.041729, -0.373359,
		18.221334, 15.869233, 12.399520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.530426, 16.313734, 12.057964>,  <17.572611, 15.898444, 12.660872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.530426, 16.313734, 12.057964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.868168, 16.112621, 11.983911>,  <18.070812, 15.991954, 11.939478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.868168, 16.112621, 11.983911>,  <17.530426, 16.313734, 12.057964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.868168, 16.112621, 11.983911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328584, -0.212995, -0.920144,
		0.423199, 0.837761, -0.345049,
		0.844355, -0.502782, -0.185135,
		18.121475, 15.961787, 11.928370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816957, 16.615753, 11.467185>,  <17.530426, 16.313734, 12.057964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.816957, 16.615753, 11.467185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.979668, 16.250629, 11.481700>,  <18.077293, 16.031555, 11.490409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.979668, 16.250629, 11.481700>,  <17.816957, 16.615753, 11.467185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.979668, 16.250629, 11.481700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025683, -0.051133, -0.998362,
		0.913167, 0.405177, -0.044243,
		0.406776, -0.912807, 0.036287,
		18.101700, 15.976788, 11.492586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.240532, 16.580908, 10.838861>,  <17.816957, 16.615753, 11.467185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.240532, 16.580908, 10.838861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.161224, 16.200241, 10.932686>,  <18.113640, 15.971841, 10.988981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.161224, 16.200241, 10.932686>,  <18.240532, 16.580908, 10.838861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.161224, 16.200241, 10.932686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038913, -0.231484, -0.972060,
		0.979375, -0.201856, 0.008864,
		-0.198268, -0.951666, 0.234564,
		18.101744, 15.914742, 11.003056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.603331, 16.227160, 10.364443>,  <18.240532, 16.580908, 10.838861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.603331, 16.227160, 10.364443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.338383, 15.963520, 10.506912>,  <18.179415, 15.805336, 10.592394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.338383, 15.963520, 10.506912>,  <18.603331, 16.227160, 10.364443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.338383, 15.963520, 10.506912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132194, -0.365135, -0.921521,
		0.737424, -0.657469, 0.154725,
		-0.662367, -0.659098, 0.356173,
		18.139673, 15.765791, 10.613764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.894846, 15.586744, 10.263405>,  <18.603331, 16.227160, 10.364443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.894846, 15.586744, 10.263405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.512680, 15.484890, 10.323192>,  <18.283381, 15.423778, 10.359064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.512680, 15.484890, 10.323192>,  <18.894846, 15.586744, 10.263405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.512680, 15.484890, 10.323192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092748, -0.221774, -0.970677,
		0.280319, -0.941263, 0.188269,
		-0.955416, -0.254637, 0.149467,
		18.226055, 15.408499, 10.368032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.768600, 14.936248, 9.928486>,  <18.894846, 15.586744, 10.263405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.768600, 14.936248, 9.928486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.409100, 15.109390, 9.956417>,  <18.193399, 15.213276, 9.973176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.409100, 15.109390, 9.956417>,  <18.768600, 14.936248, 9.928486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.409100, 15.109390, 9.956417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110487, -0.069467, -0.991447,
		-0.424304, -0.898782, 0.110259,
		-0.898754, 0.432857, 0.069828,
		18.139473, 15.239247, 9.977365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.512159, 14.693007, 9.383205>,  <18.768600, 14.936248, 9.928486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.512159, 14.693007, 9.383205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.233540, 14.966751, 9.469430>,  <18.066368, 15.130998, 9.521165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.233540, 14.966751, 9.469430>,  <18.512159, 14.693007, 9.383205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.233540, 14.966751, 9.469430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306954, -0.012671, -0.951640,
		-0.648534, -0.729033, 0.218893,
		-0.696551, 0.684361, 0.215562,
		18.024574, 15.172059, 9.534099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.034588, 14.590939, 8.836834>,  <18.512159, 14.693007, 9.383205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.034588, 14.590939, 8.836834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.927700, 14.935547, 9.009520>,  <17.863567, 15.142312, 9.113131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.927700, 14.935547, 9.009520>,  <18.034588, 14.590939, 8.836834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.927700, 14.935547, 9.009520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395277, 0.310584, -0.864461,
		-0.878835, -0.401645, 0.257546,
		-0.267217, 0.861521, 0.431714,
		17.847534, 15.194003, 9.139033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.316628, 14.665265, 8.747060>,  <18.034588, 14.590939, 8.836834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.316628, 14.665265, 8.747060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.494984, 15.021687, 8.781016>,  <17.601997, 15.235539, 8.801391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.494984, 15.021687, 8.781016>,  <17.316628, 14.665265, 8.747060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.494984, 15.021687, 8.781016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454603, 0.307140, -0.836063,
		-0.771050, 0.334200, 0.542026,
		0.445890, 0.891053, 0.084892,
		17.628750, 15.289002, 8.806484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.796930, 15.141745, 8.694062>,  <17.316628, 14.665265, 8.747060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.796930, 15.141745, 8.694062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.132244, 15.335423, 8.593795>,  <17.333431, 15.451630, 8.533634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.132244, 15.335423, 8.593795>,  <16.796930, 15.141745, 8.694062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.132244, 15.335423, 8.593795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494832, 0.482563, -0.722685,
		-0.228958, 0.729854, 0.644120,
		0.838284, 0.484196, -0.250669,
		17.383730, 15.480681, 8.518594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.544178, 15.872469, 8.609838>,  <16.796930, 15.141745, 8.694062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.544178, 15.872469, 8.609838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.883545, 15.788975, 8.415263>,  <17.087164, 15.738878, 8.298518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.883545, 15.788975, 8.415263>,  <16.544178, 15.872469, 8.609838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.883545, 15.788975, 8.415263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327435, 0.515092, -0.792127,
		0.415905, 0.831330, 0.368665,
		0.848416, -0.208736, -0.486436,
		17.138069, 15.726354, 8.269332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.890689, 16.249548, 8.495975>,  <16.544178, 15.872469, 8.609838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.890689, 16.249548, 8.495975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.522895, 16.378788, 8.585554>,  <15.302218, 16.456331, 8.639301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.522895, 16.378788, 8.585554>,  <15.890689, 16.249548, 8.495975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.522895, 16.378788, 8.585554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386293, 0.636831, 0.667251,
		0.072972, 0.700037, -0.710368,
		-0.919485, 0.323101, 0.223948,
		15.247049, 16.475718, 8.652739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.965124, 16.951412, 8.522984>,  <15.890689, 16.249548, 8.495975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.965124, 16.951412, 8.522984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.622157, 16.881142, 8.716467>,  <15.416377, 16.838980, 8.832557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.622157, 16.881142, 8.716467>,  <15.965124, 16.951412, 8.522984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.622157, 16.881142, 8.716467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213646, 0.733589, 0.645138,
		-0.468178, 0.656495, -0.591459,
		-0.857418, -0.175677, 0.483708,
		15.364932, 16.828438, 8.861579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.746051, 17.599989, 8.747414>,  <15.965124, 16.951412, 8.522984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.746051, 17.599989, 8.747414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.555629, 17.349182, 8.994062>,  <15.441376, 17.198698, 9.142052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.555629, 17.349182, 8.994062>,  <15.746051, 17.599989, 8.747414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.555629, 17.349182, 8.994062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332339, 0.520904, 0.786263,
		-0.814201, 0.579232, -0.039597,
		-0.476055, -0.627016, 0.616621,
		15.412812, 17.161077, 9.179049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.424081, 18.025331, 9.110094>,  <15.746051, 17.599989, 8.747414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.424081, 18.025331, 9.110094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.383277, 17.687443, 9.320251>,  <15.358794, 17.484709, 9.446346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.383277, 17.687443, 9.320251>,  <15.424081, 18.025331, 9.110094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.383277, 17.687443, 9.320251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320274, 0.472140, 0.821285,
		-0.941817, 0.252049, 0.222379,
		-0.102010, -0.844722, 0.525394,
		15.352674, 17.434027, 9.477870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.324281, 18.255018, 9.791825>,  <15.424081, 18.025331, 9.110094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.324281, 18.255018, 9.791825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.412824, 17.869961, 9.854208>,  <15.465949, 17.638927, 9.891638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.412824, 17.869961, 9.854208>,  <15.324281, 18.255018, 9.791825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.412824, 17.869961, 9.854208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329825, 0.224401, 0.916984,
		-0.917723, -0.151542, 0.367176,
		0.221356, -0.962641, 0.155956,
		15.479231, 17.581169, 9.900995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.088357, 18.119186, 10.529765>,  <15.324281, 18.255018, 9.791825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.088357, 18.119186, 10.529765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.341302, 17.830154, 10.418053>,  <15.493069, 17.656734, 10.351026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.341302, 17.830154, 10.418053>,  <15.088357, 18.119186, 10.529765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.341302, 17.830154, 10.418053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541219, 0.154147, 0.826632,
		-0.554257, -0.673882, 0.488551,
		0.632361, -0.722580, -0.279281,
		15.531011, 17.613380, 10.334269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.057387, 17.560667, 11.091375>,  <15.088357, 18.119186, 10.529765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.057387, 17.560667, 11.091375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.404780, 17.569824, 10.893298>,  <15.613216, 17.575317, 10.774452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.404780, 17.569824, 10.893298>,  <15.057387, 17.560667, 11.091375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.404780, 17.569824, 10.893298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495490, -0.009528, 0.868562,
		0.015165, -0.999692, -0.019618,
		0.868482, 0.022892, -0.495193,
		15.665325, 17.576691, 10.744740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.504069, 17.075439, 11.342832>,  <15.057387, 17.560667, 11.091375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.504069, 17.075439, 11.342832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.778127, 17.298695, 11.155618>,  <15.942561, 17.432648, 11.043289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.778127, 17.298695, 11.155618>,  <15.504069, 17.075439, 11.342832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.778127, 17.298695, 11.155618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515073, 0.083107, 0.853108,
		0.515050, -0.825575, -0.230542,
		0.685144, 0.558140, -0.468035,
		15.983670, 17.466137, 11.015207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.075115, 16.810917, 11.460314>,  <15.504069, 17.075439, 11.342832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.075115, 16.810917, 11.460314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.171978, 17.188850, 11.372090>,  <16.230095, 17.415611, 11.319157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.171978, 17.188850, 11.372090>,  <16.075115, 16.810917, 11.460314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.171978, 17.188850, 11.372090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634273, 0.017863, 0.772903,
		0.734206, -0.327058, -0.594958,
		0.242156, 0.944836, -0.220559,
		16.244625, 17.472301, 11.305923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711365, 16.897289, 11.540471>,  <16.075115, 16.810917, 11.460314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.711365, 16.897289, 11.540471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.597561, 17.278786, 11.579313>,  <16.529280, 17.507685, 11.602619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.597561, 17.278786, 11.579313>,  <16.711365, 16.897289, 11.540471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.597561, 17.278786, 11.579313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540382, 0.075879, 0.837991,
		0.791860, 0.290890, -0.536973,
		-0.284509, 0.953743, 0.097106,
		16.512209, 17.564909, 11.608445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.300621, 17.215340, 11.806129>,  <16.711365, 16.897289, 11.540471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.300621, 17.215340, 11.806129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.025475, 17.494736, 11.885074>,  <16.860388, 17.662374, 11.932440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.025475, 17.494736, 11.885074>,  <17.300621, 17.215340, 11.806129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.025475, 17.494736, 11.885074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514367, 0.277245, 0.811518,
		0.512122, 0.659731, -0.549988,
		-0.687865, 0.698492, 0.197360,
		16.819115, 17.704283, 11.944282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.673742, 17.844671, 11.970815>,  <17.300621, 17.215340, 11.806129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.673742, 17.844671, 11.970815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.307480, 17.912476, 12.116603>,  <17.087723, 17.953157, 12.204076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.307480, 17.912476, 12.116603>,  <17.673742, 17.844671, 11.970815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.307480, 17.912476, 12.116603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398846, 0.495788, 0.771437,
		-0.049933, 0.851740, -0.521581,
		-0.915657, 0.169510, 0.364469,
		17.032784, 17.963329, 12.225944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.645990, 18.528906, 12.133771>,  <17.673742, 17.844671, 11.970815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.645990, 18.528906, 12.133771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.352833, 18.352489, 12.340980>,  <17.176937, 18.246639, 12.465305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.352833, 18.352489, 12.340980>,  <17.645990, 18.528906, 12.133771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.352833, 18.352489, 12.340980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380202, 0.365912, 0.849444,
		-0.564190, 0.819506, -0.100491,
		-0.732895, -0.441041, 0.518022,
		17.132965, 18.220177, 12.496387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.407799, 19.065544, 12.625950>,  <17.645990, 18.528906, 12.133771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.407799, 19.065544, 12.625950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.275063, 18.721790, 12.781559>,  <17.195421, 18.515537, 12.874925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.275063, 18.721790, 12.781559>,  <17.407799, 19.065544, 12.625950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.275063, 18.721790, 12.781559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157956, 0.355949, 0.921059,
		-0.930017, 0.367094, 0.017626,
		-0.331842, -0.859384, 0.389024,
		17.175510, 18.463974, 12.898266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.080620, 19.799519, 12.398434>,  <17.407799, 19.065544, 12.625950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.080620, 19.799519, 12.398434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.245026, 20.163483, 12.376060>,  <17.343668, 20.381861, 12.362635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.245026, 20.163483, 12.376060>,  <17.080620, 19.799519, 12.398434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.245026, 20.163483, 12.376060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267478, 0.061709, -0.961586,
		-0.871507, 0.410186, 0.268744,
		0.411013, 0.909912, -0.055936,
		17.368330, 20.436457, 12.359279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.497347, 20.271940, 12.099935>,  <17.080620, 19.799519, 12.398434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.497347, 20.271940, 12.099935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.860493, 20.431046, 12.046917>,  <17.078381, 20.526508, 12.015106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.860493, 20.431046, 12.046917>,  <16.497347, 20.271940, 12.099935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.860493, 20.431046, 12.046917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156734, 0.028767, -0.987222,
		-0.388866, 0.917038, 0.088459,
		0.907864, 0.397761, -0.132544,
		17.132853, 20.550373, 12.007154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.314676, 20.726654, 11.562648>,  <16.497347, 20.271940, 12.099935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.314676, 20.726654, 11.562648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.712856, 20.690182, 11.551578>,  <16.951765, 20.668299, 11.544935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.712856, 20.690182, 11.551578>,  <16.314676, 20.726654, 11.562648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.712856, 20.690182, 11.551578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020114, 0.082832, -0.996361,
		0.093141, 0.992384, 0.080621,
		0.995450, -0.091181, -0.027676,
		17.011492, 20.662828, 11.543275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.554899, 21.354116, 11.182856>,  <16.314676, 20.726654, 11.562648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.554899, 21.354116, 11.182856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.836880, 21.070881, 11.166578>,  <17.006067, 20.900940, 11.156812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.836880, 21.070881, 11.166578>,  <16.554899, 21.354116, 11.182856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.836880, 21.070881, 11.166578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079993, 0.136385, -0.987421,
		0.704730, 0.692829, 0.152787,
		0.704951, -0.708087, -0.040694,
		17.048365, 20.858454, 11.154370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.175131, 21.579412, 10.868725>,  <16.554899, 21.354116, 11.182856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.175131, 21.579412, 10.868725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.179230, 21.185749, 10.797932>,  <17.181690, 20.949551, 10.755456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.179230, 21.185749, 10.797932>,  <17.175131, 21.579412, 10.868725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.179230, 21.185749, 10.797932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157116, 0.176379, -0.971702,
		0.987527, -0.017848, 0.156435,
		0.010249, -0.984161, -0.176983,
		17.182304, 20.890501, 10.744837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.682867, 21.596203, 10.448525>,  <17.175131, 21.579412, 10.868725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.682867, 21.596203, 10.448525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.509464, 21.237812, 10.409962>,  <17.405422, 21.022778, 10.386824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.509464, 21.237812, 10.409962>,  <17.682867, 21.596203, 10.448525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.509464, 21.237812, 10.409962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194932, 0.011216, -0.980753,
		0.879814, -0.443958, 0.169792,
		-0.433508, -0.895978, -0.096409,
		17.379412, 20.969019, 10.381039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.104513, 21.182697, 10.031910>,  <17.682867, 21.596203, 10.448525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.104513, 21.182697, 10.031910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.760612, 20.981873, 9.994478>,  <17.554272, 20.861378, 9.972019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.760612, 20.981873, 9.994478>,  <18.104513, 21.182697, 10.031910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.760612, 20.981873, 9.994478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136933, -0.050094, -0.989313,
		0.492009, -0.863379, 0.111818,
		-0.859753, -0.502063, -0.093579,
		17.502686, 20.831253, 9.966405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.205055, 20.556950, 9.581392>,  <18.104513, 21.182697, 10.031910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.205055, 20.556950, 9.581392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.811787, 20.629715, 9.588072>,  <17.575825, 20.673374, 9.592079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.811787, 20.629715, 9.588072>,  <18.205055, 20.556950, 9.581392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.811787, 20.629715, 9.588072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046431, -0.160439, -0.985953,
		-0.176698, -0.970134, 0.166186,
		-0.983169, 0.181932, 0.016695,
		17.516834, 20.684288, 9.593081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.007278, 19.983437, 9.239202>,  <18.205055, 20.556950, 9.581392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.007278, 19.983437, 9.239202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.721016, 20.261421, 9.211302>,  <17.549257, 20.428211, 9.194561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.721016, 20.261421, 9.211302>,  <18.007278, 19.983437, 9.239202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.721016, 20.261421, 9.211302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075560, -0.176315, -0.981429,
		-0.694352, -0.697097, 0.178693,
		-0.715658, 0.694960, -0.069752,
		17.506319, 20.469910, 9.190376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.325277, 19.659384, 8.976897>,  <18.007278, 19.983437, 9.239202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.325277, 19.659384, 8.976897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.332718, 20.047020, 8.878497>,  <17.337181, 20.279602, 8.819457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.332718, 20.047020, 8.878497>,  <17.325277, 19.659384, 8.976897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.332718, 20.047020, 8.878497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050806, -0.244810, -0.968239,
		-0.998535, 0.030508, 0.044682,
		0.018600, 0.969091, -0.246002,
		17.338299, 20.337748, 8.804697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.022886, 19.673170, 8.397639>,  <17.325277, 19.659384, 8.976897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.022886, 19.673170, 8.397639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.213619, 20.023933, 8.373418>,  <17.328058, 20.234390, 8.358885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.213619, 20.023933, 8.373418>,  <17.022886, 19.673170, 8.397639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.213619, 20.023933, 8.373418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072272, -0.107770, -0.991545,
		-0.876018, 0.468424, -0.114764,
		0.476832, 0.876906, -0.060554,
		17.356668, 20.287004, 8.355251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.647646, 20.144457, 7.898700>,  <17.022886, 19.673170, 8.397639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.647646, 20.144457, 7.898700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.005016, 20.323891, 7.908186>,  <17.219439, 20.431551, 7.913877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.005016, 20.323891, 7.908186>,  <16.647646, 20.144457, 7.898700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.005016, 20.323891, 7.908186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010090, 0.072818, -0.997294,
		-0.449099, 0.890768, 0.069584,
		0.893425, 0.448586, 0.023715,
		17.273045, 20.458467, 7.915300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.276646, 20.800358, 15.975039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.628510, 20.968468, 15.885980>,  <17.839628, 21.069334, 15.832544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.628510, 20.968468, 15.885980>,  <17.276646, 20.800358, 15.975039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.628510, 20.968468, 15.885980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276395, 0.070763, -0.958435,
		-0.387049, 0.904634, 0.178408,
		0.879658, 0.420273, -0.222648,
		17.892406, 21.094549, 15.819185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.138720, 21.297602, 15.482975>,  <17.276646, 20.800358, 15.975039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.138720, 21.297602, 15.482975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.532127, 21.241787, 15.436992>,  <17.768173, 21.208298, 15.409402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.532127, 21.241787, 15.436992>,  <17.138720, 21.297602, 15.482975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.532127, 21.241787, 15.436992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099519, 0.113005, -0.988598,
		0.150936, 0.983748, 0.097256,
		0.983521, -0.139536, -0.114958,
		17.827185, 21.199926, 15.402504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.369186, 21.852003, 15.156327>,  <17.138720, 21.297602, 15.482975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.369186, 21.852003, 15.156327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.610321, 21.542221, 15.079587>,  <17.755001, 21.356352, 15.033543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.610321, 21.542221, 15.079587>,  <17.369186, 21.852003, 15.156327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.610321, 21.542221, 15.079587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288167, 0.012884, -0.957494,
		0.744009, 0.632495, -0.215406,
		0.602835, -0.774457, -0.191850,
		17.791172, 21.309883, 15.022032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.793564, 22.004480, 14.489226>,  <17.369186, 21.852003, 15.156327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.793564, 22.004480, 14.489226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816273, 21.605808, 14.512557>,  <17.829899, 21.366604, 14.526555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816273, 21.605808, 14.512557>,  <17.793564, 22.004480, 14.489226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.816273, 21.605808, 14.512557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026261, -0.056909, -0.998034,
		0.998042, 0.058193, 0.022943,
		0.056772, -0.996682, 0.058326,
		17.833305, 21.306803, 14.530055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.373783, 21.756191, 14.148553>,  <17.793564, 22.004480, 14.489226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.373783, 21.756191, 14.148553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.151093, 21.424221, 14.162850>,  <18.017479, 21.225039, 14.171429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.151093, 21.424221, 14.162850>,  <18.373783, 21.756191, 14.148553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.151093, 21.424221, 14.162850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076189, -0.093862, -0.992666,
		0.827194, -0.549920, 0.115486,
		-0.556727, -0.829926, 0.035744,
		17.984074, 21.175243, 14.173573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.735847, 21.241245, 13.649707>,  <18.373783, 21.756191, 14.148553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.735847, 21.241245, 13.649707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.359119, 21.136017, 13.733396>,  <18.133083, 21.072880, 13.783608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.359119, 21.136017, 13.733396>,  <18.735847, 21.241245, 13.649707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.359119, 21.136017, 13.733396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098557, -0.378957, -0.920151,
		0.321350, -0.887235, 0.330981,
		-0.941817, -0.263070, 0.209221,
		18.076574, 21.057096, 13.796162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.631355, 20.634453, 13.316908>,  <18.735847, 21.241245, 13.649707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.631355, 20.634453, 13.316908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250111, 20.738243, 13.379198>,  <18.021364, 20.800518, 13.416573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250111, 20.738243, 13.379198>,  <18.631355, 20.634453, 13.316908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.250111, 20.738243, 13.379198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256116, -0.417545, -0.871815,
		-0.161194, -0.870820, 0.464423,
		-0.953111, 0.259477, 0.155726,
		17.964178, 20.816086, 13.425916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.223728, 20.035791, 13.172682>,  <18.631355, 20.634453, 13.316908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.223728, 20.035791, 13.172682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.974236, 20.347889, 13.154001>,  <17.824541, 20.535147, 13.142793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.974236, 20.347889, 13.154001>,  <18.223728, 20.035791, 13.172682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.974236, 20.347889, 13.154001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173095, -0.196142, -0.965177,
		-0.762233, -0.593926, 0.257396,
		-0.623730, 0.780244, -0.046701,
		17.787117, 20.581963, 13.139991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.592514, 19.777431, 12.922593>,  <18.223728, 20.035791, 13.172682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.592514, 19.777431, 12.922593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.597332, 20.165817, 12.827026>,  <17.600224, 20.398849, 12.769686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.597332, 20.165817, 12.827026>,  <17.592514, 19.777431, 12.922593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.597332, 20.165817, 12.827026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306642, -0.223835, -0.925132,
		-0.951749, 0.084406, 0.295042,
		0.012046, 0.970965, -0.238917,
		17.600946, 20.457108, 12.755351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.165010, 19.333715, 13.371956>,  <17.592514, 19.777431, 12.922593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.165010, 19.333715, 13.371956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.155262, 18.934059, 13.385347>,  <17.149412, 18.694265, 13.393382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.155262, 18.934059, 13.385347>,  <17.165010, 19.333715, 13.371956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.155262, 18.934059, 13.385347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082834, 0.031355, 0.996070,
		-0.996265, 0.027051, 0.081999,
		-0.024373, -0.999142, 0.033479,
		17.147949, 18.634317, 13.395391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.748446, 19.089813, 13.957328>,  <17.165010, 19.333715, 13.371956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.748446, 19.089813, 13.957328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.988281, 18.782234, 13.868590>,  <17.132183, 18.597687, 13.815348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.988281, 18.782234, 13.868590>,  <16.748446, 19.089813, 13.957328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.988281, 18.782234, 13.868590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188877, -0.133407, 0.972897,
		-0.777700, -0.625240, 0.065247,
		0.599590, -0.768946, -0.221844,
		17.168158, 18.551550, 13.802037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.515329, 18.491051, 14.282984>,  <16.748446, 19.089813, 13.957328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.515329, 18.491051, 14.282984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.904888, 18.413296, 14.236094>,  <17.138622, 18.366642, 14.207961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.904888, 18.413296, 14.236094>,  <16.515329, 18.491051, 14.282984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.904888, 18.413296, 14.236094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014535, -0.461942, 0.886791,
		-0.226533, -0.865345, -0.447058,
		0.973895, -0.194389, -0.117223,
		17.197056, 18.354979, 14.200928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.492458, 17.917913, 14.551238>,  <16.515329, 18.491051, 14.282984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.492458, 17.917913, 14.551238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.882431, 18.005768, 14.537000>,  <17.116415, 18.058481, 14.528457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.882431, 18.005768, 14.537000>,  <16.492458, 17.917913, 14.551238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.882431, 18.005768, 14.537000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142499, -0.493471, 0.858009,
		0.170886, -0.841573, -0.512399,
		0.974932, 0.219638, -0.035596,
		17.174911, 18.071659, 14.526321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.810017, 17.334980, 14.679424>,  <16.492458, 17.917913, 14.551238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.810017, 17.334980, 14.679424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.083809, 17.611507, 14.771996>,  <17.248085, 17.777424, 14.827539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.083809, 17.611507, 14.771996>,  <16.810017, 17.334980, 14.679424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.083809, 17.611507, 14.771996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181293, -0.468888, 0.864452,
		0.706128, -0.549745, -0.446277,
		0.684482, 0.691321, 0.231430,
		17.289154, 17.818903, 14.841426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.395773, 16.936087, 14.909974>,  <16.810017, 17.334980, 14.679424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.395773, 16.936087, 14.909974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.417576, 17.299797, 15.075019>,  <17.430656, 17.518023, 15.174046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.417576, 17.299797, 15.075019>,  <17.395773, 16.936087, 14.909974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.417576, 17.299797, 15.075019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136532, -0.416132, 0.898995,
		0.989135, 0.007335, -0.146826,
		0.054505, 0.909274, 0.412613,
		17.433928, 17.572578, 15.198803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816692, 16.807003, 15.493702>,  <17.395773, 16.936087, 14.909974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.816692, 16.807003, 15.493702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.689671, 17.175751, 15.582534>,  <17.613457, 17.396999, 15.635833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.689671, 17.175751, 15.582534>,  <17.816692, 16.807003, 15.493702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.689671, 17.175751, 15.582534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237512, -0.149409, 0.959825,
		0.918012, 0.357544, -0.171509,
		-0.317555, 0.921867, 0.222080,
		17.594404, 17.452311, 15.649158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.356388, 17.171385, 15.943103>,  <17.816692, 16.807003, 15.493702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.356388, 17.171385, 15.943103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.009556, 17.353783, 16.023342>,  <17.801456, 17.463221, 16.071486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.009556, 17.353783, 16.023342>,  <18.356388, 17.171385, 15.943103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.009556, 17.353783, 16.023342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298136, 0.152387, 0.942281,
		0.399107, 0.876839, -0.268080,
		-0.867081, 0.455995, 0.200599,
		17.749432, 17.490582, 16.083521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.538694, 17.760201, 16.326311>,  <18.356388, 17.171385, 15.943103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.538694, 17.760201, 16.326311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.149139, 17.711613, 16.403030>,  <17.915405, 17.682461, 16.449062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.149139, 17.711613, 16.403030>,  <18.538694, 17.760201, 16.326311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.149139, 17.711613, 16.403030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159649, 0.234244, 0.958980,
		-0.161413, 0.964560, -0.208736,
		-0.973888, -0.121467, 0.191801,
		17.856974, 17.675173, 16.460571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.294106, 18.298645, 16.836243>,  <18.538694, 17.760201, 16.326311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.294106, 18.298645, 16.836243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.026440, 18.001846, 16.852541>,  <17.865841, 17.823767, 16.862320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.026440, 18.001846, 16.852541>,  <18.294106, 18.298645, 16.836243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.026440, 18.001846, 16.852541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015347, 0.041023, 0.999040,
		-0.742956, 0.669148, -0.016064,
		-0.669165, -0.741996, 0.040748,
		17.825689, 17.779247, 16.864765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.759090, 18.517046, 17.284355>,  <18.294106, 18.298645, 16.836243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.759090, 18.517046, 17.284355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773132, 18.117298, 17.282114>,  <17.781557, 17.877449, 17.280769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773132, 18.117298, 17.282114>,  <17.759090, 18.517046, 17.284355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.773132, 18.117298, 17.282114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059642, -0.007689, 0.998190,
		-0.997602, -0.034708, -0.059874,
		0.035106, -0.999368, -0.005601,
		17.783665, 17.817488, 17.280434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.434294, 18.407421, 17.944347>,  <17.759090, 18.517046, 17.284355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.434294, 18.407421, 17.944347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.570454, 18.044628, 17.845142>,  <17.652149, 17.826952, 17.785620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.570454, 18.044628, 17.845142>,  <17.434294, 18.407421, 17.944347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.570454, 18.044628, 17.845142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203676, -0.186381, 0.961134,
		-0.917957, -0.377682, 0.121286,
		0.340398, -0.906983, -0.248015,
		17.672573, 17.772533, 17.770739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.055019, 17.840303, 18.283552>,  <17.434294, 18.407421, 17.944347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.055019, 17.840303, 18.283552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.426022, 17.712399, 18.206104>,  <17.648623, 17.635656, 18.159636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.426022, 17.712399, 18.206104>,  <17.055019, 17.840303, 18.283552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.426022, 17.712399, 18.206104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141155, -0.180022, 0.973482,
		-0.346139, -0.930239, -0.121835,
		0.927504, -0.319763, -0.193620,
		17.704273, 17.616470, 18.148018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.160318, 17.371706, 18.747599>,  <17.055019, 17.840303, 18.283552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.160318, 17.371706, 18.747599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.541046, 17.398567, 18.627914>,  <17.769484, 17.414684, 18.556103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.541046, 17.398567, 18.627914>,  <17.160318, 17.371706, 18.747599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.541046, 17.398567, 18.627914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306504, -0.177682, 0.935139,
		0.009634, -0.981794, -0.189704,
		0.951821, 0.067155, -0.299212,
		17.826591, 17.418713, 18.538151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<25.075773, 19.605341, 16.920746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.699856, 19.739780, 16.895996>,  <24.474306, 19.820444, 16.881145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.699856, 19.739780, 16.895996>,  <25.075773, 19.605341, 16.920746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.699856, 19.739780, 16.895996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090502, -0.419356, -0.903300,
		-0.329542, -0.843315, 0.424525,
		-0.939794, 0.336095, -0.061874,
		24.417917, 19.840609, 16.877434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.743103, 19.103222, 16.561493>,  <25.075773, 19.605341, 16.920746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.743103, 19.103222, 16.561493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.487850, 19.408764, 16.522884>,  <24.334698, 19.592089, 16.499720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.487850, 19.408764, 16.522884>,  <24.743103, 19.103222, 16.561493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.487850, 19.408764, 16.522884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188543, -0.276582, -0.942313,
		-0.746485, -0.583122, 0.320515,
		-0.638131, 0.763853, -0.096520,
		24.296412, 19.637920, 16.493929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.168098, 18.792839, 16.253334>,  <24.743103, 19.103222, 16.561493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.168098, 18.792839, 16.253334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.145741, 19.185703, 16.181520>,  <24.132326, 19.421423, 16.138432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.145741, 19.185703, 16.181520>,  <24.168098, 18.792839, 16.253334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.145741, 19.185703, 16.181520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207540, -0.187317, -0.960124,
		-0.976628, -0.016406, 0.214308,
		-0.055895, 0.982163, -0.179535,
		24.128971, 19.480352, 16.127661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.663748, 18.874918, 15.782494>,  <24.168098, 18.792839, 16.253334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.663748, 18.874918, 15.782494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.865902, 19.218834, 15.753251>,  <23.987194, 19.425184, 15.735705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.865902, 19.218834, 15.753251>,  <23.663748, 18.874918, 15.782494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.865902, 19.218834, 15.753251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012316, -0.077527, -0.996914,
		-0.862805, 0.504728, -0.028592,
		0.505387, 0.859790, -0.073107,
		24.017517, 19.476770, 15.731319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.197414, 19.258780, 15.399496>,  <23.663748, 18.874918, 15.782494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.197414, 19.258780, 15.399496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.574287, 19.387211, 15.361136>,  <23.800411, 19.464270, 15.338120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.574287, 19.387211, 15.361136>,  <23.197414, 19.258780, 15.399496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.574287, 19.387211, 15.361136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089077, -0.035908, -0.995377,
		-0.323038, 0.946372, -0.005231,
		0.942185, 0.321079, -0.095899,
		23.856943, 19.483534, 15.332367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.162779, 19.818031, 14.949592>,  <23.197414, 19.258780, 15.399496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.162779, 19.818031, 14.949592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.527069, 19.653038, 14.941247>,  <23.745644, 19.554041, 14.936240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.527069, 19.653038, 14.941247>,  <23.162779, 19.818031, 14.949592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.527069, 19.653038, 14.941247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095419, -0.160994, -0.982332,
		0.401839, 0.896625, -0.185981,
		0.910725, -0.412485, -0.020861,
		23.800287, 19.529293, 14.934989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.355190, 20.035740, 14.299652>,  <23.162779, 19.818031, 14.949592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.355190, 20.035740, 14.299652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.631729, 19.764381, 14.399102>,  <23.797653, 19.601566, 14.458773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.631729, 19.764381, 14.399102>,  <23.355190, 20.035740, 14.299652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.631729, 19.764381, 14.399102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045550, -0.384348, -0.922064,
		0.721084, 0.626143, -0.296620,
		0.691349, -0.678397, 0.248626,
		23.839134, 19.560862, 14.473690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.030672, 20.243782, 13.911624>,  <23.355190, 20.035740, 14.299652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.030672, 20.243782, 13.911624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.982941, 19.856991, 14.001706>,  <23.954302, 19.624916, 14.055756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.982941, 19.856991, 14.001706>,  <24.030672, 20.243782, 13.911624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.982941, 19.856991, 14.001706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165710, -0.204246, -0.964792,
		0.978928, -0.152446, -0.135865,
		-0.119329, -0.966977, 0.225204,
		23.947142, 19.566898, 14.069267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.084574, 19.936020, 13.221932>,  <24.030672, 20.243782, 13.911624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.084574, 19.936020, 13.221932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.001850, 19.612576, 13.442253>,  <23.952217, 19.418509, 13.574446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.001850, 19.612576, 13.442253>,  <24.084574, 19.936020, 13.221932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.001850, 19.612576, 13.442253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332725, -0.471291, -0.816810,
		0.920068, -0.352188, -0.171578,
		-0.206808, -0.808609, 0.550801,
		23.939808, 19.369993, 13.607493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.394953, 19.299746, 12.930730>,  <24.084574, 19.936020, 13.221932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.394953, 19.299746, 12.930730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.059685, 19.212128, 13.130527>,  <23.858524, 19.159557, 13.250404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.059685, 19.212128, 13.130527>,  <24.394953, 19.299746, 12.930730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.059685, 19.212128, 13.130527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382417, -0.416955, -0.824564,
		0.388885, -0.882137, 0.265711,
		-0.838168, -0.219048, 0.499492,
		23.808235, 19.146414, 13.280375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.179008, 18.593851, 12.702643>,  <24.394953, 19.299746, 12.930730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.179008, 18.593851, 12.702643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.847763, 18.747829, 12.865637>,  <23.649015, 18.840218, 12.963433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.847763, 18.747829, 12.865637>,  <24.179008, 18.593851, 12.702643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.847763, 18.747829, 12.865637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508123, -0.208507, -0.835665,
		-0.236728, -0.899076, 0.368270,
		-0.828113, 0.384952, 0.407482,
		23.599329, 18.863314, 12.987882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.634171, 18.168407, 12.346275>,  <24.179008, 18.593851, 12.702643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.634171, 18.168407, 12.346275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.442280, 18.481136, 12.505583>,  <23.327145, 18.668774, 12.601167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.442280, 18.481136, 12.505583>,  <23.634171, 18.168407, 12.346275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.442280, 18.481136, 12.505583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613487, 0.025634, -0.789289,
		-0.627292, -0.622976, 0.467339,
		-0.479728, 0.781821, 0.398268,
		23.298361, 18.715683, 12.625063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.005085, 18.013996, 12.213130>,  <23.634171, 18.168407, 12.346275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.005085, 18.013996, 12.213130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.995804, 18.407810, 12.282583>,  <22.990234, 18.644098, 12.324255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.995804, 18.407810, 12.282583>,  <23.005085, 18.013996, 12.213130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.995804, 18.407810, 12.282583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513517, 0.137280, -0.847027,
		-0.857765, -0.108818, 0.502391,
		-0.023204, 0.984537, 0.173634,
		22.988842, 18.703171, 12.334674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.267065, 18.180090, 12.364504>,  <23.005085, 18.013996, 12.213130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.267065, 18.180090, 12.364504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.470627, 18.498753, 12.234057>,  <22.592764, 18.689951, 12.155789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.470627, 18.498753, 12.234057>,  <22.267065, 18.180090, 12.364504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.470627, 18.498753, 12.234057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627521, 0.083996, -0.774056,
		-0.589265, 0.598566, 0.542666,
		0.508905, 0.796658, -0.326117,
		22.623299, 18.737749, 12.136223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.632816, 17.842867, 12.444082>,  <22.267065, 18.180090, 12.364504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.632816, 17.842867, 12.444082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.802364, 17.484394, 12.391631>,  <21.904093, 17.269310, 12.360160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.802364, 17.484394, 12.391631>,  <21.632816, 17.842867, 12.444082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.802364, 17.484394, 12.391631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292012, -0.001827, 0.956413,
		-0.857358, -0.443687, 0.260921,
		0.423871, -0.896180, -0.131128,
		21.929525, 17.215540, 12.352293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.390696, 17.487392, 13.030169>,  <21.632816, 17.842867, 12.444082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.390696, 17.487392, 13.030169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.677120, 17.243225, 12.894732>,  <21.848974, 17.096724, 12.813471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.677120, 17.243225, 12.894732>,  <21.390696, 17.487392, 13.030169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.677120, 17.243225, 12.894732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292878, -0.177572, 0.939516,
		-0.633624, -0.771917, 0.051626,
		0.716061, -0.610420, -0.338591,
		21.891939, 17.060099, 12.793155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.296513, 16.879999, 13.375949>,  <21.390696, 17.487392, 13.030169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.296513, 16.879999, 13.375949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.677422, 16.885567, 13.253977>,  <21.905968, 16.888906, 13.180794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.677422, 16.885567, 13.253977>,  <21.296513, 16.879999, 13.375949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.677422, 16.885567, 13.253977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304134, -0.128540, 0.943917,
		-0.026058, -0.991606, -0.126638,
		0.952273, 0.013918, -0.304931,
		21.963104, 16.889742, 13.162498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.583834, 16.354216, 13.721181>,  <21.296513, 16.879999, 13.375949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.583834, 16.354216, 13.721181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.885002, 16.580887, 13.587321>,  <22.065702, 16.716888, 13.507006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.885002, 16.580887, 13.587321>,  <21.583834, 16.354216, 13.721181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.885002, 16.580887, 13.587321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458295, -0.086534, 0.884577,
		0.472311, -0.819384, -0.324859,
		0.752920, 0.566676, -0.334649,
		22.110878, 16.750889, 13.486927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.199368, 16.010279, 13.828710>,  <21.583834, 16.354216, 13.721181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.199368, 16.010279, 13.828710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.299118, 16.397503, 13.818341>,  <22.358969, 16.629837, 13.812120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.299118, 16.397503, 13.818341>,  <22.199368, 16.010279, 13.828710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.299118, 16.397503, 13.818341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487506, -0.102367, 0.867098,
		0.836749, -0.228870, -0.497462,
		0.249377, 0.968059, -0.025920,
		22.373932, 16.687922, 13.810565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.873980, 15.959788, 14.207575>,  <22.199368, 16.010279, 13.828710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.873980, 15.959788, 14.207575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.740719, 16.335548, 14.175233>,  <22.660763, 16.561005, 14.155828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.740719, 16.335548, 14.175233>,  <22.873980, 15.959788, 14.207575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.740719, 16.335548, 14.175233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448950, 0.233456, 0.862521,
		0.829128, 0.251050, -0.499520,
		-0.333152, 0.939400, -0.080856,
		22.640774, 16.617369, 14.150976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.486021, 16.359732, 14.318647>,  <22.873980, 15.959788, 14.207575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.486021, 16.359732, 14.318647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.157238, 16.572746, 14.399432>,  <22.959969, 16.700556, 14.447903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.157238, 16.572746, 14.399432>,  <23.486021, 16.359732, 14.318647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.157238, 16.572746, 14.399432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395483, 0.278489, 0.875235,
		0.409851, 0.799280, -0.439516,
		-0.821958, 0.532537, 0.201962,
		22.910650, 16.732508, 14.460021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.710913, 16.914173, 14.779634>,  <23.486021, 16.359732, 14.318647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.710913, 16.914173, 14.779634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.313202, 16.914261, 14.822370>,  <23.074575, 16.914312, 14.848010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.313202, 16.914261, 14.822370>,  <23.710913, 16.914173, 14.779634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.313202, 16.914261, 14.822370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096235, 0.436122, 0.894727,
		-0.046399, 0.899887, -0.433647,
		-0.994277, 0.000218, 0.106837,
		23.014919, 16.914326, 14.854421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.563507, 17.555506, 15.004886>,  <23.710913, 16.914173, 14.779634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.563507, 17.555506, 15.004886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.257587, 17.331139, 15.131663>,  <23.074036, 17.196518, 15.207730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.257587, 17.331139, 15.131663>,  <23.563507, 17.555506, 15.004886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.257587, 17.331139, 15.131663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063306, 0.424136, 0.903383,
		-0.641152, 0.710971, -0.288869,
		-0.764798, -0.560919, 0.316944,
		23.028149, 17.162863, 15.226747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.290304, 18.009621, 15.512333>,  <23.563507, 17.555506, 15.004886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.290304, 18.009621, 15.512333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.126488, 17.654953, 15.598208>,  <23.028198, 17.442152, 15.649734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.126488, 17.654953, 15.598208>,  <23.290304, 18.009621, 15.512333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.126488, 17.654953, 15.598208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152517, 0.165472, 0.974350,
		-0.899453, 0.431779, 0.067465,
		-0.409540, -0.886671, 0.214688,
		23.003626, 17.388952, 15.662615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.853943, 18.169374, 16.006376>,  <23.290304, 18.009621, 15.512333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.853943, 18.169374, 16.006376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.918667, 17.777798, 16.056156>,  <22.957502, 17.542850, 16.086025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.918667, 17.777798, 16.056156>,  <22.853943, 18.169374, 16.006376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.918667, 17.777798, 16.056156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155538, 0.149837, 0.976400,
		-0.974487, -0.138636, 0.176509,
		0.161812, -0.978943, 0.124451,
		22.967211, 17.484116, 16.093491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.367189, 17.940542, 16.528284>,  <22.853943, 18.169374, 16.006376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.367189, 17.940542, 16.528284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.670929, 17.680286, 16.531311>,  <22.853172, 17.524132, 16.533127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.670929, 17.680286, 16.531311>,  <22.367189, 17.940542, 16.528284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.670929, 17.680286, 16.531311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136086, 0.170175, 0.975972,
		-0.636295, -0.740072, 0.217765,
		0.759347, -0.650641, 0.007569,
		22.898733, 17.485094, 16.533581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.160732, 17.440224, 17.069061>,  <22.367189, 17.940542, 16.528284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.160732, 17.440224, 17.069061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.557835, 17.424164, 17.023762>,  <22.796097, 17.414528, 16.996582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.557835, 17.424164, 17.023762>,  <22.160732, 17.440224, 17.069061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.557835, 17.424164, 17.023762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115768, 0.067236, 0.990998,
		-0.032176, -0.996929, 0.071397,
		0.992755, -0.040152, -0.113249,
		22.855661, 17.412119, 16.989786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.410500, 16.948292, 17.522852>,  <22.160732, 17.440224, 17.069061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.410500, 16.948292, 17.522852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.747826, 17.144054, 17.434038>,  <22.950222, 17.261511, 17.380749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.747826, 17.144054, 17.434038>,  <22.410500, 16.948292, 17.522852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.747826, 17.144054, 17.434038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207831, 0.084015, 0.974550,
		0.495604, -0.868000, -0.030863,
		0.843316, 0.489405, -0.222035,
		23.000820, 17.290876, 17.367428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.141283, 16.312384, 17.624125>,  <22.410500, 16.948292, 17.522852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.141283, 16.312384, 17.624125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.813530, 16.168133, 17.802364>,  <21.616879, 16.081581, 17.909309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.813530, 16.168133, 17.802364>,  <22.141283, 16.312384, 17.624125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.813530, 16.168133, 17.802364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432843, -0.120433, -0.893389,
		0.375847, -0.924901, -0.057415,
		-0.819382, -0.360629, 0.445601,
		21.567715, 16.059944, 17.936045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.879391, 15.645167, 17.331722>,  <22.141283, 16.312384, 17.624125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.879391, 15.645167, 17.331722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.565628, 15.828037, 17.499388>,  <21.377371, 15.937759, 17.599987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.565628, 15.828037, 17.499388>,  <21.879391, 15.645167, 17.331722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.565628, 15.828037, 17.499388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579129, -0.297875, -0.758867,
		-0.222072, -0.838013, 0.498416,
		-0.784406, 0.457170, 0.419168,
		21.330307, 15.965189, 17.625137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.313499, 15.130392, 17.141777>,  <21.879391, 15.645167, 17.331722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.313499, 15.130392, 17.141777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.165627, 15.488918, 17.239719>,  <21.076902, 15.704034, 17.298485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.165627, 15.488918, 17.239719>,  <21.313499, 15.130392, 17.141777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.165627, 15.488918, 17.239719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700735, -0.095890, -0.706948,
		-0.610170, -0.432925, 0.663528,
		-0.369681, 0.896316, 0.244856,
		21.054722, 15.757812, 17.313177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.595625, 15.026114, 17.144941>,  <21.313499, 15.130392, 17.141777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.595625, 15.026114, 17.144941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.672646, 15.407780, 17.053291>,  <20.718857, 15.636779, 16.998301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.672646, 15.407780, 17.053291>,  <20.595625, 15.026114, 17.144941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.672646, 15.407780, 17.053291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655249, -0.048791, -0.753836,
		-0.730461, 0.295285, 0.615819,
		0.192550, 0.954163, -0.229125,
		20.730410, 15.694029, 16.984554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.928741, 15.250349, 16.940742>,  <20.595625, 15.026114, 17.144941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.928741, 15.250349, 16.940742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.181290, 15.534042, 16.815292>,  <20.332819, 15.704258, 16.740023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.181290, 15.534042, 16.815292>,  <19.928741, 15.250349, 16.940742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.181290, 15.534042, 16.815292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519622, 0.086706, -0.849985,
		-0.575644, 0.699622, 0.423276,
		0.631369, 0.709233, -0.313628,
		20.370701, 15.746812, 16.721205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.448732, 15.637558, 16.639465>,  <19.928741, 15.250349, 16.940742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.448732, 15.637558, 16.639465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.794880, 15.780422, 16.498854>,  <20.002569, 15.866140, 16.414486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.794880, 15.780422, 16.498854>,  <19.448732, 15.637558, 16.639465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.794880, 15.780422, 16.498854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426632, 0.157046, -0.890686,
		-0.262911, 0.920746, 0.288278,
		0.865369, 0.357160, -0.351531,
		20.054491, 15.887570, 16.393394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.449535, 16.359118, 16.432201>,  <19.448732, 15.637558, 16.639465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.449535, 16.359118, 16.432201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.737827, 16.190292, 16.212234>,  <19.910803, 16.088997, 16.080256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.737827, 16.190292, 16.212234>,  <19.449535, 16.359118, 16.432201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.737827, 16.190292, 16.212234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511654, 0.211344, -0.832793,
		0.467714, 0.881587, -0.063629,
		0.720731, -0.422064, -0.549916,
		19.954046, 16.063673, 16.047260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.228529, 16.522978, 15.773391>,  <19.449535, 16.359118, 16.432201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.228529, 16.522978, 15.773391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.546310, 16.298817, 15.679759>,  <19.736979, 16.164320, 15.623580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.546310, 16.298817, 15.679759>,  <19.228529, 16.522978, 15.773391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.546310, 16.298817, 15.679759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250949, 0.048077, -0.966806,
		0.553054, 0.826824, -0.102437,
		0.794453, -0.560403, -0.234080,
		19.784647, 16.130695, 15.609535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.683788, 16.821434, 15.222980>,  <19.228529, 16.522978, 15.773391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.683788, 16.821434, 15.222980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.673115, 16.421665, 15.231393>,  <19.666710, 16.181805, 15.236441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.673115, 16.421665, 15.231393>,  <19.683788, 16.821434, 15.222980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.673115, 16.421665, 15.231393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274930, -0.012891, -0.961378,
		0.961094, -0.031436, -0.274427,
		-0.026684, -0.999423, 0.021032,
		19.665110, 16.121838, 15.237702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148350, 16.652029, 14.765178>,  <19.683788, 16.821434, 15.222980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.148350, 16.652029, 14.765178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.923038, 16.322189, 14.786166>,  <19.787851, 16.124287, 14.798759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.923038, 16.322189, 14.786166>,  <20.148350, 16.652029, 14.765178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.923038, 16.322189, 14.786166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095143, 0.001650, -0.995462,
		0.820770, -0.565716, -0.079384,
		-0.563280, -0.824598, 0.052470,
		19.754055, 16.074810, 14.801908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.361258, 16.240290, 14.206216>,  <20.148350, 16.652029, 14.765178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.361258, 16.240290, 14.206216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.006050, 16.084530, 14.304027>,  <19.792927, 15.991075, 14.362713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.006050, 16.084530, 14.304027>,  <20.361258, 16.240290, 14.206216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.006050, 16.084530, 14.304027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234326, -0.074315, -0.969314,
		0.395622, -0.918066, -0.025254,
		-0.888017, -0.389400, 0.244527,
		19.739645, 15.967710, 14.377385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.215237, 15.770193, 13.721325>,  <20.361258, 16.240290, 14.206216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.215237, 15.770193, 13.721325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.854000, 15.841671, 13.877526>,  <19.637259, 15.884558, 13.971247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.854000, 15.841671, 13.877526>,  <20.215237, 15.770193, 13.721325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.854000, 15.841671, 13.877526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407449, -0.069229, -0.910600,
		-0.135687, -0.981466, 0.135330,
		-0.903092, 0.178696, 0.390504,
		19.583073, 15.895280, 13.994678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.863451, 15.383894, 13.311876>,  <20.215237, 15.770193, 13.721325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.863451, 15.383894, 13.311876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.591976, 15.611713, 13.497346>,  <19.429090, 15.748405, 13.608628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.591976, 15.611713, 13.497346>,  <19.863451, 15.383894, 13.311876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.591976, 15.611713, 13.497346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527626, 0.061047, -0.847281,
		-0.510874, -0.819687, 0.259077,
		-0.678689, 0.569550, 0.463675,
		19.388369, 15.782578, 13.636449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.125208, 15.085499, 13.227530>,  <19.863451, 15.383894, 13.311876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.125208, 15.085499, 13.227530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.078304, 15.475456, 13.303247>,  <19.050161, 15.709431, 13.348678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.078304, 15.475456, 13.303247>,  <19.125208, 15.085499, 13.227530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.078304, 15.475456, 13.303247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470222, 0.113384, -0.875234,
		-0.874724, -0.191638, 0.445122,
		-0.117259, 0.974894, 0.189292,
		19.043127, 15.767924, 13.360035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<17.676298, 16.660175, 19.076279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.940563, 16.939735, 18.966686>,  <18.099121, 17.107471, 18.900930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.940563, 16.939735, 18.966686>,  <17.676298, 16.660175, 19.076279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.940563, 16.939735, 18.966686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567325, -0.225835, 0.791922,
		0.491600, -0.678629, -0.545704,
		0.660661, 0.698900, -0.273983,
		18.138762, 17.149405, 18.884491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.325750, 16.443243, 19.234840>,  <17.676298, 16.660175, 19.076279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.325750, 16.443243, 19.234840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.383236, 16.837589, 19.200397>,  <18.417727, 17.074198, 19.179731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.383236, 16.837589, 19.200397>,  <18.325750, 16.443243, 19.234840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.383236, 16.837589, 19.200397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389210, 0.023691, 0.920844,
		0.909869, -0.165850, -0.380305,
		0.143712, 0.985866, -0.086106,
		18.426350, 17.133348, 19.174566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.013504, 16.573351, 19.328302>,  <18.325750, 16.443243, 19.234840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.013504, 16.573351, 19.328302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.892307, 16.949047, 19.392834>,  <18.819590, 17.174465, 19.431553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.892307, 16.949047, 19.392834>,  <19.013504, 16.573351, 19.328302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.892307, 16.949047, 19.392834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567512, 0.041833, 0.822301,
		0.765588, 0.340707, -0.545704,
		-0.302992, 0.939238, 0.161328,
		18.801409, 17.230818, 19.441233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.606577, 16.968239, 19.462013>,  <19.013504, 16.573351, 19.328302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.606577, 16.968239, 19.462013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.292786, 17.131325, 19.648932>,  <19.104511, 17.229177, 19.761082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.292786, 17.131325, 19.648932>,  <19.606577, 16.968239, 19.462013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.292786, 17.131325, 19.648932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533125, 0.058422, 0.844017,
		0.316819, 0.911237, -0.263195,
		-0.784476, 0.407717, 0.467294,
		19.057444, 17.253639, 19.789120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.959181, 17.475742, 19.844416>,  <19.606577, 16.968239, 19.462013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.959181, 17.475742, 19.844416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.601948, 17.445976, 20.021893>,  <19.387608, 17.428116, 20.128378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.601948, 17.445976, 20.021893>,  <19.959181, 17.475742, 19.844416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.601948, 17.445976, 20.021893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437277, 0.088301, 0.894981,
		-0.105780, 0.993310, -0.046319,
		-0.893084, -0.074417, 0.443692,
		19.334023, 17.423651, 20.155001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.964752, 18.047915, 20.256151>,  <19.959181, 17.475742, 19.844416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.964752, 18.047915, 20.256151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.700485, 17.792191, 20.413532>,  <19.541925, 17.638756, 20.507961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.700485, 17.792191, 20.413532>,  <19.964752, 18.047915, 20.256151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.700485, 17.792191, 20.413532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459298, 0.070318, 0.885495,
		-0.593771, 0.765728, 0.247176,
		-0.660667, -0.639309, 0.393451,
		19.502285, 17.600397, 20.531567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.665003, 18.398132, 20.918354>,  <19.964752, 18.047915, 20.256151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.665003, 18.398132, 20.918354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.613152, 18.001564, 20.925114>,  <19.582041, 17.763624, 20.929169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.613152, 18.001564, 20.925114>,  <19.665003, 18.398132, 20.918354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.613152, 18.001564, 20.925114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392367, -0.035637, 0.919118,
		-0.910629, 0.125774, 0.393619,
		-0.129629, -0.991418, 0.016898,
		19.574263, 17.704138, 20.930183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.419683, 18.327276, 21.567417>,  <19.665003, 18.398132, 20.918354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.419683, 18.327276, 21.567417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.534901, 17.962799, 21.449598>,  <19.604031, 17.744112, 21.378906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.534901, 17.962799, 21.449598>,  <19.419683, 18.327276, 21.567417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.534901, 17.962799, 21.449598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389446, -0.169536, 0.905311,
		-0.874851, -0.375477, 0.306028,
		0.288041, -0.911194, -0.294547,
		19.621313, 17.689442, 21.361235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.226206, 17.826111, 22.170103>,  <19.419683, 18.327276, 21.567417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.226206, 17.826111, 22.170103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.492008, 17.616631, 21.956871>,  <19.651489, 17.490942, 21.828932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.492008, 17.616631, 21.956871>,  <19.226206, 17.826111, 22.170103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.492008, 17.616631, 21.956871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551976, -0.136894, 0.822546,
		-0.503743, -0.840832, 0.198103,
		0.664504, -0.523700, -0.533078,
		19.691359, 17.459520, 21.796947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.387142, 17.165756, 22.574903>,  <19.226206, 17.826111, 22.170103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.387142, 17.165756, 22.574903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.691681, 17.214794, 22.320246>,  <19.874405, 17.244217, 22.167450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.691681, 17.214794, 22.320246>,  <19.387142, 17.165756, 22.574903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.691681, 17.214794, 22.320246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648311, -0.134300, 0.749437,
		0.006377, -0.983328, -0.181731,
		0.761349, 0.122597, -0.636646,
		19.920086, 17.251574, 22.129251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.847023, 16.610075, 22.745768>,  <19.387142, 17.165756, 22.574903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.847023, 16.610075, 22.745768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.074188, 16.891582, 22.575035>,  <20.210487, 17.060486, 22.472595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.074188, 16.891582, 22.575035>,  <19.847023, 16.610075, 22.745768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.074188, 16.891582, 22.575035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687431, -0.120358, 0.716207,
		0.452671, -0.700161, -0.552145,
		0.567915, 0.703767, -0.426830,
		20.244562, 17.102713, 22.446985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.472221, 16.306890, 22.733433>,  <19.847023, 16.610075, 22.745768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.472221, 16.306890, 22.733433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.521175, 16.703056, 22.707808>,  <20.550549, 16.940756, 22.692432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.521175, 16.703056, 22.707808>,  <20.472221, 16.306890, 22.733433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.521175, 16.703056, 22.707808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611708, -0.024444, 0.790706,
		0.781560, -0.135957, -0.608835,
		0.122385, 0.990413, -0.064062,
		20.557890, 17.000181, 22.688589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.135506, 16.376438, 22.755098>,  <20.472221, 16.306890, 22.733433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.135506, 16.376438, 22.755098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.987419, 16.703117, 22.932159>,  <20.898567, 16.899126, 23.038397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.987419, 16.703117, 22.932159>,  <21.135506, 16.376438, 22.755098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.987419, 16.703117, 22.932159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672595, -0.093013, 0.734142,
		0.640746, 0.569517, -0.514873,
		-0.370216, 0.816700, 0.442653,
		20.876354, 16.948128, 23.064955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.626974, 16.890976, 22.876774>,  <21.135506, 16.376438, 22.755098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.626974, 16.890976, 22.876774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.328926, 16.907707, 23.143021>,  <21.150097, 16.917746, 23.302769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.328926, 16.907707, 23.143021>,  <21.626974, 16.890976, 22.876774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.328926, 16.907707, 23.143021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666924, 0.042292, 0.743925,
		0.002965, 0.998229, -0.059407,
		-0.745120, 0.041826, 0.665618,
		21.105391, 16.920256, 23.342707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.239990, 17.163361, 23.345398>,  <21.626974, 16.890976, 22.876774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.239990, 17.163361, 23.345398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.599792, 16.994518, 23.300293>,  <22.815674, 16.893213, 23.273230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.599792, 16.994518, 23.300293>,  <22.239990, 17.163361, 23.345398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.599792, 16.994518, 23.300293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228514, -0.234554, -0.944863,
		0.372381, 0.875679, -0.307440,
		0.899507, -0.422103, -0.112761,
		22.869644, 16.867887, 23.266464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.604834, 17.370094, 22.710114>,  <22.239990, 17.163361, 23.345398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.604834, 17.370094, 22.710114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.770187, 17.013493, 22.784233>,  <22.869400, 16.799532, 22.828705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.770187, 17.013493, 22.784233>,  <22.604834, 17.370094, 22.710114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.770187, 17.013493, 22.784233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250641, -0.307048, -0.918096,
		0.875382, 0.333083, -0.350376,
		0.413384, -0.891503, 0.185300,
		22.894203, 16.746042, 22.839823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.038860, 17.233932, 22.074745>,  <22.604834, 17.370094, 22.710114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.038860, 17.233932, 22.074745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.010029, 16.878475, 22.255905>,  <22.992729, 16.665201, 22.364601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.010029, 16.878475, 22.255905>,  <23.038860, 17.233932, 22.074745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.010029, 16.878475, 22.255905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113847, -0.443782, -0.888874,
		0.990880, -0.115631, -0.069182,
		-0.072080, -0.888644, 0.452899,
		22.988405, 16.611881, 22.391775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.550446, 16.800196, 21.816769>,  <23.038860, 17.233932, 22.074745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.550446, 16.800196, 21.816769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.266014, 16.552456, 21.949900>,  <23.095356, 16.403812, 22.029778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.266014, 16.552456, 21.949900>,  <23.550446, 16.800196, 21.816769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.266014, 16.552456, 21.949900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012166, -0.484132, -0.874910,
		0.703007, -0.618081, 0.351792,
		-0.711079, -0.619348, 0.332828,
		23.052691, 16.366652, 22.049747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.765030, 16.144514, 21.615032>,  <23.550446, 16.800196, 21.816769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.765030, 16.144514, 21.615032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.369781, 16.143742, 21.676504>,  <23.132633, 16.143278, 21.713387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.369781, 16.143742, 21.676504>,  <23.765030, 16.144514, 21.615032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.369781, 16.143742, 21.676504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143790, -0.341473, -0.928828,
		0.054271, -0.939890, 0.337138,
		-0.988119, -0.001931, 0.153678,
		23.073345, 16.143162, 21.722607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.569386, 15.538972, 21.305674>,  <23.765030, 16.144514, 21.615032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.569386, 15.538972, 21.305674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.239304, 15.761517, 21.344662>,  <23.041254, 15.895043, 21.368055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.239304, 15.761517, 21.344662>,  <23.569386, 15.538972, 21.305674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.239304, 15.761517, 21.344662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263714, -0.226896, -0.937536,
		-0.499494, -0.799362, 0.333955,
		-0.825204, 0.556362, 0.097470,
		22.991743, 15.928425, 21.373903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.916544, 15.140503, 21.236078>,  <23.569386, 15.538972, 21.305674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.916544, 15.140503, 21.236078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.831856, 15.521278, 21.147545>,  <22.781042, 15.749743, 21.094425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.831856, 15.521278, 21.147545>,  <22.916544, 15.140503, 21.236078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.831856, 15.521278, 21.147545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299391, -0.278752, -0.912503,
		-0.930344, -0.126931, 0.344019,
		-0.211721, 0.951938, -0.221333,
		22.768339, 15.806860, 21.081144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.192053, 15.088527, 20.987617>,  <22.916544, 15.140503, 21.236078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.192053, 15.088527, 20.987617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.302708, 15.447056, 20.849009>,  <22.369101, 15.662173, 20.765844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.302708, 15.447056, 20.849009>,  <22.192053, 15.088527, 20.987617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.302708, 15.447056, 20.849009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535335, -0.155720, -0.830161,
		-0.798053, 0.415158, 0.436755,
		0.276636, 0.896323, -0.346521,
		22.385698, 15.715953, 20.745052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.658098, 15.332922, 20.803310>,  <22.192053, 15.088527, 20.987617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.658098, 15.332922, 20.803310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.911861, 15.567215, 20.601540>,  <22.064119, 15.707790, 20.480478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.911861, 15.567215, 20.601540>,  <21.658098, 15.332922, 20.803310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.911861, 15.567215, 20.601540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563068, -0.096925, -0.820707,
		-0.529606, 0.804688, 0.268318,
		0.634406, 0.585733, -0.504426,
		22.102184, 15.742935, 20.450212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.233198, 15.955750, 20.417271>,  <21.658098, 15.332922, 20.803310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.233198, 15.955750, 20.417271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.569046, 15.920795, 20.202831>,  <21.770555, 15.899823, 20.074167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.569046, 15.920795, 20.202831>,  <21.233198, 15.955750, 20.417271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.569046, 15.920795, 20.202831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507366, 0.226248, -0.831499,
		0.193953, 0.970142, 0.145626,
		0.839620, -0.087386, -0.536099,
		21.820932, 15.894580, 20.042002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.262239, 16.520237, 19.919291>,  <21.233198, 15.955750, 20.417271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.262239, 16.520237, 19.919291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.532986, 16.256004, 19.789377>,  <21.695433, 16.097466, 19.711430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.532986, 16.256004, 19.789377>,  <21.262239, 16.520237, 19.919291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.532986, 16.256004, 19.789377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235461, 0.223741, -0.945779,
		0.697432, 0.716639, -0.004099,
		0.676865, -0.660582, -0.324785,
		21.736046, 16.057829, 19.691942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.358177, 16.803844, 19.312765>,  <21.262239, 16.520237, 19.919291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.358177, 16.803844, 19.312765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.541943, 16.450821, 19.272713>,  <21.652203, 16.239006, 19.248680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.541943, 16.450821, 19.272713>,  <21.358177, 16.803844, 19.312765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.541943, 16.450821, 19.272713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137854, 0.040521, -0.989623,
		0.877459, 0.468452, -0.103049,
		0.459415, -0.882559, -0.100133,
		21.679768, 16.186052, 19.242672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.002012, 16.850567, 18.903055>,  <21.358177, 16.803844, 19.312765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.002012, 16.850567, 18.903055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.863060, 16.476330, 18.877771>,  <21.779688, 16.251787, 18.862602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.863060, 16.476330, 18.877771>,  <22.002012, 16.850567, 18.903055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.863060, 16.476330, 18.877771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257099, 0.159849, -0.953073,
		0.901791, -0.314828, -0.296068,
		-0.347380, -0.935592, -0.063208,
		21.758846, 16.195652, 18.858809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.161137, 16.759747, 18.259609>,  <22.002012, 16.850567, 18.903055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.161137, 16.759747, 18.259609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.885536, 16.483578, 18.347782>,  <21.720175, 16.317877, 18.400686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.885536, 16.483578, 18.347782>,  <22.161137, 16.759747, 18.259609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.885536, 16.483578, 18.347782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313909, 0.010148, -0.949399,
		0.653251, -0.723333, -0.223723,
		-0.689002, -0.690424, 0.220432,
		21.678835, 16.276451, 18.413912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.928158, 16.766256, 18.113419>,  <22.161137, 16.759747, 18.259609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.928158, 16.766256, 18.113419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.091827, 17.087879, 17.940876>,  <23.190029, 17.280853, 17.837351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.091827, 17.087879, 17.940876>,  <22.928158, 16.766256, 18.113419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.091827, 17.087879, 17.940876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212099, 0.375979, 0.902028,
		0.887463, -0.460577, -0.016699,
		0.409174, 0.804058, -0.431355,
		23.214581, 17.329096, 17.811470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.563526, 16.890053, 18.412542>,  <22.928158, 16.766256, 18.113419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.563526, 16.890053, 18.412542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.497894, 17.242691, 18.235514>,  <23.458515, 17.454273, 18.129297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.497894, 17.242691, 18.235514>,  <23.563526, 16.890053, 18.412542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.497894, 17.242691, 18.235514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304033, 0.472006, 0.827511,
		0.938425, 0.001219, -0.345480,
		-0.164078, 0.881594, -0.442572,
		23.448671, 17.507170, 18.102741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.067719, 17.267921, 18.640547>,  <23.563526, 16.890053, 18.412542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.067719, 17.267921, 18.640547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.828133, 17.566273, 18.523991>,  <23.684381, 17.745283, 18.454056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.828133, 17.566273, 18.523991>,  <24.067719, 17.267921, 18.640547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.828133, 17.566273, 18.523991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366960, 0.579092, 0.728006,
		0.711746, 0.329120, -0.620563,
		-0.598965, 0.745877, -0.291392,
		23.648443, 17.790035, 18.436573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.475718, 17.865740, 18.592422>,  <24.067719, 17.267921, 18.640547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.475718, 17.865740, 18.592422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.089561, 17.938652, 18.667042>,  <23.857868, 17.982399, 18.711813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.089561, 17.938652, 18.667042>,  <24.475718, 17.865740, 18.592422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.089561, 17.938652, 18.667042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255955, 0.524661, 0.811922,
		0.050123, 0.831568, -0.553157,
		-0.965388, 0.182279, 0.186546,
		23.799946, 17.993336, 18.723005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.539860, 18.560446, 18.797094>,  <24.475718, 17.865740, 18.592422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.539860, 18.560446, 18.797094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.184860, 18.441338, 18.937765>,  <23.971861, 18.369873, 19.022167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.184860, 18.441338, 18.937765>,  <24.539860, 18.560446, 18.797094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.184860, 18.441338, 18.937765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210111, 0.417728, 0.883943,
		-0.410116, 0.858392, -0.308170,
		-0.887501, -0.297769, 0.351675,
		23.918610, 18.352007, 19.043268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.259050, 19.086197, 19.121618>,  <24.539860, 18.560446, 18.797094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.259050, 19.086197, 19.121618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.052055, 18.780045, 19.274668>,  <23.927858, 18.596354, 19.366497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.052055, 18.780045, 19.274668>,  <24.259050, 19.086197, 19.121618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.052055, 18.780045, 19.274668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101945, 0.388823, 0.915655,
		-0.849598, 0.512845, -0.123184,
		-0.517486, -0.765380, 0.382625,
		23.896811, 18.550430, 19.389456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.876223, 19.353119, 19.645870>,  <24.259050, 19.086197, 19.121618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.876223, 19.353119, 19.645870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.872131, 18.959461, 19.716698>,  <23.869677, 18.723267, 19.759195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.872131, 18.959461, 19.716698>,  <23.876223, 19.353119, 19.645870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.872131, 18.959461, 19.716698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036791, 0.176589, 0.983597,
		-0.999271, 0.016577, 0.034401,
		-0.010231, -0.984145, 0.177070,
		23.869062, 18.664217, 19.769819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.397652, 19.964783, 19.741295>,  <23.876223, 19.353119, 19.645870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.397652, 19.964783, 19.741295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.615009, 20.290985, 19.661619>,  <23.745424, 20.486706, 19.613813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.615009, 20.290985, 19.661619>,  <23.397652, 19.964783, 19.741295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.615009, 20.290985, 19.661619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091541, -0.293424, -0.951589,
		-0.834471, 0.498854, -0.234097,
		0.543394, 0.815504, -0.199189,
		23.778028, 20.535637, 19.601862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.113754, 20.315081, 19.136940>,  <23.397652, 19.964783, 19.741295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.113754, 20.315081, 19.136940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.477489, 20.477745, 19.172106>,  <23.695730, 20.575344, 19.193205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.477489, 20.477745, 19.172106>,  <23.113754, 20.315081, 19.136940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.477489, 20.477745, 19.172106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151133, -0.125991, -0.980451,
		-0.387634, 0.904850, -0.176028,
		0.909340, 0.406660, 0.087914,
		23.750292, 20.599743, 19.198481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.070602, 20.855574, 18.681980>,  <23.113754, 20.315081, 19.136940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.070602, 20.855574, 18.681980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.460686, 20.779835, 18.727795>,  <23.694735, 20.734392, 18.755283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.460686, 20.779835, 18.727795>,  <23.070602, 20.855574, 18.681980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.460686, 20.779835, 18.727795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117814, 0.006107, -0.993017,
		0.187325, 0.981891, 0.028263,
		0.975207, -0.189346, 0.114537,
		23.753248, 20.723030, 18.762156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.427473, 21.337639, 18.187662>,  <23.070602, 20.855574, 18.681980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.427473, 21.337639, 18.187662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.673866, 21.028740, 18.249886>,  <23.821703, 20.843401, 18.287220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.673866, 21.028740, 18.249886>,  <23.427473, 21.337639, 18.187662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.673866, 21.028740, 18.249886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163312, -0.067996, -0.984229,
		0.770646, 0.631672, 0.084233,
		0.615983, -0.772248, 0.155560,
		23.858662, 20.797066, 18.296553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.022202, 21.332724, 17.645113>,  <23.427473, 21.337639, 18.187662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.022202, 21.332724, 17.645113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.038887, 20.963039, 17.796953>,  <24.048899, 20.741228, 17.888058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.038887, 20.963039, 17.796953>,  <24.022202, 21.332724, 17.645113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.038887, 20.963039, 17.796953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188374, -0.365843, -0.911413,
		0.981211, 0.109523, 0.158837,
		0.041712, -0.924210, 0.379600,
		24.051401, 20.685776, 17.910833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.710039, 21.057379, 17.316576>,  <24.022202, 21.332724, 17.645113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.710039, 21.057379, 17.316576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.499638, 20.746613, 17.454979>,  <24.373398, 20.560152, 17.538021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.499638, 20.746613, 17.454979>,  <24.710039, 21.057379, 17.316576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.499638, 20.746613, 17.454979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353469, -0.569737, -0.741929,
		0.773551, -0.267953, 0.574299,
		-0.526002, -0.776917, 0.346008,
		24.341837, 20.513536, 17.558781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.072590, 20.431616, 17.049540>,  <24.710039, 21.057379, 17.316576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.072590, 20.431616, 17.049540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.700687, 20.315285, 17.139853>,  <24.477547, 20.245485, 17.194040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.700687, 20.315285, 17.139853>,  <25.072590, 20.431616, 17.049540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.700687, 20.315285, 17.139853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105617, -0.376786, -0.920259,
		0.352708, -0.879461, 0.319602,
		-0.929754, -0.290827, 0.225782,
		24.421761, 20.228037, 17.207586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<20.470057, 20.642122, 21.635868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.740925, 20.357403, 21.710468>,  <20.903446, 20.186571, 21.755228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.740925, 20.357403, 21.710468>,  <20.470057, 20.642122, 21.635868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.740925, 20.357403, 21.710468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279869, -0.483558, -0.829364,
		0.680523, 0.509427, -0.526662,
		0.677172, -0.711798, 0.186500,
		20.944077, 20.143864, 21.766418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.101852, 20.616806, 21.172119>,  <20.470057, 20.642122, 21.635868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.101852, 20.616806, 21.172119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.956482, 20.263535, 21.290720>,  <20.869259, 20.051571, 21.361881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.956482, 20.263535, 21.290720>,  <21.101852, 20.616806, 21.172119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.956482, 20.263535, 21.290720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271108, -0.204231, -0.940633,
		0.891304, -0.422234, -0.165214,
		-0.363426, -0.883181, 0.296503,
		20.847454, 19.998581, 21.379671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.333630, 20.218246, 20.630320>,  <21.101852, 20.616806, 21.172119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.333630, 20.218246, 20.630320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.023804, 20.059654, 20.827438>,  <20.837908, 19.964499, 20.945709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.023804, 20.059654, 20.827438>,  <21.333630, 20.218246, 20.630320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.023804, 20.059654, 20.827438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414656, -0.270020, -0.868993,
		0.477606, -0.877434, 0.044744,
		-0.774566, -0.396483, 0.492796,
		20.791433, 19.940710, 20.975277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.117735, 19.534912, 20.326693>,  <21.333630, 20.218246, 20.630320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.117735, 19.534912, 20.326693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.809750, 19.704193, 20.517714>,  <20.624958, 19.805761, 20.632326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.809750, 19.704193, 20.517714>,  <21.117735, 19.534912, 20.326693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.809750, 19.704193, 20.517714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490456, 0.086238, -0.867188,
		-0.408179, -0.901922, 0.141163,
		-0.769962, 0.423202, 0.477553,
		20.578760, 19.831154, 20.660980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.525936, 19.259245, 20.010031>,  <21.117735, 19.534912, 20.326693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.525936, 19.259245, 20.010031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.374779, 19.573009, 20.206762>,  <20.284084, 19.761269, 20.324800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.374779, 19.573009, 20.206762>,  <20.525936, 19.259245, 20.010031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.374779, 19.573009, 20.206762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672569, 0.132493, -0.728077,
		-0.636275, -0.605926, 0.477502,
		-0.377895, 0.784410, 0.491829,
		20.261410, 19.808332, 20.354311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.758514, 19.206255, 19.899584>,  <20.525936, 19.259245, 20.010031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.758514, 19.206255, 19.899584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.852840, 19.578236, 20.012423>,  <19.909435, 19.801424, 20.080126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.852840, 19.578236, 20.012423>,  <19.758514, 19.206255, 19.899584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.852840, 19.578236, 20.012423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606111, 0.367650, -0.705311,
		-0.759619, -0.004659, 0.650352,
		0.235816, 0.929952, 0.282098,
		19.923586, 19.857222, 20.097052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.121092, 19.603260, 19.899143>,  <19.758514, 19.206255, 19.899584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.121092, 19.603260, 19.899143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.411648, 19.876942, 19.873163>,  <19.585981, 20.041151, 19.857576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.411648, 19.876942, 19.873163>,  <19.121092, 19.603260, 19.899143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.411648, 19.876942, 19.873163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539951, 0.509656, -0.669854,
		-0.425217, 0.521644, 0.739647,
		0.726391, 0.684206, -0.064948,
		19.629564, 20.082203, 19.853680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.768179, 20.293781, 19.934429>,  <19.121092, 19.603260, 19.899143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.768179, 20.293781, 19.934429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.118439, 20.353249, 19.750631>,  <19.328594, 20.388929, 19.640352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.118439, 20.353249, 19.750631>,  <18.768179, 20.293781, 19.934429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.118439, 20.353249, 19.750631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467319, 0.500908, -0.728494,
		0.121860, 0.852636, 0.508096,
		0.875650, 0.148669, -0.459494,
		19.381134, 20.397850, 19.612783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.775545, 21.007391, 19.797169>,  <18.768179, 20.293781, 19.934429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.775545, 21.007391, 19.797169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.051041, 20.858204, 19.548481>,  <19.216337, 20.768692, 19.399269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.051041, 20.858204, 19.548481>,  <18.775545, 21.007391, 19.797169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.051041, 20.858204, 19.548481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397531, 0.522862, -0.754046,
		0.606308, 0.766493, 0.211848,
		0.688738, -0.372968, -0.621720,
		19.257662, 20.746313, 19.361965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.822895, 21.545916, 19.338213>,  <18.775545, 21.007391, 19.797169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.822895, 21.545916, 19.338213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.959095, 21.230835, 19.132851>,  <19.040815, 21.041786, 19.009634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.959095, 21.230835, 19.132851>,  <18.822895, 21.545916, 19.338213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.959095, 21.230835, 19.132851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337720, 0.407137, -0.848637,
		0.877500, 0.462348, -0.127393,
		0.340499, -0.787702, -0.513406,
		19.061245, 20.994524, 18.978828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.138142, 21.837206, 18.759373>,  <18.822895, 21.545916, 19.338213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.138142, 21.837206, 18.759373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.085781, 21.453930, 18.657597>,  <19.054365, 21.223965, 18.596531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.085781, 21.453930, 18.657597>,  <19.138142, 21.837206, 18.759373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.085781, 21.453930, 18.657597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408214, 0.285976, -0.866937,
		0.903452, -0.009617, -0.428581,
		-0.130901, -0.958188, -0.254440,
		19.046511, 21.166473, 18.581264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.185953, 21.937616, 17.969610>,  <19.138142, 21.837206, 18.759373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.185953, 21.937616, 17.969610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.063862, 21.558392, 18.005428>,  <18.990606, 21.330856, 18.026918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.063862, 21.558392, 18.005428>,  <19.185953, 21.937616, 17.969610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.063862, 21.558392, 18.005428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417435, 0.048687, -0.907402,
		0.855911, -0.314343, -0.410614,
		-0.305228, -0.948060, 0.089546,
		18.972294, 21.273973, 18.032291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.865314, 21.897760, 17.818956>,  <19.185953, 21.937616, 17.969610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.865314, 21.897760, 17.818956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.093658, 22.209095, 17.714413>,  <20.230665, 22.395895, 17.651686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.093658, 22.209095, 17.714413>,  <19.865314, 21.897760, 17.818956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.093658, 22.209095, 17.714413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350008, 0.057257, 0.934995,
		0.742706, -0.625231, -0.239738,
		0.570861, 0.778336, -0.261360,
		20.264917, 22.442596, 17.636005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.539555, 21.746778, 18.012419>,  <19.865314, 21.897760, 17.818956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.539555, 21.746778, 18.012419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.494404, 22.144180, 18.018234>,  <20.467314, 22.382622, 18.021723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.494404, 22.144180, 18.018234>,  <20.539555, 21.746778, 18.012419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.494404, 22.144180, 18.018234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324003, 0.022974, 0.945777,
		0.939298, 0.111468, -0.324491,
		-0.112879, 0.993502, 0.014537,
		20.460541, 22.442230, 18.022594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.147867, 22.013840, 18.292503>,  <20.539555, 21.746778, 18.012419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.147867, 22.013840, 18.292503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.866322, 22.296341, 18.322914>,  <20.697393, 22.465841, 18.341160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.866322, 22.296341, 18.322914>,  <21.147867, 22.013840, 18.292503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.866322, 22.296341, 18.322914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362221, 0.264792, 0.893690,
		0.611039, 0.656577, -0.442198,
		-0.703866, 0.706252, 0.076027,
		20.655161, 22.508217, 18.345722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.508686, 22.553062, 18.456732>,  <21.147867, 22.013840, 18.292503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.508686, 22.553062, 18.456732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.134686, 22.641041, 18.568010>,  <20.910284, 22.693829, 18.634777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.134686, 22.641041, 18.568010>,  <21.508686, 22.553062, 18.456732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.134686, 22.641041, 18.568010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311374, 0.133652, 0.940842,
		0.169753, 0.966313, -0.193451,
		-0.935003, 0.219947, 0.278197,
		20.854185, 22.707026, 18.651470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.480408, 23.195505, 18.763027>,  <21.508686, 22.553062, 18.456732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.480408, 23.195505, 18.763027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.164291, 23.003658, 18.915556>,  <20.974621, 22.888550, 19.007072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.164291, 23.003658, 18.915556>,  <21.480408, 23.195505, 18.763027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.164291, 23.003658, 18.915556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310920, 0.222356, 0.924060,
		-0.527986, 0.848836, -0.026603,
		-0.790291, -0.479619, 0.381321,
		20.927204, 22.859772, 19.029953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.470963, 23.385036, 19.481718>,  <21.480408, 23.195505, 18.763027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.470963, 23.385036, 19.481718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.173962, 23.117199, 19.489014>,  <20.995762, 22.956495, 19.493391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.173962, 23.117199, 19.489014>,  <21.470963, 23.385036, 19.481718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.173962, 23.117199, 19.489014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049639, -0.027850, 0.998379,
		-0.668002, 0.742203, 0.053917,
		-0.742502, -0.669596, 0.018238,
		20.951212, 22.916321, 19.494486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.121597, 23.648594, 19.920979>,  <21.470963, 23.385036, 19.481718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.121597, 23.648594, 19.920979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.024857, 23.261131, 19.898302>,  <20.966812, 23.028654, 19.884697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.024857, 23.261131, 19.898302>,  <21.121597, 23.648594, 19.920979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.024857, 23.261131, 19.898302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109893, -0.085394, 0.990268,
		-0.964070, 0.233268, 0.127102,
		-0.241852, -0.968656, -0.056691,
		20.952301, 22.970535, 19.881294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.577789, 23.494137, 20.398018>,  <21.121597, 23.648594, 19.920979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.577789, 23.494137, 20.398018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.751328, 23.142075, 20.320972>,  <20.855452, 22.930838, 20.274746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.751328, 23.142075, 20.320972>,  <20.577789, 23.494137, 20.398018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.751328, 23.142075, 20.320972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057853, -0.186126, 0.980821,
		-0.899127, -0.436670, -0.029830,
		0.433847, -0.880157, -0.192613,
		20.881481, 22.878027, 20.263189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.200390, 22.895056, 20.816200>,  <20.577789, 23.494137, 20.398018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.200390, 22.895056, 20.816200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.573502, 22.779270, 20.730282>,  <20.797369, 22.709799, 20.678732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.573502, 22.779270, 20.730282>,  <20.200390, 22.895056, 20.816200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.573502, 22.779270, 20.730282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100629, -0.363087, 0.926306,
		-0.346124, -0.885651, -0.309550,
		0.932776, -0.289467, -0.214795,
		20.853334, 22.692430, 20.665844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.275291, 22.279726, 21.184082>,  <20.200390, 22.895056, 20.816200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.275291, 22.279726, 21.184082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.660057, 22.356255, 21.105988>,  <20.890917, 22.402172, 21.059132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.660057, 22.356255, 21.105988>,  <20.275291, 22.279726, 21.184082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.660057, 22.356255, 21.105988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255666, -0.376969, 0.890241,
		0.096724, -0.906251, -0.411527,
		0.961914, 0.191321, -0.195235,
		20.948631, 22.413651, 21.047417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.670261, 21.633814, 21.376350>,  <20.275291, 22.279726, 21.184082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.670261, 21.633814, 21.376350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.924305, 21.942783, 21.376453>,  <21.076731, 22.128164, 21.376514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.924305, 21.942783, 21.376453>,  <20.670261, 21.633814, 21.376350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.924305, 21.942783, 21.376453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296327, -0.243954, 0.923405,
		0.713322, -0.586385, -0.383827,
		0.635107, 0.772424, 0.000256,
		21.114838, 22.174511, 21.376530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.242926, 21.391296, 21.745785>,  <20.670261, 21.633814, 21.376350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.242926, 21.391296, 21.745785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.305935, 21.786167, 21.735460>,  <21.343740, 22.023090, 21.729265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.305935, 21.786167, 21.735460>,  <21.242926, 21.391296, 21.745785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.305935, 21.786167, 21.735460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428282, -0.044741, 0.902537,
		0.889810, -0.153223, -0.429839,
		0.157521, 0.987178, -0.025811,
		21.353191, 22.082321, 21.727716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.950422, 21.546452, 21.883781>,  <21.242926, 21.391296, 21.745785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.950422, 21.546452, 21.883781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.767094, 21.883274, 21.997538>,  <21.657097, 22.085367, 22.065792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.767094, 21.883274, 21.997538>,  <21.950422, 21.546452, 21.883781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.767094, 21.883274, 21.997538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418510, -0.077817, 0.904872,
		0.784085, 0.533745, -0.316744,
		-0.458323, 0.842058, 0.284393,
		21.629597, 22.135891, 22.082855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.422153, 21.875641, 22.314594>,  <21.950422, 21.546452, 21.883781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.422153, 21.875641, 22.314594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.076221, 22.057987, 22.398741>,  <21.868662, 22.167395, 22.449228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.076221, 22.057987, 22.398741>,  <22.422153, 21.875641, 22.314594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.076221, 22.057987, 22.398741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253109, 0.034017, 0.966839,
		0.433592, 0.889399, -0.144802,
		-0.864832, 0.455865, 0.210366,
		21.816772, 22.194746, 22.461851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.789162, 22.038412, 21.699091>,  <22.422153, 21.875641, 22.314594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.789162, 22.038412, 21.699091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.066624, 21.831966, 21.900076>,  <23.233101, 21.708099, 22.020666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.066624, 21.831966, 21.900076>,  <22.789162, 22.038412, 21.699091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.066624, 21.831966, 21.900076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487437, -0.177249, -0.854978,
		0.530326, 0.837980, 0.128622,
		0.693657, -0.516112, 0.502462,
		23.274721, 21.677134, 22.050814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.454533, 22.248337, 21.458242>,  <22.789162, 22.038412, 21.699091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.454533, 22.248337, 21.458242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.535793, 21.897369, 21.632076>,  <23.584551, 21.686789, 21.736376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.535793, 21.897369, 21.632076>,  <23.454533, 22.248337, 21.458242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.535793, 21.897369, 21.632076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393092, -0.333417, -0.856920,
		0.896776, 0.344918, 0.277172,
		0.203153, -0.877419, 0.434585,
		23.596739, 21.634144, 21.762451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.171478, 22.043110, 21.323742>,  <23.454533, 22.248337, 21.458242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.171478, 22.043110, 21.323742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.979427, 21.701363, 21.403269>,  <23.864197, 21.496313, 21.450985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.979427, 21.701363, 21.403269>,  <24.171478, 22.043110, 21.323742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.979427, 21.701363, 21.403269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383714, -0.408372, -0.828248,
		0.788822, -0.321377, 0.523905,
		-0.480129, -0.854370, 0.198816,
		23.835388, 21.445051, 21.462914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.720848, 21.591515, 21.099583>,  <24.171478, 22.043110, 21.323742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.720848, 21.591515, 21.099583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.376083, 21.389019, 21.111115>,  <24.169224, 21.267523, 21.118032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.376083, 21.389019, 21.111115>,  <24.720848, 21.591515, 21.099583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.376083, 21.389019, 21.111115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314491, -0.578314, -0.752761,
		0.397748, -0.639747, 0.657663,
		-0.861912, -0.506238, 0.028828,
		24.117510, 21.237148, 21.119762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.840549, 20.838877, 20.904831>,  <24.720848, 21.591515, 21.099583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.840549, 20.838877, 20.904831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.468060, 20.962959, 20.828320>,  <24.244564, 21.037409, 20.782413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.468060, 20.962959, 20.828320>,  <24.840549, 20.838877, 20.904831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.468060, 20.962959, 20.828320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103391, -0.278417, -0.954879,
		-0.349468, -0.908985, 0.227196,
		-0.931226, 0.310210, -0.191278,
		24.188692, 21.056021, 20.770937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.539289, 20.283957, 20.522915>,  <24.840549, 20.838877, 20.904831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.539289, 20.283957, 20.522915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.292610, 20.587429, 20.438929>,  <24.144604, 20.769512, 20.388536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.292610, 20.587429, 20.438929>,  <24.539289, 20.283957, 20.522915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.292610, 20.587429, 20.438929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067123, -0.316435, -0.946236,
		-0.784334, -0.569448, 0.246070,
		-0.616697, 0.758682, -0.209968,
		24.107601, 20.815033, 20.375938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.948956, 19.947189, 20.230921>,  <24.539289, 20.283957, 20.522915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.948956, 19.947189, 20.230921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.924641, 20.329945, 20.117311>,  <23.910051, 20.559597, 20.049145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.924641, 20.329945, 20.117311>,  <23.948956, 19.947189, 20.230921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.924641, 20.329945, 20.117311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106519, -0.289145, -0.951341,
		-0.992451, -0.027576, 0.119503,
		-0.060787, 0.956888, -0.284025,
		23.906404, 20.617010, 20.032104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.516493, 19.279329, 20.278421>,  <23.948956, 19.947189, 20.230921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.516493, 19.279329, 20.278421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.698181, 18.923134, 20.267715>,  <23.807194, 18.709417, 20.261292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.698181, 18.923134, 20.267715>,  <23.516493, 19.279329, 20.278421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.698181, 18.923134, 20.267715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351755, 0.151657, 0.923725,
		-0.818507, -0.428989, 0.382119,
		0.454219, -0.890488, -0.026766,
		23.834446, 18.655987, 20.259686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.352566, 19.091036, 20.989294>,  <23.516493, 19.279329, 20.278421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.352566, 19.091036, 20.989294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.625092, 18.857189, 20.813099>,  <23.788607, 18.716881, 20.707382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.625092, 18.857189, 20.813099>,  <23.352566, 19.091036, 20.989294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.625092, 18.857189, 20.813099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371032, -0.242918, 0.896284,
		-0.630987, -0.774088, 0.051408,
		0.681315, -0.584618, -0.440490,
		23.829487, 18.681805, 20.680952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.239958, 18.344790, 21.161118>,  <23.352566, 19.091036, 20.989294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.239958, 18.344790, 21.161118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.626217, 18.377373, 21.062414>,  <23.857973, 18.396923, 21.003193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.626217, 18.377373, 21.062414>,  <23.239958, 18.344790, 21.161118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.626217, 18.377373, 21.062414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256396, -0.144233, 0.955750,
		0.042263, -0.986185, -0.160164,
		0.965648, 0.081458, -0.246758,
		23.915911, 18.401810, 20.988386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.711710, 17.835848, 21.475674>,  <23.239958, 18.344790, 21.161118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.711710, 17.835848, 21.475674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.975136, 18.132458, 21.424400>,  <24.133192, 18.310425, 21.393637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.975136, 18.132458, 21.424400>,  <23.711710, 17.835848, 21.475674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.975136, 18.132458, 21.424400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232168, -0.038183, 0.971926,
		0.715815, -0.669836, -0.197305,
		0.658565, 0.741527, -0.128183,
		24.172705, 18.354916, 21.385946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.411457, 17.614773, 21.736788>,  <23.711710, 17.835848, 21.475674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.411457, 17.614773, 21.736788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.447350, 18.013153, 21.739119>,  <24.468885, 18.252180, 21.740517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.447350, 18.013153, 21.739119>,  <24.411457, 17.614773, 21.736788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.447350, 18.013153, 21.739119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424940, -0.043574, 0.904173,
		0.900764, -0.078657, -0.427128,
		0.089731, 0.995949, 0.005825,
		24.474270, 18.311937, 21.740866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.093353, 17.813076, 21.794312>,  <24.411457, 17.614773, 21.736788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.093353, 17.813076, 21.794312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.859062, 18.109249, 21.926178>,  <24.718487, 18.286953, 22.005299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.859062, 18.109249, 21.926178>,  <25.093353, 17.813076, 21.794312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.859062, 18.109249, 21.926178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239403, -0.230544, 0.943152,
		0.774344, 0.631354, -0.042226,
		-0.585728, 0.740433, 0.329668,
		24.683344, 18.331379, 22.025078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.424767, 18.051762, 22.416912>,  <25.093353, 17.813076, 21.794312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.424767, 18.051762, 22.416912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.084560, 18.260899, 22.439758>,  <24.880438, 18.386381, 22.453466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.084560, 18.260899, 22.439758>,  <25.424767, 18.051762, 22.416912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.084560, 18.260899, 22.439758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120380, 0.087799, 0.988838,
		0.511990, 0.847896, -0.137614,
		-0.850514, 0.522841, 0.057117,
		24.829407, 18.417751, 22.456894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499832, 18.749393, 22.798094>,  <25.424767, 18.051762, 22.416912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499832, 18.749393, 22.798094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.109722, 18.666580, 22.829020>,  <24.875656, 18.616892, 22.847574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.109722, 18.666580, 22.829020>,  <25.499832, 18.749393, 22.798094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.109722, 18.666580, 22.829020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020869, 0.261993, 0.964844,
		-0.220011, 0.942601, -0.251194,
		-0.975274, -0.207034, 0.077313,
		24.817141, 18.604469, 22.852213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251877, 19.317762, 22.993448>,  <25.499832, 18.749393, 22.798094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251877, 19.317762, 22.993448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.999855, 19.028488, 23.106613>,  <24.848642, 18.854923, 23.174513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.999855, 19.028488, 23.106613>,  <25.251877, 19.317762, 22.993448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.999855, 19.028488, 23.106613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112508, 0.275466, 0.954705,
		-0.768359, 0.633344, -0.092194,
		-0.630052, -0.723184, 0.282913,
		24.810839, 18.811533, 23.191486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<20.193308, 17.140053, 8.182784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.905659, 16.917339, 8.349089>,  <19.733070, 16.783710, 8.448872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.905659, 16.917339, 8.349089>,  <20.193308, 17.140053, 8.182784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.905659, 16.917339, 8.349089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441889, 0.095339, 0.891989,
		-0.536282, 0.825169, 0.177476,
		-0.719121, -0.556783, 0.415762,
		19.689922, 16.750305, 8.473817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.756540, 17.534292, 8.696499>,  <20.193308, 17.140053, 8.182784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.756540, 17.534292, 8.696499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.708286, 17.147442, 8.786044>,  <19.679333, 16.915331, 8.839771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.708286, 17.147442, 8.786044>,  <19.756540, 17.534292, 8.696499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.708286, 17.147442, 8.786044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307752, 0.177964, 0.934675,
		-0.943788, 0.181651, 0.276166,
		-0.120637, -0.967126, 0.223863,
		19.672094, 16.857304, 8.853203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.444582, 17.555578, 9.322111>,  <19.756540, 17.534292, 8.696499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.444582, 17.555578, 9.322111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.610107, 17.194435, 9.275454>,  <19.709423, 16.977749, 9.247459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.610107, 17.194435, 9.275454>,  <19.444582, 17.555578, 9.322111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.610107, 17.194435, 9.275454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423875, 0.077695, 0.902382,
		-0.805661, -0.422858, 0.414850,
		0.413812, -0.902859, -0.116644,
		19.734251, 16.923578, 9.240460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199301, 17.073389, 9.896051>,  <19.444582, 17.555578, 9.322111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.199301, 17.073389, 9.896051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.523140, 16.910213, 9.727224>,  <19.717443, 16.812309, 9.625928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.523140, 16.910213, 9.727224>,  <19.199301, 17.073389, 9.896051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.523140, 16.910213, 9.727224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432148, -0.072387, 0.898893,
		-0.397244, -0.910136, 0.117685,
		0.809596, -0.407937, -0.422069,
		19.766018, 16.787832, 9.600604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.266895, 16.481375, 10.237106>,  <19.199301, 17.073389, 9.896051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.266895, 16.481375, 10.237106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.623646, 16.554024, 10.071423>,  <19.837696, 16.597612, 9.972012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.623646, 16.554024, 10.071423>,  <19.266895, 16.481375, 10.237106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.623646, 16.554024, 10.071423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446768, -0.211246, 0.869352,
		0.070394, -0.960410, -0.269549,
		0.891876, 0.181623, -0.414210,
		19.891209, 16.608511, 9.947160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.772781, 16.034107, 10.654133>,  <19.266895, 16.481375, 10.237106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.772781, 16.034107, 10.654133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.004375, 16.283573, 10.444058>,  <20.143332, 16.433252, 10.318014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.004375, 16.283573, 10.444058>,  <19.772781, 16.034107, 10.654133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.004375, 16.283573, 10.444058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707177, -0.063532, 0.704177,
		0.405803, -0.779107, -0.477824,
		0.578987, 0.623663, -0.525185,
		20.178072, 16.470673, 10.286503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.431561, 15.793903, 10.632633>,  <19.772781, 16.034107, 10.654133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.431561, 15.793903, 10.632633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.477699, 16.188427, 10.585496>,  <20.505383, 16.425142, 10.557214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.477699, 16.188427, 10.585496>,  <20.431561, 15.793903, 10.632633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.477699, 16.188427, 10.585496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637622, 0.017449, 0.770152,
		0.761665, -0.163974, -0.626880,
		0.115347, 0.986310, -0.117844,
		20.512302, 16.484320, 10.550142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.217976, 15.875809, 10.646867>,  <20.431561, 15.793903, 10.632633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.217976, 15.875809, 10.646867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.063168, 16.237782, 10.717652>,  <20.970284, 16.454966, 10.760124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.063168, 16.237782, 10.717652>,  <21.217976, 15.875809, 10.646867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.063168, 16.237782, 10.717652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703085, 0.165449, 0.691591,
		0.596564, 0.392080, -0.700275,
		-0.387018, 0.904931, 0.176965,
		20.947062, 16.509260, 10.770741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.765345, 16.264614, 10.687768>,  <21.217976, 15.875809, 10.646867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.765345, 16.264614, 10.687768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.475517, 16.489628, 10.847043>,  <21.301620, 16.624636, 10.942608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.475517, 16.489628, 10.847043>,  <21.765345, 16.264614, 10.687768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.475517, 16.489628, 10.847043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614519, 0.265739, 0.742798,
		0.312036, 0.782903, -0.538235,
		-0.724569, 0.562535, 0.398189,
		21.258146, 16.658388, 10.966499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.123600, 16.848835, 10.801742>,  <21.765345, 16.264614, 10.687768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.123600, 16.848835, 10.801742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.807667, 16.859539, 11.046836>,  <21.618107, 16.865961, 11.193892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.807667, 16.859539, 11.046836>,  <22.123600, 16.848835, 10.801742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.807667, 16.859539, 11.046836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589110, 0.311021, 0.745798,
		-0.170615, 0.950026, -0.261421,
		-0.789835, 0.026761, 0.612735,
		21.570717, 16.867567, 11.230657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.235426, 17.452677, 11.116255>,  <22.123600, 16.848835, 10.801742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.235426, 17.452677, 11.116255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.989208, 17.232983, 11.342334>,  <21.841478, 17.101166, 11.477981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.989208, 17.232983, 11.342334>,  <22.235426, 17.452677, 11.116255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.989208, 17.232983, 11.342334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419936, 0.378293, 0.824953,
		-0.666903, 0.745141, -0.002212,
		-0.615543, -0.549235, 0.565197,
		21.804544, 17.068213, 11.511893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.101740, 17.865976, 11.743328>,  <22.235426, 17.452677, 11.116255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.101740, 17.865976, 11.743328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.012283, 17.483170, 11.817201>,  <21.958611, 17.253487, 11.861524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.012283, 17.483170, 11.817201>,  <22.101740, 17.865976, 11.743328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.012283, 17.483170, 11.817201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413649, 0.078376, 0.907056,
		-0.882541, 0.279247, 0.378341,
		-0.223640, -0.957015, 0.184681,
		21.945192, 17.196064, 11.872604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.685694, 18.565599, 11.947538>,  <22.101740, 17.865976, 11.743328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.685694, 18.565599, 11.947538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.037941, 18.730152, 11.853498>,  <22.249290, 18.828884, 11.797073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.037941, 18.730152, 11.853498>,  <21.685694, 18.565599, 11.947538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.037941, 18.730152, 11.853498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300244, 0.100630, -0.948539,
		-0.366555, 0.905890, 0.212132,
		0.880620, 0.411383, -0.235102,
		22.302128, 18.853567, 11.782967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.522142, 19.205965, 11.730715>,  <21.685694, 18.565599, 11.947538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.522142, 19.205965, 11.730715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.878704, 19.127171, 11.567452>,  <22.092642, 19.079895, 11.469495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.878704, 19.127171, 11.567452>,  <21.522142, 19.205965, 11.730715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.878704, 19.127171, 11.567452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383069, 0.153778, -0.910830,
		0.242185, 0.968271, 0.061620,
		0.891406, -0.196985, -0.408157,
		22.146126, 19.068075, 11.445005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.635019, 19.692188, 11.185294>,  <21.522142, 19.205965, 11.730715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.635019, 19.692188, 11.185294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.880924, 19.394043, 11.082143>,  <22.028467, 19.215157, 11.020252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.880924, 19.394043, 11.082143>,  <21.635019, 19.692188, 11.185294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.880924, 19.394043, 11.082143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301139, 0.080369, -0.950188,
		0.728958, 0.661799, -0.175049,
		0.614764, -0.745361, -0.257879,
		22.065353, 19.170435, 11.004779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.032267, 19.977238, 10.518909>,  <21.635019, 19.692188, 11.185294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.032267, 19.977238, 10.518909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.091888, 19.582687, 10.546760>,  <22.127661, 19.345957, 10.563470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.091888, 19.582687, 10.546760>,  <22.032267, 19.977238, 10.518909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.091888, 19.582687, 10.546760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040720, -0.064232, -0.997104,
		0.987990, 0.151457, 0.030591,
		0.149053, -0.986375, 0.069628,
		22.136604, 19.286776, 10.567648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.590504, 19.799114, 10.051552>,  <22.032267, 19.977238, 10.518909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.590504, 19.799114, 10.051552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.365898, 19.472401, 10.104570>,  <22.231134, 19.276373, 10.136382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.365898, 19.472401, 10.104570>,  <22.590504, 19.799114, 10.051552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.365898, 19.472401, 10.104570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016398, -0.149169, -0.988676,
		0.827306, -0.557327, 0.070366,
		-0.561512, -0.816784, 0.132547,
		22.197445, 19.227365, 10.144335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.889763, 19.325096, 9.688901>,  <22.590504, 19.799114, 10.051552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.889763, 19.325096, 9.688901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.514256, 19.193310, 9.729236>,  <22.288952, 19.114239, 9.753436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.514256, 19.193310, 9.729236>,  <22.889763, 19.325096, 9.688901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.514256, 19.193310, 9.729236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070914, -0.101643, -0.992290,
		0.337176, -0.938680, 0.072055,
		-0.938767, -0.329467, 0.100837,
		22.232626, 19.094469, 9.759487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.832245, 18.850967, 9.166486>,  <22.889763, 19.325096, 9.688901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.832245, 18.850967, 9.166486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.453197, 18.929501, 9.267258>,  <22.225769, 18.976620, 9.327721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.453197, 18.929501, 9.267258>,  <22.832245, 18.850967, 9.166486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.453197, 18.929501, 9.267258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288776, -0.189645, -0.938426,
		-0.136459, -0.962025, 0.236405,
		-0.947622, 0.196325, 0.251931,
		22.168911, 18.988400, 9.342836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.343163, 18.353001, 8.830297>,  <22.832245, 18.850967, 9.166486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.343163, 18.353001, 8.830297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.103996, 18.653431, 8.942287>,  <21.960497, 18.833689, 9.009481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.103996, 18.653431, 8.942287>,  <22.343163, 18.353001, 8.830297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.103996, 18.653431, 8.942287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440618, -0.016190, -0.897549,
		-0.669593, -0.660019, 0.340617,
		-0.597914, 0.751075, 0.279975,
		21.924622, 18.878754, 9.026280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.589851, 18.131460, 8.579564>,  <22.343163, 18.353001, 8.830297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.589851, 18.131460, 8.579564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.619423, 18.528713, 8.615824>,  <21.637167, 18.767065, 8.637580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.619423, 18.528713, 8.615824>,  <21.589851, 18.131460, 8.579564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.619423, 18.528713, 8.615824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489332, 0.115329, -0.864438,
		-0.868958, 0.019550, 0.494499,
		0.073930, 0.993135, 0.090650,
		21.641602, 18.826654, 8.643019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.901176, 18.336096, 8.489955>,  <21.589851, 18.131460, 8.579564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.901176, 18.336096, 8.489955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.164898, 18.626503, 8.411761>,  <21.323132, 18.800747, 8.364845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.164898, 18.626503, 8.411761>,  <20.901176, 18.336096, 8.489955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.164898, 18.626503, 8.411761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559700, 0.300305, -0.772368,
		-0.502049, 0.618638, 0.604346,
		0.659304, 0.726019, -0.195484,
		21.362690, 18.844309, 8.353116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.398531, 18.700638, 8.328927>,  <20.901176, 18.336096, 8.489955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.398531, 18.700638, 8.328927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.696617, 18.923958, 8.183076>,  <20.875469, 19.057949, 8.095565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.696617, 18.923958, 8.183076>,  <20.398531, 18.700638, 8.328927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.696617, 18.923958, 8.183076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553680, 0.213342, -0.804937,
		-0.371605, 0.801740, 0.468105,
		0.745217, 0.558300, -0.364628,
		20.920181, 19.091448, 8.073688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.243492, 19.443293, 8.169977>,  <20.398531, 18.700638, 8.328927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.243492, 19.443293, 8.169977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.573124, 19.372093, 7.954865>,  <20.770903, 19.329372, 7.825799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.573124, 19.372093, 7.954865>,  <20.243492, 19.443293, 8.169977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.573124, 19.372093, 7.954865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396044, 0.497728, -0.771632,
		0.405018, 0.848871, 0.339673,
		0.824081, -0.178000, -0.537780,
		20.820349, 19.318693, 7.793531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.484053, 20.081285, 7.954345>,  <20.243492, 19.443293, 8.169977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.484053, 20.081285, 7.954345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.593418, 19.802647, 7.689016>,  <20.659037, 19.635464, 7.529819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.593418, 19.802647, 7.689016>,  <20.484053, 20.081285, 7.954345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.593418, 19.802647, 7.689016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459391, 0.511305, -0.726310,
		0.845106, 0.503307, -0.180214,
		0.273413, -0.696598, -0.663322,
		20.675442, 19.593668, 7.490020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.820562, 20.428272, 7.373213>,  <20.484053, 20.081285, 7.954345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.820562, 20.428272, 7.373213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.691780, 20.072392, 7.243739>,  <20.614510, 19.858862, 7.166055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.691780, 20.072392, 7.243739>,  <20.820562, 20.428272, 7.373213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.691780, 20.072392, 7.243739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383406, 0.435125, -0.814657,
		0.865646, -0.138181, -0.481209,
		-0.321957, -0.889703, -0.323685,
		20.595194, 19.805481, 7.146634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.002321, 20.590458, 7.384112>,  <20.820562, 20.428272, 7.373213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.002321, 20.590458, 7.384112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.939651, 20.894356, 7.131686>,  <19.902050, 21.076694, 6.980231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.939651, 20.894356, 7.131686>,  <20.002321, 20.590458, 7.384112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.939651, 20.894356, 7.131686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212827, 0.597973, 0.772744,
		0.964447, 0.255377, 0.068007,
		-0.156675, 0.759745, -0.631064,
		19.892649, 21.122278, 6.942367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.604088, 21.191038, 7.473447>,  <20.002321, 20.590458, 7.384112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.604088, 21.191038, 7.473447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.240154, 21.315632, 7.363773>,  <20.021793, 21.390388, 7.297969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.240154, 21.315632, 7.363773>,  <20.604088, 21.191038, 7.473447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.240154, 21.315632, 7.363773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175353, 0.310254, 0.934341,
		0.376098, 0.898177, -0.227661,
		-0.909836, 0.311482, -0.274184,
		19.967203, 21.409077, 7.281518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.411015, 22.029013, 7.448295>,  <20.604088, 21.191038, 7.473447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.411015, 22.029013, 7.448295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.108948, 21.776161, 7.517735>,  <19.927708, 21.624451, 7.559399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.108948, 21.776161, 7.517735>,  <20.411015, 22.029013, 7.448295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.108948, 21.776161, 7.517735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161181, 0.435745, 0.885521,
		-0.635406, 0.640736, -0.430947,
		-0.755168, -0.632126, 0.173600,
		19.882397, 21.586523, 7.569815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.855331, 22.421320, 7.725467>,  <20.411015, 22.029013, 7.448295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.855331, 22.421320, 7.725467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.773937, 22.053501, 7.859943>,  <19.725101, 21.832809, 7.940629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.773937, 22.053501, 7.859943>,  <19.855331, 22.421320, 7.725467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.773937, 22.053501, 7.859943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251036, 0.380896, 0.889887,
		-0.946348, 0.096681, -0.308347,
		-0.203483, -0.919549, 0.336190,
		19.712893, 21.777636, 7.960801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.183846, 22.436911, 8.225574>,  <19.855331, 22.421320, 7.725467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.183846, 22.436911, 8.225574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.376713, 22.094715, 8.301101>,  <19.492434, 21.889397, 8.346416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.376713, 22.094715, 8.301101>,  <19.183846, 22.436911, 8.225574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.376713, 22.094715, 8.301101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089301, 0.166406, 0.982005,
		-0.871516, -0.490352, 0.003839,
		0.482167, -0.855491, 0.188815,
		19.521362, 21.838068, 8.357745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.912312, 22.180368, 8.824230>,  <19.183846, 22.436911, 8.225574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.912312, 22.180368, 8.824230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.251068, 21.972614, 8.778606>,  <19.454323, 21.847961, 8.751232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.251068, 21.972614, 8.778606>,  <18.912312, 22.180368, 8.824230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.251068, 21.972614, 8.778606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129423, -0.006720, 0.991567,
		-0.515772, -0.854513, 0.061529,
		0.846893, -0.519386, -0.114060,
		19.505136, 21.816799, 8.744389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.884064, 21.674685, 9.214859>,  <18.912312, 22.180368, 8.824230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.884064, 21.674685, 9.214859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.278744, 21.704002, 9.156820>,  <19.515551, 21.721594, 9.121997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.278744, 21.704002, 9.156820>,  <18.884064, 21.674685, 9.214859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.278744, 21.704002, 9.156820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150260, -0.070642, 0.986120,
		0.062027, -0.994805, -0.080716,
		0.986699, 0.073295, -0.145097,
		19.574753, 21.725990, 9.113291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.165104, 21.073818, 9.588680>,  <18.884064, 21.674685, 9.214859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.165104, 21.073818, 9.588680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.432953, 21.368927, 9.554509>,  <19.593662, 21.545992, 9.534006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.432953, 21.368927, 9.554509>,  <19.165104, 21.073818, 9.588680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.432953, 21.368927, 9.554509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182962, -0.052386, 0.981724,
		0.719813, -0.673014, -0.170063,
		0.669623, 0.737772, -0.085428,
		19.633841, 21.590258, 9.528881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.737944, 20.782608, 9.976177>,  <19.165104, 21.073818, 9.588680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.737944, 20.782608, 9.976177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.787891, 21.178215, 9.944541>,  <19.817860, 21.415579, 9.925559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.787891, 21.178215, 9.944541>,  <19.737944, 20.782608, 9.976177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.787891, 21.178215, 9.944541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313423, 0.036313, 0.948919,
		0.941368, -0.143280, -0.305446,
		0.124869, 0.989016, -0.079091,
		19.825352, 21.474920, 9.920814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.447657, 20.844652, 10.104466>,  <19.737944, 20.782608, 9.976177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.447657, 20.844652, 10.104466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.269493, 21.197548, 10.165470>,  <20.162594, 21.409286, 10.202072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.269493, 21.197548, 10.165470>,  <20.447657, 20.844652, 10.104466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.269493, 21.197548, 10.165470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600207, 0.167835, 0.782038,
		0.664350, 0.439865, -0.604283,
		-0.445411, 0.882242, 0.152509,
		20.135870, 21.462221, 10.211223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.990170, 21.184845, 10.420194>,  <20.447657, 20.844652, 10.104466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.990170, 21.184845, 10.420194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.677311, 21.424934, 10.487100>,  <20.489595, 21.568987, 10.527244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.677311, 21.424934, 10.487100>,  <20.990170, 21.184845, 10.420194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.677311, 21.424934, 10.487100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201649, -0.010165, 0.979405,
		0.589561, 0.799769, -0.113084,
		-0.782148, 0.600222, 0.167266,
		20.442667, 21.605001, 10.537279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.273373, 21.675138, 10.738639>,  <20.990170, 21.184845, 10.420194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.273373, 21.675138, 10.738639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.891907, 21.683651, 10.858689>,  <20.663027, 21.688759, 10.930719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.891907, 21.683651, 10.858689>,  <21.273373, 21.675138, 10.738639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.891907, 21.683651, 10.858689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299342, -0.033564, 0.953555,
		0.030366, 0.999210, 0.025639,
		-0.953662, 0.021281, 0.300125,
		20.605808, 21.690035, 10.948727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.209246, 22.211386, 11.273945>,  <21.273373, 21.675138, 10.738639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.209246, 22.211386, 11.273945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.875099, 22.001694, 11.340091>,  <20.674612, 21.875877, 11.379779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.875099, 22.001694, 11.340091>,  <21.209246, 22.211386, 11.273945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.875099, 22.001694, 11.340091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127629, 0.107640, 0.985964,
		-0.534673, 0.844746, -0.023011,
		-0.835366, -0.524231, 0.165366,
		20.624489, 21.844425, 11.389701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.713493, 22.554510, 11.765648>,  <21.209246, 22.211386, 11.273945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.713493, 22.554510, 11.765648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.543350, 22.193279, 11.789393>,  <20.441265, 21.976542, 11.803640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.543350, 22.193279, 11.789393>,  <20.713493, 22.554510, 11.765648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.543350, 22.193279, 11.789393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044241, 0.044766, 0.998017,
		-0.903943, 0.427141, 0.020912,
		-0.425358, -0.903076, 0.059363,
		20.415743, 21.922356, 11.807202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.013348, 22.535229, 12.175421>,  <20.713493, 22.554510, 11.765648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.013348, 22.535229, 12.175421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.158718, 22.162666, 12.183417>,  <20.245941, 21.939129, 12.188215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.158718, 22.162666, 12.183417>,  <20.013348, 22.535229, 12.175421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.158718, 22.162666, 12.183417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113613, -0.023012, 0.993259,
		-0.924669, -0.363248, -0.114183,
		0.363427, -0.931408, 0.019991,
		20.267746, 21.883244, 12.189415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.661224, 22.324053, 12.695745>,  <20.013348, 22.535229, 12.175421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.661224, 22.324053, 12.695745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.977116, 22.080574, 12.665232>,  <20.166651, 21.934486, 12.646924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.977116, 22.080574, 12.665232>,  <19.661224, 22.324053, 12.695745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.977116, 22.080574, 12.665232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230484, 0.179169, 0.956439,
		-0.568513, -0.772908, 0.281790,
		0.789728, -0.608696, -0.076283,
		20.214033, 21.897964, 12.642346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.635939, 21.796856, 13.279061>,  <19.661224, 22.324053, 12.695745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.635939, 21.796856, 13.279061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.019245, 21.781414, 13.165755>,  <20.249229, 21.772148, 13.097772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.019245, 21.781414, 13.165755>,  <19.635939, 21.796856, 13.279061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.019245, 21.781414, 13.165755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276498, -0.126666, 0.952630,
		-0.072654, -0.991194, -0.110706,
		0.958264, -0.038602, -0.283265,
		20.306725, 21.769833, 13.080775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.948574, 21.193121, 13.628570>,  <19.635939, 21.796856, 13.279061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.948574, 21.193121, 13.628570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.235462, 21.457432, 13.540055>,  <20.407595, 21.616018, 13.486947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.235462, 21.457432, 13.540055>,  <19.948574, 21.193121, 13.628570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.235462, 21.457432, 13.540055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208194, 0.099859, 0.972976,
		0.665019, -0.743909, -0.065949,
		0.717220, 0.660778, -0.221286,
		20.450628, 21.655664, 13.473669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.513092, 20.948509, 13.963980>,  <19.948574, 21.193121, 13.628570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.513092, 20.948509, 13.963980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.584053, 21.338757, 13.912295>,  <20.626629, 21.572905, 13.881285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.584053, 21.338757, 13.912295>,  <20.513092, 20.948509, 13.963980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.584053, 21.338757, 13.912295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307626, 0.069743, 0.948948,
		0.934824, -0.208094, -0.287753,
		0.177402, 0.975619, -0.129212,
		20.637274, 21.631443, 13.873531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.016392, 21.058516, 14.529109>,  <20.513092, 20.948509, 13.963980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.016392, 21.058516, 14.529109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.901051, 21.420319, 14.403434>,  <20.831846, 21.637402, 14.328029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.901051, 21.420319, 14.403434>,  <21.016392, 21.058516, 14.529109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.901051, 21.420319, 14.403434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114381, 0.358314, 0.926568,
		0.950667, 0.231243, -0.206780,
		-0.288355, 0.904510, -0.314187,
		20.814545, 21.691671, 14.309177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.577810, 21.491865, 14.914538>,  <21.016392, 21.058516, 14.529109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.577810, 21.491865, 14.914538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.272129, 21.718872, 14.791955>,  <21.088720, 21.855076, 14.718405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.272129, 21.718872, 14.791955>,  <21.577810, 21.491865, 14.914538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.272129, 21.718872, 14.791955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024004, 0.499847, 0.865781,
		0.644528, 0.654277, -0.395608,
		-0.764204, 0.567516, -0.306460,
		21.042868, 21.889128, 14.700017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.710154, 22.202822, 15.140711>,  <21.577810, 21.491865, 14.914538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.710154, 22.202822, 15.140711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.319752, 22.186069, 15.055236>,  <21.085510, 22.176018, 15.003951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.319752, 22.186069, 15.055236>,  <21.710154, 22.202822, 15.140711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.319752, 22.186069, 15.055236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203676, 0.522704, 0.827826,
		0.077025, 0.851485, -0.518691,
		-0.976004, -0.041881, -0.213689,
		21.026951, 22.173506, 14.991129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.510271, 22.838047, 15.293984>,  <21.710154, 22.202822, 15.140711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.510271, 22.838047, 15.293984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.189365, 22.599621, 15.307120>,  <20.996822, 22.456566, 15.315001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.189365, 22.599621, 15.307120>,  <21.510271, 22.838047, 15.293984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.189365, 22.599621, 15.307120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158853, 0.266185, 0.950742,
		-0.575446, 0.757530, -0.308238,
		-0.802264, -0.596065, 0.032840,
		20.948687, 22.420801, 15.316972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.982048, 23.231304, 15.637557>,  <21.510271, 22.838047, 15.293984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.982048, 23.231304, 15.637557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.826843, 22.864426, 15.673766>,  <20.733721, 22.644299, 15.695492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.826843, 22.864426, 15.673766>,  <20.982048, 23.231304, 15.637557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.826843, 22.864426, 15.673766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431587, 0.267601, 0.861465,
		-0.814358, 0.295192, -0.499683,
		-0.388014, -0.917197, 0.090522,
		20.710440, 22.589266, 15.700923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.339212, 23.328606, 15.754787>,  <20.982048, 23.231304, 15.637557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.339212, 23.328606, 15.754787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.405640, 22.958149, 15.890244>,  <20.445496, 22.735874, 15.971519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.405640, 22.958149, 15.890244>,  <20.339212, 23.328606, 15.754787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.405640, 22.958149, 15.890244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241388, 0.294784, 0.924572,
		-0.956114, -0.235286, -0.174606,
		0.166068, -0.926144, 0.338642,
		20.455460, 22.680305, 15.991838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.891218, 23.188131, 16.243477>,  <20.339212, 23.328606, 15.754787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.891218, 23.188131, 16.243477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.163288, 22.905506, 16.321587>,  <20.326530, 22.735931, 16.368452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.163288, 22.905506, 16.321587>,  <19.891218, 23.188131, 16.243477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.163288, 22.905506, 16.321587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221203, 0.056140, 0.973611,
		-0.698879, -0.705421, -0.118108,
		0.680175, -0.706562, 0.195276,
		20.367340, 22.693537, 16.380169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.545732, 22.620478, 16.561796>,  <19.891218, 23.188131, 16.243477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.545732, 22.620478, 16.561796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.933998, 22.607101, 16.657036>,  <20.166958, 22.599075, 16.714180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.933998, 22.607101, 16.657036>,  <19.545732, 22.620478, 16.561796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.933998, 22.607101, 16.657036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239908, -0.069238, 0.968323,
		-0.015896, -0.997040, -0.075229,
		0.970665, -0.033441, 0.238097,
		20.225197, 22.597069, 16.728466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.619743, 22.122288, 17.150150>,  <19.545732, 22.620478, 16.561796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.619743, 22.122288, 17.150150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.933964, 22.369545, 17.161535>,  <20.122496, 22.517899, 17.168365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.933964, 22.369545, 17.161535>,  <19.619743, 22.122288, 17.150150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.933964, 22.369545, 17.161535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112695, 0.097684, 0.988816,
		0.608448, -0.779974, 0.146397,
		0.785552, 0.618141, 0.028463,
		20.169630, 22.554987, 17.170074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.456495, 21.459990, 17.370678>,  <19.619743, 22.122288, 17.150150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.456495, 21.459990, 17.370678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.108292, 21.305279, 17.492409>,  <18.899370, 21.212452, 17.565447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.108292, 21.305279, 17.492409>,  <19.456495, 21.459990, 17.370678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.108292, 21.305279, 17.492409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298745, -0.076126, -0.951292,
		0.391107, -0.919025, -0.049280,
		-0.870509, -0.386779, 0.304327,
		18.847139, 21.189245, 17.583708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.405785, 20.818575, 16.947899>,  <19.456495, 21.459990, 17.370678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.405785, 20.818575, 16.947899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.046982, 20.864048, 17.118757>,  <18.831699, 20.891333, 17.221273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.046982, 20.864048, 17.118757>,  <19.405785, 20.818575, 16.947899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.046982, 20.864048, 17.118757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441326, -0.284332, -0.851109,
		0.024694, -0.951962, 0.305220,
		-0.897007, 0.113684, 0.427147,
		18.777880, 20.898153, 17.246901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.001253, 20.184000, 16.837173>,  <19.405785, 20.818575, 16.947899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.001253, 20.184000, 16.837173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.793011, 20.524345, 16.865456>,  <18.668066, 20.728554, 16.882425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.793011, 20.524345, 16.865456>,  <19.001253, 20.184000, 16.837173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.793011, 20.524345, 16.865456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309058, -0.110605, -0.944589,
		-0.795897, -0.513610, 0.320549,
		-0.520605, 0.850865, 0.070705,
		18.636829, 20.779604, 16.886667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.514751, 20.031111, 16.330223>,  <19.001253, 20.184000, 16.837173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.514751, 20.031111, 16.330223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.463974, 20.423931, 16.386028>,  <18.433508, 20.659622, 16.419512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.463974, 20.423931, 16.386028>,  <18.514751, 20.031111, 16.330223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.463974, 20.423931, 16.386028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372981, 0.083072, -0.924112,
		-0.919114, -0.169345, 0.355741,
		-0.126942, 0.982049, 0.139515,
		18.425892, 20.718546, 16.427883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.854876, 20.235767, 16.016394>,  <18.514751, 20.031111, 16.330223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.854876, 20.235767, 16.016394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.062634, 20.575333, 16.055531>,  <18.187288, 20.779072, 16.079012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.062634, 20.575333, 16.055531>,  <17.854876, 20.235767, 16.016394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.062634, 20.575333, 16.055531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399488, 0.342429, -0.850383,
		-0.755406, 0.402598, 0.516988,
		0.519394, 0.848915, 0.097840,
		18.218452, 20.830008, 16.084883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
