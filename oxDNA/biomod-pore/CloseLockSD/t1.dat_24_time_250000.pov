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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
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
	<3.912812, 14.936782, 15.141248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.239776, 15.080672, 14.961277>,  <4.435955, 15.167006, 14.853294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.239776, 15.080672, 14.961277>,  <3.912812, 14.936782, 15.141248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.239776, 15.080672, 14.961277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553384, 0.707314, -0.439856,
		0.160012, 0.608526, 0.777234,
		0.817412, 0.359727, -0.449927,
		4.485000, 15.188590, 14.826299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.984654, 15.636229, 15.285116>,  <3.912812, 14.936782, 15.141248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.984654, 15.636229, 15.285116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.181919, 15.590487, 14.940161>,  <4.300278, 15.563041, 14.733188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.181919, 15.590487, 14.940161>,  <3.984654, 15.636229, 15.285116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.181919, 15.590487, 14.940161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532532, 0.744196, -0.403215,
		0.687896, 0.658100, 0.306111,
		0.493162, -0.114356, -0.862389,
		4.329868, 15.556180, 14.681444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.365661, 15.136456, 15.873921>,  <3.984654, 15.636229, 15.285116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.365661, 15.136456, 15.873921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.245220, 14.818346, 15.663445>,  <4.172955, 14.627480, 15.537160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.245220, 14.818346, 15.663445>,  <4.365661, 15.136456, 15.873921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.245220, 14.818346, 15.663445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846821, -0.476701, 0.235903,
		-0.438443, -0.374557, 0.816991,
		-0.301102, -0.795275, -0.526189,
		4.154889, 14.579763, 15.505589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.193337, 14.460206, 16.340010>,  <4.365661, 15.136456, 15.873921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.193337, 14.460206, 16.340010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.337428, 14.424885, 15.968539>,  <4.423882, 14.403692, 15.745657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.337428, 14.424885, 15.968539>,  <4.193337, 14.460206, 16.340010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.337428, 14.424885, 15.968539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883632, -0.286834, 0.370027,
		-0.299051, -0.953902, -0.025297,
		0.360226, -0.088304, -0.928676,
		4.445496, 14.398394, 15.689937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.557613, 13.748292, 16.480354>,  <4.193337, 14.460206, 16.340010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.557613, 13.748292, 16.480354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.720611, 13.965898, 16.186960>,  <4.818409, 14.096460, 16.010923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.720611, 13.965898, 16.186960>,  <4.557613, 13.748292, 16.480354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.720611, 13.965898, 16.186960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905248, -0.134818, 0.402927,
		0.120311, -0.828175, -0.547405,
		0.407495, 0.544013, -0.733483,
		4.842859, 14.129102, 15.966915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.081163, 13.355598, 16.206627>,  <4.557613, 13.748292, 16.480354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.081163, 13.355598, 16.206627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.187451, 13.727832, 16.105902>,  <5.251224, 13.951172, 16.045467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.187451, 13.727832, 16.105902>,  <5.081163, 13.355598, 16.206627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.187451, 13.727832, 16.105902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940411, -0.192716, 0.280157,
		0.212181, -0.311249, -0.926339,
		0.265719, 0.930583, -0.251811,
		5.267167, 14.007007, 16.030357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.691499, 13.349116, 15.717074>,  <5.081163, 13.355598, 16.206627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.691499, 13.349116, 15.717074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.679331, 13.718975, 15.868918>,  <5.672031, 13.940890, 15.960025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.679331, 13.718975, 15.868918>,  <5.691499, 13.349116, 15.717074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.679331, 13.718975, 15.868918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996299, -0.002496, 0.085914,
		0.080387, 0.380820, -0.921148,
		-0.030419, 0.924646, 0.379611,
		5.670206, 13.996368, 15.982801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.322852, 13.608955, 15.450358>,  <5.691499, 13.349116, 15.717074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.322852, 13.608955, 15.450358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.240555, 13.872632, 15.739671>,  <6.191177, 14.030838, 15.913259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.240555, 13.872632, 15.739671>,  <6.322852, 13.608955, 15.450358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.240555, 13.872632, 15.739671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960708, -0.004655, 0.277522,
		0.186307, 0.751961, -0.632333,
		-0.205742, 0.659191, 0.723282,
		6.178833, 14.070390, 15.956656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.936076, 14.051084, 15.495595>,  <6.322852, 13.608955, 15.450358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.936076, 14.051084, 15.495595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.734490, 14.090279, 15.838854>,  <6.613538, 14.113796, 16.044809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.734490, 14.090279, 15.838854>,  <6.936076, 14.051084, 15.495595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.734490, 14.090279, 15.838854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855150, -0.083040, 0.511687,
		0.121399, 0.991717, -0.041945,
		-0.503966, 0.097988, 0.858147,
		6.583300, 14.119675, 16.096298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.313503, 14.514876, 15.926782>,  <6.936076, 14.051084, 15.495595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.313503, 14.514876, 15.926782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.076416, 14.273896, 16.140600>,  <6.934163, 14.129309, 16.268890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.076416, 14.273896, 16.140600>,  <7.313503, 14.514876, 15.926782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.076416, 14.273896, 16.140600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804794, -0.417073, 0.422323,
		-0.031484, 0.680517, 0.732055,
		-0.592719, -0.602450, 0.534545,
		6.898600, 14.093162, 16.300964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.590521, 14.534826, 16.560375>,  <7.313503, 14.514876, 15.926782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.590521, 14.534826, 16.560375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.366543, 14.203452, 16.555359>,  <7.232156, 14.004628, 16.552349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.366543, 14.203452, 16.555359>,  <7.590521, 14.534826, 16.560375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.366543, 14.203452, 16.555359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725910, -0.497832, 0.474572,
		-0.399395, 0.256631, 0.880127,
		-0.559946, -0.828435, -0.012541,
		7.198560, 13.954922, 16.551598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.793739, 14.267550, 17.140514>,  <7.590521, 14.534826, 16.560375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.793739, 14.267550, 17.140514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.608001, 13.991430, 16.918570>,  <7.496558, 13.825759, 16.785402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.608001, 13.991430, 16.918570>,  <7.793739, 14.267550, 17.140514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.608001, 13.991430, 16.918570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760587, -0.631790, 0.149496,
		-0.453752, -0.352602, 0.818401,
		-0.464346, -0.690299, -0.554861,
		7.468698, 13.784341, 16.752111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.823494, 13.697381, 17.573460>,  <7.793739, 14.267550, 17.140514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.823494, 13.697381, 17.573460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.789754, 13.583802, 17.191410>,  <7.769511, 13.515655, 16.962181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.789754, 13.583802, 17.191410>,  <7.823494, 13.697381, 17.573460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.789754, 13.583802, 17.191410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800072, -0.590654, 0.104940,
		-0.593945, -0.755315, 0.277000,
		-0.084348, -0.283948, -0.955122,
		7.764450, 13.498618, 16.904873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.870183, 12.986171, 17.523010>,  <7.823494, 13.697381, 17.573460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.870183, 12.986171, 17.523010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.940059, 13.096033, 17.144794>,  <7.981985, 13.161950, 16.917864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.940059, 13.096033, 17.144794>,  <7.870183, 12.986171, 17.523010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.940059, 13.096033, 17.144794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787611, -0.615278, -0.033210,
		-0.590891, -0.738917, -0.323805,
		0.174690, 0.274655, -0.945541,
		7.992466, 13.178430, 16.861132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.055921, 12.393225, 17.221502>,  <7.870183, 12.986171, 17.523010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.055921, 12.393225, 17.221502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.206722, 12.641889, 16.946865>,  <8.297203, 12.791087, 16.782084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.206722, 12.641889, 16.946865>,  <8.055921, 12.393225, 17.221502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.206722, 12.641889, 16.946865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783468, -0.609421, -0.121587,
		-0.494009, -0.492083, -0.716805,
		0.377005, 0.621659, -0.686591,
		8.319824, 12.828386, 16.740889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.487259, 11.950150, 16.891386>,  <8.055921, 12.393225, 17.221502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.487259, 11.950150, 16.891386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.614063, 12.293439, 16.729912>,  <8.690145, 12.499412, 16.633028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.614063, 12.293439, 16.729912>,  <8.487259, 11.950150, 16.891386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.614063, 12.293439, 16.729912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879443, -0.425354, -0.213669,
		-0.355084, -0.287282, -0.889598,
		0.317010, 0.858221, -0.403685,
		8.709167, 12.550905, 16.608807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.758414, 11.892540, 16.123297>,  <8.487259, 11.950150, 16.891386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.758414, 11.892540, 16.123297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.943295, 12.206605, 16.288166>,  <9.054224, 12.395044, 16.387089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.943295, 12.206605, 16.288166>,  <8.758414, 11.892540, 16.123297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.943295, 12.206605, 16.288166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863333, -0.292262, -0.411386,
		-0.202542, 0.545988, -0.812941,
		0.462204, 0.785162, 0.412174,
		9.081957, 12.442154, 16.411818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.192242, 12.231426, 15.564705>,  <8.758414, 11.892540, 16.123297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.192242, 12.231426, 15.564705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.358038, 12.338105, 15.912744>,  <9.457516, 12.402113, 16.121567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.358038, 12.338105, 15.912744>,  <9.192242, 12.231426, 15.564705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.358038, 12.338105, 15.912744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893242, -0.302151, -0.332902,
		0.174117, 0.915192, -0.363465,
		0.414490, 0.266698, 0.870098,
		9.482385, 12.418115, 16.173773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.690430, 12.698741, 15.440495>,  <9.192242, 12.231426, 15.564705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.690430, 12.698741, 15.440495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.807354, 12.581269, 15.804540>,  <9.877508, 12.510786, 16.022966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.807354, 12.581269, 15.804540>,  <9.690430, 12.698741, 15.440495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.807354, 12.581269, 15.804540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915794, -0.188157, -0.354850,
		0.275456, 0.937203, 0.213949,
		0.292310, -0.293679, 0.910114,
		9.895047, 12.493166, 16.077574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.284857, 13.073649, 15.552429>,  <9.690430, 12.698741, 15.440495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.284857, 13.073649, 15.552429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.323457, 12.768747, 15.808447>,  <10.346617, 12.585806, 15.962057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.323457, 12.768747, 15.808447>,  <10.284857, 13.073649, 15.552429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.323457, 12.768747, 15.808447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950620, -0.119990, -0.286226,
		0.294976, 0.636058, 0.713035,
		0.096499, -0.762255, 0.640043,
		10.352407, 12.540071, 16.000460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.893524, 13.164692, 16.017788>,  <10.284857, 13.073649, 15.552429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.893524, 13.164692, 16.017788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.837220, 12.769699, 16.046255>,  <10.803438, 12.532703, 16.063335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.837220, 12.769699, 16.046255>,  <10.893524, 13.164692, 16.017788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.837220, 12.769699, 16.046255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971223, -0.151677, -0.183631,
		0.192127, 0.043273, 0.980416,
		-0.140760, -0.987482, 0.071169,
		10.794992, 12.473454, 16.067606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.429934, 13.048414, 16.219286>,  <10.893524, 13.164692, 16.017788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.429934, 13.048414, 16.219286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.308151, 12.683499, 16.109713>,  <11.235082, 12.464550, 16.043968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.308151, 12.683499, 16.109713>,  <11.429934, 13.048414, 16.219286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.308151, 12.683499, 16.109713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946107, -0.256295, -0.197978,
		0.110406, -0.319443, 0.941152,
		-0.304455, -0.912288, -0.273931,
		11.216815, 12.409813, 16.027533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.720531, 12.503196, 16.741188>,  <11.429934, 13.048414, 16.219286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.720531, 12.503196, 16.741188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.643446, 12.315002, 16.396744>,  <11.597195, 12.202086, 16.190077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.643446, 12.315002, 16.396744>,  <11.720531, 12.503196, 16.741188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.643446, 12.315002, 16.396744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972930, -0.205683, -0.105359,
		-0.127546, -0.858103, 0.497384,
		-0.192713, -0.470482, -0.861109,
		11.585632, 12.173858, 16.138411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.037054, 11.802022, 16.684364>,  <11.720531, 12.503196, 16.741188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.037054, 11.802022, 16.684364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.978750, 11.943274, 16.314705>,  <11.943768, 12.028027, 16.092909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.978750, 11.943274, 16.314705>,  <12.037054, 11.802022, 16.684364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.978750, 11.943274, 16.314705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965621, -0.152456, -0.210556,
		-0.215246, -0.923068, -0.318770,
		-0.145759, 0.353132, -0.924149,
		11.935022, 12.049214, 16.037460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.511084, 11.370044, 16.279772>,  <12.037054, 11.802022, 16.684364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.511084, 11.370044, 16.279772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.424955, 11.670463, 16.030111>,  <12.373279, 11.850714, 15.880315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.424955, 11.670463, 16.030111>,  <12.511084, 11.370044, 16.279772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.424955, 11.670463, 16.030111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933473, -0.029425, -0.357439,
		-0.286819, -0.659592, -0.694747,
		-0.215321, 0.751047, -0.624151,
		12.360359, 11.895777, 15.842866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.840782, 11.256184, 15.639025>,  <12.511084, 11.370044, 16.279772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.840782, 11.256184, 15.639025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.776491, 11.647446, 15.691758>,  <12.737916, 11.882203, 15.723398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.776491, 11.647446, 15.691758>,  <12.840782, 11.256184, 15.639025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.776491, 11.647446, 15.691758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984988, 0.167486, -0.041808,
		-0.062975, 0.123135, -0.990390,
		-0.160729, 0.978154, 0.131834,
		12.728272, 11.940892, 15.731308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.048177, 11.691764, 15.052519>,  <12.840782, 11.256184, 15.639025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.048177, 11.691764, 15.052519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.073451, 11.917524, 15.381750>,  <13.088615, 12.052980, 15.579289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.073451, 11.917524, 15.381750>,  <13.048177, 11.691764, 15.052519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.073451, 11.917524, 15.381750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949673, 0.219533, -0.223443,
		-0.306804, 0.795774, -0.522125,
		0.063187, 0.564401, 0.823079,
		13.092407, 12.086844, 15.628674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.731127, 11.762261, 15.383910>,  <13.048177, 11.691764, 15.052519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.731127, 11.762261, 15.383910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806198, 12.148925, 15.314230>,  <13.851241, 12.380923, 15.272422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806198, 12.148925, 15.314230>,  <13.731127, 11.762261, 15.383910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.806198, 12.148925, 15.314230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982231, -0.184742, 0.033063,
		-0.000222, -0.177311, -0.984155,
		0.187678, 0.966660, -0.174201,
		13.862501, 12.438923, 15.261970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.250970, 11.824729, 14.796183>,  <13.731127, 11.762261, 15.383910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.250970, 11.824729, 14.796183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.267651, 12.118458, 15.067190>,  <14.277658, 12.294695, 15.229795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.267651, 12.118458, 15.067190>,  <14.250970, 11.824729, 14.796183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.267651, 12.118458, 15.067190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957280, -0.223567, 0.183391,
		0.286139, 0.640928, -0.712275,
		0.041701, 0.734322, 0.677519,
		14.280161, 12.338755, 15.270446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.509132, 11.979736, 14.083695>,  <14.250970, 11.824729, 14.796183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.509132, 11.979736, 14.083695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.286458, 11.776737, 13.820622>,  <14.152853, 11.654938, 13.662779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.286458, 11.776737, 13.820622>,  <14.509132, 11.979736, 14.083695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.286458, 11.776737, 13.820622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784342, 0.581933, 0.214851,
		0.273691, 0.635452, -0.722006,
		-0.556687, -0.507498, -0.657682,
		14.119452, 11.624488, 13.623318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.999714, 12.444703, 13.735092>,  <14.509132, 11.979736, 14.083695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.999714, 12.444703, 13.735092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.809802, 12.099694, 13.665072>,  <13.695855, 11.892689, 13.623061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.809802, 12.099694, 13.665072>,  <13.999714, 12.444703, 13.735092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.809802, 12.099694, 13.665072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879930, 0.461237, 0.113940,
		-0.017537, 0.208126, -0.977945,
		-0.474779, -0.862521, -0.175048,
		13.667369, 11.840938, 13.612558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.727722, 12.667684, 13.888231>,  <13.999714, 12.444703, 13.735092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.727722, 12.667684, 13.888231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.905857, 13.022976, 13.843122>,  <15.012738, 13.236152, 13.816055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.905857, 13.022976, 13.843122>,  <14.727722, 12.667684, 13.888231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.905857, 13.022976, 13.843122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706875, 0.426095, 0.564599,
		0.549548, -0.171718, 0.817625,
		0.445338, 0.888232, -0.112776,
		15.039458, 13.289446, 13.809289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.948306, 13.144449, 14.548418>,  <14.727722, 12.667684, 13.888231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.948306, 13.144449, 14.548418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.836859, 13.342804, 14.219427>,  <14.769991, 13.461817, 14.022033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.836859, 13.342804, 14.219427>,  <14.948306, 13.144449, 14.548418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.836859, 13.342804, 14.219427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809988, 0.338819, 0.478666,
		0.516035, 0.799562, 0.307261,
		-0.278618, 0.495886, -0.822478,
		14.753274, 13.491570, 13.972684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.641842, 13.832789, 14.727015>,  <14.948306, 13.144449, 14.548418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.641842, 13.832789, 14.727015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.502814, 13.732403, 14.365638>,  <14.419397, 13.672171, 14.148811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.502814, 13.732403, 14.365638>,  <14.641842, 13.832789, 14.727015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.502814, 13.732403, 14.365638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914607, 0.303056, 0.267679,
		0.206616, 0.919333, -0.334869,
		-0.347570, -0.250967, -0.903444,
		14.398543, 13.657113, 14.094604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.204159, 14.426989, 14.380168>,  <14.641842, 13.832789, 14.727015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.204159, 14.426989, 14.380168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.083364, 14.078235, 14.225965>,  <14.010886, 13.868982, 14.133442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.083364, 14.078235, 14.225965>,  <14.204159, 14.426989, 14.380168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.083364, 14.078235, 14.225965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941933, 0.335191, -0.020221,
		0.146849, 0.357017, -0.922482,
		-0.301989, -0.871886, -0.385509,
		13.992766, 13.816669, 14.110312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.866654, 14.494548, 13.780589>,  <14.204159, 14.426989, 14.380168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.866654, 14.494548, 13.780589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.741856, 14.134579, 13.902438>,  <13.666977, 13.918597, 13.975548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.741856, 14.134579, 13.902438>,  <13.866654, 14.494548, 13.780589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.741856, 14.134579, 13.902438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944188, 0.329353, 0.005942,
		-0.105676, -0.285768, -0.952454,
		-0.311996, -0.899924, 0.304624,
		13.648257, 13.864601, 13.993825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.256796, 14.206129, 13.300690>,  <13.866654, 14.494548, 13.780589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.256796, 14.206129, 13.300690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.228554, 14.011628, 13.649075>,  <13.211609, 13.894928, 13.858106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.228554, 14.011628, 13.649075>,  <13.256796, 14.206129, 13.300690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.228554, 14.011628, 13.649075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971414, 0.231907, 0.050725,
		-0.226648, -0.842483, -0.488726,
		-0.070604, -0.486252, 0.870961,
		13.207373, 13.865752, 13.910363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.660155, 13.827462, 13.203227>,  <13.256796, 14.206129, 13.300690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.660155, 13.827462, 13.203227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.740111, 13.863439, 13.593500>,  <12.788085, 13.885024, 13.827663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.740111, 13.863439, 13.593500>,  <12.660155, 13.827462, 13.203227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.740111, 13.863439, 13.593500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979514, 0.043185, 0.196693,
		-0.024444, -0.995010, 0.096732,
		0.199889, 0.089943, 0.975681,
		12.800078, 13.890421, 13.886205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.177173, 13.338704, 13.603962>,  <12.660155, 13.827462, 13.203227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.177173, 13.338704, 13.603962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.298981, 13.611590, 13.869849>,  <12.372066, 13.775322, 14.029382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.298981, 13.611590, 13.869849>,  <12.177173, 13.338704, 13.603962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.298981, 13.611590, 13.869849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938966, 0.097757, 0.329827,
		0.160032, -0.724586, 0.670347,
		0.304519, 0.682216, 0.664717,
		12.390337, 13.816255, 14.069264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.732880, 13.216039, 14.239332>,  <12.177173, 13.338704, 13.603962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.732880, 13.216039, 14.239332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.873865, 13.589988, 14.256216>,  <11.958456, 13.814358, 14.266347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.873865, 13.589988, 14.256216>,  <11.732880, 13.216039, 14.239332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.873865, 13.589988, 14.256216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909269, 0.331443, 0.251744,
		0.221358, -0.127112, 0.966873,
		0.352463, 0.934873, 0.042211,
		11.979604, 13.870450, 14.268879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.306906, 13.411889, 14.716925>,  <11.732880, 13.216039, 14.239332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.306906, 13.411889, 14.716925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.463307, 13.757151, 14.589125>,  <11.557149, 13.964308, 14.512444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.463307, 13.757151, 14.589125>,  <11.306906, 13.411889, 14.716925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.463307, 13.757151, 14.589125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849904, 0.471837, 0.234591,
		0.353240, 0.179818, 0.918089,
		0.391005, 0.863154, -0.319500,
		11.580608, 14.016097, 14.493275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.136395, 13.872924, 15.159122>,  <11.306906, 13.411889, 14.716925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.136395, 13.872924, 15.159122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.218028, 14.091667, 14.834334>,  <11.267009, 14.222913, 14.639462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.218028, 14.091667, 14.834334>,  <11.136395, 13.872924, 15.159122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.218028, 14.091667, 14.834334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884126, 0.459083, 0.086969,
		0.420321, 0.700135, 0.577184,
		0.204085, 0.546858, -0.811970,
		11.279253, 14.255724, 14.590743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.038514, 14.570952, 15.401196>,  <11.136395, 13.872924, 15.159122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.038514, 14.570952, 15.401196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.993426, 14.538332, 15.005086>,  <10.966373, 14.518760, 14.767420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.993426, 14.538332, 15.005086>,  <11.038514, 14.570952, 15.401196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.993426, 14.538332, 15.005086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824792, 0.563439, 0.047483,
		0.554087, 0.822123, -0.130774,
		-0.112720, -0.081552, -0.990274,
		10.959610, 14.513866, 14.708004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.795267, 15.222648, 15.119948>,  <11.038514, 14.570952, 15.401196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.795267, 15.222648, 15.119948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.681906, 14.988090, 14.816417>,  <10.613889, 14.847355, 14.634297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.681906, 14.988090, 14.816417>,  <10.795267, 15.222648, 15.119948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.681906, 14.988090, 14.816417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841244, 0.531909, -0.096857,
		0.460425, 0.610911, -0.644047,
		-0.283403, -0.586396, -0.758830,
		10.596885, 14.812171, 14.588768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.458039, 15.720217, 14.662173>,  <10.795267, 15.222648, 15.119948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.458039, 15.720217, 14.662173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.344389, 15.366151, 14.514792>,  <10.276199, 15.153711, 14.426364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.344389, 15.366151, 14.514792>,  <10.458039, 15.720217, 14.662173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.344389, 15.366151, 14.514792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941898, 0.329499, -0.065258,
		0.179168, 0.328503, -0.927353,
		-0.284125, -0.885164, -0.368452,
		10.259151, 15.100601, 14.404257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.151175, 15.883225, 13.956976>,  <10.458039, 15.720217, 14.662173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.151175, 15.883225, 13.956976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.020850, 15.541176, 14.118277>,  <9.942656, 15.335946, 14.215056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.020850, 15.541176, 14.118277>,  <10.151175, 15.883225, 13.956976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.020850, 15.541176, 14.118277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933150, 0.222325, -0.282494,
		0.151914, -0.468334, -0.870394,
		-0.325812, -0.855123, 0.403252,
		9.923106, 15.284639, 14.239252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.698399, 15.605073, 13.490851>,  <10.151175, 15.883225, 13.956976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.698399, 15.605073, 13.490851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.572126, 15.436172, 13.830746>,  <9.496364, 15.334832, 14.034682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.572126, 15.436172, 13.830746>,  <9.698399, 15.605073, 13.490851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.572126, 15.436172, 13.830746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908999, 0.391431, -0.143186,
		-0.272152, -0.817610, -0.507393,
		-0.315680, -0.422251, 0.849735,
		9.477423, 15.309497, 14.085667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.991961, 15.651984, 13.466202>,  <9.698399, 15.605073, 13.490851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.991961, 15.651984, 13.466202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.001784, 15.497906, 13.835205>,  <9.007679, 15.405458, 14.056607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.001784, 15.497906, 13.835205>,  <8.991961, 15.651984, 13.466202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.001784, 15.497906, 13.835205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998182, 0.041350, 0.043840,
		-0.055033, -0.921908, -0.383481,
		0.024559, -0.385196, 0.922508,
		9.009152, 15.382347, 14.111958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.610274, 15.029874, 13.435129>,  <8.991961, 15.651984, 13.466202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.610274, 15.029874, 13.435129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.607806, 15.175335, 13.807735>,  <8.606325, 15.262611, 14.031299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.607806, 15.175335, 13.807735>,  <8.610274, 15.029874, 13.435129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.607806, 15.175335, 13.807735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991165, -0.125647, 0.042485,
		0.132492, -0.923022, 0.361214,
		-0.006171, 0.363652, 0.931514,
		8.605955, 15.284431, 14.087190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.060080, 14.571772, 13.883210>,  <8.610274, 15.029874, 13.435129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.060080, 14.571772, 13.883210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.098259, 14.907036, 14.098014>,  <8.121166, 15.108194, 14.226896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.098259, 14.907036, 14.098014>,  <8.060080, 14.571772, 13.883210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.098259, 14.907036, 14.098014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995409, 0.076499, 0.057526,
		0.007135, -0.540034, 0.841613,
		0.095448, 0.838160, 0.537009,
		8.126893, 15.158484, 14.259116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.514588, 14.588138, 14.285604>,  <8.060080, 14.571772, 13.883210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.514588, 14.588138, 14.285604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.637349, 14.966176, 14.330516>,  <7.711005, 15.192999, 14.357463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.637349, 14.966176, 14.330516>,  <7.514588, 14.588138, 14.285604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.637349, 14.966176, 14.330516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919448, 0.263947, 0.291458,
		0.245819, -0.192688, 0.949971,
		0.306902, 0.945094, 0.112283,
		7.729419, 15.249704, 14.364200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.258584, 14.819976, 14.994383>,  <7.514588, 14.588138, 14.285604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.258584, 14.819976, 14.994383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.304193, 15.129229, 14.744818>,  <7.331558, 15.314780, 14.595078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.304193, 15.129229, 14.744818>,  <7.258584, 14.819976, 14.994383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.304193, 15.129229, 14.744818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973207, 0.213138, 0.086257,
		0.199667, 0.597359, 0.776720,
		0.114022, 0.773133, -0.623911,
		7.338399, 15.361168, 14.557644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.018822, 15.389135, 15.342026>,  <7.258584, 14.819976, 14.994383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.018822, 15.389135, 15.342026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.020044, 15.532685, 14.968674>,  <7.020777, 15.618815, 14.744662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.020044, 15.532685, 14.968674>,  <7.018822, 15.389135, 15.342026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.020044, 15.532685, 14.968674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896947, 0.413660, 0.156113,
		0.442127, 0.836717, 0.323154,
		0.003054, 0.358874, -0.933381,
		7.020960, 15.640347, 14.688660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.746240, 16.008289, 15.468947>,  <7.018822, 15.389135, 15.342026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.746240, 16.008289, 15.468947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.690412, 15.926270, 15.081448>,  <6.656915, 15.877057, 14.848948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.690412, 15.926270, 15.081448>,  <6.746240, 16.008289, 15.468947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.690412, 15.926270, 15.081448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935946, 0.346739, 0.061451,
		0.323302, 0.915274, -0.240310,
		-0.139570, -0.205050, -0.968749,
		6.648541, 15.864755, 14.790823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.411304, 16.510235, 15.236575>,  <6.746240, 16.008289, 15.468947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.411304, 16.510235, 15.236575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.328025, 16.232885, 14.960636>,  <6.278057, 16.066477, 14.795073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.328025, 16.232885, 14.960636>,  <6.411304, 16.510235, 15.236575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.328025, 16.232885, 14.960636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958162, 0.286223, 0.001490,
		0.196417, 0.661295, -0.723954,
		-0.208198, -0.693372, -0.689847,
		6.265565, 16.024874, 14.753682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.828477, 16.757727, 14.794062>,  <6.411304, 16.510235, 15.236575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.828477, 16.757727, 14.794062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.823884, 16.357836, 14.785925>,  <5.821128, 16.117901, 14.781043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.823884, 16.357836, 14.785925>,  <5.828477, 16.757727, 14.794062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.823884, 16.357836, 14.785925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988753, 0.008318, 0.149329,
		-0.149119, 0.021829, -0.988578,
		-0.011482, -0.999727, -0.020343,
		5.820439, 16.057919, 14.779822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.944179, 17.063881, 15.494608>,  <5.828477, 16.757727, 14.794062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.944179, 17.063881, 15.494608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.788570, 17.292280, 15.783779>,  <5.695205, 17.429319, 15.957282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.788570, 17.292280, 15.783779>,  <5.944179, 17.063881, 15.494608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.788570, 17.292280, 15.783779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392029, -0.812751, 0.430986,
		0.833652, -0.115746, 0.540025,
		-0.389021, 0.570998, 0.722928,
		5.671864, 17.463579, 16.000658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.042708, 16.805080, 16.192867>,  <5.944179, 17.063881, 15.494608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.042708, 16.805080, 16.192867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.694593, 16.986929, 16.117060>,  <5.485723, 17.096037, 16.071575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.694593, 16.986929, 16.117060>,  <6.042708, 16.805080, 16.192867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.694593, 16.986929, 16.117060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466858, -0.884027, 0.023239,
		-0.156974, 0.108702, 0.981602,
		-0.870289, 0.454621, -0.189518,
		5.433506, 17.123316, 16.060204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.198320, 16.995342, 16.817696>,  <6.042708, 16.805080, 16.192867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.198320, 16.995342, 16.817696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.161388, 17.384485, 16.902575>,  <6.139229, 17.617971, 16.953503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.161388, 17.384485, 16.902575>,  <6.198320, 16.995342, 16.817696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.161388, 17.384485, 16.902575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413739, -0.231323, 0.880517,
		0.905701, -0.006496, 0.423867,
		-0.092330, 0.972855, 0.212197,
		6.133689, 17.676342, 16.966234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.668934, 17.477627, 16.822567>,  <6.198320, 16.995342, 16.817696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.668934, 17.477627, 16.822567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.765797, 17.815390, 16.631428>,  <6.823915, 18.018047, 16.516745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.765797, 17.815390, 16.631428>,  <6.668934, 17.477627, 16.822567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.765797, 17.815390, 16.631428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895620, -0.005139, 0.444790,
		0.373128, -0.535679, -0.757512,
		0.242157, 0.844406, -0.477847,
		6.838444, 18.068712, 16.488073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.393541, 17.531227, 16.805567>,  <6.668934, 17.477627, 16.822567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.393541, 17.531227, 16.805567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.300208, 17.905840, 16.700903>,  <7.244207, 18.130608, 16.638103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.300208, 17.905840, 16.700903>,  <7.393541, 17.531227, 16.805567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.300208, 17.905840, 16.700903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926260, 0.295968, 0.233335,
		0.295968, -0.187921, -0.936530,
		-0.233335, 0.936530, -0.261661,
		7.230207, 18.186798, 16.622404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.019080, 17.868885, 16.508871>,  <7.393541, 17.531227, 16.805567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.019080, 17.868885, 16.508871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.762077, 18.148113, 16.635286>,  <7.607874, 18.315651, 16.711136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.762077, 18.148113, 16.635286>,  <8.019080, 17.868885, 16.508871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.762077, 18.148113, 16.635286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765177, 0.562379, 0.313423,
		0.041058, 0.443203, -0.895480,
		-0.642509, 0.698070, 0.316039,
		7.569324, 18.357534, 16.730099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.266128, 18.478125, 16.356047>,  <8.019080, 17.868885, 16.508871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.266128, 18.478125, 16.356047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.016771, 18.603294, 16.642672>,  <7.867157, 18.678396, 16.814646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.016771, 18.603294, 16.642672>,  <8.266128, 18.478125, 16.356047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.016771, 18.603294, 16.642672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735474, 0.545781, 0.401499,
		-0.265447, 0.777304, -0.570383,
		-0.623391, 0.312926, 0.716562,
		7.829754, 18.697172, 16.857641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.386136, 19.181280, 16.364161>,  <8.266128, 18.478125, 16.356047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.386136, 19.181280, 16.364161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.232324, 19.091167, 16.722240>,  <8.140036, 19.037100, 16.937088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.232324, 19.091167, 16.722240>,  <8.386136, 19.181280, 16.364161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.232324, 19.091167, 16.722240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692580, 0.570737, 0.441126,
		-0.610302, 0.789625, -0.063441,
		-0.384532, -0.225282, 0.895200,
		8.116964, 19.023582, 16.990801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.207341, 19.751705, 16.832478>,  <8.386136, 19.181280, 16.364161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.207341, 19.751705, 16.832478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.284831, 19.443350, 17.075195>,  <8.331326, 19.258337, 17.220827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.284831, 19.443350, 17.075195>,  <8.207341, 19.751705, 16.832478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.284831, 19.443350, 17.075195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613855, 0.577723, 0.537976,
		-0.765279, 0.268265, 0.585134,
		0.193725, -0.770889, 0.606795,
		8.342949, 19.212084, 17.257235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.953941, 19.901438, 17.437056>,  <8.207341, 19.751705, 16.832478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.953941, 19.901438, 17.437056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.252626, 19.640116, 17.487032>,  <8.431838, 19.483322, 17.517017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.252626, 19.640116, 17.487032>,  <7.953941, 19.901438, 17.437056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.252626, 19.640116, 17.487032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575662, 0.728855, 0.370653,
		-0.333215, -0.204846, 0.920329,
		0.746713, -0.653306, 0.124943,
		8.476641, 19.444124, 17.524515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.192389, 20.052515, 18.155811>,  <7.953941, 19.901438, 17.437056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.192389, 20.052515, 18.155811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.489663, 19.852106, 17.978430>,  <8.668028, 19.731861, 17.872002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.489663, 19.852106, 17.978430>,  <8.192389, 20.052515, 18.155811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.489663, 19.852106, 17.978430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641670, 0.721485, 0.260228,
		0.189565, -0.477948, 0.857689,
		0.743185, -0.501024, -0.443453,
		8.712619, 19.701799, 17.845394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.681255, 20.027534, 18.622908>,  <8.192389, 20.052515, 18.155811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.681255, 20.027534, 18.622908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.897341, 19.989605, 18.288441>,  <9.026992, 19.966848, 18.087761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.897341, 19.989605, 18.288441>,  <8.681255, 20.027534, 18.622908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.897341, 19.989605, 18.288441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525357, 0.814219, 0.247078,
		0.657396, -0.572762, 0.489667,
		0.540213, -0.094822, -0.836169,
		9.059404, 19.961159, 18.037590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.473458, 19.806334, 18.739260>,  <8.681255, 20.027534, 18.622908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.473458, 19.806334, 18.739260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.402485, 20.019640, 18.408407>,  <9.359900, 20.147623, 18.209896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.402485, 20.019640, 18.408407>,  <9.473458, 19.806334, 18.739260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.402485, 20.019640, 18.408407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555997, 0.747802, 0.362849,
		0.812025, -0.395501, -0.429179,
		-0.177434, 0.533265, -0.827131,
		9.349255, 20.179619, 18.160267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.826582, 20.428051, 18.878586>,  <9.473458, 19.806334, 18.739260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.826582, 20.428051, 18.878586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.689868, 20.509245, 18.511547>,  <9.607840, 20.557961, 18.291325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.689868, 20.509245, 18.511547>,  <9.826582, 20.428051, 18.878586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.689868, 20.509245, 18.511547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366243, 0.927968, 0.068861,
		0.865476, -0.312527, -0.391508,
		-0.341786, 0.202984, -0.917595,
		9.587333, 20.570141, 18.236269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.412154, 20.582590, 18.377703>,  <9.826582, 20.428051, 18.878586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.412154, 20.582590, 18.377703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.073313, 20.764029, 18.266947>,  <9.870008, 20.872890, 18.200493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.073313, 20.764029, 18.266947>,  <10.412154, 20.582590, 18.377703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.073313, 20.764029, 18.266947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439856, 0.890844, 0.113688,
		0.298232, -0.025485, -0.954153,
		-0.847104, 0.453595, -0.276888,
		9.819181, 20.900106, 18.183880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.631945, 21.142189, 18.011263>,  <10.412154, 20.582590, 18.377703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.631945, 21.142189, 18.011263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.251529, 21.238155, 18.089201>,  <10.023279, 21.295736, 18.135963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.251529, 21.238155, 18.089201>,  <10.631945, 21.142189, 18.011263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.251529, 21.238155, 18.089201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255709, 0.964889, 0.060024,
		-0.173602, 0.106908, -0.978996,
		-0.951039, 0.239918, 0.194844,
		9.966217, 21.310131, 18.147654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.556241, 21.755821, 17.667456>,  <10.631945, 21.142189, 18.011263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.556241, 21.755821, 17.667456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.284558, 21.752569, 17.961016>,  <10.121549, 21.750618, 18.137152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.284558, 21.752569, 17.961016>,  <10.556241, 21.755821, 17.667456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.284558, 21.752569, 17.961016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292514, 0.914092, 0.280840,
		-0.673136, 0.405425, -0.618481,
		-0.679208, -0.008129, 0.733901,
		10.080796, 21.750130, 18.181187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.255718, 22.506969, 17.723417>,  <10.556241, 21.755821, 17.667456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.255718, 22.506969, 17.723417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.153101, 22.327747, 18.065981>,  <10.091531, 22.220215, 18.271519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.153101, 22.327747, 18.065981>,  <10.255718, 22.506969, 17.723417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.153101, 22.327747, 18.065981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221263, 0.835306, 0.503296,
		-0.940866, 0.318608, -0.115153,
		-0.256542, -0.448055, 0.856407,
		10.076138, 22.193331, 18.322903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.872059, 23.003662, 18.056929>,  <10.255718, 22.506969, 17.723417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.872059, 23.003662, 18.056929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.979416, 22.735634, 18.333759>,  <10.043830, 22.574818, 18.499857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.979416, 22.735634, 18.333759>,  <9.872059, 23.003662, 18.056929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.979416, 22.735634, 18.333759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125940, 0.736678, 0.664412,
		-0.955041, -0.091164, 0.282108,
		0.268393, -0.670070, 0.692077,
		10.059934, 22.534613, 18.541382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.459176, 23.163446, 18.658859>,  <9.872059, 23.003662, 18.056929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.459176, 23.163446, 18.658859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.764053, 22.947712, 18.802069>,  <9.946980, 22.818272, 18.887995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.764053, 22.947712, 18.802069>,  <9.459176, 23.163446, 18.658859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.764053, 22.947712, 18.802069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236104, 0.746566, 0.622008,
		-0.602757, -0.389560, 0.696367,
		0.762193, -0.539335, 0.358022,
		9.992711, 22.785912, 18.909475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.504977, 23.062864, 19.407938>,  <9.459176, 23.163446, 18.658859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.504977, 23.062864, 19.407938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.893870, 23.047649, 19.315577>,  <10.127206, 23.038521, 19.260160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.893870, 23.047649, 19.315577>,  <9.504977, 23.062864, 19.407938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.893870, 23.047649, 19.315577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180972, 0.747773, 0.638815,
		0.148365, -0.662864, 0.733893,
		0.972233, -0.038036, -0.230904,
		10.185540, 23.036238, 19.246305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.314833, 22.441303, 19.618280>,  <9.504977, 23.062864, 19.407938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.314833, 22.441303, 19.618280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.615270, 22.700674, 19.667921>,  <9.795531, 22.856297, 19.697706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.615270, 22.700674, 19.667921>,  <9.314833, 22.441303, 19.618280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.615270, 22.700674, 19.667921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214088, 0.061400, 0.974883,
		0.624522, -0.758795, 0.184938,
		0.751091, 0.648429, 0.124104,
		9.840597, 22.895203, 19.705153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.509805, 22.260592, 20.297758>,  <9.314833, 22.441303, 19.618280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.509805, 22.260592, 20.297758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.657748, 22.628059, 20.242264>,  <9.746514, 22.848541, 20.208967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.657748, 22.628059, 20.242264>,  <9.509805, 22.260592, 20.297758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.657748, 22.628059, 20.242264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281925, 0.253259, 0.925407,
		0.885281, -0.303156, 0.352666,
		0.369859, 0.918671, -0.138738,
		9.768706, 22.903660, 20.200642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.016453, 22.469408, 20.820076>,  <9.509805, 22.260592, 20.297758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.016453, 22.469408, 20.820076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.901002, 22.826614, 20.681967>,  <9.831732, 23.040939, 20.599100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.901002, 22.826614, 20.681967>,  <10.016453, 22.469408, 20.820076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.901002, 22.826614, 20.681967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217881, 0.289898, 0.931926,
		0.932321, 0.344207, 0.110900,
		-0.288626, 0.893017, -0.345275,
		9.814414, 23.094521, 20.578384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.148441, 22.969776, 21.344450>,  <10.016453, 22.469408, 20.820076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.148441, 22.969776, 21.344450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.947475, 23.243752, 21.133381>,  <9.826896, 23.408136, 21.006739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.947475, 23.243752, 21.133381>,  <10.148441, 22.969776, 21.344450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.947475, 23.243752, 21.133381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230162, 0.482322, 0.845217,
		0.833429, 0.546100, -0.084679,
		-0.502416, 0.684938, -0.527673,
		9.796751, 23.449232, 20.975079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.492019, 23.623634, 21.311253>,  <10.148441, 22.969776, 21.344450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.492019, 23.623634, 21.311253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.116900, 23.743866, 21.241749>,  <9.891829, 23.816004, 21.200047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.116900, 23.743866, 21.241749>,  <10.492019, 23.623634, 21.311253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.116900, 23.743866, 21.241749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040754, 0.592317, 0.804673,
		0.344786, 0.747538, -0.567723,
		-0.937796, 0.300577, -0.173757,
		9.835562, 23.834040, 21.189621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.496879, 24.362848, 21.405092>,  <10.492019, 23.623634, 21.311253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.496879, 24.362848, 21.405092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.118579, 24.244066, 21.457819>,  <9.891599, 24.172798, 21.489454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.118579, 24.244066, 21.457819>,  <10.496879, 24.362848, 21.405092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.118579, 24.244066, 21.457819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074116, 0.592210, 0.802368,
		-0.316328, 0.749070, -0.582092,
		-0.945750, -0.296954, 0.131815,
		9.834854, 24.154980, 21.497364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.081432, 24.955584, 21.572502>,  <10.496879, 24.362848, 21.405092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.081432, 24.955584, 21.572502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.922764, 24.632063, 21.746164>,  <9.827563, 24.437950, 21.850363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.922764, 24.632063, 21.746164>,  <10.081432, 24.955584, 21.572502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.922764, 24.632063, 21.746164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062446, 0.495638, 0.866281,
		-0.915835, 0.316517, -0.247112,
		-0.396670, -0.808802, 0.434157,
		9.803762, 24.389423, 21.876411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.708872, 25.258701, 22.034801>,  <10.081432, 24.955584, 21.572502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.708872, 25.258701, 22.034801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.721247, 24.877386, 22.154993>,  <9.728672, 24.648598, 22.227108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.721247, 24.877386, 22.154993>,  <9.708872, 25.258701, 22.034801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.721247, 24.877386, 22.154993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091837, 0.296639, 0.950564,
		-0.995294, -0.057002, -0.078370,
		0.030937, -0.953287, 0.300478,
		9.730528, 24.591400, 22.245136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.264985, 25.236252, 22.564022>,  <9.708872, 25.258701, 22.034801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.264985, 25.236252, 22.564022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.507291, 24.922626, 22.618124>,  <9.652675, 24.734451, 22.650585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.507291, 24.922626, 22.618124>,  <9.264985, 25.236252, 22.564022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.507291, 24.922626, 22.618124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131709, 0.266467, 0.954803,
		-0.784667, -0.560571, 0.264684,
		0.605764, -0.784064, 0.135256,
		9.689020, 24.687407, 22.658701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.072862, 24.951763, 23.291193>,  <9.264985, 25.236252, 22.564022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.072862, 24.951763, 23.291193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.404017, 24.741247, 23.213612>,  <9.602711, 24.614937, 23.167063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.404017, 24.741247, 23.213612>,  <9.072862, 24.951763, 23.291193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.404017, 24.741247, 23.213612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322834, 0.164343, 0.932078,
		-0.458671, -0.834271, 0.305962,
		0.827888, -0.526293, -0.193952,
		9.652384, 24.583359, 23.155426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.135413, 24.385241, 23.827213>,  <9.072862, 24.951763, 23.291193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.135413, 24.385241, 23.827213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.495823, 24.490362, 23.689177>,  <9.712069, 24.553436, 23.606354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.495823, 24.490362, 23.689177>,  <9.135413, 24.385241, 23.827213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.495823, 24.490362, 23.689177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340857, 0.063071, 0.937997,
		0.268277, -0.962785, -0.032751,
		0.901024, 0.262806, -0.345092,
		9.766130, 24.569204, 23.585649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.548240, 24.129164, 24.341137>,  <9.135413, 24.385241, 23.827213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.548240, 24.129164, 24.341137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.826295, 24.339170, 24.144712>,  <9.993128, 24.465174, 24.026857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.826295, 24.339170, 24.144712>,  <9.548240, 24.129164, 24.341137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.826295, 24.339170, 24.144712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506681, 0.126754, 0.852765,
		0.509960, -0.841600, -0.177905,
		0.695137, 0.525017, -0.491062,
		10.034836, 24.496675, 23.997395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.253465, 23.849199, 24.491335>,  <9.548240, 24.129164, 24.341137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.253465, 23.849199, 24.491335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.294559, 24.225994, 24.363518>,  <10.319217, 24.452070, 24.286827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.294559, 24.225994, 24.363518>,  <10.253465, 23.849199, 24.491335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.294559, 24.225994, 24.363518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575845, 0.205617, 0.791281,
		0.811078, -0.265302, -0.521313,
		0.102737, 0.941985, -0.319544,
		10.325380, 24.508591, 24.267654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.953470, 23.882704, 24.307493>,  <10.253465, 23.849199, 24.491335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.953470, 23.882704, 24.307493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.791376, 24.228828, 24.425488>,  <10.694119, 24.436504, 24.496284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.791376, 24.228828, 24.425488>,  <10.953470, 23.882704, 24.307493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.791376, 24.228828, 24.425488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675918, 0.066320, 0.733987,
		0.615565, 0.496824, -0.611756,
		-0.405234, 0.865313, 0.294988,
		10.669806, 24.488422, 24.513985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.500382, 24.306345, 24.582859>,  <10.953470, 23.882704, 24.307493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.500382, 24.306345, 24.582859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.157436, 24.471508, 24.705778>,  <10.951669, 24.570606, 24.779530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.157436, 24.471508, 24.705778>,  <11.500382, 24.306345, 24.582859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.157436, 24.471508, 24.705778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412821, 0.195065, 0.889679,
		0.307412, 0.889639, -0.337699,
		-0.857366, 0.412907, 0.307296,
		10.900227, 24.595381, 24.797968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.622159, 25.146534, 24.806416>,  <11.500382, 24.306345, 24.582859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.622159, 25.146534, 24.806416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.400235, 24.870518, 24.992332>,  <11.267081, 24.704908, 25.103882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.400235, 24.870518, 24.992332>,  <11.622159, 25.146534, 24.806416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.400235, 24.870518, 24.992332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439606, 0.231162, 0.867935,
		-0.706353, 0.685863, 0.175095,
		-0.554809, -0.690041, 0.464791,
		11.233792, 24.663506, 25.131769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.395970, 25.419426, 25.534578>,  <11.622159, 25.146534, 24.806416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.395970, 25.419426, 25.534578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.338438, 25.024393, 25.559858>,  <11.303919, 24.787373, 25.575026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.338438, 25.024393, 25.559858>,  <11.395970, 25.419426, 25.534578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.338438, 25.024393, 25.559858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508189, -0.018911, 0.861038,
		-0.849151, 0.155962, 0.504598,
		-0.143831, -0.987582, 0.063200,
		11.295289, 24.728119, 25.578817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.236230, 25.232706, 26.276003>,  <11.395970, 25.419426, 25.534578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.236230, 25.232706, 26.276003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.382272, 24.879578, 26.157797>,  <11.469896, 24.667702, 26.086874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.382272, 24.879578, 26.157797>,  <11.236230, 25.232706, 26.276003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.382272, 24.879578, 26.157797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443326, -0.114255, 0.889049,
		-0.818634, -0.455604, 0.349662,
		0.365104, -0.882820, -0.295514,
		11.491803, 24.614731, 26.069143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.006489, 24.753418, 26.805555>,  <11.236230, 25.232706, 26.276003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.006489, 24.753418, 26.805555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.311480, 24.581333, 26.612249>,  <11.494474, 24.478083, 26.496265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.311480, 24.581333, 26.612249>,  <11.006489, 24.753418, 26.805555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.311480, 24.581333, 26.612249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459780, -0.165242, 0.872524,
		-0.455225, -0.887476, 0.071809,
		0.762478, -0.430211, -0.483266,
		11.540223, 24.452271, 26.467270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.093088, 24.044840, 27.033472>,  <11.006489, 24.753418, 26.805555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.093088, 24.044840, 27.033472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.444439, 24.139952, 26.867622>,  <11.655250, 24.197020, 26.768112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.444439, 24.139952, 26.867622>,  <11.093088, 24.044840, 27.033472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.444439, 24.139952, 26.867622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458235, -0.172250, 0.871981,
		0.135921, -0.955924, -0.260260,
		0.878378, 0.237781, -0.414625,
		11.707952, 24.211287, 26.743235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.582582, 23.529720, 27.360281>,  <11.093088, 24.044840, 27.033472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.582582, 23.529720, 27.360281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.810487, 23.820717, 27.207373>,  <11.947229, 23.995316, 27.115627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.810487, 23.820717, 27.207373>,  <11.582582, 23.529720, 27.360281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.810487, 23.820717, 27.207373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565479, -0.009522, 0.824708,
		0.596328, -0.686051, -0.416806,
		0.569761, 0.727491, -0.382269,
		11.981415, 24.038963, 27.092691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.210060, 23.327276, 27.541018>,  <11.582582, 23.529720, 27.360281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.210060, 23.327276, 27.541018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.266923, 23.711050, 27.443632>,  <12.301041, 23.941315, 27.385201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.266923, 23.711050, 27.443632>,  <12.210060, 23.327276, 27.541018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.266923, 23.711050, 27.443632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601257, 0.111690, 0.791211,
		0.786309, -0.258861, -0.560989,
		0.142157, 0.959435, -0.243465,
		12.309570, 23.998880, 27.370592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.921646, 23.418690, 27.684511>,  <12.210060, 23.327276, 27.541018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.921646, 23.418690, 27.684511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.746752, 23.778402, 27.688894>,  <12.641815, 23.994230, 27.691525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.746752, 23.778402, 27.688894>,  <12.921646, 23.418690, 27.684511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.746752, 23.778402, 27.688894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600624, 0.282914, 0.747803,
		0.669384, 0.333548, -0.663830,
		-0.437236, 0.899280, 0.010959,
		12.615582, 24.048187, 27.692183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.511941, 23.921883, 27.769140>,  <12.921646, 23.418690, 27.684511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.511941, 23.921883, 27.769140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.177798, 24.104074, 27.892244>,  <12.977312, 24.213390, 27.966106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.177798, 24.104074, 27.892244>,  <13.511941, 23.921883, 27.769140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.177798, 24.104074, 27.892244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452081, 0.250734, 0.856012,
		0.312731, 0.854207, -0.415366,
		-0.835357, 0.455481, 0.307758,
		12.927191, 24.240719, 27.984571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.630102, 24.613842, 28.019438>,  <13.511941, 23.921883, 27.769140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.630102, 24.613842, 28.019438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.272940, 24.521387, 28.173990>,  <13.058642, 24.465914, 28.266722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.272940, 24.521387, 28.173990>,  <13.630102, 24.613842, 28.019438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.272940, 24.521387, 28.173990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296156, 0.344871, 0.890705,
		-0.339129, 0.909747, -0.239484,
		-0.892907, -0.231139, 0.386383,
		13.005068, 24.452045, 28.289906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.530849, 25.170071, 28.631844>,  <13.630102, 24.613842, 28.019438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.530849, 25.170071, 28.631844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.288981, 24.857019, 28.691000>,  <13.143861, 24.669189, 28.726494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.288981, 24.857019, 28.691000>,  <13.530849, 25.170071, 28.631844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.288981, 24.857019, 28.691000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115749, 0.097361, 0.988495,
		-0.788021, 0.614831, 0.031717,
		-0.604669, -0.782627, 0.147889,
		13.107581, 24.622231, 28.735367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.992874, 25.340811, 29.076481>,  <13.530849, 25.170071, 28.631844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.992874, 25.340811, 29.076481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.027279, 24.943197, 29.103300>,  <13.047922, 24.704628, 29.119390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.027279, 24.943197, 29.103300>,  <12.992874, 25.340811, 29.076481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.027279, 24.943197, 29.103300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155776, 0.079887, 0.984557,
		-0.984041, -0.074239, 0.161718,
		0.086012, -0.994036, 0.067047,
		13.053082, 24.644987, 29.123415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.667793, 25.301752, 29.581789>,  <12.992874, 25.340811, 29.076481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.667793, 25.301752, 29.581789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.815411, 24.930058, 29.574556>,  <12.903981, 24.707041, 29.570217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.815411, 24.930058, 29.574556>,  <12.667793, 25.301752, 29.581789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.815411, 24.930058, 29.574556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210727, 0.064712, 0.975401,
		-0.905208, -0.363774, 0.219696,
		0.369043, -0.929237, -0.018079,
		12.926124, 24.651287, 29.569132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.226421, 24.792391, 29.821159>,  <12.667793, 25.301752, 29.581789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.226421, 24.792391, 29.821159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.617882, 24.732342, 29.877312>,  <12.852758, 24.696312, 29.911003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.617882, 24.732342, 29.877312>,  <12.226421, 24.792391, 29.821159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.617882, 24.732342, 29.877312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136623, 0.035099, 0.990001,
		-0.153549, -0.988044, 0.013840,
		0.978650, -0.150123, 0.140379,
		12.911477, 24.687305, 29.919426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.305637, 24.231560, 30.307844>,  <12.226421, 24.792391, 29.821159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.305637, 24.231560, 30.307844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.662157, 24.408611, 30.347162>,  <12.876069, 24.514843, 30.370754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.662157, 24.408611, 30.347162>,  <12.305637, 24.231560, 30.307844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.662157, 24.408611, 30.347162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015567, -0.246538, 0.969008,
		0.453147, -0.862147, -0.226629,
		0.891300, 0.442631, 0.098297,
		12.929547, 24.541401, 30.376652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.751159, 23.800652, 30.576916>,  <12.305637, 24.231560, 30.307844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.751159, 23.800652, 30.576916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.881003, 24.167446, 30.669662>,  <12.958910, 24.387524, 30.725309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.881003, 24.167446, 30.669662>,  <12.751159, 23.800652, 30.576916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.881003, 24.167446, 30.669662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146314, -0.290872, 0.945508,
		0.934462, -0.272998, -0.228589,
		0.324612, 0.916987, 0.231865,
		12.978387, 24.442543, 30.739222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.214389, 23.731821, 31.063862>,  <12.751159, 23.800652, 30.576916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.214389, 23.731821, 31.063862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.129321, 24.121811, 31.089762>,  <13.078280, 24.355804, 31.105303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.129321, 24.121811, 31.089762>,  <13.214389, 23.731821, 31.063862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.129321, 24.121811, 31.089762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159342, -0.030775, 0.986744,
		0.964044, 0.220168, -0.148810,
		-0.212670, 0.974976, 0.064751,
		13.065520, 24.414305, 31.109186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.660896, 24.009792, 31.573318>,  <13.214389, 23.731821, 31.063862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.660896, 24.009792, 31.573318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.402710, 24.307600, 31.505121>,  <13.247798, 24.486284, 31.464203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.402710, 24.307600, 31.505121>,  <13.660896, 24.009792, 31.573318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.402710, 24.307600, 31.505121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043647, 0.258809, 0.964942,
		0.762542, 0.615395, -0.199548,
		-0.645465, 0.744518, -0.170493,
		13.209070, 24.530956, 31.453974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.022561, 24.642893, 31.645657>,  <13.660896, 24.009792, 31.573318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.022561, 24.642893, 31.645657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.631311, 24.641928, 31.728861>,  <13.396562, 24.641348, 31.778784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.631311, 24.641928, 31.728861>,  <14.022561, 24.642893, 31.645657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.631311, 24.641928, 31.728861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200538, 0.254908, 0.945942,
		-0.055306, 0.966962, -0.248848,
		-0.978124, -0.002413, 0.208011,
		13.337874, 24.641205, 31.791264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.209480, 24.274200, 31.024719>,  <14.022561, 24.642893, 31.645657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.209480, 24.274200, 31.024719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.535456, 24.065407, 31.125443>,  <14.731041, 23.940130, 31.185877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.535456, 24.065407, 31.125443>,  <14.209480, 24.274200, 31.024719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.535456, 24.065407, 31.125443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317892, -0.765905, -0.558869,
		0.484581, 0.375397, -0.790100,
		0.814939, -0.521984, 0.251807,
		14.779938, 23.908812, 31.200985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.589681, 24.097517, 30.386238>,  <14.209480, 24.274200, 31.024719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.589681, 24.097517, 30.386238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.640108, 23.844870, 30.692223>,  <14.670364, 23.693281, 30.875814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.640108, 23.844870, 30.692223>,  <14.589681, 24.097517, 30.386238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.640108, 23.844870, 30.692223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398520, -0.738402, -0.544008,
		0.908454, -0.236270, -0.344802,
		0.126070, -0.631616, 0.764962,
		14.677929, 23.655384, 30.921711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.960818, 23.435148, 30.169804>,  <14.589681, 24.097517, 30.386238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.960818, 23.435148, 30.169804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.704903, 23.378929, 30.472040>,  <14.551353, 23.345198, 30.653381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.704903, 23.378929, 30.472040>,  <14.960818, 23.435148, 30.169804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.704903, 23.378929, 30.472040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325189, -0.841289, -0.431838,
		0.696364, -0.521995, 0.492543,
		-0.639788, -0.140548, 0.755591,
		14.512966, 23.336765, 30.698717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.078790, 22.743341, 30.344721>,  <14.960818, 23.435148, 30.169804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.078790, 22.743341, 30.344721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.716200, 22.845026, 30.479588>,  <14.498646, 22.906036, 30.560507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.716200, 22.845026, 30.479588>,  <15.078790, 22.743341, 30.344721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.716200, 22.845026, 30.479588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359730, -0.883051, -0.301355,
		0.221128, -0.394459, 0.891911,
		-0.906475, 0.254209, 0.337166,
		14.444258, 22.921289, 30.580738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.955271, 22.217230, 30.772480>,  <15.078790, 22.743341, 30.344721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.955271, 22.217230, 30.772480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.608990, 22.386967, 30.666281>,  <14.401220, 22.488810, 30.602560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.608990, 22.386967, 30.666281>,  <14.955271, 22.217230, 30.772480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.608990, 22.386967, 30.666281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389035, -0.904144, -0.176566,
		-0.314975, -0.049565, 0.947805,
		-0.865704, 0.424343, -0.265500,
		14.349278, 22.514269, 30.586630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.422198, 21.988161, 31.242958>,  <14.955271, 22.217230, 30.772480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.422198, 21.988161, 31.242958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.243249, 22.117067, 30.909250>,  <14.135880, 22.194410, 30.709026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.243249, 22.117067, 30.909250>,  <14.422198, 21.988161, 31.242958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.243249, 22.117067, 30.909250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521741, -0.851684, -0.049210,
		-0.726391, 0.413256, 0.549160,
		-0.447374, 0.322264, -0.834267,
		14.109036, 22.213747, 30.658970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.704656, 21.785496, 31.324600>,  <14.422198, 21.988161, 31.242958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.704656, 21.785496, 31.324600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.764389, 21.849859, 30.934359>,  <13.800229, 21.888477, 30.700212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.764389, 21.849859, 30.934359>,  <13.704656, 21.785496, 31.324600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.764389, 21.849859, 30.934359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440004, -0.872781, -0.211302,
		-0.885492, 0.460825, -0.059535,
		0.149334, 0.160911, -0.975606,
		13.809189, 21.898132, 30.641676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.004463, 21.750984, 30.864122>,  <13.704656, 21.785496, 31.324600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.004463, 21.750984, 30.864122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.299355, 21.698008, 30.599108>,  <13.476290, 21.666222, 30.440100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.299355, 21.698008, 30.599108>,  <13.004463, 21.750984, 30.864122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.299355, 21.698008, 30.599108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495918, -0.772053, -0.397492,
		-0.458868, 0.621606, -0.634859,
		0.737228, -0.132442, -0.662535,
		13.520523, 21.658276, 30.400347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.649067, 21.456079, 30.282387>,  <13.004463, 21.750984, 30.864122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.649067, 21.456079, 30.282387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.036945, 21.371511, 30.233408>,  <13.269672, 21.320770, 30.204021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.036945, 21.371511, 30.233408>,  <12.649067, 21.456079, 30.282387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.036945, 21.371511, 30.233408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242784, -0.777784, -0.579748,
		0.027331, 0.591907, -0.805543,
		0.969695, -0.211418, -0.122447,
		13.327854, 21.308086, 30.196674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.679914, 21.409397, 29.616480>,  <12.649067, 21.456079, 30.282387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.679914, 21.409397, 29.616480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.990748, 21.205042, 29.763519>,  <13.177249, 21.082428, 29.851742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.990748, 21.205042, 29.763519>,  <12.679914, 21.409397, 29.616480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.990748, 21.205042, 29.763519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199921, -0.754164, -0.625514,
		0.596797, 0.412589, -0.688189,
		0.777087, -0.510888, 0.367598,
		13.223875, 21.051775, 29.873798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.070728, 21.071301, 29.051903>,  <12.679914, 21.409397, 29.616480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.070728, 21.071301, 29.051903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.153817, 20.887911, 29.397539>,  <13.203671, 20.777878, 29.604921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.153817, 20.887911, 29.397539>,  <13.070728, 21.071301, 29.051903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.153817, 20.887911, 29.397539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261850, -0.877182, -0.402474,
		0.942489, -0.142660, -0.302261,
		0.207721, -0.458475, 0.864091,
		13.216133, 20.750368, 29.656767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.505056, 20.637068, 28.738932>,  <13.070728, 21.071301, 29.051903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.505056, 20.637068, 28.738932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.403332, 20.488913, 29.096287>,  <13.342297, 20.400021, 29.310699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.403332, 20.488913, 29.096287>,  <13.505056, 20.637068, 28.738932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.403332, 20.488913, 29.096287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202336, -0.882938, -0.423651,
		0.945720, -0.288503, 0.149599,
		-0.254311, -0.370386, 0.893387,
		13.327039, 20.377796, 29.364304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.857255, 19.991331, 28.851639>,  <13.505056, 20.637068, 28.738932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.857255, 19.991331, 28.851639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.527453, 19.986721, 29.077934>,  <13.329573, 19.983955, 29.213711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.527453, 19.986721, 29.077934>,  <13.857255, 19.991331, 28.851639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.527453, 19.986721, 29.077934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295529, -0.843834, -0.447891,
		0.482550, -0.536480, 0.692340,
		-0.824504, -0.011523, 0.565738,
		13.280102, 19.983265, 29.247656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.873724, 19.361071, 29.122108>,  <13.857255, 19.991331, 28.851639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.873724, 19.361071, 29.122108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.498461, 19.498978, 29.134720>,  <13.273303, 19.581722, 29.142286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.498461, 19.498978, 29.134720>,  <13.873724, 19.361071, 29.122108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.498461, 19.498978, 29.134720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334607, -0.879574, -0.338211,
		-0.088874, -0.327845, 0.940542,
		-0.938158, 0.344770, 0.031528,
		13.217013, 19.602409, 29.144178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.450689, 18.828934, 29.184797>,  <13.873724, 19.361071, 29.122108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.450689, 18.828934, 29.184797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.163342, 19.079287, 29.063328>,  <12.990934, 19.229498, 28.990446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.163342, 19.079287, 29.063328>,  <13.450689, 18.828934, 29.184797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.163342, 19.079287, 29.063328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464881, -0.756643, -0.459758,
		-0.517526, -0.189105, 0.834510,
		-0.718368, 0.625884, -0.303671,
		12.947832, 19.267052, 28.972227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.768379, 18.576403, 29.384617>,  <13.450689, 18.828934, 29.184797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.768379, 18.576403, 29.384617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.716434, 18.835875, 29.084658>,  <12.685267, 18.991558, 28.904682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.716434, 18.835875, 29.084658>,  <12.768379, 18.576403, 29.384617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.716434, 18.835875, 29.084658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382056, -0.730641, -0.565859,
		-0.914970, 0.213021, 0.342714,
		-0.129861, 0.648680, -0.749900,
		12.677476, 19.030479, 28.859688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.168281, 18.286562, 29.243654>,  <12.768379, 18.576403, 29.384617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.168281, 18.286562, 29.243654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.288365, 18.523239, 28.944384>,  <12.360416, 18.665245, 28.764822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.288365, 18.523239, 28.944384>,  <12.168281, 18.286562, 29.243654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.288365, 18.523239, 28.944384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319266, -0.676788, -0.663345,
		-0.898856, 0.438012, -0.014272,
		0.300213, 0.591695, -0.748177,
		12.378429, 18.700748, 28.719931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.605990, 18.368858, 28.738787>,  <12.168281, 18.286562, 29.243654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.605990, 18.368858, 28.738787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.941767, 18.463604, 28.543140>,  <12.143232, 18.520452, 28.425753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.941767, 18.463604, 28.543140>,  <11.605990, 18.368858, 28.738787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.941767, 18.463604, 28.543140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310692, -0.529259, -0.789529,
		-0.445881, 0.814727, -0.370689,
		0.839441, 0.236865, -0.489115,
		12.193599, 18.534664, 28.396406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.405940, 18.639492, 28.018091>,  <11.605990, 18.368858, 28.738787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.405940, 18.639492, 28.018091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.776108, 18.489162, 28.037502>,  <11.998209, 18.398966, 28.049149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.776108, 18.489162, 28.037502>,  <11.405940, 18.639492, 28.018091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.776108, 18.489162, 28.037502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151786, -0.484969, -0.861259,
		0.347215, 0.789660, -0.505845,
		0.925420, -0.375822, 0.048529,
		12.053734, 18.376415, 28.052061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.745383, 18.837994, 27.481838>,  <11.405940, 18.639492, 28.018091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.745383, 18.837994, 27.481838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.925310, 18.500063, 27.597723>,  <12.033266, 18.297304, 27.667253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.925310, 18.500063, 27.597723>,  <11.745383, 18.837994, 27.481838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.925310, 18.500063, 27.597723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089342, -0.365318, -0.926585,
		0.888641, 0.390910, -0.239805,
		0.449817, -0.844826, 0.289712,
		12.060255, 18.246614, 27.684637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.326458, 18.776976, 27.007944>,  <11.745383, 18.837994, 27.481838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.326458, 18.776976, 27.007944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.307900, 18.401279, 27.143986>,  <12.296765, 18.175861, 27.225611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.307900, 18.401279, 27.143986>,  <12.326458, 18.776976, 27.007944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.307900, 18.401279, 27.143986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180017, -0.327035, -0.927708,
		0.982569, -0.104265, -0.153907,
		-0.046394, -0.939243, 0.340104,
		12.293983, 18.119507, 27.246017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.793147, 18.356323, 26.573914>,  <12.326458, 18.776976, 27.007944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.793147, 18.356323, 26.573914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.535659, 18.094971, 26.733271>,  <12.381166, 17.938160, 26.828884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.535659, 18.094971, 26.733271>,  <12.793147, 18.356323, 26.573914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.535659, 18.094971, 26.733271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221838, -0.338921, -0.914287,
		0.732402, -0.676924, 0.073225,
		-0.643720, -0.653381, 0.398393,
		12.342543, 17.898956, 26.852789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.842915, 17.602373, 26.239967>,  <12.793147, 18.356323, 26.573914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.842915, 17.602373, 26.239967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.486019, 17.602991, 26.420591>,  <12.271881, 17.603361, 26.528965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.486019, 17.602991, 26.420591>,  <12.842915, 17.602373, 26.239967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.486019, 17.602991, 26.420591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418304, -0.379491, -0.825233,
		0.170089, -0.925194, 0.339243,
		-0.892240, 0.001544, 0.451560,
		12.218348, 17.603455, 26.556059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.479794, 17.021910, 26.001873>,  <12.842915, 17.602373, 26.239967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.479794, 17.021910, 26.001873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.174907, 17.234108, 26.150251>,  <11.991975, 17.361427, 26.239279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.174907, 17.234108, 26.150251>,  <12.479794, 17.021910, 26.001873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.174907, 17.234108, 26.150251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556969, -0.245448, -0.793436,
		-0.329869, -0.811374, 0.482555,
		-0.762216, 0.530498, 0.370944,
		11.946241, 17.393257, 26.261536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.889265, 16.588554, 25.877064>,  <12.479794, 17.021910, 26.001873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.889265, 16.588554, 25.877064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.735229, 16.955727, 25.915243>,  <11.642806, 17.176029, 25.938150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.735229, 16.955727, 25.915243>,  <11.889265, 16.588554, 25.877064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.735229, 16.955727, 25.915243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639593, -0.190897, -0.744634,
		-0.665301, -0.347799, 0.660614,
		-0.385092, 0.917929, 0.095446,
		11.619701, 17.231106, 25.943876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.252359, 16.424747, 25.860205>,  <11.889265, 16.588554, 25.877064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.252359, 16.424747, 25.860205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.267133, 16.813200, 25.765940>,  <11.275996, 17.046272, 25.709381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.267133, 16.813200, 25.765940>,  <11.252359, 16.424747, 25.860205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.267133, 16.813200, 25.765940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622321, -0.162162, -0.765780,
		-0.781890, 0.174940, 0.598368,
		0.036933, 0.971133, -0.235662,
		11.278213, 17.104540, 25.695242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.608255, 16.637957, 25.742439>,  <11.252359, 16.424747, 25.860205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.608255, 16.637957, 25.742439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.841958, 16.901680, 25.553143>,  <10.982180, 17.059914, 25.439566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.841958, 16.901680, 25.553143>,  <10.608255, 16.637957, 25.742439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.841958, 16.901680, 25.553143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554904, -0.100983, -0.825763,
		-0.592222, 0.745060, 0.306853,
		0.584256, 0.659309, -0.473241,
		11.017235, 17.099472, 25.411171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.123322, 17.055288, 25.319328>,  <10.608255, 16.637957, 25.742439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.123322, 17.055288, 25.319328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.487845, 17.107048, 25.162983>,  <10.706559, 17.138103, 25.069176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.487845, 17.107048, 25.162983>,  <10.123322, 17.055288, 25.319328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.487845, 17.107048, 25.162983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409058, 0.176679, -0.895241,
		-0.046788, 0.975725, 0.213942,
		0.911308, 0.129401, -0.390862,
		10.761238, 17.145868, 25.045725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.142677, 17.723688, 25.071768>,  <10.123322, 17.055288, 25.319328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.142677, 17.723688, 25.071768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.442226, 17.545502, 24.875504>,  <10.621956, 17.438589, 24.757746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.442226, 17.545502, 24.875504>,  <10.142677, 17.723688, 25.071768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.442226, 17.545502, 24.875504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473613, 0.158132, -0.866421,
		0.463552, 0.881222, -0.092558,
		0.748873, -0.445468, -0.490660,
		10.666888, 17.411861, 24.728306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.311196, 18.159470, 24.502600>,  <10.142677, 17.723688, 25.071768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.311196, 18.159470, 24.502600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.451138, 17.794323, 24.418436>,  <10.535103, 17.575235, 24.367937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.451138, 17.794323, 24.418436>,  <10.311196, 18.159470, 24.502600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.451138, 17.794323, 24.418436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384140, 0.065060, -0.920979,
		0.854423, 0.403036, -0.327908,
		0.349854, -0.912869, -0.210411,
		10.556094, 17.520462, 24.355312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.715307, 18.245760, 23.836245>,  <10.311196, 18.159470, 24.502600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.715307, 18.245760, 23.836245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.630836, 17.856291, 23.870575>,  <10.580154, 17.622610, 23.891172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.630836, 17.856291, 23.870575>,  <10.715307, 18.245760, 23.836245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.630836, 17.856291, 23.870575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274830, -0.025117, -0.961165,
		0.938015, -0.226563, -0.262291,
		-0.211177, -0.973673, 0.085826,
		10.567484, 17.564190, 23.896322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.953030, 17.879826, 23.236931>,  <10.715307, 18.245760, 23.836245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.953030, 17.879826, 23.236931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.682892, 17.619841, 23.376335>,  <10.520809, 17.463850, 23.459978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.682892, 17.619841, 23.376335>,  <10.953030, 17.879826, 23.236931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.682892, 17.619841, 23.376335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285679, -0.205110, -0.936118,
		0.679924, -0.731765, -0.047161,
		-0.675345, -0.649962, 0.348508,
		10.480289, 17.424852, 23.480888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.015025, 17.265642, 22.842844>,  <10.953030, 17.879826, 23.236931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.015025, 17.265642, 22.842844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.652739, 17.234966, 23.009600>,  <10.435367, 17.216560, 23.109653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.652739, 17.234966, 23.009600>,  <11.015025, 17.265642, 22.842844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.652739, 17.234966, 23.009600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395412, -0.201526, -0.896123,
		0.152739, -0.976476, 0.152200,
		-0.905715, -0.076691, 0.416891,
		10.381024, 17.211960, 23.134666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.684280, 16.610214, 22.755917>,  <11.015025, 17.265642, 22.842844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.684280, 16.610214, 22.755917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.371485, 16.857033, 22.791122>,  <10.183807, 17.005123, 22.812246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.371485, 16.857033, 22.791122>,  <10.684280, 16.610214, 22.755917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.371485, 16.857033, 22.791122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309805, -0.262263, -0.913914,
		-0.540845, -0.741938, 0.396251,
		-0.781990, 0.617046, 0.088013,
		10.136888, 17.042147, 22.817526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.131866, 16.235241, 22.355099>,  <10.684280, 16.610214, 22.755917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.131866, 16.235241, 22.355099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.990434, 16.607304, 22.394676>,  <9.905574, 16.830542, 22.418423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.990434, 16.607304, 22.394676>,  <10.131866, 16.235241, 22.355099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.990434, 16.607304, 22.394676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461617, -0.081515, -0.883326,
		-0.813566, -0.358002, 0.458198,
		-0.353583, 0.930156, 0.098941,
		9.884359, 16.886351, 22.424358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.369041, 16.201071, 22.349216>,  <10.131866, 16.235241, 22.355099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.369041, 16.201071, 22.349216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.479415, 16.570427, 22.242476>,  <9.545639, 16.792040, 22.178431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.479415, 16.570427, 22.242476>,  <9.369041, 16.201071, 22.349216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.479415, 16.570427, 22.242476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619304, -0.041522, -0.784053,
		-0.735067, 0.381610, 0.560402,
		0.275933, 0.923390, -0.266854,
		9.562195, 16.847445, 22.162420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.800526, 16.394594, 22.066641>,  <9.369041, 16.201071, 22.349216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.800526, 16.394594, 22.066641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.035750, 16.689896, 21.934483>,  <9.176886, 16.867077, 21.855186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.035750, 16.689896, 21.934483>,  <8.800526, 16.394594, 22.066641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.035750, 16.689896, 21.934483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493922, 0.004305, -0.869496,
		-0.640487, 0.674508, 0.367171,
		0.588063, 0.738255, -0.330397,
		9.212169, 16.911371, 21.835363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.359627, 17.115532, 21.867516>,  <8.800526, 16.394594, 22.066641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.359627, 17.115532, 21.867516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.705288, 17.065277, 21.672600>,  <8.912685, 17.035124, 21.555651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.705288, 17.065277, 21.672600>,  <8.359627, 17.115532, 21.867516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.705288, 17.065277, 21.672600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496729, -0.057843, -0.865976,
		0.080612, 0.990388, -0.112393,
		0.864154, -0.125637, -0.487292,
		8.964534, 17.027586, 21.526413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.155062, 17.132256, 21.236849>,  <8.359627, 17.115532, 21.867516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.155062, 17.132256, 21.236849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.533259, 17.070259, 21.122293>,  <8.760178, 17.033062, 21.053560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.533259, 17.070259, 21.122293>,  <8.155062, 17.132256, 21.236849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.533259, 17.070259, 21.122293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276604, 0.081863, -0.957491,
		0.171847, 0.984518, 0.034530,
		0.945494, -0.154991, -0.286389,
		8.816908, 17.023762, 21.036377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.327198, 17.604797, 20.681902>,  <8.155062, 17.132256, 21.236849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.327198, 17.604797, 20.681902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.623521, 17.341467, 20.628511>,  <8.801314, 17.183470, 20.596478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.623521, 17.341467, 20.628511>,  <8.327198, 17.604797, 20.681902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.623521, 17.341467, 20.628511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217741, -0.047370, -0.974856,
		0.635449, 0.751243, -0.178436,
		0.740806, -0.658324, -0.133475,
		8.845762, 17.143970, 20.588469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.763058, 17.830072, 20.026251>,  <8.327198, 17.604797, 20.681902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.763058, 17.830072, 20.026251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.819768, 17.440369, 20.096357>,  <8.853794, 17.206547, 20.138420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.819768, 17.440369, 20.096357>,  <8.763058, 17.830072, 20.026251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.819768, 17.440369, 20.096357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255337, -0.207054, -0.944421,
		0.956401, 0.089145, -0.278120,
		0.141776, -0.974260, 0.175265,
		8.862301, 17.148090, 20.148937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.261346, 17.578167, 19.518847>,  <8.763058, 17.830072, 20.026251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.261346, 17.578167, 19.518847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.097606, 17.233227, 19.638035>,  <8.999361, 17.026262, 19.709547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.097606, 17.233227, 19.638035>,  <9.261346, 17.578167, 19.518847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.097606, 17.233227, 19.638035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088713, -0.287419, -0.953688,
		0.908054, -0.416827, 0.041153,
		-0.409351, -0.862349, 0.297970,
		8.974800, 16.974522, 19.727427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.518880, 17.019800, 19.004835>,  <9.261346, 17.578167, 19.518847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.518880, 17.019800, 19.004835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.174869, 16.903917, 19.172844>,  <8.968462, 16.834387, 19.273649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.174869, 16.903917, 19.172844>,  <9.518880, 17.019800, 19.004835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.174869, 16.903917, 19.172844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289378, -0.401055, -0.869146,
		0.420252, -0.869036, 0.261083,
		-0.860028, -0.289709, 0.420024,
		8.916861, 16.817005, 19.298851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.383854, 16.435978, 18.725430>,  <9.518880, 17.019800, 19.004835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.383854, 16.435978, 18.725430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.024298, 16.540955, 18.865782>,  <8.808563, 16.603941, 18.949993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.024298, 16.540955, 18.865782>,  <9.383854, 16.435978, 18.725430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.024298, 16.540955, 18.865782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426156, -0.337384, -0.839383,
		-0.101907, -0.904045, 0.415112,
		-0.898892, 0.262441, 0.350882,
		8.754630, 16.619688, 18.971046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.939178, 16.528378, 18.155741>,  <9.383854, 16.435978, 18.725430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.939178, 16.528378, 18.155741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.304008, 16.548393, 17.992956>,  <10.522906, 16.560402, 17.895287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.304008, 16.548393, 17.992956>,  <9.939178, 16.528378, 18.155741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.304008, 16.548393, 17.992956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381065, 0.262943, 0.886369,
		0.151360, -0.963513, 0.220755,
		0.912074, 0.050038, -0.406960,
		10.577631, 16.563406, 17.870869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.348330, 16.114567, 18.581732>,  <9.939178, 16.528378, 18.155741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.348330, 16.114567, 18.581732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.574567, 16.374439, 18.378550>,  <10.710309, 16.530363, 18.256641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.574567, 16.374439, 18.378550>,  <10.348330, 16.114567, 18.581732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.574567, 16.374439, 18.378550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457852, 0.264918, 0.848640,
		0.685912, -0.712554, -0.147621,
		0.565594, 0.649681, -0.507955,
		10.744246, 16.569344, 18.226164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.930485, 16.128250, 18.876003>,  <10.348330, 16.114567, 18.581732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.930485, 16.128250, 18.876003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.987207, 16.472046, 18.679567>,  <11.021241, 16.678324, 18.561707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.987207, 16.472046, 18.679567>,  <10.930485, 16.128250, 18.876003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.987207, 16.472046, 18.679567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603604, 0.318125, 0.731066,
		0.784572, -0.400093, -0.473679,
		0.141805, 0.859489, -0.491090,
		11.029749, 16.729893, 18.532240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.690842, 16.188692, 18.745121>,  <10.930485, 16.128250, 18.876003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.690842, 16.188692, 18.745121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.483726, 16.530087, 18.768623>,  <11.359456, 16.734924, 18.782724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.483726, 16.530087, 18.768623>,  <11.690842, 16.188692, 18.745121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.483726, 16.530087, 18.768623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636587, 0.338498, 0.692947,
		0.571533, 0.396204, -0.718590,
		-0.517790, 0.853488, 0.058756,
		11.328388, 16.786133, 18.786249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.083998, 16.603203, 19.156807>,  <11.690842, 16.188692, 18.745121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.083998, 16.603203, 19.156807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.757694, 16.833914, 19.139521>,  <11.561913, 16.972340, 19.129148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.757694, 16.833914, 19.139521>,  <12.083998, 16.603203, 19.156807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.757694, 16.833914, 19.139521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344914, 0.545079, 0.764149,
		0.464299, 0.608455, -0.643591,
		-0.815758, 0.576777, -0.043216,
		11.512967, 17.006947, 19.126556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.361610, 17.404854, 19.220619>,  <12.083998, 16.603203, 19.156807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.361610, 17.404854, 19.220619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.984651, 17.341824, 19.338638>,  <11.758474, 17.304007, 19.409451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.984651, 17.341824, 19.338638>,  <12.361610, 17.404854, 19.220619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.984651, 17.341824, 19.338638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209888, 0.408245, 0.888416,
		-0.260443, 0.899170, -0.351657,
		-0.942399, -0.157574, 0.295050,
		11.701931, 17.294552, 19.427153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.040355, 18.018711, 19.342737>,  <12.361610, 17.404854, 19.220619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.040355, 18.018711, 19.342737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.865232, 17.735094, 19.563854>,  <11.760158, 17.564924, 19.696526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.865232, 17.735094, 19.563854>,  <12.040355, 18.018711, 19.342737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.865232, 17.735094, 19.563854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226918, 0.507802, 0.831051,
		-0.869962, 0.489279, -0.061424,
		-0.437807, -0.709044, 0.552794,
		11.733890, 17.522381, 19.729692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.949747, 18.414114, 19.941530>,  <12.040355, 18.018711, 19.342737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.949747, 18.414114, 19.941530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.864574, 18.046482, 20.074167>,  <11.813471, 17.825903, 20.153749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.864574, 18.046482, 20.074167>,  <11.949747, 18.414114, 19.941530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.864574, 18.046482, 20.074167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239274, 0.279993, 0.929705,
		-0.947316, 0.277306, 0.160292,
		-0.212932, -0.919079, 0.331594,
		11.800694, 17.770758, 20.173645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.473291, 18.455889, 20.581030>,  <11.949747, 18.414114, 19.941530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.473291, 18.455889, 20.581030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.627889, 18.087360, 20.597946>,  <11.720647, 17.866243, 20.608097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.627889, 18.087360, 20.597946>,  <11.473291, 18.455889, 20.581030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.627889, 18.087360, 20.597946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275629, 0.159143, 0.947999,
		-0.880143, -0.354738, 0.315450,
		0.386492, -0.921322, 0.042292,
		11.743836, 17.810965, 20.610634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.293276, 18.326149, 21.199951>,  <11.473291, 18.455889, 20.581030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.293276, 18.326149, 21.199951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.548169, 18.027721, 21.122684>,  <11.701105, 17.848665, 21.076324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.548169, 18.027721, 21.122684>,  <11.293276, 18.326149, 21.199951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.548169, 18.027721, 21.122684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302367, 0.011482, 0.953122,
		-0.708878, -0.665768, 0.232904,
		0.637233, -0.746070, -0.193167,
		11.739339, 17.803900, 21.064734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.154328, 17.795937, 21.612383>,  <11.293276, 18.326149, 21.199951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.154328, 17.795937, 21.612383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.538123, 17.750345, 21.509314>,  <11.768400, 17.722990, 21.447472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.538123, 17.750345, 21.509314>,  <11.154328, 17.795937, 21.612383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.538123, 17.750345, 21.509314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267657, 0.083068, 0.959927,
		-0.088005, -0.990004, 0.110210,
		0.959487, -0.113977, -0.257671,
		11.825969, 17.716152, 21.432013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.409204, 17.491514, 22.139410>,  <11.154328, 17.795937, 21.612383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.409204, 17.491514, 22.139410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.764456, 17.583168, 21.980051>,  <11.977608, 17.638161, 21.884436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.764456, 17.583168, 21.980051>,  <11.409204, 17.491514, 22.139410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.764456, 17.583168, 21.980051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423702, -0.072393, 0.902904,
		0.178045, -0.970699, -0.161379,
		0.888131, 0.229134, -0.398398,
		12.030895, 17.651909, 21.860531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.924577, 16.912752, 22.357908>,  <11.409204, 17.491514, 22.139410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.924577, 16.912752, 22.357908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.143908, 17.232134, 22.258461>,  <12.275506, 17.423763, 22.198793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.143908, 17.232134, 22.258461>,  <11.924577, 16.912752, 22.357908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.143908, 17.232134, 22.258461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485545, -0.061920, 0.872016,
		0.680870, -0.598864, -0.421638,
		0.548327, 0.798453, -0.248616,
		12.308406, 17.471670, 22.183876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.641263, 16.740826, 22.552906>,  <11.924577, 16.912752, 22.357908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.641263, 16.740826, 22.552906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.586570, 17.136538, 22.532400>,  <12.553754, 17.373964, 22.520096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.586570, 17.136538, 22.532400>,  <12.641263, 16.740826, 22.552906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.586570, 17.136538, 22.532400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589305, 0.122829, 0.798520,
		0.796257, 0.078973, -0.599782,
		-0.136732, 0.989281, -0.051264,
		12.545550, 17.433321, 22.517021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.288010, 16.968443, 22.923763>,  <12.641263, 16.740826, 22.552906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.288010, 16.968443, 22.923763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.081259, 17.310104, 22.900915>,  <12.957208, 17.515100, 22.887207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.081259, 17.310104, 22.900915>,  <13.288010, 16.968443, 22.923763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.081259, 17.310104, 22.900915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399422, 0.299645, 0.866415,
		0.757165, 0.425016, -0.496046,
		-0.516878, 0.854151, -0.057120,
		12.926195, 17.566349, 22.883780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.828066, 17.410654, 22.931143>,  <13.288010, 16.968443, 22.923763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.828066, 17.410654, 22.931143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.502332, 17.612341, 23.046118>,  <13.306891, 17.733353, 23.115103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.502332, 17.612341, 23.046118>,  <13.828066, 17.410654, 22.931143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.502332, 17.612341, 23.046118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484913, 0.318931, 0.814335,
		0.318931, 0.802525, -0.504219,
		-0.814335, 0.504219, 0.287438,
		13.258031, 17.763607, 23.132349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.087335, 18.071821, 23.179480>,  <13.828066, 17.410654, 22.931143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.087335, 18.071821, 23.179480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.731668, 17.986593, 23.341459>,  <13.518268, 17.935457, 23.438646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.731668, 17.986593, 23.341459>,  <14.087335, 18.071821, 23.179480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.731668, 17.986593, 23.341459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357729, 0.228144, 0.905528,
		-0.285326, 0.950027, -0.126637,
		-0.889168, -0.213069, 0.404948,
		13.464917, 17.922672, 23.462944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.024159, 18.590158, 23.585381>,  <14.087335, 18.071821, 23.179480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.024159, 18.590158, 23.585381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.736970, 18.351460, 23.728718>,  <13.564656, 18.208241, 23.814720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.736970, 18.351460, 23.728718>,  <14.024159, 18.590158, 23.585381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.736970, 18.351460, 23.728718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218792, 0.295242, 0.930033,
		-0.660791, 0.746141, -0.081412,
		-0.717973, -0.596745, 0.358343,
		13.521578, 18.172436, 23.836222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.580648, 18.992149, 24.089825>,  <14.024159, 18.590158, 23.585381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.580648, 18.992149, 24.089825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.547110, 18.606697, 24.191326>,  <13.526986, 18.375425, 24.252226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.547110, 18.606697, 24.191326>,  <13.580648, 18.992149, 24.089825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.547110, 18.606697, 24.191326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224481, 0.229837, 0.946987,
		-0.970865, 0.136364, 0.197045,
		-0.083847, -0.963629, 0.253752,
		13.521955, 18.317608, 24.267452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.039295, 18.984188, 24.580097>,  <13.580648, 18.992149, 24.089825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.039295, 18.984188, 24.580097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.269736, 18.659340, 24.617117>,  <13.408001, 18.464432, 24.639328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.269736, 18.659340, 24.617117>,  <13.039295, 18.984188, 24.580097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.269736, 18.659340, 24.617117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174088, 0.232538, 0.956880,
		-0.798623, -0.535149, 0.275347,
		0.576102, -0.812121, 0.092547,
		13.442567, 18.415703, 24.644880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.892134, 18.748253, 25.227076>,  <13.039295, 18.984188, 24.580097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.892134, 18.748253, 25.227076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.251808, 18.592695, 25.146851>,  <13.467612, 18.499361, 25.098715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.251808, 18.592695, 25.146851>,  <12.892134, 18.748253, 25.227076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.251808, 18.592695, 25.146851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297182, 0.206338, 0.932259,
		-0.321168, -0.897878, 0.301109,
		0.899185, -0.388896, -0.200564,
		13.521564, 18.476027, 25.086681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.116621, 18.540756, 25.888910>,  <12.892134, 18.748253, 25.227076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.116621, 18.540756, 25.888910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.461863, 18.510538, 25.689173>,  <13.669007, 18.492407, 25.569330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.461863, 18.510538, 25.689173>,  <13.116621, 18.540756, 25.888910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.461863, 18.510538, 25.689173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503282, 0.210806, 0.838015,
		0.041955, -0.974604, 0.219969,
		0.863103, -0.075547, -0.499345,
		13.720794, 18.487875, 25.539370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.619761, 18.130955, 26.240427>,  <13.116621, 18.540756, 25.888910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.619761, 18.130955, 26.240427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.834429, 18.375860, 26.008179>,  <13.963230, 18.522802, 25.868830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.834429, 18.375860, 26.008179>,  <13.619761, 18.130955, 26.240427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.834429, 18.375860, 26.008179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561931, 0.253987, 0.787226,
		0.629458, -0.748749, -0.207742,
		0.536671, 0.612262, -0.580619,
		13.995430, 18.559538, 25.833992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.163027, 18.194344, 26.593882>,  <13.619761, 18.130955, 26.240427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.163027, 18.194344, 26.593882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.242324, 18.474737, 26.319855>,  <14.289902, 18.642973, 26.155437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.242324, 18.474737, 26.319855>,  <14.163027, 18.194344, 26.593882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.242324, 18.474737, 26.319855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603359, 0.463544, 0.648911,
		0.772437, -0.541983, -0.331052,
		0.198242, 0.700986, -0.685069,
		14.301796, 18.685034, 26.114334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.853800, 18.210848, 26.694223>,  <14.163027, 18.194344, 26.593882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.853800, 18.210848, 26.694223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.714396, 18.542044, 26.518509>,  <14.630754, 18.740761, 26.413080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.714396, 18.542044, 26.518509>,  <14.853800, 18.210848, 26.694223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.714396, 18.542044, 26.518509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354709, 0.550318, 0.755864,
		0.867596, 0.107607, -0.485487,
		-0.348509, 0.827992, -0.439285,
		14.609844, 18.790442, 26.386723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.466760, 18.620968, 26.676777>,  <14.853800, 18.210848, 26.694223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.466760, 18.620968, 26.676777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.124881, 18.828127, 26.662516>,  <14.919753, 18.952423, 26.653959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.124881, 18.828127, 26.662516>,  <15.466760, 18.620968, 26.676777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.124881, 18.828127, 26.662516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259438, 0.485626, 0.834780,
		0.449647, 0.704235, -0.549427,
		-0.854698, 0.517899, -0.035655,
		14.868471, 18.983498, 26.651819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.570235, 19.447172, 26.695639>,  <15.466760, 18.620968, 26.676777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.570235, 19.447172, 26.695639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.247642, 19.300505, 26.881170>,  <15.054086, 19.212503, 26.992489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.247642, 19.300505, 26.881170>,  <15.570235, 19.447172, 26.695639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.247642, 19.300505, 26.881170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242436, 0.510425, 0.825040,
		-0.539268, 0.777830, -0.322755,
		-0.806483, -0.366670, 0.463830,
		15.005696, 19.190504, 27.020319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.263656, 19.983576, 26.920778>,  <15.570235, 19.447172, 26.695639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.263656, 19.983576, 26.920778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.144478, 19.680367, 27.152857>,  <15.072971, 19.498440, 27.292105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.144478, 19.680367, 27.152857>,  <15.263656, 19.983576, 26.920778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.144478, 19.680367, 27.152857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396863, 0.454421, 0.797497,
		-0.868176, 0.467868, 0.165440,
		-0.297944, -0.758025, 0.580197,
		15.055095, 19.452959, 27.326916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.802776, 20.303782, 27.371836>,  <15.263656, 19.983576, 26.920778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.802776, 20.303782, 27.371836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.914233, 19.968227, 27.558867>,  <14.981107, 19.766895, 27.671085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.914233, 19.968227, 27.558867>,  <14.802776, 20.303782, 27.371836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.914233, 19.968227, 27.558867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448941, 0.544165, 0.708757,
		-0.849006, 0.012426, 0.528237,
		0.278641, -0.838886, 0.467578,
		14.997826, 19.716562, 27.699141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.550205, 20.338936, 28.039572>,  <14.802776, 20.303782, 27.371836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.550205, 20.338936, 28.039572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.849127, 20.074516, 28.066551>,  <15.028480, 19.915865, 28.082739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.849127, 20.074516, 28.066551>,  <14.550205, 20.338936, 28.039572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.849127, 20.074516, 28.066551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231655, 0.354318, 0.905977,
		-0.622795, -0.661416, 0.417918,
		0.747304, -0.661051, 0.067447,
		15.073318, 19.876202, 28.086784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.569943, 20.029615, 28.708338>,  <14.550205, 20.338936, 28.039572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.569943, 20.029615, 28.708338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945366, 20.014954, 28.571068>,  <15.170619, 20.006157, 28.488705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945366, 20.014954, 28.571068>,  <14.569943, 20.029615, 28.708338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.945366, 20.014954, 28.571068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320083, 0.464330, 0.825799,
		0.129078, -0.884903, 0.447532,
		0.938555, -0.036655, -0.343177,
		15.226933, 20.003958, 28.468115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.093193, 19.792883, 29.230497>,  <14.569943, 20.029615, 28.708338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.093193, 19.792883, 29.230497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.263438, 20.022568, 28.950745>,  <15.365585, 20.160379, 28.782894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.263438, 20.022568, 28.950745>,  <15.093193, 19.792883, 29.230497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.263438, 20.022568, 28.950745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442996, 0.541714, 0.714352,
		0.789055, -0.613860, -0.023814,
		0.425613, 0.574213, -0.699381,
		15.391122, 20.194832, 28.740931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.840312, 19.916580, 29.440454>,  <15.093193, 19.792883, 29.230497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.840312, 19.916580, 29.440454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.712531, 20.209188, 29.199514>,  <15.635862, 20.384754, 29.054951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.712531, 20.209188, 29.199514>,  <15.840312, 19.916580, 29.440454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.712531, 20.209188, 29.199514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570672, 0.655975, 0.493994,
		0.756495, -0.185938, -0.627011,
		-0.319451, 0.731521, -0.602352,
		15.616695, 20.428644, 29.018808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.125521, 20.417646, 29.017307>,  <15.840312, 19.916580, 29.440454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.125521, 20.417646, 29.017307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.859434, 20.684021, 29.152370>,  <15.699782, 20.843845, 29.233408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.859434, 20.684021, 29.152370>,  <16.125521, 20.417646, 29.017307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.859434, 20.684021, 29.152370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745122, 0.621015, 0.243173,
		-0.047753, 0.413360, -0.909314,
		-0.665216, 0.665938, 0.337660,
		15.659869, 20.883802, 29.253668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293310, 21.070208, 28.687632>,  <16.125521, 20.417646, 29.017307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.293310, 21.070208, 28.687632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.073334, 21.113323, 29.018919>,  <15.941348, 21.139193, 29.217691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.073334, 21.113323, 29.018919>,  <16.293310, 21.070208, 28.687632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.073334, 21.113323, 29.018919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644803, 0.685063, 0.338995,
		-0.530843, 0.720465, -0.446247,
		-0.549941, 0.107788, 0.828219,
		15.908352, 21.145660, 29.267385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.246454, 21.813736, 28.597691>,  <16.293310, 21.070208, 28.687632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.246454, 21.813736, 28.597691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.212372, 21.649826, 28.960970>,  <16.191923, 21.551481, 29.178938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.212372, 21.649826, 28.960970>,  <16.246454, 21.813736, 28.597691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.212372, 21.649826, 28.960970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392452, 0.824024, 0.408614,
		-0.915817, 0.391241, 0.090604,
		-0.085206, -0.409774, 0.908199,
		16.186810, 21.526894, 29.233429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.939121, 22.268105, 29.035852>,  <16.246454, 21.813736, 28.597691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.939121, 22.268105, 29.035852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.146160, 22.017099, 29.268513>,  <16.270384, 21.866495, 29.408108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.146160, 22.017099, 29.268513>,  <15.939121, 22.268105, 29.035852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.146160, 22.017099, 29.268513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479855, 0.775720, 0.409875,
		-0.708400, 0.066957, 0.702628,
		0.517598, -0.627515, 0.581650,
		16.301439, 21.828844, 29.443008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.419685, 22.756985, 29.073532>,  <15.939121, 22.268105, 29.035852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.419685, 22.756985, 29.073532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.044428, 22.856274, 28.976974>,  <15.819273, 22.915846, 28.919039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.044428, 22.856274, 28.976974>,  <16.419685, 22.756985, 29.073532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.044428, 22.856274, 28.976974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168702, 0.281140, 0.944722,
		0.302365, 0.927010, -0.221875,
		-0.938145, 0.248220, -0.241395,
		15.762984, 22.930740, 28.904556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.682756, 23.058540, 29.713913>,  <16.419685, 22.756985, 29.073532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.682756, 23.058540, 29.713913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.774324, 23.355717, 29.462315>,  <16.829266, 23.534023, 29.311356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.774324, 23.355717, 29.462315>,  <16.682756, 23.058540, 29.713913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.774324, 23.355717, 29.462315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636091, -0.374957, -0.674385,
		-0.736874, 0.554479, 0.386743,
		0.228921, 0.742940, -0.628995,
		16.843000, 23.578598, 29.273617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.969090, 23.236700, 29.396408>,  <16.682756, 23.058540, 29.713913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.969090, 23.236700, 29.396408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.252850, 23.363504, 29.144613>,  <16.423105, 23.439587, 28.993536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.252850, 23.363504, 29.144613>,  <15.969090, 23.236700, 29.396408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.252850, 23.363504, 29.144613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564463, -0.279297, -0.776772,
		-0.422061, 0.906364, -0.019191,
		0.709399, 0.317012, -0.629489,
		16.465670, 23.458609, 28.955767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.661437, 23.621809, 28.749397>,  <15.969090, 23.236700, 29.396408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.661437, 23.621809, 28.749397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.013353, 23.565626, 28.567741>,  <16.224503, 23.531916, 28.458748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.013353, 23.565626, 28.567741>,  <15.661437, 23.621809, 28.749397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.013353, 23.565626, 28.567741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474664, -0.311376, -0.823249,
		-0.025775, 0.939849, -0.340616,
		0.879790, -0.140459, -0.454138,
		16.277290, 23.523489, 28.431499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.503917, 23.858271, 28.162388>,  <15.661437, 23.621809, 28.749397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.503917, 23.858271, 28.162388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.830315, 23.634790, 28.103046>,  <16.026154, 23.500702, 28.067442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.830315, 23.634790, 28.103046>,  <15.503917, 23.858271, 28.162388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.830315, 23.634790, 28.103046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380577, -0.326058, -0.865359,
		0.435103, 0.762588, -0.478690,
		0.815994, -0.558699, -0.148355,
		16.075113, 23.467180, 28.058540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.653077, 23.977442, 27.498827>,  <15.503917, 23.858271, 28.162388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.653077, 23.977442, 27.498827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.875773, 23.652395, 27.567759>,  <16.009392, 23.457367, 27.609118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.875773, 23.652395, 27.567759>,  <15.653077, 23.977442, 27.498827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.875773, 23.652395, 27.567759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243841, -0.358186, -0.901246,
		0.794091, 0.459740, -0.397566,
		0.556742, -0.812614, 0.172329,
		16.042795, 23.408611, 27.619457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.223017, 23.810829, 26.982904>,  <15.653077, 23.977442, 27.498827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.223017, 23.810829, 26.982904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.085617, 23.477089, 27.155355>,  <16.003178, 23.276846, 27.258827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.085617, 23.477089, 27.155355>,  <16.223017, 23.810829, 26.982904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.085617, 23.477089, 27.155355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133528, -0.411009, -0.901799,
		0.929613, -0.367334, 0.029771,
		-0.343497, -0.834349, 0.431128,
		15.982568, 23.226784, 27.284695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.382256, 23.378956, 26.430210>,  <16.223017, 23.810829, 26.982904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.382256, 23.378956, 26.430210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.129873, 23.177040, 26.665865>,  <15.978444, 23.055891, 26.807257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.129873, 23.177040, 26.665865>,  <16.382256, 23.378956, 26.430210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.129873, 23.177040, 26.665865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320688, -0.521766, -0.790519,
		0.706437, -0.687711, 0.167332,
		-0.630957, -0.504790, 0.589135,
		15.940586, 23.025602, 26.842606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.408812, 22.615772, 26.270407>,  <16.382256, 23.378956, 26.430210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.408812, 22.615772, 26.270407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.054335, 22.666498, 26.448654>,  <15.841648, 22.696934, 26.555603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.054335, 22.666498, 26.448654>,  <16.408812, 22.615772, 26.270407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.054335, 22.666498, 26.448654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418208, -0.632899, -0.651568,
		0.199404, -0.763778, 0.613907,
		-0.886194, 0.126815, 0.445621,
		15.788476, 22.704542, 26.582340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.099281, 21.943039, 26.148916>,  <16.408812, 22.615772, 26.270407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.099281, 21.943039, 26.148916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.814503, 22.206295, 26.246883>,  <15.643636, 22.364248, 26.305664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.814503, 22.206295, 26.246883>,  <16.099281, 21.943039, 26.148916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.814503, 22.206295, 26.246883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581973, -0.357789, -0.730270,
		-0.392991, -0.662448, 0.637746,
		-0.711945, 0.658141, 0.244919,
		15.600919, 22.403736, 26.320360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.381351, 21.623508, 25.926010>,  <16.099281, 21.943039, 26.148916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.381351, 21.623508, 25.926010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.307335, 22.015293, 25.958050>,  <15.262925, 22.250364, 25.977274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.307335, 22.015293, 25.958050>,  <15.381351, 21.623508, 25.926010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.307335, 22.015293, 25.958050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591882, -0.046009, -0.804711,
		-0.784497, -0.196314, 0.588239,
		-0.185040, 0.979461, 0.080101,
		15.251822, 22.309132, 25.982080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.688412, 21.589954, 26.011805>,  <15.381351, 21.623508, 25.926010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.688412, 21.589954, 26.011805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.784086, 21.950243, 25.866756>,  <14.841491, 22.166416, 25.779728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.784086, 21.950243, 25.866756>,  <14.688412, 21.589954, 26.011805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.784086, 21.950243, 25.866756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704731, -0.095865, -0.702968,
		-0.667940, 0.423690, 0.611836,
		0.239187, 0.900720, -0.362620,
		14.855843, 22.220459, 25.757971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.109735, 21.935333, 25.921194>,  <14.688412, 21.589954, 26.011805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.109735, 21.935333, 25.921194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.343245, 22.149944, 25.677441>,  <14.483350, 22.278711, 25.531189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.343245, 22.149944, 25.677441>,  <14.109735, 21.935333, 25.921194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.343245, 22.149944, 25.677441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695769, -0.056255, -0.716059,
		-0.418466, 0.842006, 0.340459,
		0.583773, 0.536527, -0.609383,
		14.518376, 22.310902, 25.494625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.699757, 22.432642, 25.624195>,  <14.109735, 21.935333, 25.921194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.699757, 22.432642, 25.624195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.013219, 22.388027, 25.379755>,  <14.201296, 22.361258, 25.233091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.013219, 22.388027, 25.379755>,  <13.699757, 22.432642, 25.624195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.013219, 22.388027, 25.379755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621131, -0.126342, -0.773456,
		0.009062, 0.985696, -0.168289,
		0.783655, -0.111538, -0.611101,
		14.248315, 22.354567, 25.196424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.448336, 22.685928, 24.931850>,  <13.699757, 22.432642, 25.624195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.448336, 22.685928, 24.931850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.785110, 22.480875, 24.864498>,  <13.987175, 22.357843, 24.824087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.785110, 22.480875, 24.864498>,  <13.448336, 22.685928, 24.931850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.785110, 22.480875, 24.864498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315086, -0.213772, -0.924674,
		0.438023, 0.831571, -0.341506,
		0.841936, -0.512632, -0.168379,
		14.037691, 22.327085, 24.813984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.609694, 22.914362, 24.247995>,  <13.448336, 22.685928, 24.931850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.609694, 22.914362, 24.247995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.801552, 22.568419, 24.307274>,  <13.916667, 22.360853, 24.342840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.801552, 22.568419, 24.307274>,  <13.609694, 22.914362, 24.247995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.801552, 22.568419, 24.307274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321345, -0.330291, -0.887494,
		0.816503, 0.378062, -0.436340,
		0.479647, -0.864857, 0.148195,
		13.945446, 22.308962, 24.351732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.678559, 22.690302, 23.607941>,  <13.609694, 22.914362, 24.247995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.678559, 22.690302, 23.607941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.753085, 22.352104, 23.808113>,  <13.797800, 22.149185, 23.928217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.753085, 22.352104, 23.808113>,  <13.678559, 22.690302, 23.607941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.753085, 22.352104, 23.808113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417033, -0.529243, -0.738908,
		0.889590, -0.071026, -0.451203,
		0.186314, -0.845492, 0.500430,
		13.808979, 22.098457, 23.958242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.965034, 22.257334, 23.156004>,  <13.678559, 22.690302, 23.607941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.965034, 22.257334, 23.156004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.804331, 22.026396, 23.440331>,  <13.707909, 21.887833, 23.610928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.804331, 22.026396, 23.440331>,  <13.965034, 22.257334, 23.156004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.804331, 22.026396, 23.440331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386861, -0.596545, -0.703187,
		0.830017, -0.557499, 0.016315,
		-0.401759, -0.577346, 0.710817,
		13.683804, 21.853191, 23.653576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.101128, 21.549875, 23.028372>,  <13.965034, 22.257334, 23.156004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.101128, 21.549875, 23.028372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.772159, 21.556610, 23.255823>,  <13.574777, 21.560652, 23.392294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.772159, 21.556610, 23.255823>,  <14.101128, 21.549875, 23.028372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.772159, 21.556610, 23.255823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440539, -0.651265, -0.617882,
		0.359924, -0.758663, 0.543033,
		-0.822424, 0.016837, 0.568627,
		13.525432, 21.561661, 23.426411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.971625, 20.928856, 23.011583>,  <14.101128, 21.549875, 23.028372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.971625, 20.928856, 23.011583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.624468, 21.069815, 23.151628>,  <13.416174, 21.154390, 23.235657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.624468, 21.069815, 23.151628>,  <13.971625, 20.928856, 23.011583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.624468, 21.069815, 23.151628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496598, -0.632997, -0.593889,
		0.012338, -0.689299, 0.724372,
		-0.867893, 0.352394, 0.350115,
		13.364100, 21.175533, 23.256662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.655142, 20.332373, 23.117598>,  <13.971625, 20.928856, 23.011583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.655142, 20.332373, 23.117598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.377428, 20.619076, 23.091593>,  <13.210799, 20.791098, 23.075991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.377428, 20.619076, 23.091593>,  <13.655142, 20.332373, 23.117598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.377428, 20.619076, 23.091593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518359, -0.560675, -0.645715,
		-0.499272, -0.414610, 0.760806,
		-0.694285, 0.716758, -0.065013,
		13.169143, 20.834103, 23.072090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.199321, 19.932079, 23.261650>,  <13.655142, 20.332373, 23.117598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.199321, 19.932079, 23.261650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.104683, 20.262205, 23.056562>,  <13.047900, 20.460279, 22.933510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.104683, 20.262205, 23.056562>,  <13.199321, 19.932079, 23.261650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.104683, 20.262205, 23.056562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342220, -0.564670, -0.751021,
		-0.909345, -0.002225, 0.416037,
		-0.236595, 0.825314, -0.512718,
		13.033705, 20.509800, 22.902746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.604926, 19.791885, 22.933052>,  <13.199321, 19.932079, 23.261650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.604926, 19.791885, 22.933052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.710131, 20.113924, 22.720394>,  <12.773253, 20.307148, 22.592800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.710131, 20.113924, 22.720394>,  <12.604926, 19.791885, 22.933052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.710131, 20.113924, 22.720394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394945, -0.412914, -0.820683,
		-0.880252, 0.425819, 0.209367,
		0.263012, 0.805096, -0.531644,
		12.789034, 20.355453, 22.560902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.036704, 20.030069, 22.441088>,  <12.604926, 19.791885, 22.933052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.036704, 20.030069, 22.441088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.398389, 20.133631, 22.305223>,  <12.615400, 20.195768, 22.223705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.398389, 20.133631, 22.305223>,  <12.036704, 20.030069, 22.441088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.398389, 20.133631, 22.305223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270726, -0.267635, -0.924705,
		-0.330314, 0.928085, -0.171907,
		0.904212, 0.258903, -0.339660,
		12.669653, 20.211302, 22.203325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.949876, 20.239042, 21.757589>,  <12.036704, 20.030069, 22.441088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.949876, 20.239042, 21.757589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.349808, 20.246058, 21.759892>,  <12.589767, 20.250267, 21.761272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.349808, 20.246058, 21.759892>,  <11.949876, 20.239042, 21.757589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.349808, 20.246058, 21.759892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012566, -0.418143, -0.908295,
		-0.013524, 0.908212, -0.418292,
		0.999830, 0.017540, 0.005757,
		12.649756, 20.251320, 21.761620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.240067, 20.557375, 21.109476>,  <11.949876, 20.239042, 21.757589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.240067, 20.557375, 21.109476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.528765, 20.319452, 21.251060>,  <12.701984, 20.176699, 21.336012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.528765, 20.319452, 21.251060>,  <12.240067, 20.557375, 21.109476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.528765, 20.319452, 21.251060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194163, -0.316868, -0.928383,
		0.664366, 0.738784, -0.113209,
		0.721747, -0.594805, 0.353961,
		12.745289, 20.141010, 21.357248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.825872, 20.605040, 20.589003>,  <12.240067, 20.557375, 21.109476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.825872, 20.605040, 20.589003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.941869, 20.287685, 20.803085>,  <13.011467, 20.097273, 20.931536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.941869, 20.287685, 20.803085>,  <12.825872, 20.605040, 20.589003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.941869, 20.287685, 20.803085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447461, -0.381945, -0.808639,
		0.845981, 0.473983, 0.244247,
		0.289992, -0.793384, 0.535207,
		13.028867, 20.049669, 20.963648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.626164, 20.449778, 20.513744>,  <12.825872, 20.605040, 20.589003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.626164, 20.449778, 20.513744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.439880, 20.106209, 20.598946>,  <13.328110, 19.900068, 20.650066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.439880, 20.106209, 20.598946>,  <13.626164, 20.449778, 20.513744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.439880, 20.106209, 20.598946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496064, -0.452710, -0.740928,
		0.732827, -0.239394, 0.636911,
		-0.465709, -0.858920, 0.213004,
		13.300167, 19.848534, 20.662848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.113812, 19.900391, 20.485750>,  <13.626164, 20.449778, 20.513744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.113812, 19.900391, 20.485750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.770975, 19.697514, 20.449650>,  <13.565273, 19.575787, 20.427990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.770975, 19.697514, 20.449650>,  <14.113812, 19.900391, 20.485750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.770975, 19.697514, 20.449650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425847, -0.598948, -0.678171,
		0.289908, -0.619689, 0.729341,
		-0.857093, -0.507195, -0.090253,
		13.513847, 19.545355, 20.422573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.223174, 19.126087, 20.672476>,  <14.113812, 19.900391, 20.485750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.223174, 19.126087, 20.672476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.886091, 19.157835, 20.459480>,  <13.683842, 19.176884, 20.331682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.886091, 19.157835, 20.459480>,  <14.223174, 19.126087, 20.672476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.886091, 19.157835, 20.459480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288044, -0.769133, -0.570495,
		-0.454836, -0.634141, 0.625291,
		-0.842707, 0.079370, -0.532490,
		13.633279, 19.181646, 20.299732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.253991, 18.546209, 20.271105>,  <14.223174, 19.126087, 20.672476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.253991, 18.546209, 20.271105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.949342, 18.757084, 20.120373>,  <13.766552, 18.883608, 20.029934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.949342, 18.757084, 20.120373>,  <14.253991, 18.546209, 20.271105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.949342, 18.757084, 20.120373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098853, -0.669228, -0.736452,
		-0.640430, -0.523652, 0.561817,
		-0.761628, 0.527184, -0.376829,
		13.720855, 18.915239, 20.007322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.985818, 18.052311, 19.929293>,  <14.253991, 18.546209, 20.271105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.985818, 18.052311, 19.929293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.823134, 18.384428, 19.776871>,  <13.725524, 18.583698, 19.685417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.823134, 18.384428, 19.776871>,  <13.985818, 18.052311, 19.929293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.823134, 18.384428, 19.776871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179232, -0.481527, -0.857909,
		-0.895803, -0.280622, 0.344657,
		-0.406710, 0.830291, -0.381057,
		13.701121, 18.633514, 19.662554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.388530, 17.882372, 19.639721>,  <13.985818, 18.052311, 19.929293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.388530, 17.882372, 19.639721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.517532, 18.207479, 19.445650>,  <13.594934, 18.402544, 19.329208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.517532, 18.207479, 19.445650>,  <13.388530, 17.882372, 19.639721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.517532, 18.207479, 19.445650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024885, -0.505108, -0.862698,
		-0.946240, 0.290299, -0.142675,
		0.322507, 0.812769, -0.485177,
		13.614285, 18.451309, 19.300097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.969827, 17.974880, 18.961653>,  <13.388530, 17.882372, 19.639721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.969827, 17.974880, 18.961653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.285983, 18.212667, 18.902473>,  <13.475677, 18.355341, 18.866966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.285983, 18.212667, 18.902473>,  <12.969827, 17.974880, 18.961653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.285983, 18.212667, 18.902473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165717, -0.439986, -0.882582,
		-0.589763, 0.673066, -0.446274,
		0.790390, 0.594469, -0.147949,
		13.523100, 18.391008, 18.858089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.945986, 18.141163, 18.285736>,  <12.969827, 17.974880, 18.961653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.945986, 18.141163, 18.285736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.328439, 18.211912, 18.379141>,  <13.557911, 18.254362, 18.435183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.328439, 18.211912, 18.379141>,  <12.945986, 18.141163, 18.285736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.328439, 18.211912, 18.379141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280762, -0.325907, -0.902750,
		-0.083571, 0.928709, -0.361269,
		0.956132, 0.176874, 0.233510,
		13.615278, 18.264975, 18.449194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.217134, 18.619011, 17.742502>,  <12.945986, 18.141163, 18.285736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.217134, 18.619011, 17.742502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.521051, 18.437506, 17.928755>,  <13.703402, 18.328602, 18.040506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.521051, 18.437506, 17.928755>,  <13.217134, 18.619011, 17.742502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.521051, 18.437506, 17.928755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387320, -0.259320, -0.884724,
		0.522203, 0.852556, -0.021278,
		0.759794, -0.453764, 0.465630,
		13.748990, 18.301376, 18.068443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.794664, 18.882303, 17.359701>,  <13.217134, 18.619011, 17.742502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.794664, 18.882303, 17.359701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.902797, 18.539679, 17.535528>,  <13.967676, 18.334103, 17.641024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.902797, 18.539679, 17.535528>,  <13.794664, 18.882303, 17.359701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.902797, 18.539679, 17.535528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482053, -0.274792, -0.831934,
		0.833394, 0.436793, 0.338623,
		0.270332, -0.856563, 0.439567,
		13.983896, 18.282709, 17.667398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.414105, 18.731133, 17.052517>,  <13.794664, 18.882303, 17.359701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.414105, 18.731133, 17.052517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.371566, 18.380026, 17.239372>,  <14.346043, 18.169361, 17.351484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.371566, 18.380026, 17.239372>,  <14.414105, 18.731133, 17.052517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.371566, 18.380026, 17.239372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500416, -0.453216, -0.737685,
		0.859228, 0.155312, 0.487447,
		-0.106348, -0.877766, 0.467137,
		14.339662, 18.116695, 17.379513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.087174, 18.452826, 17.166735>,  <14.414105, 18.731133, 17.052517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.087174, 18.452826, 17.166735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.823652, 18.152105, 17.177864>,  <14.665539, 17.971674, 17.184542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.823652, 18.152105, 17.177864>,  <15.087174, 18.452826, 17.166735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.823652, 18.152105, 17.177864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558978, -0.513916, -0.650718,
		0.503508, -0.413144, 0.758809,
		-0.658805, -0.751799, 0.027822,
		14.626011, 17.926565, 17.186211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.507442, 17.920937, 17.273827>,  <15.087174, 18.452826, 17.166735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.507442, 17.920937, 17.273827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165393, 17.808174, 17.099792>,  <14.960164, 17.740517, 16.995373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165393, 17.808174, 17.099792>,  <15.507442, 17.920937, 17.273827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.165393, 17.808174, 17.099792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516304, -0.538992, -0.665521,
		-0.046891, -0.793736, 0.606452,
		-0.855121, -0.281907, -0.435083,
		14.908856, 17.723602, 16.969267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.631623, 17.269831, 17.108362>,  <15.507442, 17.920937, 17.273827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.631623, 17.269831, 17.108362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.324238, 17.364491, 16.870552>,  <15.139807, 17.421286, 16.727865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.324238, 17.364491, 16.870552>,  <15.631623, 17.269831, 17.108362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.324238, 17.364491, 16.870552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388730, -0.565361, -0.727499,
		-0.508283, -0.790167, 0.342467,
		-0.768464, 0.236649, -0.594526,
		15.093699, 17.435486, 16.692194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.174848, 16.641798, 16.901745>,  <15.631623, 17.269831, 17.108362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.174848, 16.641798, 16.901745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.157888, 16.945576, 16.642069>,  <15.147713, 17.127842, 16.486263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.157888, 16.945576, 16.642069>,  <15.174848, 16.641798, 16.901745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.157888, 16.945576, 16.642069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164944, -0.635539, -0.754243,
		-0.985391, -0.139059, -0.098320,
		-0.042398, 0.759442, -0.649192,
		15.145169, 17.173409, 16.447311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.401807, 16.318401, 17.584490>,  <15.174848, 16.641798, 16.901745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.401807, 16.318401, 17.584490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.074924, 16.548662, 17.595812>,  <14.878796, 16.686819, 17.602604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.074924, 16.548662, 17.595812>,  <15.401807, 16.318401, 17.584490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.074924, 16.548662, 17.595812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374414, 0.567577, -0.733260,
		-0.438166, -0.588627, -0.679359,
		-0.817205, 0.575651, 0.028303,
		14.829762, 16.721357, 17.604303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.824743, 15.869703, 17.210859>,  <15.401807, 16.318401, 17.584490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.824743, 15.869703, 17.210859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.804281, 15.488188, 17.092422>,  <15.792004, 15.259278, 17.021360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.804281, 15.488188, 17.092422>,  <15.824743, 15.869703, 17.210859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.804281, 15.488188, 17.092422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233097, -0.299694, 0.925121,
		-0.971107, -0.021693, 0.237657,
		-0.051156, -0.953789, -0.296091,
		15.788935, 15.202051, 17.003595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.294241, 15.461752, 17.555292>,  <15.824743, 15.869703, 17.210859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.294241, 15.461752, 17.555292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.618140, 15.264006, 17.428860>,  <15.812480, 15.145358, 17.353001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.618140, 15.264006, 17.428860>,  <15.294241, 15.461752, 17.555292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.618140, 15.264006, 17.428860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160694, -0.331250, 0.929758,
		-0.564344, -0.803663, -0.188788,
		0.809749, -0.494367, -0.316083,
		15.861065, 15.115696, 17.334034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.328151, 14.604702, 17.658504>,  <15.294241, 15.461752, 17.555292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.328151, 14.604702, 17.658504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.666741, 14.815790, 17.686762>,  <15.869896, 14.942443, 17.703716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.666741, 14.815790, 17.686762>,  <15.328151, 14.604702, 17.658504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.666741, 14.815790, 17.686762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198876, -0.436465, 0.877466,
		0.493890, -0.728704, -0.474408,
		0.846475, 0.527720, 0.070644,
		15.920684, 14.974106, 17.707954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.984501, 14.171562, 17.758165>,  <15.328151, 14.604702, 17.658504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.984501, 14.171562, 17.758165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.968332, 14.528980, 17.937025>,  <15.958631, 14.743431, 18.044342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.968332, 14.528980, 17.937025>,  <15.984501, 14.171562, 17.758165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.968332, 14.528980, 17.937025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364344, -0.403524, 0.839299,
		0.930387, 0.196843, -0.309246,
		-0.040422, 0.893544, 0.447152,
		15.956205, 14.797044, 18.071171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.669193, 14.230800, 17.979668>,  <15.984501, 14.171562, 17.758165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.669193, 14.230800, 17.979668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.427486, 14.447552, 18.213326>,  <16.282463, 14.577603, 18.353521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.427486, 14.447552, 18.213326>,  <16.669193, 14.230800, 17.979668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.427486, 14.447552, 18.213326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418168, -0.408374, 0.811398,
		0.678230, 0.734573, 0.020170,
		-0.604267, 0.541880, 0.584146,
		16.246206, 14.610116, 18.388569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.090343, 14.590451, 18.299562>,  <16.669193, 14.230800, 17.979668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.090343, 14.590451, 18.299562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.763515, 14.515010, 18.517488>,  <16.567417, 14.469746, 18.648243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.763515, 14.515010, 18.517488>,  <17.090343, 14.590451, 18.299562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.763515, 14.515010, 18.517488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562237, -0.469813, 0.680563,
		0.127605, 0.862383, 0.489911,
		-0.817072, -0.188603, 0.544814,
		16.518394, 14.458429, 18.680933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.777557, 14.691833, 18.028175>,  <17.090343, 14.590451, 18.299562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.777557, 14.691833, 18.028175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.755909, 14.317144, 17.889830>,  <17.742920, 14.092331, 17.806822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.755909, 14.317144, 17.889830>,  <17.777557, 14.691833, 18.028175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.755909, 14.317144, 17.889830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060556, 0.342656, -0.937507,
		0.996696, -0.071684, 0.038179,
		-0.054122, -0.936722, -0.345865,
		17.739672, 14.036128, 17.786070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.382685, 14.609665, 17.602207>,  <17.777557, 14.691833, 18.028175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.382685, 14.609665, 17.602207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.142365, 14.321342, 17.463947>,  <17.998173, 14.148349, 17.380991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.142365, 14.321342, 17.463947>,  <18.382685, 14.609665, 17.602207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.142365, 14.321342, 17.463947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006100, 0.436510, -0.899679,
		0.799375, -0.538420, -0.266653,
		-0.600802, -0.720807, -0.345650,
		17.962124, 14.105101, 17.360252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.717411, 14.298643, 17.017611>,  <18.382685, 14.609665, 17.602207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.717411, 14.298643, 17.017611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.342047, 14.168199, 16.971943>,  <18.116827, 14.089931, 16.944542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.342047, 14.168199, 16.971943>,  <18.717411, 14.298643, 17.017611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.342047, 14.168199, 16.971943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038719, 0.229098, -0.972633,
		0.343345, -0.917150, -0.202361,
		-0.938411, -0.326114, -0.114171,
		18.060524, 14.070365, 16.937693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.725887, 13.782493, 16.510015>,  <18.717411, 14.298643, 17.017611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.725887, 13.782493, 16.510015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.355663, 13.933158, 16.525330>,  <18.133530, 14.023558, 16.534517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.355663, 13.933158, 16.525330>,  <18.725887, 13.782493, 16.510015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.355663, 13.933158, 16.525330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100728, 0.342461, -0.934117,
		-0.364960, -0.860723, -0.354908,
		-0.925558, 0.376664, 0.038285,
		18.077995, 14.046157, 16.536816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.454077, 13.597109, 15.883179>,  <18.725887, 13.782493, 16.510015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.454077, 13.597109, 15.883179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.235477, 13.899373, 16.027576>,  <18.104319, 14.080731, 16.114216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.235477, 13.899373, 16.027576>,  <18.454077, 13.597109, 15.883179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.235477, 13.899373, 16.027576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117459, 0.357634, -0.926446,
		-0.829182, -0.548703, -0.106687,
		-0.546498, 0.755661, 0.360994,
		18.071527, 14.126071, 16.135874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.844364, 13.658701, 15.477626>,  <18.454077, 13.597109, 15.883179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.844364, 13.658701, 15.477626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.873760, 14.017573, 15.651827>,  <17.891397, 14.232897, 15.756348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.873760, 14.017573, 15.651827>,  <17.844364, 13.658701, 15.477626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.873760, 14.017573, 15.651827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260484, 0.438794, -0.860005,
		-0.962677, -0.050238, 0.265949,
		0.073492, 0.897182, 0.435503,
		17.895807, 14.286728, 15.782478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.212986, 14.158786, 15.228331>,  <17.844364, 13.658701, 15.477626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.212986, 14.158786, 15.228331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.511179, 14.396600, 15.348852>,  <17.690094, 14.539289, 15.421165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.511179, 14.396600, 15.348852>,  <17.212986, 14.158786, 15.228331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.511179, 14.396600, 15.348852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132982, 0.575634, -0.806821,
		-0.653125, 0.561403, 0.508188,
		0.745482, 0.594535, 0.301304,
		17.734823, 14.574961, 15.439243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.983017, 14.757585, 14.961827>,  <17.212986, 14.158786, 15.228331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.983017, 14.757585, 14.961827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.365568, 14.840015, 15.044648>,  <17.595098, 14.889474, 15.094341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.365568, 14.840015, 15.044648>,  <16.983017, 14.757585, 14.961827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.365568, 14.840015, 15.044648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038146, 0.614606, -0.787911,
		-0.289627, 0.761440, 0.579936,
		0.956379, 0.206078, 0.207053,
		17.652481, 14.901839, 15.106764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.011242, 15.489227, 15.158190>,  <16.983017, 14.757585, 14.961827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.011242, 15.489227, 15.158190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.383059, 15.382490, 15.056406>,  <17.606148, 15.318448, 14.995336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.383059, 15.382490, 15.056406>,  <17.011242, 15.489227, 15.158190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.383059, 15.382490, 15.056406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035901, 0.752336, -0.657801,
		0.366967, 0.602317, 0.708907,
		0.929541, -0.266842, -0.254459,
		17.661921, 15.302438, 14.980068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.384768, 16.092154, 15.120557>,  <17.011242, 15.489227, 15.158190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.384768, 16.092154, 15.120557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.618624, 15.838520, 14.918119>,  <17.758938, 15.686340, 14.796657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.618624, 15.838520, 14.918119>,  <17.384768, 16.092154, 15.120557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.618624, 15.838520, 14.918119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319829, 0.753430, -0.574503,
		0.745589, 0.174015, 0.643285,
		0.584642, -0.634084, -0.506094,
		17.794016, 15.648294, 14.766292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.989857, 16.461870, 14.904164>,  <17.384768, 16.092154, 15.120557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.989857, 16.461870, 14.904164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.018589, 16.140429, 14.667838>,  <18.035830, 15.947564, 14.526043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.018589, 16.140429, 14.667838>,  <17.989857, 16.461870, 14.904164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.018589, 16.140429, 14.667838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408769, 0.564033, -0.717477,
		0.909806, -0.189969, 0.369004,
		0.071832, -0.803603, -0.590815,
		18.040138, 15.899347, 14.490594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.680872, 16.428707, 14.710234>,  <17.989857, 16.461870, 14.904164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.680872, 16.428707, 14.710234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.492758, 16.223526, 14.422982>,  <18.379889, 16.100418, 14.250631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.492758, 16.223526, 14.422982>,  <18.680872, 16.428707, 14.710234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.492758, 16.223526, 14.422982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550045, 0.465972, -0.693052,
		0.690131, -0.720936, 0.063007,
		-0.470286, -0.512953, -0.718129,
		18.351671, 16.069639, 14.207543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.195049, 16.251696, 14.279634>,  <18.680872, 16.428707, 14.710234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.195049, 16.251696, 14.279634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.870321, 16.198858, 14.052125>,  <18.675486, 16.167156, 13.915620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.870321, 16.198858, 14.052125>,  <19.195049, 16.251696, 14.279634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.870321, 16.198858, 14.052125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473529, 0.420998, -0.773648,
		0.341646, -0.897392, -0.279223,
		-0.811818, -0.132094, -0.568773,
		18.626776, 16.159229, 13.881493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.430874, 16.039272, 13.528777>,  <19.195049, 16.251696, 14.279634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.430874, 16.039272, 13.528777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.058010, 16.176918, 13.483764>,  <18.834291, 16.259506, 13.456756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.058010, 16.176918, 13.483764>,  <19.430874, 16.039272, 13.528777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.058010, 16.176918, 13.483764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239841, 0.354090, -0.903934,
		-0.271212, -0.869600, -0.412601,
		-0.932159, 0.344117, -0.112532,
		18.778362, 16.280153, 13.450004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.244055, 16.063770, 12.847486>,  <19.430874, 16.039272, 13.528777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.244055, 16.063770, 12.847486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.967600, 16.314438, 12.991493>,  <18.801727, 16.464838, 13.077897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.967600, 16.314438, 12.991493>,  <19.244055, 16.063770, 12.847486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.967600, 16.314438, 12.991493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225875, 0.660483, -0.716061,
		-0.686518, -0.413579, -0.598034,
		-0.691139, 0.626670, 0.360017,
		18.760258, 16.502439, 13.099498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.729639, 16.215244, 12.242584>,  <19.244055, 16.063770, 12.847486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.729639, 16.215244, 12.242584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.731327, 16.508583, 12.514521>,  <18.732340, 16.684587, 12.677682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.731327, 16.508583, 12.514521>,  <18.729639, 16.215244, 12.242584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.731327, 16.508583, 12.514521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350248, 0.635698, -0.687906,
		-0.936648, 0.241014, -0.254172,
		0.004218, 0.733349, 0.679840,
		18.732592, 16.728588, 12.718472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.484962, 16.776487, 11.841534>,  <18.729639, 16.215244, 12.242584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.484962, 16.776487, 11.841534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.659897, 16.918877, 12.171872>,  <18.764856, 17.004311, 12.370075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.659897, 16.918877, 12.171872>,  <18.484962, 16.776487, 11.841534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.659897, 16.918877, 12.171872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266300, 0.825874, -0.497007,
		-0.858966, 0.437281, 0.266387,
		0.437334, 0.355973, 0.825846,
		18.791098, 17.025669, 12.419626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.404938, 17.502081, 11.765197>,  <18.484962, 16.776487, 11.841534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.404938, 17.502081, 11.765197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.697969, 17.469021, 12.035455>,  <18.873789, 17.449184, 12.197610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.697969, 17.469021, 12.035455>,  <18.404938, 17.502081, 11.765197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.697969, 17.469021, 12.035455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538224, 0.677992, -0.500642,
		-0.416705, 0.730408, 0.541166,
		0.732579, -0.082648, 0.675646,
		18.917744, 17.444227, 12.238149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.688362, 18.248150, 11.890891>,  <18.404938, 17.502081, 11.765197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.688362, 18.248150, 11.890891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.976706, 18.025982, 12.056723>,  <19.149712, 17.892681, 12.156221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.976706, 18.025982, 12.056723>,  <18.688362, 18.248150, 11.890891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.976706, 18.025982, 12.056723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684877, 0.662610, -0.303135,
		-0.106337, 0.502452, 0.858041,
		0.720858, -0.555418, 0.414578,
		19.192963, 17.859356, 12.181096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.112555, 18.798878, 12.258290>,  <18.688362, 18.248150, 11.890891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.112555, 18.798878, 12.258290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.365553, 18.489416, 12.243267>,  <19.517351, 18.303740, 12.234253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.365553, 18.489416, 12.243267>,  <19.112555, 18.798878, 12.258290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.365553, 18.489416, 12.243267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686306, 0.582244, -0.435862,
		0.359074, 0.249904, 0.899230,
		0.632495, -0.773654, -0.037558,
		19.555302, 18.257320, 12.231999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.652351, 19.003059, 12.567840>,  <19.112555, 18.798878, 12.258290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.652351, 19.003059, 12.567840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.784958, 18.704548, 12.336957>,  <19.864521, 18.525442, 12.198427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.784958, 18.704548, 12.336957>,  <19.652351, 19.003059, 12.567840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.784958, 18.704548, 12.336957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670953, 0.616603, -0.411853,
		0.663264, -0.250742, 0.705131,
		0.331516, -0.746277, -0.577207,
		19.884413, 18.480665, 12.163795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.141937, 19.540497, 12.339752>,  <19.652351, 19.003059, 12.567840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.141937, 19.540497, 12.339752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.435808, 19.548588, 12.068505>,  <19.612131, 19.553442, 11.905757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.435808, 19.548588, 12.068505>,  <19.141937, 19.540497, 12.339752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.435808, 19.548588, 12.068505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459321, 0.750443, -0.475246,
		0.499274, 0.660625, 0.560624,
		0.734676, 0.020228, -0.678116,
		19.656212, 19.554657, 11.865070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.598217, 19.242613, 12.853219>,  <19.141937, 19.540497, 12.339752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.598217, 19.242613, 12.853219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.828344, 19.130493, 13.160579>,  <18.966421, 19.063221, 13.344995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.828344, 19.130493, 13.160579>,  <18.598217, 19.242613, 12.853219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.828344, 19.130493, 13.160579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507286, 0.859217, -0.066390,
		-0.641613, 0.427994, 0.636517,
		0.575321, -0.280299, 0.768400,
		19.000940, 19.046404, 13.391099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.202971, 19.752489, 13.197324>,  <18.598217, 19.242613, 12.853219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.202971, 19.752489, 13.197324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.079275, 19.974411, 13.506273>,  <18.005058, 20.107565, 13.691643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.079275, 19.974411, 13.506273>,  <18.202971, 19.752489, 13.197324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.079275, 19.974411, 13.506273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766958, -0.334705, 0.547493,
		0.562270, 0.761684, -0.322009,
		-0.309239, 0.554806, 0.772374,
		17.986504, 20.140852, 13.737986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.736187, 20.266298, 13.417362>,  <18.202971, 19.752489, 13.197324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.736187, 20.266298, 13.417362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.516422, 20.152884, 13.731750>,  <18.384563, 20.084835, 13.920383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.516422, 20.152884, 13.731750>,  <18.736187, 20.266298, 13.417362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.516422, 20.152884, 13.731750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831854, -0.097231, 0.546411,
		-0.078508, 0.954019, 0.289283,
		-0.549413, -0.283539, 0.785971,
		18.351599, 20.067822, 13.967542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.792557, 20.714666, 13.936852>,  <18.736187, 20.266298, 13.417362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.792557, 20.714666, 13.936852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.689854, 20.424379, 14.192167>,  <18.628233, 20.250208, 14.345357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.689854, 20.424379, 14.192167>,  <18.792557, 20.714666, 13.936852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.689854, 20.424379, 14.192167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749189, 0.267773, 0.605817,
		-0.610568, 0.633746, 0.474946,
		-0.256756, -0.725716, 0.638289,
		18.612827, 20.206665, 14.383654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.595602, 20.999029, 14.597149>,  <18.792557, 20.714666, 13.936852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.595602, 20.999029, 14.597149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.741213, 20.627186, 14.620174>,  <18.828579, 20.404079, 14.633989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.741213, 20.627186, 14.620174>,  <18.595602, 20.999029, 14.597149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.741213, 20.627186, 14.620174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761685, 0.332698, 0.556011,
		-0.536024, -0.158557, 0.829179,
		0.364026, -0.929608, 0.057564,
		18.850420, 20.348303, 14.637444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.092279, 21.078077, 15.150192>,  <18.595602, 20.999029, 14.597149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.092279, 21.078077, 15.150192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.172464, 20.699619, 15.048506>,  <19.220575, 20.472544, 14.987494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.172464, 20.699619, 15.048506>,  <19.092279, 21.078077, 15.150192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.172464, 20.699619, 15.048506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655277, -0.063412, 0.752722,
		-0.728304, -0.317474, 0.607275,
		0.200461, -0.946144, -0.254217,
		19.232603, 20.415775, 14.972240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.038458, 20.661598, 15.680730>,  <19.092279, 21.078077, 15.150192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.038458, 20.661598, 15.680730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.302752, 20.457649, 15.460382>,  <19.461329, 20.335279, 15.328173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.302752, 20.457649, 15.460382>,  <19.038458, 20.661598, 15.680730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.302752, 20.457649, 15.460382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611066, -0.060829, 0.789239,
		-0.435921, -0.858096, 0.271375,
		0.660735, -0.509874, -0.550870,
		19.500973, 20.304688, 15.295120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.916634, 19.993505, 15.243005>,  <19.038458, 20.661598, 15.680730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.916634, 19.993505, 15.243005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.171120, 19.873808, 14.958559>,  <19.323811, 19.801989, 14.787891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.171120, 19.873808, 14.958559>,  <18.916634, 19.993505, 15.243005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.171120, 19.873808, 14.958559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081549, -0.890469, 0.447677,
		-0.767191, -0.342808, -0.542126,
		0.636213, -0.299244, -0.711116,
		19.361984, 19.784035, 14.745224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.591887, 19.311293, 14.999878>,  <18.916634, 19.993505, 15.243005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.591887, 19.311293, 14.999878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.983463, 19.343208, 14.924713>,  <19.218409, 19.362358, 14.879615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.983463, 19.343208, 14.924713>,  <18.591887, 19.311293, 14.999878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.983463, 19.343208, 14.924713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162426, -0.862019, 0.480147,
		-0.123672, -0.500556, -0.856825,
		0.978940, 0.079790, -0.187911,
		19.277145, 19.367146, 14.868340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.763975, 18.587492, 14.713762>,  <18.591887, 19.311293, 14.999878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.763975, 18.587492, 14.713762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.100634, 18.772320, 14.825562>,  <19.302629, 18.883217, 14.892641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.100634, 18.772320, 14.825562>,  <18.763975, 18.587492, 14.713762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.100634, 18.772320, 14.825562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395742, -0.879903, 0.262981,
		0.367448, -0.110728, -0.923429,
		0.841648, 0.462071, 0.279499,
		19.353128, 18.910942, 14.909411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.325462, 18.225220, 14.343262>,  <18.763975, 18.587492, 14.713762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.325462, 18.225220, 14.343262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.468908, 18.396439, 14.675086>,  <19.554976, 18.499170, 14.874181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.468908, 18.396439, 14.675086>,  <19.325462, 18.225220, 14.343262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.468908, 18.396439, 14.675086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373438, -0.880246, 0.292764,
		0.855534, 0.204799, -0.475520,
		0.358617, 0.428047, 0.829560,
		19.576494, 18.524853, 14.923954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.988398, 17.944473, 14.374756>,  <19.325462, 18.225220, 14.343262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.988398, 17.944473, 14.374756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.934410, 18.106581, 14.736427>,  <19.902018, 18.203846, 14.953430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.934410, 18.106581, 14.736427>,  <19.988398, 17.944473, 14.374756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.934410, 18.106581, 14.736427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276933, -0.860734, 0.427135,
		0.951363, 0.308047, 0.003939,
		-0.134968, 0.405270, 0.904179,
		19.893919, 18.228161, 15.007681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.660929, 17.892672, 14.852633>,  <19.988398, 17.944473, 14.374756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.660929, 17.892672, 14.852633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.336790, 17.938957, 15.082397>,  <20.142307, 17.966728, 15.220256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.336790, 17.938957, 15.082397>,  <20.660929, 17.892672, 14.852633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.336790, 17.938957, 15.082397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350272, -0.690207, 0.633186,
		0.469731, 0.714300, 0.518775,
		-0.810347, 0.115715, 0.574411,
		20.093685, 17.973671, 15.254721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.937105, 17.940449, 15.601531>,  <20.660929, 17.892672, 14.852633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.937105, 17.940449, 15.601531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.554148, 17.826197, 15.584476>,  <20.324373, 17.757647, 15.574244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.554148, 17.826197, 15.584476>,  <20.937105, 17.940449, 15.601531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.554148, 17.826197, 15.584476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201294, -0.765868, 0.610677,
		-0.207080, 0.576075, 0.790731,
		-0.957392, -0.285628, -0.042636,
		20.266930, 17.740509, 15.571686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.798059, 17.755941, 16.316557>,  <20.937105, 17.940449, 15.601531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.798059, 17.755941, 16.316557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.548639, 17.596226, 16.047707>,  <20.398987, 17.500397, 15.886396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.548639, 17.596226, 16.047707>,  <20.798059, 17.755941, 16.316557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.548639, 17.596226, 16.047707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184866, -0.910660, 0.369490,
		-0.759611, 0.106143, 0.641658,
		-0.623551, -0.399290, -0.672125,
		20.361574, 17.476439, 15.846069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.424574, 17.204510, 16.655190>,  <20.798059, 17.755941, 16.316557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.424574, 17.204510, 16.655190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.303377, 17.121964, 16.283037>,  <20.230659, 17.072435, 16.059746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.303377, 17.121964, 16.283037>,  <20.424574, 17.204510, 16.655190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.303377, 17.121964, 16.283037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075331, -0.968032, 0.239250,
		-0.950011, 0.142577, 0.277760,
		-0.302992, -0.206366, -0.930381,
		20.212481, 17.060053, 16.003923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.915512, 16.760719, 16.737329>,  <20.424574, 17.204510, 16.655190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.915512, 16.760719, 16.737329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.040314, 16.702713, 16.361750>,  <20.115194, 16.667910, 16.136402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.040314, 16.702713, 16.361750>,  <19.915512, 16.760719, 16.737329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.040314, 16.702713, 16.361750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053737, -0.984007, 0.169831,
		-0.948559, -0.103444, -0.299223,
		0.312006, -0.145016, -0.938948,
		20.133915, 16.659208, 16.080065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.515739, 16.227156, 16.407099>,  <19.915512, 16.760719, 16.737329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.515739, 16.227156, 16.407099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.868547, 16.246050, 16.219563>,  <20.080233, 16.257387, 16.107040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.868547, 16.246050, 16.219563>,  <19.515739, 16.227156, 16.407099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.868547, 16.246050, 16.219563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168563, -0.960754, 0.220316,
		-0.440036, -0.273352, -0.855364,
		0.882018, 0.047236, -0.468843,
		20.133152, 16.260221, 16.078909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.578773, 15.665956, 16.054043>,  <19.515739, 16.227156, 16.407099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.578773, 15.665956, 16.054043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.965281, 15.765136, 16.081894>,  <20.197186, 15.824644, 16.098604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.965281, 15.765136, 16.081894>,  <19.578773, 15.665956, 16.054043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.965281, 15.765136, 16.081894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219234, -0.933779, 0.282831,
		0.135143, -0.258026, -0.956639,
		0.966268, 0.247951, 0.069626,
		20.255161, 15.839520, 16.102781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.929867, 15.022713, 15.990855>,  <19.578773, 15.665956, 16.054043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.929867, 15.022713, 15.990855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.255377, 15.231548, 16.092987>,  <20.450684, 15.356850, 16.154266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.255377, 15.231548, 16.092987>,  <19.929867, 15.022713, 15.990855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.255377, 15.231548, 16.092987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464081, -0.848209, 0.255286,
		0.349855, -0.089252, -0.932543,
		0.813775, 0.522088, 0.255330,
		20.499510, 15.388175, 16.169586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.530556, 14.796918, 15.508353>,  <19.929867, 15.022713, 15.990855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.530556, 14.796918, 15.508353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.651499, 14.954031, 15.855755>,  <20.724066, 15.048299, 16.064196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.651499, 14.954031, 15.855755>,  <20.530556, 14.796918, 15.508353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.651499, 14.954031, 15.855755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292428, -0.905438, 0.307681,
		0.907229, 0.160945, -0.388628,
		0.302359, 0.392783, 0.868505,
		20.742207, 15.071866, 16.116306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.266325, 14.743107, 15.461286>,  <20.530556, 14.796918, 15.508353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.266325, 14.743107, 15.461286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.242199, 14.778847, 15.858954>,  <21.227724, 14.800291, 16.097555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.242199, 14.778847, 15.858954>,  <21.266325, 14.743107, 15.461286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.242199, 14.778847, 15.858954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408200, -0.906688, 0.106252,
		0.910898, 0.412229, 0.018214,
		-0.060314, 0.089350, 0.994173,
		21.224104, 14.805652, 16.157206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.021582, 15.056855, 15.385679>,  <21.266325, 14.743107, 15.461286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.021582, 15.056855, 15.385679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.965471, 15.116768, 14.994192>,  <21.931805, 15.152716, 14.759300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.965471, 15.116768, 14.994192>,  <22.021582, 15.056855, 15.385679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.965471, 15.116768, 14.994192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824298, 0.565273, -0.031637,
		0.548504, -0.811192, -0.202760,
		-0.140278, 0.149781, -0.978717,
		21.923388, 15.161702, 14.700577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.418999, 15.569440, 14.987973>,  <22.021582, 15.056855, 15.385679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.418999, 15.569440, 14.987973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.568861, 15.819068, 15.262248>,  <22.658779, 15.968845, 15.426813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.568861, 15.819068, 15.262248>,  <22.418999, 15.569440, 14.987973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.568861, 15.819068, 15.262248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926326, -0.220526, -0.305431,
		-0.039399, 0.749602, -0.660715,
		0.374657, 0.624071, 0.685687,
		22.681257, 16.006289, 15.467955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.995245, 15.938444, 14.671308>,  <22.418999, 15.569440, 14.987973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.995245, 15.938444, 14.671308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.063801, 15.932941, 15.065351>,  <23.104935, 15.929640, 15.301776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.063801, 15.932941, 15.065351>,  <22.995245, 15.938444, 14.671308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.063801, 15.932941, 15.065351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963682, -0.205514, -0.170530,
		0.204799, 0.978558, -0.021965,
		0.171388, -0.013757, 0.985108,
		23.115217, 15.928815, 15.360883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.591299, 16.415659, 14.987627>,  <22.995245, 15.938444, 14.671308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.591299, 16.415659, 14.987627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.534647, 16.057127, 15.155691>,  <23.500656, 15.842008, 15.256530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.534647, 16.057127, 15.155691>,  <23.591299, 16.415659, 14.987627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.534647, 16.057127, 15.155691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981157, -0.183454, -0.060627,
		0.131421, 0.403656, 0.905423,
		-0.141631, -0.896329, 0.420160,
		23.492157, 15.788228, 15.281739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.191730, 16.003691, 15.191994>,  <23.591299, 16.415659, 14.987627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.191730, 16.003691, 15.191994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.979931, 15.731194, 14.989789>,  <23.852852, 15.567696, 14.868466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.979931, 15.731194, 14.989789>,  <24.191730, 16.003691, 15.191994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.979931, 15.731194, 14.989789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785063, -0.167731, -0.596274,
		0.321418, -0.712583, 0.623631,
		-0.529497, -0.681243, -0.505511,
		23.821081, 15.526821, 14.838136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.528708, 15.355717, 15.284015>,  <24.191730, 16.003691, 15.191994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.528708, 15.355717, 15.284015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.364401, 15.405575, 14.922743>,  <24.265818, 15.435490, 14.705979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.364401, 15.405575, 14.922743>,  <24.528708, 15.355717, 15.284015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.364401, 15.405575, 14.922743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895176, -0.132838, -0.425458,
		-0.173008, -0.983269, -0.057014,
		-0.410766, 0.124645, -0.903181,
		24.241171, 15.442968, 14.651789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.661810, 14.793499, 14.767872>,  <24.528708, 15.355717, 15.284015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.661810, 14.793499, 14.767872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.628979, 15.154357, 14.598451>,  <24.609280, 15.370872, 14.496798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.628979, 15.154357, 14.598451>,  <24.661810, 14.793499, 14.767872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.628979, 15.154357, 14.598451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846375, -0.161300, -0.507575,
		-0.526225, -0.400146, -0.750313,
		-0.082079, 0.902145, -0.423554,
		24.604355, 15.425000, 14.471384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.164324, 14.282623, 14.823227>,  <24.661810, 14.793499, 14.767872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.164324, 14.282623, 14.823227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.135988, 14.190460, 14.435022>,  <25.118986, 14.135162, 14.202100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.135988, 14.190460, 14.435022>,  <25.164324, 14.282623, 14.823227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.135988, 14.190460, 14.435022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993893, -0.098829, -0.049084,
		-0.084606, -0.968063, 0.236001,
		-0.070840, -0.230407, -0.970512,
		25.114737, 14.121338, 14.143868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630335, 13.814515, 14.645090>,  <25.164324, 14.282623, 14.823227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630335, 13.814515, 14.645090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568653, 13.960022, 14.277636>,  <25.531645, 14.047326, 14.057162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568653, 13.960022, 14.277636>,  <25.630335, 13.814515, 14.645090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.568653, 13.960022, 14.277636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967457, -0.133193, -0.215141,
		-0.200618, -0.921918, -0.331391,
		-0.154203, 0.363767, -0.918637,
		25.522392, 14.069152, 14.002045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989859, 14.488288, 14.744252>,  <25.630335, 13.814515, 14.645090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989859, 14.488288, 14.744252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153889, 14.741098, 15.007275>,  <26.252306, 14.892785, 15.165089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153889, 14.741098, 15.007275>,  <25.989859, 14.488288, 14.744252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153889, 14.741098, 15.007275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895330, -0.416384, -0.158142,
		0.173846, 0.653580, -0.736621,
		0.410075, 0.632026, 0.657557,
		26.276911, 14.930706, 15.204542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686703, 14.894601, 14.581141>,  <25.989859, 14.488288, 14.744252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686703, 14.894601, 14.581141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630316, 14.800223, 14.965736>,  <26.596483, 14.743597, 15.196493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630316, 14.800223, 14.965736>,  <26.686703, 14.894601, 14.581141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630316, 14.800223, 14.965736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733037, -0.677641, -0.058814,
		0.665420, 0.696515, 0.268481,
		-0.140969, -0.235943, 0.961488,
		26.588026, 14.729441, 15.254183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<13.863529, 25.737246, 21.827246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.516531, 25.787535, 22.019764>,  <13.308332, 25.817709, 22.135275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.516531, 25.787535, 22.019764>,  <13.863529, 25.737246, 21.827246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.516531, 25.787535, 22.019764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492610, -0.351717, -0.796010,
		0.069204, -0.927626, 0.367044,
		-0.867494, 0.125722, 0.481298,
		13.256283, 25.825251, 22.164154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.584387, 25.116619, 21.814602>,  <13.863529, 25.737246, 21.827246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.584387, 25.116619, 21.814602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.275977, 25.363008, 21.879225>,  <13.090932, 25.510841, 21.917997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.275977, 25.363008, 21.879225>,  <13.584387, 25.116619, 21.814602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.275977, 25.363008, 21.879225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488206, -0.408874, -0.771023,
		-0.408874, -0.673349, 0.615973,
		0.771023, -0.615973, -0.161555,
		13.044670, 25.547800, 21.927691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.072597, 24.657978, 21.772659>,  <13.584387, 25.116619, 21.814602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.072597, 24.657978, 21.772659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.926358, 25.024677, 21.708265>,  <12.838615, 25.244696, 21.669628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.926358, 25.024677, 21.708265>,  <13.072597, 24.657978, 21.772659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.926358, 25.024677, 21.708265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536692, -0.348940, -0.768246,
		-0.760461, -0.194467, 0.619582,
		-0.365596, 0.916746, -0.160986,
		12.816679, 25.299702, 21.659969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.422216, 24.541809, 21.832306>,  <13.072597, 24.657978, 21.772659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.422216, 24.541809, 21.832306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.463582, 24.876366, 21.616991>,  <12.488401, 25.077099, 21.487801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.463582, 24.876366, 21.616991>,  <12.422216, 24.541809, 21.832306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.463582, 24.876366, 21.616991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555503, -0.400354, -0.728789,
		-0.825059, 0.374388, 0.423215,
		0.103414, 0.836391, -0.538289,
		12.494606, 25.127283, 21.455503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.808040, 24.719225, 21.676937>,  <12.422216, 24.541809, 21.832306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.808040, 24.719225, 21.676937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.037860, 24.894640, 21.400509>,  <12.175753, 24.999889, 21.234652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.037860, 24.894640, 21.400509>,  <11.808040, 24.719225, 21.676937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.037860, 24.894640, 21.400509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548074, -0.420944, -0.722787,
		-0.607870, 0.794035, -0.001503,
		0.574551, 0.438537, -0.691069,
		12.210225, 25.026201, 21.193188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.319936, 24.739386, 21.082188>,  <11.808040, 24.719225, 21.676937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.319936, 24.739386, 21.082188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.691167, 24.791363, 20.942596>,  <11.913905, 24.822548, 20.858841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.691167, 24.791363, 20.942596>,  <11.319936, 24.739386, 21.082188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.691167, 24.791363, 20.942596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287387, -0.346037, -0.893122,
		-0.236814, 0.929179, -0.283805,
		0.928077, 0.129942, -0.348980,
		11.969590, 24.830345, 20.837902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.245372, 24.944643, 20.375757>,  <11.319936, 24.739386, 21.082188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.245372, 24.944643, 20.375757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.631018, 24.838470, 20.373585>,  <11.862405, 24.774767, 20.372280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.631018, 24.838470, 20.373585>,  <11.245372, 24.944643, 20.375757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.631018, 24.838470, 20.373585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086216, -0.293673, -0.952010,
		0.251099, 0.918315, -0.306019,
		0.964114, -0.265433, -0.005433,
		11.920252, 24.758841, 20.371956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.504219, 25.198082, 19.809916>,  <11.245372, 24.944643, 20.375757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.504219, 25.198082, 19.809916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.761806, 24.898907, 19.874285>,  <11.916357, 24.719402, 19.912907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.761806, 24.898907, 19.874285>,  <11.504219, 25.198082, 19.809916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.761806, 24.898907, 19.874285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033050, -0.182951, -0.982566,
		0.764340, 0.638057, -0.093095,
		0.643965, -0.747938, 0.160924,
		11.954995, 24.674524, 19.922562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.045468, 25.202089, 19.295620>,  <11.504219, 25.198082, 19.809916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.045468, 25.202089, 19.295620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.077626, 24.836481, 19.454668>,  <12.096921, 24.617117, 19.550097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.077626, 24.836481, 19.454668>,  <12.045468, 25.202089, 19.295620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.077626, 24.836481, 19.454668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227390, -0.371575, -0.900125,
		0.970480, 0.162781, 0.177966,
		0.080395, -0.914021, 0.397621,
		12.101745, 24.562275, 19.573954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.623964, 24.937244, 19.039618>,  <12.045468, 25.202089, 19.295620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.623964, 24.937244, 19.039618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.427901, 24.605591, 19.147160>,  <12.310264, 24.406599, 19.211685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.427901, 24.605591, 19.147160>,  <12.623964, 24.937244, 19.039618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.427901, 24.605591, 19.147160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373296, -0.478416, -0.794839,
		0.787651, -0.289235, 0.544012,
		-0.490159, -0.829133, 0.268854,
		12.280853, 24.356852, 19.227816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.165650, 24.516563, 19.050806>,  <12.623964, 24.937244, 19.039618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.165650, 24.516563, 19.050806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.837025, 24.288544, 19.047356>,  <12.639849, 24.151731, 19.045286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.837025, 24.288544, 19.047356>,  <13.165650, 24.516563, 19.050806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.837025, 24.288544, 19.047356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441297, -0.626281, -0.642673,
		0.360953, -0.531804, 0.766092,
		-0.821565, -0.570049, -0.008625,
		12.590555, 24.117529, 19.044767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.358177, 23.838062, 19.244123>,  <13.165650, 24.516563, 19.050806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.358177, 23.838062, 19.244123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.014841, 23.811054, 19.040676>,  <12.808839, 23.794849, 18.918608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.014841, 23.811054, 19.040676>,  <13.358177, 23.838062, 19.244123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.014841, 23.811054, 19.040676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421021, -0.659257, -0.622994,
		-0.293244, -0.748880, 0.594296,
		-0.858341, -0.067522, -0.508617,
		12.757339, 23.790798, 18.888090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.380747, 23.215349, 18.967575>,  <13.358177, 23.838062, 19.244123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.380747, 23.215349, 18.967575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.094880, 23.362740, 18.729759>,  <12.923360, 23.451174, 18.587069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.094880, 23.362740, 18.729759>,  <13.380747, 23.215349, 18.967575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.094880, 23.362740, 18.729759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182980, -0.721905, -0.667362,
		-0.675106, -0.585731, 0.448499,
		-0.714668, 0.368474, -0.594539,
		12.880481, 23.473282, 18.551397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.054710, 22.567513, 18.682293>,  <13.380747, 23.215349, 18.967575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.054710, 22.567513, 18.682293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.994973, 22.884783, 18.446135>,  <12.959131, 23.075146, 18.304440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.994973, 22.884783, 18.446135>,  <13.054710, 22.567513, 18.682293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.994973, 22.884783, 18.446135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017196, -0.594917, -0.803603,
		-0.988636, -0.130164, 0.075206,
		-0.149342, 0.793178, -0.590395,
		12.950171, 23.122736, 18.269016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.380620, 22.410326, 18.410259>,  <13.054710, 22.567513, 18.682293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.380620, 22.410326, 18.410259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.592274, 22.666374, 18.187454>,  <12.719266, 22.820004, 18.053770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.592274, 22.666374, 18.187454>,  <12.380620, 22.410326, 18.410259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.592274, 22.666374, 18.187454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147088, -0.577310, -0.803168,
		-0.835692, 0.506914, -0.211321,
		0.529135, 0.640118, -0.557014,
		12.751014, 22.858410, 18.020350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.987262, 22.378742, 17.878679>,  <12.380620, 22.410326, 18.410259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.987262, 22.378742, 17.878679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.325627, 22.537159, 17.735806>,  <12.528646, 22.632210, 17.650082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.325627, 22.537159, 17.735806>,  <11.987262, 22.378742, 17.878679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.325627, 22.537159, 17.735806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190333, -0.401447, -0.895887,
		-0.498200, 0.825827, -0.264210,
		0.845914, 0.396043, -0.357183,
		12.579401, 22.655972, 17.628651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.809514, 22.489803, 17.289700>,  <11.987262, 22.378742, 17.878679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.809514, 22.489803, 17.289700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.209456, 22.493027, 17.283731>,  <12.449422, 22.494961, 17.280149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.209456, 22.493027, 17.283731>,  <11.809514, 22.489803, 17.289700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.209456, 22.493027, 17.283731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008107, -0.545626, -0.837990,
		-0.014897, 0.837990, -0.545482,
		0.999856, 0.008061, -0.014922,
		12.509414, 22.495445, 17.279255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.889321, 22.623920, 16.678671>,  <11.809514, 22.489803, 17.289700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.889321, 22.623920, 16.678671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.209043, 22.441528, 16.835232>,  <12.400875, 22.332092, 16.929169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.209043, 22.441528, 16.835232>,  <11.889321, 22.623920, 16.678671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.209043, 22.441528, 16.835232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067972, -0.715751, -0.695040,
		0.597071, 0.528943, -0.603097,
		0.799304, -0.455982, 0.391400,
		12.448833, 22.304733, 16.952652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.334179, 22.504049, 16.148727>,  <11.889321, 22.623920, 16.678671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.334179, 22.504049, 16.148727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.441317, 22.248165, 16.436903>,  <12.505599, 22.094635, 16.609808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.441317, 22.248165, 16.436903>,  <12.334179, 22.504049, 16.148727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.441317, 22.248165, 16.436903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028941, -0.752765, -0.657653,
		0.963027, 0.155298, -0.220138,
		0.267845, -0.639709, 0.720439,
		12.521670, 22.056253, 16.653034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.921116, 22.212458, 15.869055>,  <12.334179, 22.504049, 16.148727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.921116, 22.212458, 15.869055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.810278, 21.956627, 16.155874>,  <12.743775, 21.803127, 16.327967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.810278, 21.956627, 16.155874>,  <12.921116, 22.212458, 15.869055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.810278, 21.956627, 16.155874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306248, -0.648561, -0.696837,
		0.910731, -0.412684, -0.016157,
		-0.277095, -0.639579, 0.717048,
		12.727150, 21.764753, 16.370989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.270481, 21.627058, 15.741753>,  <12.921116, 22.212458, 15.869055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.270481, 21.627058, 15.741753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.957794, 21.516705, 15.965469>,  <12.770183, 21.450493, 16.099699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.957794, 21.516705, 15.965469>,  <13.270481, 21.627058, 15.741753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.957794, 21.516705, 15.965469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210582, -0.727383, -0.653123,
		0.587005, -0.628334, 0.510511,
		-0.781716, -0.275882, 0.559293,
		12.723279, 21.433941, 16.133257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.344424, 20.904663, 15.737320>,  <13.270481, 21.627058, 15.741753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.344424, 20.904663, 15.737320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.974465, 21.007603, 15.849274>,  <12.752490, 21.069366, 15.916446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.974465, 21.007603, 15.849274>,  <13.344424, 20.904663, 15.737320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.974465, 21.007603, 15.849274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380195, -0.633784, -0.673624,
		0.004029, -0.729444, 0.684029,
		-0.924897, 0.257351, 0.279885,
		12.696996, 21.084808, 15.933239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.393411, 20.250927, 15.993148>,  <13.344424, 20.904663, 15.737320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.393411, 20.250927, 15.993148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.717023, 20.301918, 15.763638>,  <13.911190, 20.332512, 15.625932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.717023, 20.301918, 15.763638>,  <13.393411, 20.250927, 15.993148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.717023, 20.301918, 15.763638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519898, -0.300166, -0.799754,
		-0.274179, 0.945330, -0.176569,
		0.809031, 0.127478, -0.573775,
		13.959732, 20.340162, 15.591505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.801870, 19.927929, 16.526709>,  <13.393411, 20.250927, 15.993148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.801870, 19.927929, 16.526709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.173913, 19.826811, 16.420128>,  <14.397139, 19.766140, 16.356180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.173913, 19.826811, 16.420128>,  <13.801870, 19.927929, 16.526709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.173913, 19.826811, 16.420128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352963, 0.414549, 0.838789,
		-0.101584, -0.874210, 0.474802,
		0.930106, -0.252795, -0.266452,
		14.452945, 19.750973, 16.340193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.196756, 19.954462, 17.143236>,  <13.801870, 19.927929, 16.526709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.196756, 19.954462, 17.143236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.493876, 19.953293, 16.875433>,  <14.672147, 19.952591, 16.714750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.493876, 19.953293, 16.875433>,  <14.196756, 19.954462, 17.143236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.493876, 19.953293, 16.875433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567347, 0.533699, 0.627122,
		0.355483, -0.845670, 0.398089,
		0.742798, -0.002923, -0.669509,
		14.716715, 19.952415, 16.674580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.874892, 19.791351, 17.523937>,  <14.196756, 19.954462, 17.143236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.874892, 19.791351, 17.523937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.961628, 19.989202, 17.187288>,  <15.013669, 20.107912, 16.985300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.961628, 19.989202, 17.187288>,  <14.874892, 19.791351, 17.523937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.961628, 19.989202, 17.187288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553717, 0.647710, 0.523325,
		0.803977, -0.579497, -0.133434,
		0.216838, 0.494626, -0.841621,
		15.026680, 20.137590, 16.934801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549318, 19.872375, 17.608841>,  <14.874892, 19.791351, 17.523937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.549318, 19.872375, 17.608841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.469624, 20.170944, 17.354862>,  <15.421806, 20.350086, 17.202475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.469624, 20.170944, 17.354862>,  <15.549318, 19.872375, 17.608841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.469624, 20.170944, 17.354862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517522, 0.630358, 0.578636,
		0.832151, -0.213313, -0.511881,
		-0.199237, 0.746423, -0.634947,
		15.409852, 20.394871, 17.164377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.178804, 20.208080, 17.424007>,  <15.549318, 19.872375, 17.608841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.178804, 20.208080, 17.424007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.892854, 20.475817, 17.343081>,  <15.721283, 20.636459, 17.294523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.892854, 20.475817, 17.343081>,  <16.178804, 20.208080, 17.424007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.892854, 20.475817, 17.343081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488424, 0.685035, 0.540526,
		0.500393, 0.287592, -0.816638,
		-0.714877, 0.669341, -0.202319,
		15.678391, 20.676619, 17.282385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.479540, 20.939032, 17.207312>,  <16.178804, 20.208080, 17.424007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.479540, 20.939032, 17.207312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.098803, 21.054024, 17.249926>,  <15.870360, 21.123018, 17.275494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.098803, 21.054024, 17.249926>,  <16.479540, 20.939032, 17.207312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.098803, 21.054024, 17.249926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304160, 0.841857, 0.445828,
		0.038480, 0.456762, -0.888756,
		-0.951843, 0.287480, 0.106534,
		15.813250, 21.140268, 17.281885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.490473, 21.619276, 16.956987>,  <16.479540, 20.939032, 17.207312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.490473, 21.619276, 16.956987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.179251, 21.540333, 17.195543>,  <15.992517, 21.492968, 17.338676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.179251, 21.540333, 17.195543>,  <16.490473, 21.619276, 16.956987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.179251, 21.540333, 17.195543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102267, 0.896910, 0.430225,
		-0.619815, 0.395730, -0.677663,
		-0.778056, -0.197357, 0.596389,
		15.945834, 21.481125, 17.374460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.196123, 22.187349, 17.111597>,  <16.490473, 21.619276, 16.956987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.196123, 22.187349, 17.111597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.007730, 21.980993, 17.397823>,  <15.894695, 21.857180, 17.569559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.007730, 21.980993, 17.397823>,  <16.196123, 22.187349, 17.111597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.007730, 21.980993, 17.397823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078099, 0.832369, 0.548692,
		-0.878679, 0.202538, -0.432320,
		-0.470981, -0.515888, 0.715567,
		15.866436, 21.826227, 17.612494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.528330, 22.561371, 17.274641>,  <16.196123, 22.187349, 17.111597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.528330, 22.561371, 17.274641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.652353, 22.358679, 17.596409>,  <15.726768, 22.237064, 17.789469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.652353, 22.358679, 17.596409>,  <15.528330, 22.561371, 17.274641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.652353, 22.358679, 17.596409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069038, 0.831884, 0.550639,
		-0.948207, -0.226267, 0.222950,
		0.310059, -0.506728, 0.804419,
		15.745371, 22.206661, 17.837734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.053782, 22.692484, 17.747446>,  <15.528330, 22.561371, 17.274641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.053782, 22.692484, 17.747446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.382562, 22.569593, 17.939283>,  <15.579829, 22.495859, 18.054386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.382562, 22.569593, 17.939283>,  <15.053782, 22.692484, 17.747446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.382562, 22.569593, 17.939283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208142, 0.621777, 0.755030,
		-0.530168, -0.720420, 0.447121,
		0.821948, -0.307228, 0.479596,
		15.629147, 22.477425, 18.083162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.981684, 22.953089, 18.386578>,  <15.053782, 22.692484, 17.747446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.981684, 22.953089, 18.386578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.363478, 22.847555, 18.442223>,  <15.592554, 22.784235, 18.475609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.363478, 22.847555, 18.442223>,  <14.981684, 22.953089, 18.386578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.363478, 22.847555, 18.442223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075490, 0.664912, 0.743097,
		-0.288550, -0.698773, 0.654564,
		0.954484, -0.263834, 0.139110,
		15.649823, 22.768406, 18.483955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.010514, 22.784538, 19.052410>,  <14.981684, 22.953089, 18.386578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.010514, 22.784538, 19.052410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.368725, 22.909668, 18.925810>,  <15.583652, 22.984745, 18.849850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.368725, 22.909668, 18.925810>,  <15.010514, 22.784538, 19.052410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.368725, 22.909668, 18.925810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059843, 0.620106, 0.782232,
		0.440965, -0.719451, 0.536601,
		0.895527, 0.312825, -0.316499,
		15.637383, 23.003515, 18.830860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.443204, 22.615631, 19.578335>,  <15.010514, 22.784538, 19.052410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.443204, 22.615631, 19.578335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.615451, 22.905083, 19.362583>,  <15.718799, 23.078754, 19.233131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.615451, 22.905083, 19.362583>,  <15.443204, 22.615631, 19.578335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.615451, 22.905083, 19.362583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192761, 0.510100, 0.838237,
		0.881710, -0.464929, 0.080170,
		0.430616, 0.723629, -0.539380,
		15.744636, 23.122171, 19.200769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.057335, 22.737873, 19.952557>,  <15.443204, 22.615631, 19.578335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.057335, 22.737873, 19.952557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.967166, 23.060480, 19.733938>,  <15.913064, 23.254045, 19.602768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.967166, 23.060480, 19.733938>,  <16.057335, 22.737873, 19.952557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.967166, 23.060480, 19.733938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089178, 0.575710, 0.812776,
		0.970171, 0.134480, -0.201703,
		-0.225424, 0.806519, -0.546545,
		15.899539, 23.302435, 19.569975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.586739, 23.189234, 20.078884>,  <16.057335, 22.737873, 19.952557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.586739, 23.189234, 20.078884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.287926, 23.419380, 19.945677>,  <16.108639, 23.557468, 19.865753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.287926, 23.419380, 19.945677>,  <16.586739, 23.189234, 20.078884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.287926, 23.419380, 19.945677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147201, 0.631662, 0.761141,
		0.648286, 0.519576, -0.556566,
		-0.747032, 0.575364, -0.333016,
		16.063816, 23.591990, 19.845772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.769520, 23.861095, 20.270578>,  <16.586739, 23.189234, 20.078884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.769520, 23.861095, 20.270578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.378395, 23.885113, 20.190304>,  <16.143721, 23.899523, 20.142139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.378395, 23.885113, 20.190304>,  <16.769520, 23.861095, 20.270578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.378395, 23.885113, 20.190304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121087, 0.619754, 0.775398,
		0.170934, 0.782496, -0.598734,
		-0.977814, 0.060043, -0.200688,
		16.085051, 23.903126, 20.130098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.606335, 24.623735, 20.461123>,  <16.769520, 23.861095, 20.270578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.606335, 24.623735, 20.461123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.253609, 24.437994, 20.428194>,  <16.041973, 24.326550, 20.408438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.253609, 24.437994, 20.428194>,  <16.606335, 24.623735, 20.461123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.253609, 24.437994, 20.428194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314851, 0.449733, 0.835828,
		-0.351096, 0.762966, -0.542783,
		-0.881816, -0.464352, -0.082322,
		15.989063, 24.298689, 20.403498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.104860, 25.208380, 20.629953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.949354, 24.850451, 20.717731>,  <15.856050, 24.635693, 20.770399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.949354, 24.850451, 20.717731>,  <16.104860, 25.208380, 20.629953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.949354, 24.850451, 20.717731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303533, 0.349279, 0.886494,
		-0.869902, 0.278028, -0.407396,
		-0.388765, -0.894821, 0.219448,
		15.832725, 24.582005, 20.783566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.462087, 25.262403, 20.968708>,  <16.104860, 25.208380, 20.629953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.462087, 25.262403, 20.968708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.538891, 24.884039, 21.073311>,  <15.584973, 24.657021, 21.136072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.538891, 24.884039, 21.073311>,  <15.462087, 25.262403, 20.968708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.538891, 24.884039, 21.073311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364652, 0.178622, 0.913851,
		-0.911132, -0.270827, -0.310631,
		0.192010, -0.945911, 0.261506,
		15.596494, 24.600266, 21.151762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.880898, 24.991648, 21.504059>,  <15.462087, 25.262403, 20.968708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.880898, 24.991648, 21.504059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.159101, 24.712185, 21.571165>,  <15.326024, 24.544508, 21.611429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.159101, 24.712185, 21.571165>,  <14.880898, 24.991648, 21.504059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.159101, 24.712185, 21.571165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166963, 0.069950, 0.983479,
		-0.698849, -0.712029, -0.067999,
		0.695509, -0.698657, 0.167767,
		15.367754, 24.502588, 21.621494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.601403, 24.600033, 22.056507>,  <14.880898, 24.991648, 21.504059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.601403, 24.600033, 22.056507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.991941, 24.514208, 22.067194>,  <15.226264, 24.462713, 22.073606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.991941, 24.514208, 22.067194>,  <14.601403, 24.600033, 22.056507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.991941, 24.514208, 22.067194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030287, -0.013369, 0.999452,
		-0.214089, -0.976619, -0.019551,
		0.976344, -0.214564, 0.026717,
		15.284845, 24.449839, 22.075209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.614100, 24.078514, 22.508280>,  <14.601403, 24.600033, 22.056507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.614100, 24.078514, 22.508280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.975735, 24.247744, 22.484159>,  <15.192716, 24.349281, 22.469688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.975735, 24.247744, 22.484159>,  <14.614100, 24.078514, 22.508280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.975735, 24.247744, 22.484159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014067, 0.111563, 0.993658,
		0.427120, -0.899200, 0.094912,
		0.904086, 0.423076, -0.060300,
		15.246961, 24.374666, 22.466070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.988738, 23.843540, 23.106308>,  <14.614100, 24.078514, 22.508280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.988738, 23.843540, 23.106308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.224615, 24.153906, 23.016670>,  <15.366141, 24.340126, 22.962887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.224615, 24.153906, 23.016670>,  <14.988738, 23.843540, 23.106308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.224615, 24.153906, 23.016670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272100, 0.070378, 0.959692,
		0.760410, -0.626900, -0.169625,
		0.589693, 0.775915, -0.224095,
		15.401524, 24.386681, 22.949442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.634006, 23.724573, 23.494799>,  <14.988738, 23.843540, 23.106308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.634006, 23.724573, 23.494799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.634653, 24.115120, 23.408352>,  <15.635042, 24.349447, 23.356483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.634653, 24.115120, 23.408352>,  <15.634006, 23.724573, 23.494799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.634653, 24.115120, 23.408352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429995, 0.194437, 0.881645,
		0.902830, -0.094357, -0.419518,
		0.001619, 0.976366, -0.216116,
		15.635139, 24.408030, 23.343517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.267771, 24.012344, 23.804735>,  <15.634006, 23.724573, 23.494799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.267771, 24.012344, 23.804735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.042326, 24.332439, 23.722797>,  <15.907060, 24.524496, 23.673635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.042326, 24.332439, 23.722797>,  <16.267771, 24.012344, 23.804735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.042326, 24.332439, 23.722797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398404, 0.480576, 0.781230,
		0.723613, 0.358699, -0.589677,
		-0.563611, 0.800238, -0.204844,
		15.873242, 24.572512, 23.661345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.718266, 24.754721, 23.610447>,  <16.267771, 24.012344, 23.804735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.718266, 24.754721, 23.610447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.365572, 24.794943, 23.794809>,  <16.153955, 24.819077, 23.905426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.365572, 24.794943, 23.794809>,  <16.718266, 24.754721, 23.610447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.365572, 24.794943, 23.794809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430209, 0.572268, 0.698162,
		-0.193557, 0.813879, -0.547848,
		-0.881735, 0.100555, 0.460904,
		16.101051, 24.825109, 23.933081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.835102, 25.241753, 24.002045>,  <16.718266, 24.754721, 23.610447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.835102, 25.241753, 24.002045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.480642, 25.167133, 24.171722>,  <16.267967, 25.122362, 24.273529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.480642, 25.167133, 24.171722>,  <16.835102, 25.241753, 24.002045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.480642, 25.167133, 24.171722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238562, 0.601123, 0.762718,
		-0.397278, 0.777078, -0.488181,
		-0.886148, -0.186550, 0.424194,
		16.214798, 25.111168, 24.298981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.574903, 25.895025, 24.303411>,  <16.835102, 25.241753, 24.002045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.574903, 25.895025, 24.303411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.389400, 25.593332, 24.489340>,  <16.278099, 25.412315, 24.600897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.389400, 25.593332, 24.489340>,  <16.574903, 25.895025, 24.303411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.389400, 25.593332, 24.489340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204262, 0.419494, 0.884478,
		-0.862094, 0.505129, -0.040483,
		-0.463758, -0.754234, 0.464822,
		16.250273, 25.367062, 24.628786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.992004, 26.159101, 24.690657>,  <16.574903, 25.895025, 24.303411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.992004, 26.159101, 24.690657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.074600, 25.799736, 24.845686>,  <16.124159, 25.584116, 24.938704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.074600, 25.799736, 24.845686>,  <15.992004, 26.159101, 24.690657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.074600, 25.799736, 24.845686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257124, 0.432012, 0.864438,
		-0.944060, -0.078844, 0.320210,
		0.206490, -0.898415, 0.387573,
		16.136547, 25.530212, 24.961958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.595055, 26.082363, 25.320765>,  <15.992004, 26.159101, 24.690657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.595055, 26.082363, 25.320765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.909808, 25.836620, 25.344007>,  <16.098660, 25.689175, 25.357954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.909808, 25.836620, 25.344007>,  <15.595055, 26.082363, 25.320765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.909808, 25.836620, 25.344007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185961, 0.325858, 0.926949,
		-0.588415, -0.718596, 0.370660,
		0.786884, -0.614359, 0.058109,
		16.145874, 25.652313, 25.361441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.311935, 25.655355, 25.864079>,  <15.595055, 26.082363, 25.320765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.311935, 25.655355, 25.864079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.705193, 25.582241, 25.862215>,  <15.941147, 25.538372, 25.861097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.705193, 25.582241, 25.862215>,  <15.311935, 25.655355, 25.864079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.705193, 25.582241, 25.862215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030349, 0.138002, 0.989967,
		-0.180308, -0.973419, 0.141223,
		0.983142, -0.182785, -0.004659,
		16.000135, 25.527405, 25.860817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.489816, 25.351942, 26.387239>,  <15.311935, 25.655355, 25.864079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.489816, 25.351942, 26.387239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.868885, 25.444424, 26.299185>,  <16.096327, 25.499912, 26.246351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.868885, 25.444424, 26.299185>,  <15.489816, 25.351942, 26.387239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.868885, 25.444424, 26.299185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201236, 0.102684, 0.974146,
		0.247832, -0.967471, 0.050785,
		0.947673, 0.231205, -0.220138,
		16.153187, 25.513784, 26.233143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906181, 24.999346, 26.852222>,  <15.489816, 25.351942, 26.387239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.906181, 24.999346, 26.852222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.137209, 25.301443, 26.728275>,  <16.275826, 25.482702, 26.653906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.137209, 25.301443, 26.728275>,  <15.906181, 24.999346, 26.852222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.137209, 25.301443, 26.728275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233723, 0.210708, 0.949197,
		0.782170, -0.620649, -0.054820,
		0.577568, 0.755246, -0.309870,
		16.310480, 25.528017, 26.635315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.428591, 24.841778, 27.271488>,  <15.906181, 24.999346, 26.852222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.428591, 24.841778, 27.271488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.531893, 25.211475, 27.159006>,  <16.593874, 25.433294, 27.091516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.531893, 25.211475, 27.159006>,  <16.428591, 24.841778, 27.271488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.531893, 25.211475, 27.159006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194346, 0.235426, 0.952263,
		0.946326, -0.300578, -0.118824,
		0.258255, 0.924244, -0.281206,
		16.609369, 25.488749, 27.074644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.130579, 24.873711, 27.535107>,  <16.428591, 24.841778, 27.271488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.130579, 24.873711, 27.535107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.998079, 25.241653, 27.451073>,  <16.918579, 25.462420, 27.400652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.998079, 25.241653, 27.451073>,  <17.130579, 24.873711, 27.535107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.998079, 25.241653, 27.451073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225445, 0.293368, 0.929037,
		0.916214, 0.260381, -0.304556,
		-0.331251, 0.919857, -0.210087,
		16.898705, 25.517611, 27.388046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.639791, 25.430851, 27.843735>,  <17.130579, 24.873711, 27.535107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.639791, 25.430851, 27.843735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.294807, 25.630550, 27.810476>,  <17.087816, 25.750370, 27.790522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.294807, 25.630550, 27.810476>,  <17.639791, 25.430851, 27.843735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.294807, 25.630550, 27.810476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088284, 0.310158, 0.946577,
		0.498365, 0.809045, -0.311575,
		-0.862461, 0.499248, -0.083146,
		17.036070, 25.780325, 27.785532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.761765, 26.080408, 28.259562>,  <17.639791, 25.430851, 27.843735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.761765, 26.080408, 28.259562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.362989, 26.049940, 28.252531>,  <17.123724, 26.031658, 28.248314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.362989, 26.049940, 28.252531>,  <17.761765, 26.080408, 28.259562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.362989, 26.049940, 28.252531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050745, 0.459570, 0.886691,
		-0.059464, 0.884869, -0.462029,
		-0.996940, -0.076172, -0.017575,
		17.063908, 26.027088, 28.247259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.478327, 26.785223, 28.528383>,  <17.761765, 26.080408, 28.259562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.478327, 26.785223, 28.528383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.153524, 26.552874, 28.551140>,  <16.958643, 26.413464, 28.564793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.153524, 26.552874, 28.551140>,  <17.478327, 26.785223, 28.528383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.153524, 26.552874, 28.551140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301476, 0.500895, 0.811305,
		-0.499761, 0.641632, -0.581848,
		-0.812005, -0.580872, 0.056891,
		16.909924, 26.378613, 28.568207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.823029, 27.333338, 28.622812>,  <17.478327, 26.785223, 28.528383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.823029, 27.333338, 28.622812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.736242, 26.957645, 28.729227>,  <16.684172, 26.732231, 28.793076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.736242, 26.957645, 28.729227>,  <16.823029, 27.333338, 28.622812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.736242, 26.957645, 28.729227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325683, 0.326558, 0.887294,
		-0.920248, 0.105868, -0.376742,
		-0.216964, -0.939229, 0.266035,
		16.671154, 26.675877, 28.809038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.123386, 27.243092, 28.909798>,  <16.823029, 27.333338, 28.622812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.123386, 27.243092, 28.909798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.394445, 26.990580, 29.060677>,  <16.557081, 26.839073, 29.151205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.394445, 26.990580, 29.060677>,  <16.123386, 27.243092, 28.909798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.394445, 26.990580, 29.060677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224283, 0.311073, 0.923542,
		-0.700350, -0.710436, 0.069213,
		0.677648, -0.631279, 0.377199,
		16.597740, 26.801195, 29.173836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.770357, 26.642181, 29.111074>,  <16.123386, 27.243092, 28.909798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.770357, 26.642181, 29.111074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.025801, 26.781796, 29.385403>,  <16.179068, 26.865564, 29.549999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.025801, 26.781796, 29.385403>,  <15.770357, 26.642181, 29.111074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.025801, 26.781796, 29.385403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111262, -0.923736, 0.366513,
		0.761445, -0.157753, -0.628741,
		0.638610, 0.349035, 0.685822,
		16.217384, 26.886505, 29.591150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.515674, 26.975277, 29.726294>,  <15.770357, 26.642181, 29.111074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.515674, 26.975277, 29.726294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.142426, 27.066654, 29.837360>,  <14.918476, 27.121481, 29.903999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.142426, 27.066654, 29.837360>,  <15.515674, 26.975277, 29.726294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.142426, 27.066654, 29.837360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344341, -0.345451, -0.872979,
		-0.103508, -0.910207, 0.401011,
		-0.933121, 0.228445, 0.277665,
		14.862489, 27.135187, 29.920660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.072188, 26.343500, 29.663898>,  <15.515674, 26.975277, 29.726294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.072188, 26.343500, 29.663898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.817155, 26.650902, 29.642410>,  <14.664135, 26.835342, 29.629517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.817155, 26.650902, 29.642410>,  <15.072188, 26.343500, 29.663898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.817155, 26.650902, 29.642410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384262, -0.377690, -0.842433,
		-0.667705, -0.516478, 0.536116,
		-0.637584, 0.768506, -0.053723,
		14.625879, 26.881453, 29.626293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.403737, 26.071142, 29.435125>,  <15.072188, 26.343500, 29.663898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.403737, 26.071142, 29.435125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.344048, 26.461206, 29.369648>,  <14.308234, 26.695246, 29.330362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.344048, 26.461206, 29.369648>,  <14.403737, 26.071142, 29.435125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.344048, 26.461206, 29.369648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416041, -0.212099, -0.884265,
		-0.897019, -0.063850, 0.437357,
		-0.149223, 0.975160, -0.163692,
		14.299280, 26.753754, 29.320539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.706648, 26.073305, 29.109110>,  <14.403737, 26.071142, 29.435125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.706648, 26.073305, 29.109110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.894571, 26.412888, 29.012320>,  <14.007325, 26.616638, 28.954247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.894571, 26.412888, 29.012320>,  <13.706648, 26.073305, 29.109110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.894571, 26.412888, 29.012320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404407, -0.036671, -0.913844,
		-0.784687, 0.527188, 0.326096,
		0.469809, 0.848957, -0.241974,
		14.035514, 26.667574, 28.939728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.230890, 26.379253, 28.662064>,  <13.706648, 26.073305, 29.109110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.230890, 26.379253, 28.662064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.578060, 26.566523, 28.595705>,  <13.786362, 26.678885, 28.555891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.578060, 26.566523, 28.595705>,  <13.230890, 26.379253, 28.662064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.578060, 26.566523, 28.595705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187505, -0.000452, -0.982264,
		-0.459945, 0.883637, 0.087393,
		0.867924, 0.468174, -0.165894,
		13.838437, 26.706974, 28.545937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.059603, 26.967249, 28.345387>,  <13.230890, 26.379253, 28.662064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.059603, 26.967249, 28.345387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.442251, 26.890837, 28.257402>,  <13.671841, 26.844990, 28.204613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.442251, 26.890837, 28.257402>,  <13.059603, 26.967249, 28.345387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.442251, 26.890837, 28.257402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225101, -0.005371, -0.974321,
		0.184944, 0.981569, -0.048139,
		0.956622, -0.191031, -0.219959,
		13.729238, 26.833527, 28.191414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.329839, 27.464857, 27.883068>,  <13.059603, 26.967249, 28.345387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.329839, 27.464857, 27.883068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.543651, 27.129887, 27.837475>,  <13.671938, 26.928904, 27.810120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.543651, 27.129887, 27.837475>,  <13.329839, 27.464857, 27.883068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.543651, 27.129887, 27.837475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218150, -0.006418, -0.975894,
		0.816510, 0.546509, -0.186116,
		0.534530, -0.837428, -0.113981,
		13.704009, 26.878658, 27.803280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.640949, 27.576033, 27.222950>,  <13.329839, 27.464857, 27.883068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.640949, 27.576033, 27.222950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.714133, 27.186220, 27.274818>,  <13.758043, 26.952333, 27.305941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.714133, 27.186220, 27.274818>,  <13.640949, 27.576033, 27.222950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.714133, 27.186220, 27.274818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249826, -0.173656, -0.952592,
		0.950848, 0.141891, -0.275236,
		0.182960, -0.974531, 0.129672,
		13.769021, 26.893862, 27.313721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.911641, 27.327181, 26.564539>,  <13.640949, 27.576033, 27.222950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.911641, 27.327181, 26.564539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.816275, 26.976042, 26.730692>,  <13.759054, 26.765358, 26.830383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.816275, 26.976042, 26.730692>,  <13.911641, 27.327181, 26.564539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.816275, 26.976042, 26.730692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104931, -0.401926, -0.909640,
		0.965478, -0.260460, 0.003712,
		-0.238417, -0.877848, 0.415380,
		13.744749, 26.712688, 26.855307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.401340, 26.803347, 26.343285>,  <13.911641, 27.327181, 26.564539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.401340, 26.803347, 26.343285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.064979, 26.607586, 26.435694>,  <13.863162, 26.490129, 26.491138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.064979, 26.607586, 26.435694>,  <14.401340, 26.803347, 26.343285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.064979, 26.607586, 26.435694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009409, -0.440038, -0.897930,
		0.541106, -0.752897, 0.374633,
		-0.840902, -0.489400, 0.231024,
		13.812708, 26.460766, 26.505001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.535310, 25.974430, 26.267193>,  <14.401340, 26.803347, 26.343285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.535310, 25.974430, 26.267193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.147388, 26.066408, 26.234695>,  <13.914634, 26.121595, 26.215197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.147388, 26.066408, 26.234695>,  <14.535310, 25.974430, 26.267193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.147388, 26.066408, 26.234695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017715, -0.398679, -0.916919,
		-0.243231, -0.887795, 0.390715,
		-0.969807, 0.229944, -0.081244,
		13.856445, 26.135391, 26.210321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.242102, 25.348640, 25.894482>,  <14.535310, 25.974430, 26.267193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.242102, 25.348640, 25.894482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.979351, 25.648443, 25.861605>,  <13.821701, 25.828325, 25.841879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.979351, 25.648443, 25.861605>,  <14.242102, 25.348640, 25.894482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.979351, 25.648443, 25.861605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096992, -0.192099, -0.976571,
		-0.747734, -0.633514, 0.198881,
		-0.656876, 0.749505, -0.082193,
		13.782289, 25.873295, 25.836946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.849339, 25.159094, 25.340771>,  <14.242102, 25.348640, 25.894482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.849339, 25.159094, 25.340771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.710417, 25.532572, 25.375639>,  <13.627064, 25.756659, 25.396559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.710417, 25.532572, 25.375639>,  <13.849339, 25.159094, 25.340771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.710417, 25.532572, 25.375639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222163, 0.008385, -0.974974,
		-0.911057, -0.357977, 0.204519,
		-0.347303, 0.933693, 0.087169,
		13.606226, 25.812679, 25.401789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.168800, 25.292484, 25.037378>,  <13.849339, 25.159094, 25.340771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.168800, 25.292484, 25.037378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.330188, 25.656399, 24.998388>,  <13.427020, 25.874748, 24.974995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.330188, 25.656399, 24.998388>,  <13.168800, 25.292484, 25.037378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.330188, 25.656399, 24.998388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205355, -0.013776, -0.978591,
		-0.891651, 0.414847, 0.181272,
		0.403469, 0.909787, -0.097474,
		13.451228, 25.929335, 24.969147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.754070, 25.610405, 24.603224>,  <13.168800, 25.292484, 25.037378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.754070, 25.610405, 24.603224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.101050, 25.808998, 24.590343>,  <13.309238, 25.928154, 24.582615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.101050, 25.808998, 24.590343>,  <12.754070, 25.610405, 24.603224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.101050, 25.808998, 24.590343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090566, 0.093931, -0.991451,
		-0.489213, 0.862950, 0.126445,
		0.867449, 0.496482, -0.032202,
		13.361285, 25.957943, 24.580683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.669145, 26.138235, 24.165424>,  <12.754070, 25.610405, 24.603224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.669145, 26.138235, 24.165424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.067863, 26.107967, 24.175774>,  <13.307095, 26.089808, 24.181984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.067863, 26.107967, 24.175774>,  <12.669145, 26.138235, 24.165424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.067863, 26.107967, 24.175774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032291, 0.084849, -0.995870,
		0.073160, 0.993516, 0.087020,
		0.996797, -0.075668, 0.025874,
		13.366902, 26.085266, 24.183537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.866620, 26.670355, 23.735941>,  <12.669145, 26.138235, 24.165424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.866620, 26.670355, 23.735941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.172209, 26.412390, 23.744265>,  <13.355562, 26.257610, 23.749258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.172209, 26.412390, 23.744265>,  <12.866620, 26.670355, 23.735941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.172209, 26.412390, 23.744265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053652, -0.095629, -0.993970,
		0.643015, 0.758249, -0.107659,
		0.763972, -0.644914, 0.020809,
		13.401401, 26.218916, 23.750507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.268422, 26.949528, 23.273575>,  <12.866620, 26.670355, 23.735941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.268422, 26.949528, 23.273575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.374202, 26.566679, 23.320877>,  <13.437670, 26.336969, 23.349258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.374202, 26.566679, 23.320877>,  <13.268422, 26.949528, 23.273575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.374202, 26.566679, 23.320877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088109, -0.146085, -0.985340,
		0.960366, 0.250153, -0.122963,
		0.264449, -0.957122, 0.118254,
		13.453536, 26.279543, 23.356354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.705707, 26.874598, 22.763914>,  <13.268422, 26.949528, 23.273575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.705707, 26.874598, 22.763914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.556899, 26.513979, 22.852295>,  <13.467614, 26.297607, 22.905323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.556899, 26.513979, 22.852295>,  <13.705707, 26.874598, 22.763914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.556899, 26.513979, 22.852295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255647, -0.129315, -0.958082,
		0.892327, -0.412910, -0.182370,
		-0.372019, -0.901545, 0.220951,
		13.445293, 26.243515, 22.918581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.001925, 26.280561, 22.313381>,  <13.705707, 26.874598, 22.763914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.001925, 26.280561, 22.313381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.658651, 26.123007, 22.445063>,  <13.452687, 26.028475, 22.524071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.658651, 26.123007, 22.445063>,  <14.001925, 26.280561, 22.313381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.658651, 26.123007, 22.445063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215075, -0.306407, -0.927285,
		0.466115, -0.866584, 0.178238,
		-0.858184, -0.393887, 0.329201,
		13.401196, 26.004841, 22.543823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<21.612370, 21.334099, 13.802810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.576893, 20.937279, 13.767102>,  <21.555607, 20.699186, 13.745678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.576893, 20.937279, 13.767102>,  <21.612370, 21.334099, 13.802810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.576893, 20.937279, 13.767102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412747, 0.118170, -0.903147,
		0.906517, -0.043258, -0.419947,
		-0.088694, -0.992051, -0.089269,
		21.550285, 20.639664, 13.740321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.954596, 21.219273, 13.075866>,  <21.612370, 21.334099, 13.802810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.954596, 21.219273, 13.075866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.683195, 20.965181, 13.223445>,  <21.520355, 20.812727, 13.311993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.683195, 20.965181, 13.223445>,  <21.954596, 21.219273, 13.075866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.683195, 20.965181, 13.223445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589743, 0.171566, -0.789157,
		0.437995, -0.753028, -0.491029,
		-0.678501, -0.635227, 0.368948,
		21.479645, 20.774614, 13.334129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.768711, 20.743477, 12.518379>,  <21.954596, 21.219273, 13.075866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.768711, 20.743477, 12.518379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.482248, 20.827082, 12.784743>,  <21.310371, 20.877245, 12.944562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.482248, 20.827082, 12.784743>,  <21.768711, 20.743477, 12.518379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.482248, 20.827082, 12.784743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660661, 0.104642, -0.743356,
		-0.225053, -0.972298, 0.063146,
		-0.716155, 0.209013, 0.665910,
		21.267403, 20.889786, 12.984516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.321383, 20.183378, 12.784529>,  <21.768711, 20.743477, 12.518379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.321383, 20.183378, 12.784529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.354225, 20.196980, 12.386111>,  <21.373930, 20.205141, 12.147060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.354225, 20.196980, 12.386111>,  <21.321383, 20.183378, 12.784529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.354225, 20.196980, 12.386111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482075, -0.873365, -0.069555,
		-0.872274, 0.485879, -0.055315,
		0.082106, 0.034005, -0.996043,
		21.378857, 20.207182, 12.087298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.757191, 19.881458, 12.608331>,  <21.321383, 20.183378, 12.784529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.757191, 19.881458, 12.608331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.984501, 19.860794, 12.279844>,  <21.120886, 19.848394, 12.082752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.984501, 19.860794, 12.279844>,  <20.757191, 19.881458, 12.608331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.984501, 19.860794, 12.279844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402756, -0.887763, -0.222856,
		-0.717532, 0.457393, -0.525300,
		0.568274, -0.051662, -0.821216,
		21.154984, 19.845295, 12.033480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.283873, 19.763626, 12.073893>,  <20.757191, 19.881458, 12.608331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.283873, 19.763626, 12.073893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.657520, 19.646076, 11.992843>,  <20.881710, 19.575546, 11.944213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.657520, 19.646076, 11.992843>,  <20.283873, 19.763626, 12.073893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.657520, 19.646076, 11.992843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317106, -0.943815, -0.093042,
		-0.163898, 0.151165, -0.974827,
		0.934121, -0.293874, -0.202625,
		20.937756, 19.557915, 11.932055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.231810, 19.233004, 11.480881>,  <20.283873, 19.763626, 12.073893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.231810, 19.233004, 11.480881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.585299, 19.135105, 11.640448>,  <20.797392, 19.076366, 11.736188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.585299, 19.135105, 11.640448>,  <20.231810, 19.233004, 11.480881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.585299, 19.135105, 11.640448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290508, -0.955140, 0.057555,
		0.366935, -0.166751, -0.915179,
		0.883721, -0.244748, 0.398917,
		20.850414, 19.061680, 11.760122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.704456, 18.730429, 11.012126>,  <20.231810, 19.233004, 11.480881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.704456, 18.730429, 11.012126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.727354, 18.715170, 11.411179>,  <20.741093, 18.706015, 11.650610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.727354, 18.715170, 11.411179>,  <20.704456, 18.730429, 11.012126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.727354, 18.715170, 11.411179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569946, -0.821681, 0.001286,
		0.819686, -0.568670, -0.068776,
		0.057243, -0.038144, 0.997631,
		20.744528, 18.703726, 11.710468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.544922, 18.133686, 11.079306>,  <20.704456, 18.730429, 11.012126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.544922, 18.133686, 11.079306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.516344, 18.254564, 11.459532>,  <20.499197, 18.327091, 11.687667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.516344, 18.254564, 11.459532>,  <20.544922, 18.133686, 11.079306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.516344, 18.254564, 11.459532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643669, -0.741978, 0.187507,
		0.761962, -0.598452, 0.247524,
		-0.071443, 0.302197, 0.950564,
		20.494911, 18.345222, 11.744701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.298355, 17.534851, 11.361483>,  <20.544922, 18.133686, 11.079306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.298355, 17.534851, 11.361483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.209724, 17.808334, 11.639605>,  <20.156546, 17.972424, 11.806479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.209724, 17.808334, 11.639605>,  <20.298355, 17.534851, 11.361483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.209724, 17.808334, 11.639605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670018, -0.624806, 0.400866,
		0.708506, -0.377046, 0.596537,
		-0.221575, 0.683706, 0.695306,
		20.143251, 18.013447, 11.848196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.233513, 17.167461, 11.909492>,  <20.298355, 17.534851, 11.361483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.233513, 17.167461, 11.909492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.029554, 17.496033, 12.011678>,  <19.907179, 17.693176, 12.072989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.029554, 17.496033, 12.011678>,  <20.233513, 17.167461, 11.909492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.029554, 17.496033, 12.011678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647716, -0.562035, 0.514373,
		0.566100, 0.096811, 0.818632,
		-0.509897, 0.821428, 0.255462,
		19.876585, 17.742460, 12.088316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.209776, 17.216795, 12.608583>,  <20.233513, 17.167461, 11.909492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.209776, 17.216795, 12.608583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.883921, 17.415068, 12.488140>,  <19.688408, 17.534031, 12.415874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.883921, 17.415068, 12.488140>,  <20.209776, 17.216795, 12.608583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.883921, 17.415068, 12.488140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549671, -0.494256, 0.673478,
		0.185005, 0.714152, 0.675100,
		-0.814638, 0.495680, -0.301109,
		19.639530, 17.563772, 12.397807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.883202, 17.389645, 13.189900>,  <20.209776, 17.216795, 12.608583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.883202, 17.389645, 13.189900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.594318, 17.410841, 12.914044>,  <19.420988, 17.423559, 12.748530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.594318, 17.410841, 12.914044>,  <19.883202, 17.389645, 13.189900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.594318, 17.410841, 12.914044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629565, -0.463302, 0.623698,
		-0.286463, 0.884615, 0.367961,
		-0.722210, 0.052989, -0.689641,
		19.377655, 17.426737, 12.707152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.345261, 17.511551, 13.561913>,  <19.883202, 17.389645, 13.189900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.345261, 17.511551, 13.561913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.175400, 17.385023, 13.222592>,  <19.073484, 17.309107, 13.019000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.175400, 17.385023, 13.222592>,  <19.345261, 17.511551, 13.561913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.175400, 17.385023, 13.222592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628895, -0.570966, 0.527721,
		-0.651278, 0.757589, 0.043530,
		-0.424650, -0.316317, -0.848302,
		19.048004, 17.290129, 12.968102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.735239, 17.604246, 13.724703>,  <19.345261, 17.511551, 13.561913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.735239, 17.604246, 13.724703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.734098, 17.333490, 13.430271>,  <18.733414, 17.171038, 13.253612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.734098, 17.333490, 13.430271>,  <18.735239, 17.604246, 13.724703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.734098, 17.333490, 13.430271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541920, -0.617578, 0.570017,
		-0.840425, 0.400524, -0.365057,
		-0.002854, -0.676888, -0.736080,
		18.733242, 17.130424, 13.209447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.073713, 17.363787, 13.708693>,  <18.735239, 17.604246, 13.724703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.073713, 17.363787, 13.708693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.282110, 17.091986, 13.502064>,  <18.407148, 16.928905, 13.378087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.282110, 17.091986, 13.502064>,  <18.073713, 17.363787, 13.708693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.282110, 17.091986, 13.502064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427480, -0.731541, 0.531139,
		-0.738816, -0.055878, -0.671587,
		0.520972, -0.679504, -0.516588,
		18.438408, 16.888136, 13.347093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.581406, 16.885172, 13.288217>,  <18.073713, 17.363787, 13.708693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.581406, 16.885172, 13.288217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.927631, 16.712740, 13.390171>,  <18.135366, 16.609282, 13.451344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.927631, 16.712740, 13.390171>,  <17.581406, 16.885172, 13.288217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.927631, 16.712740, 13.390171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500138, -0.770177, 0.395840,
		0.025669, -0.470103, -0.882238,
		0.865565, -0.431080, 0.254887,
		18.187302, 16.583416, 13.466637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.544683, 16.081333, 13.156259>,  <17.581406, 16.885172, 13.288217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.544683, 16.081333, 13.156259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.870220, 16.098448, 13.388062>,  <18.065542, 16.108717, 13.527144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.870220, 16.098448, 13.388062>,  <17.544683, 16.081333, 13.156259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.870220, 16.098448, 13.388062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319292, -0.800317, 0.507489,
		0.485504, -0.598049, -0.637671,
		0.813842, 0.042785, 0.579509,
		18.114372, 16.111284, 13.561915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.724577, 15.432648, 13.283444>,  <17.544683, 16.081333, 13.156259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.724577, 15.432648, 13.283444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.913637, 15.625855, 13.578279>,  <18.027073, 15.741780, 13.755179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.913637, 15.625855, 13.578279>,  <17.724577, 15.432648, 13.283444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.913637, 15.625855, 13.578279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163606, -0.773773, 0.611971,
		0.865931, -0.409840, -0.286698,
		0.472649, 0.483019, 0.737086,
		18.055431, 15.770761, 13.799404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.961321, 14.947348, 13.638373>,  <17.724577, 15.432648, 13.283444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.961321, 14.947348, 13.638373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.012703, 15.239656, 13.906544>,  <18.043533, 15.415042, 14.067446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.012703, 15.239656, 13.906544>,  <17.961321, 14.947348, 13.638373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.012703, 15.239656, 13.906544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029886, -0.672868, 0.739159,
		0.991265, -0.114986, -0.064594,
		0.128456, 0.730772, 0.670427,
		18.051239, 15.458888, 14.107672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.552292, 14.808783, 14.143016>,  <17.961321, 14.947348, 13.638373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.552292, 14.808783, 14.143016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.332371, 15.074574, 14.345476>,  <18.200418, 15.234050, 14.466952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.332371, 15.074574, 14.345476>,  <18.552292, 14.808783, 14.143016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.332371, 15.074574, 14.345476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009820, -0.600769, 0.799363,
		0.835238, 0.444461, 0.323778,
		-0.549801, 0.664479, 0.506150,
		18.167431, 15.273918, 14.497321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.905523, 14.904103, 14.717727>,  <18.552292, 14.808783, 14.143016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.905523, 14.904103, 14.717727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.537521, 15.039736, 14.796326>,  <18.316719, 15.121116, 14.843485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.537521, 15.039736, 14.796326>,  <18.905523, 14.904103, 14.717727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.537521, 15.039736, 14.796326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023354, -0.453070, 0.891169,
		0.391207, 0.824470, 0.408909,
		-0.920006, 0.339082, 0.196499,
		18.261520, 15.141460, 14.855275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.864941, 15.296460, 15.292995>,  <18.905523, 14.904103, 14.717727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.864941, 15.296460, 15.292995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.484320, 15.176635, 15.265248>,  <18.255947, 15.104739, 15.248600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.484320, 15.176635, 15.265248>,  <18.864941, 15.296460, 15.292995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.484320, 15.176635, 15.265248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038385, -0.339550, 0.939805,
		-0.305085, 0.891610, 0.334597,
		-0.951551, -0.299563, -0.069367,
		18.198854, 15.086766, 15.244438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.628937, 15.328705, 15.906336>,  <18.864941, 15.296460, 15.292995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.628937, 15.328705, 15.906336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.371147, 15.074390, 15.736428>,  <18.216473, 14.921802, 15.634484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.371147, 15.074390, 15.736428>,  <18.628937, 15.328705, 15.906336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.371147, 15.074390, 15.736428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241279, -0.358044, 0.901992,
		-0.725559, 0.683799, 0.077349,
		-0.644476, -0.635786, -0.424768,
		18.177805, 14.883655, 15.608998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.070734, 15.487852, 16.334591>,  <18.628937, 15.328705, 15.906336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.070734, 15.487852, 16.334591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.043640, 15.129100, 16.159769>,  <18.027384, 14.913848, 16.054876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.043640, 15.129100, 16.159769>,  <18.070734, 15.487852, 16.334591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.043640, 15.129100, 16.159769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354997, -0.387726, 0.850674,
		-0.932411, 0.212773, -0.292127,
		-0.067735, -0.896881, -0.437054,
		18.023319, 14.860036, 16.028652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.400679, 15.191745, 16.480146>,  <18.070734, 15.487852, 16.334591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.400679, 15.191745, 16.480146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.620249, 14.866448, 16.402878>,  <17.751991, 14.671270, 16.356516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.620249, 14.866448, 16.402878>,  <17.400679, 15.191745, 16.480146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.620249, 14.866448, 16.402878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280080, -0.396698, 0.874177,
		-0.787550, -0.425755, -0.445531,
		0.548927, -0.813242, -0.193174,
		17.784927, 14.622476, 16.344925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.933332, 14.604464, 16.741827>,  <17.400679, 15.191745, 16.480146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.933332, 14.604464, 16.741827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.287828, 14.432040, 16.673988>,  <17.500526, 14.328586, 16.633286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.287828, 14.432040, 16.673988>,  <16.933332, 14.604464, 16.741827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.287828, 14.432040, 16.673988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088661, -0.517205, 0.851257,
		-0.454658, -0.739383, -0.496587,
		0.886243, -0.431058, -0.169597,
		17.553701, 14.302723, 16.623110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.854437, 13.805985, 16.662088>,  <16.933332, 14.604464, 16.741827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.854437, 13.805985, 16.662088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.230467, 13.890951, 16.768776>,  <17.456085, 13.941931, 16.832788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.230467, 13.890951, 16.768776>,  <16.854437, 13.805985, 16.662088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.230467, 13.890951, 16.768776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098439, -0.579856, 0.808750,
		0.326451, -0.786541, -0.524198,
		0.940074, 0.212416, 0.266721,
		17.512489, 13.954676, 16.848793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.074799, 13.168266, 17.030542>,  <16.854437, 13.805985, 16.662088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.074799, 13.168266, 17.030542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.356171, 13.442833, 17.104321>,  <17.524994, 13.607574, 17.148588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.356171, 13.442833, 17.104321>,  <17.074799, 13.168266, 17.030542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.356171, 13.442833, 17.104321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197221, -0.437810, 0.877169,
		0.682856, -0.580649, -0.443344,
		0.703428, 0.686417, 0.184445,
		17.567200, 13.648758, 17.159655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.600529, 12.763816, 17.402210>,  <17.074799, 13.168266, 17.030542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.600529, 12.763816, 17.402210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.664257, 13.142385, 17.514568>,  <17.702494, 13.369526, 17.581984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.664257, 13.142385, 17.514568>,  <17.600529, 12.763816, 17.402210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.664257, 13.142385, 17.514568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098030, -0.298288, 0.949428,
		0.982347, -0.123730, -0.140301,
		0.159323, 0.946422, 0.280894,
		17.712053, 13.426311, 17.598837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.274652, 12.713028, 17.787069>,  <17.600529, 12.763816, 17.402210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.274652, 12.713028, 17.787069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.053263, 13.026021, 17.901182>,  <17.920429, 13.213817, 17.969650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.053263, 13.026021, 17.901182>,  <18.274652, 12.713028, 17.787069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.053263, 13.026021, 17.901182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184709, -0.218681, 0.958155,
		0.812127, 0.583008, -0.023497,
		-0.553473, 0.782484, 0.285283,
		17.887220, 13.260766, 17.986767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.655479, 13.307038, 18.042908>,  <18.274652, 12.713028, 17.787069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.655479, 13.307038, 18.042908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.292580, 13.251936, 18.201866>,  <18.074841, 13.218874, 18.297241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.292580, 13.251936, 18.201866>,  <18.655479, 13.307038, 18.042908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.292580, 13.251936, 18.201866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410975, -0.089438, 0.907249,
		-0.089438, 0.986420, 0.137757,
		-0.907249, -0.137757, 0.397394,
		18.020405, 13.210608, 18.321085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.052818, 13.167799, 18.582457>,  <18.655479, 13.307038, 18.042908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.052818, 13.167799, 18.582457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.012136, 13.495298, 18.808485>,  <18.987728, 13.691798, 18.944103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.012136, 13.495298, 18.808485>,  <19.052818, 13.167799, 18.582457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.012136, 13.495298, 18.808485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872807, -0.199120, 0.445599,
		0.477351, 0.538518, -0.694358,
		-0.101702, 0.818748, 0.565073,
		18.981627, 13.740923, 18.978006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.620541, 13.298013, 18.121986>,  <19.052818, 13.167799, 18.582457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.620541, 13.298013, 18.121986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.444258, 13.626324, 17.976603>,  <19.338488, 13.823310, 17.889372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.444258, 13.626324, 17.976603>,  <19.620541, 13.298013, 18.121986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.444258, 13.626324, 17.976603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897489, 0.410581, -0.161053,
		0.017040, -0.397177, -0.917584,
		-0.440709, 0.820777, -0.363458,
		19.312046, 13.872557, 17.867565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.807041, 13.376910, 17.252926>,  <19.620541, 13.298013, 18.121986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.807041, 13.376910, 17.252926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.738857, 13.682852, 17.501423>,  <19.697947, 13.866417, 17.650522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.738857, 13.682852, 17.501423>,  <19.807041, 13.376910, 17.252926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.738857, 13.682852, 17.501423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938033, 0.319011, -0.135372,
		-0.301723, 0.559671, -0.771836,
		-0.170460, 0.764853, 0.621243,
		19.687719, 13.912308, 17.687796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.401743, 13.742322, 17.221334>,  <19.807041, 13.376910, 17.252926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.401743, 13.742322, 17.221334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.214684, 14.045243, 17.403675>,  <20.102448, 14.226995, 17.513079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.214684, 14.045243, 17.403675>,  <20.401743, 13.742322, 17.221334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.214684, 14.045243, 17.403675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861615, 0.505664, 0.043856,
		-0.197295, 0.413277, -0.888975,
		-0.467647, 0.757302, 0.455850,
		20.074389, 14.272434, 17.540430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.534739, 13.861874, 16.518991>,  <20.401743, 13.742322, 17.221334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.534739, 13.861874, 16.518991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.860458, 13.964351, 16.727329>,  <21.055891, 14.025837, 16.852331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.860458, 13.964351, 16.727329>,  <20.534739, 13.861874, 16.518991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.860458, 13.964351, 16.727329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053370, 0.860474, -0.506691,
		-0.577984, 0.440396, 0.687012,
		0.814301, 0.256193, 0.520844,
		21.104750, 14.041208, 16.883583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.367016, 14.416891, 16.969564>,  <20.534739, 13.861874, 16.518991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.367016, 14.416891, 16.969564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.754204, 14.453571, 16.876074>,  <20.986517, 14.475579, 16.819979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.754204, 14.453571, 16.876074>,  <20.367016, 14.416891, 16.969564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.754204, 14.453571, 16.876074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169451, 0.925528, -0.338651,
		0.185266, 0.367408, 0.911421,
		0.967969, 0.091701, -0.233726,
		21.044594, 14.481082, 16.805956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.720552, 14.991153, 17.283556>,  <20.367016, 14.416891, 16.969564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.720552, 14.991153, 17.283556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.914536, 14.925241, 16.940006>,  <21.030926, 14.885695, 16.733877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.914536, 14.925241, 16.940006>,  <20.720552, 14.991153, 17.283556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.914536, 14.925241, 16.940006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256225, 0.912221, -0.319689,
		0.836160, 0.375101, 0.400170,
		0.484959, -0.164777, -0.858873,
		21.060022, 14.875809, 16.682344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.351622, 15.601146, 17.135170>,  <20.720552, 14.991153, 17.283556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.351622, 15.601146, 17.135170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.161497, 15.431565, 16.826796>,  <21.047422, 15.329817, 16.641771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.161497, 15.431565, 16.826796>,  <21.351622, 15.601146, 17.135170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.161497, 15.431565, 16.826796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167124, 0.903799, -0.393975,
		0.863798, -0.058419, -0.500440,
		-0.475313, -0.423950, -0.770937,
		21.018904, 15.304380, 16.595514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.563150, 16.034355, 16.576550>,  <21.351622, 15.601146, 17.135170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.563150, 16.034355, 16.576550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.233982, 15.844918, 16.451006>,  <21.036480, 15.731256, 16.375679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.233982, 15.844918, 16.451006>,  <21.563150, 16.034355, 16.576550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.233982, 15.844918, 16.451006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271263, 0.812900, -0.515374,
		0.499215, -0.338974, -0.797422,
		-0.822922, -0.473593, -0.313860,
		20.987106, 15.702840, 16.356848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.507212, 16.065392, 15.837032>,  <21.563150, 16.034355, 16.576550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.507212, 16.065392, 15.837032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.122242, 15.994461, 15.919295>,  <20.891260, 15.951902, 15.968653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.122242, 15.994461, 15.919295>,  <21.507212, 16.065392, 15.837032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.122242, 15.994461, 15.919295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255615, 0.847215, -0.465713,
		-0.091653, -0.500782, -0.860707,
		-0.962425, -0.177326, 0.205657,
		20.833515, 15.941263, 15.980992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.166534, 16.408339, 15.283442>,  <21.507212, 16.065392, 15.837032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.166534, 16.408339, 15.283442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.846033, 16.343967, 15.513952>,  <20.653732, 16.305344, 15.652258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.846033, 16.343967, 15.513952>,  <21.166534, 16.408339, 15.283442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.846033, 16.343967, 15.513952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520311, 0.662947, -0.538309,
		-0.295410, -0.731165, -0.614923,
		-0.801255, -0.160929, 0.576275,
		20.605658, 16.295689, 15.686834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.582644, 16.496166, 14.906117>,  <21.166534, 16.408339, 15.283442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.582644, 16.496166, 14.906117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.436846, 16.543438, 15.275588>,  <20.349367, 16.571800, 15.497271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.436846, 16.543438, 15.275588>,  <20.582644, 16.496166, 14.906117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.436846, 16.543438, 15.275588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508668, 0.805583, -0.303798,
		-0.780000, -0.580577, -0.233517,
		-0.364495, 0.118180, 0.923676,
		20.327497, 16.578892, 15.552691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.867243, 16.722383, 14.766411>,  <20.582644, 16.496166, 14.906117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.867243, 16.722383, 14.766411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.000042, 16.821074, 15.130588>,  <20.079721, 16.880287, 15.349093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.000042, 16.821074, 15.130588>,  <19.867243, 16.722383, 14.766411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.000042, 16.821074, 15.130588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368828, 0.922301, -0.115443,
		-0.868184, -0.297469, 0.397202,
		0.331999, 0.246725, 0.910441,
		20.099642, 16.895092, 15.403720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.237017, 16.951118, 15.186352>,  <19.867243, 16.722383, 14.766411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.237017, 16.951118, 15.186352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.566410, 17.115046, 15.343287>,  <19.764046, 17.213402, 15.437448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.566410, 17.115046, 15.343287>,  <19.237017, 16.951118, 15.186352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.566410, 17.115046, 15.343287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393478, 0.910737, -0.125435,
		-0.408720, -0.051082, 0.911229,
		0.823482, 0.409816, 0.392336,
		19.813456, 17.237991, 15.460987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.039995, 17.481373, 15.480000>,  <19.237017, 16.951118, 15.186352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.039995, 17.481373, 15.480000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.429800, 17.558407, 15.526020>,  <19.663683, 17.604628, 15.553633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.429800, 17.558407, 15.526020>,  <19.039995, 17.481373, 15.480000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.429800, 17.558407, 15.526020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181601, 0.978334, -0.099418,
		-0.131704, 0.075990, 0.988372,
		0.974513, 0.192584, 0.115051,
		19.722155, 17.616182, 15.560535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.034853, 18.050053, 15.904026>,  <19.039995, 17.481373, 15.480000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.034853, 18.050053, 15.904026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.376957, 18.026453, 15.698092>,  <19.582218, 18.012293, 15.574533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.376957, 18.026453, 15.698092>,  <19.034853, 18.050053, 15.904026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.376957, 18.026453, 15.698092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089783, 0.961601, -0.259351,
		0.510365, 0.268036, 0.817119,
		0.855258, -0.059000, -0.514833,
		19.633533, 18.008753, 15.543643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.521191, 18.676958, 16.195496>,  <19.034853, 18.050053, 15.904026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.521191, 18.676958, 16.195496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.642187, 18.541019, 15.839293>,  <19.714785, 18.459455, 15.625571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.642187, 18.541019, 15.839293>,  <19.521191, 18.676958, 16.195496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.642187, 18.541019, 15.839293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051784, 0.938756, -0.340669,
		0.951744, 0.056935, 0.301565,
		0.302492, -0.339846, -0.890508,
		19.732935, 18.439066, 15.572142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.215891, 19.064352, 16.001883>,  <19.521191, 18.676958, 16.195496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.215891, 19.064352, 16.001883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.997128, 18.930752, 15.694812>,  <19.865870, 18.850592, 15.510569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.997128, 18.930752, 15.694812>,  <20.215891, 19.064352, 16.001883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.997128, 18.930752, 15.694812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119017, 0.876638, -0.466199,
		0.828688, -0.346337, -0.439691,
		-0.546912, -0.334002, -0.767679,
		19.833054, 18.830551, 15.464508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.460155, 19.504080, 15.518533>,  <20.215891, 19.064352, 16.001883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.460155, 19.504080, 15.518533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.144018, 19.326172, 15.349991>,  <19.954336, 19.219427, 15.248866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.144018, 19.326172, 15.349991>,  <20.460155, 19.504080, 15.518533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.144018, 19.326172, 15.349991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119928, 0.786746, -0.605515,
		0.600813, -0.428032, -0.675139,
		-0.790343, -0.444769, -0.421354,
		19.906916, 19.192741, 15.223584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.542715, 19.551210, 14.750295>,  <20.460155, 19.504080, 15.518533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.542715, 19.551210, 14.750295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.150908, 19.505527, 14.816625>,  <19.915823, 19.478117, 14.856422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.150908, 19.505527, 14.816625>,  <20.542715, 19.551210, 14.750295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.150908, 19.505527, 14.816625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189317, 0.802824, -0.565361,
		-0.068558, -0.585176, -0.808003,
		-0.979520, -0.114209, 0.165824,
		19.857052, 19.471264, 14.866372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.890657, 22.721357, 18.644058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.494221, 22.713810, 18.591330>,  <16.256359, 22.709282, 18.559692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.494221, 22.713810, 18.591330>,  <16.890657, 22.721357, 18.644058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.494221, 22.713810, 18.591330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076735, -0.889961, -0.449534,
		-0.108832, -0.455645, 0.883483,
		-0.991094, -0.018870, -0.131820,
		16.196892, 22.708149, 18.551783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.677538, 22.080114, 18.791750>,  <16.890657, 22.721357, 18.644058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.677538, 22.080114, 18.791750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.344378, 22.206654, 18.610113>,  <16.144482, 22.282578, 18.501131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.344378, 22.206654, 18.610113>,  <16.677538, 22.080114, 18.791750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.344378, 22.206654, 18.610113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074346, -0.877040, -0.474630,
		-0.548403, -0.361561, 0.754008,
		-0.832903, 0.316346, -0.454090,
		16.094507, 22.301558, 18.473886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.238556, 21.518290, 18.872587>,  <16.677538, 22.080114, 18.791750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.238556, 21.518290, 18.872587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.093231, 21.720102, 18.559294>,  <16.006037, 21.841190, 18.371319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.093231, 21.720102, 18.559294>,  <16.238556, 21.518290, 18.872587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.093231, 21.720102, 18.559294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132862, -0.860143, -0.492446,
		-0.922146, -0.074849, 0.379531,
		-0.363310, 0.504532, -0.783233,
		15.984238, 21.871462, 18.324324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.499018, 21.174240, 18.608421>,  <16.238556, 21.518290, 18.872587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.499018, 21.174240, 18.608421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.605654, 21.402706, 18.297886>,  <15.669636, 21.539785, 18.111565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.605654, 21.402706, 18.297886>,  <15.499018, 21.174240, 18.608421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.605654, 21.402706, 18.297886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244997, -0.738870, -0.627732,
		-0.932151, 0.357548, -0.057042,
		0.266591, 0.571166, -0.776337,
		15.685631, 21.574057, 18.064985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.978162, 21.185627, 18.229736>,  <15.499018, 21.174240, 18.608421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.978162, 21.185627, 18.229736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.268089, 21.274439, 17.968864>,  <15.442046, 21.327726, 17.812342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.268089, 21.274439, 17.968864>,  <14.978162, 21.185627, 18.229736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.268089, 21.274439, 17.968864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398650, -0.636899, -0.659877,
		-0.561885, 0.738284, -0.373125,
		0.724820, 0.222029, -0.652181,
		15.485536, 21.341047, 17.773211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.520913, 21.398932, 17.662685>,  <14.978162, 21.185627, 18.229736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.520913, 21.398932, 17.662685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.905153, 21.319786, 17.584612>,  <15.135697, 21.272299, 17.537767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.905153, 21.319786, 17.584612>,  <14.520913, 21.398932, 17.662685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.905153, 21.319786, 17.584612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277864, -0.668013, -0.690326,
		0.006208, 0.717361, -0.696674,
		0.960600, -0.197866, -0.195182,
		15.193334, 21.260426, 17.526056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.670747, 21.497398, 16.938080>,  <14.520913, 21.398932, 17.662685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.670747, 21.497398, 16.938080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.956670, 21.246714, 17.062197>,  <15.128223, 21.096302, 17.136667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.956670, 21.246714, 17.062197>,  <14.670747, 21.497398, 16.938080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.956670, 21.246714, 17.062197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244240, -0.639491, -0.728971,
		0.655283, 0.445289, -0.610182,
		0.714808, -0.626713, 0.310290,
		15.171112, 21.058701, 17.155283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.035274, 21.300421, 16.322790>,  <14.670747, 21.497398, 16.938080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.035274, 21.300421, 16.322790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.155581, 21.012312, 16.572830>,  <15.227765, 20.839447, 16.722855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.155581, 21.012312, 16.572830>,  <15.035274, 21.300421, 16.322790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.155581, 21.012312, 16.572830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195703, -0.688113, -0.698714,
		0.933402, 0.087817, -0.347921,
		0.300768, -0.720270, 0.625100,
		15.245811, 20.796230, 16.760361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.318530, 20.812944, 15.891472>,  <15.035274, 21.300421, 16.322790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.318530, 20.812944, 15.891472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.264853, 20.584667, 16.215521>,  <15.232646, 20.447701, 16.409950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.264853, 20.584667, 16.215521>,  <15.318530, 20.812944, 15.891472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.264853, 20.584667, 16.215521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277884, -0.763045, -0.583561,
		0.951195, -0.303430, -0.056191,
		-0.134194, -0.570695, 0.810123,
		15.224594, 20.413458, 16.458557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.568448, 20.056984, 15.679846>,  <15.318530, 20.812944, 15.891472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.568448, 20.056984, 15.679846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.305673, 20.039120, 15.980894>,  <15.148007, 20.028402, 16.161522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.305673, 20.039120, 15.980894>,  <15.568448, 20.056984, 15.679846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.305673, 20.039120, 15.980894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447742, -0.780041, -0.437107,
		0.606595, -0.624132, 0.492444,
		-0.656939, -0.044659, 0.752619,
		15.108591, 20.025723, 16.206680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.544034, 19.356853, 15.874010>,  <15.568448, 20.056984, 15.679846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.544034, 19.356853, 15.874010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.191025, 19.508152, 15.985785>,  <14.979219, 19.598930, 16.052851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.191025, 19.508152, 15.985785>,  <15.544034, 19.356853, 15.874010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.191025, 19.508152, 15.985785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469568, -0.741247, -0.479645,
		0.025711, -0.554513, 0.831778,
		-0.882522, 0.378244, 0.279439,
		14.926269, 19.621626, 16.069616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.151896, 18.781614, 16.233606>,  <15.544034, 19.356853, 15.874010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.151896, 18.781614, 16.233606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.907062, 19.068075, 16.099457>,  <14.760161, 19.239952, 16.018967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.907062, 19.068075, 16.099457>,  <15.151896, 18.781614, 16.233606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.907062, 19.068075, 16.099457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527357, -0.685683, -0.501730,
		-0.589277, -0.130238, 0.797365,
		-0.612084, 0.716154, -0.335375,
		14.723436, 19.282921, 15.998844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.292472, 18.174730, 15.730191>,  <15.151896, 18.781614, 16.233606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.292472, 18.174730, 15.730191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.936295, 18.226839, 15.904612>,  <14.722589, 18.258104, 16.009264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.936295, 18.226839, 15.904612>,  <15.292472, 18.174730, 15.730191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.936295, 18.226839, 15.904612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444301, -0.041399, -0.894920,
		-0.098540, -0.990612, 0.094748,
		-0.890442, 0.130282, 0.436051,
		14.669162, 18.265921, 16.035427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.765091, 17.634426, 15.598899>,  <15.292472, 18.174730, 15.730191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.765091, 17.634426, 15.598899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.579759, 17.982151, 15.667741>,  <14.468559, 18.190786, 15.709046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.579759, 17.982151, 15.667741>,  <14.765091, 17.634426, 15.598899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.579759, 17.982151, 15.667741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376982, -0.017587, -0.926054,
		-0.802003, -0.493950, 0.335864,
		-0.463331, 0.869313, 0.172106,
		14.440760, 18.242945, 15.719373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.119272, 17.700581, 15.915303>,  <14.765091, 17.634426, 15.598899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.119272, 17.700581, 15.915303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.420000, 17.607527, 16.162090>,  <14.600437, 17.551695, 16.310162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.420000, 17.607527, 16.162090>,  <14.119272, 17.700581, 15.915303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.420000, 17.607527, 16.162090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541824, 0.315261, 0.779126,
		-0.375759, -0.920049, 0.110972,
		0.751819, -0.232636, 0.616967,
		14.645546, 17.537737, 16.347179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.820819, 17.257282, 16.429558>,  <14.119272, 17.700581, 15.915303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.820819, 17.257282, 16.429558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.150171, 17.414282, 16.593504>,  <14.347782, 17.508482, 16.691872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.150171, 17.414282, 16.593504>,  <13.820819, 17.257282, 16.429558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.150171, 17.414282, 16.593504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551767, 0.384870, 0.739884,
		0.132660, -0.835356, 0.533463,
		0.823380, 0.392500, 0.409865,
		14.397185, 17.532032, 16.716463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.738111, 17.019756, 17.172709>,  <13.820819, 17.257282, 16.429558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.738111, 17.019756, 17.172709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.003963, 17.316061, 17.133633>,  <14.163473, 17.493843, 17.110188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.003963, 17.316061, 17.133633>,  <13.738111, 17.019756, 17.172709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.003963, 17.316061, 17.133633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240155, 0.335598, 0.910879,
		0.707529, -0.581933, 0.400945,
		0.664627, 0.740762, -0.097691,
		14.203351, 17.538290, 17.104326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.003380, 16.897717, 17.796797>,  <13.738111, 17.019756, 17.172709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.003380, 16.897717, 17.796797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.127727, 17.257732, 17.674623>,  <14.202334, 17.473742, 17.601320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.127727, 17.257732, 17.674623>,  <14.003380, 16.897717, 17.796797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.127727, 17.257732, 17.674623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147397, 0.363119, 0.920010,
		0.938955, -0.240981, 0.245545,
		0.310867, 0.900041, -0.305432,
		14.220986, 17.527744, 17.582994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.434529, 17.176773, 18.299845>,  <14.003380, 16.897717, 17.796797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.434529, 17.176773, 18.299845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.306124, 17.497997, 18.099030>,  <14.229080, 17.690731, 17.978540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.306124, 17.497997, 18.099030>,  <14.434529, 17.176773, 18.299845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.306124, 17.497997, 18.099030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065677, 0.509942, 0.857698,
		0.944794, 0.308306, -0.110956,
		-0.321015, 0.803060, -0.502039,
		14.209820, 17.738916, 17.948418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.809226, 17.703817, 18.483801>,  <14.434529, 17.176773, 18.299845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.809226, 17.703817, 18.483801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.453163, 17.860979, 18.391499>,  <14.239526, 17.955276, 18.336117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.453163, 17.860979, 18.391499>,  <14.809226, 17.703817, 18.483801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.453163, 17.860979, 18.391499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004226, 0.513521, 0.858067,
		0.455636, 0.762838, -0.458774,
		-0.890156, 0.392905, -0.230755,
		14.186116, 17.978851, 18.322271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.819140, 18.384483, 18.809013>,  <14.809226, 17.703817, 18.483801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.819140, 18.384483, 18.809013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.442092, 18.386776, 18.675489>,  <14.215862, 18.388151, 18.595375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.442092, 18.386776, 18.675489>,  <14.819140, 18.384483, 18.809013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.442092, 18.386776, 18.675489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293899, 0.460095, 0.837816,
		0.158387, 0.887851, -0.432011,
		-0.942622, 0.005732, -0.333812,
		14.159306, 18.388496, 18.575346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.624459, 19.024231, 18.770111>,  <14.819140, 18.384483, 18.809013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.624459, 19.024231, 18.770111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.286415, 18.815199, 18.815186>,  <14.083589, 18.689779, 18.842230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.286415, 18.815199, 18.815186>,  <14.624459, 19.024231, 18.770111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.286415, 18.815199, 18.815186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203900, 0.509946, 0.835691,
		-0.494178, 0.683275, -0.537515,
		-0.845111, -0.522580, 0.112684,
		14.032882, 18.658424, 18.848991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.991281, 19.534674, 18.752342>,  <14.624459, 19.024231, 18.770111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.991281, 19.534674, 18.752342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.856674, 19.200619, 18.926378>,  <13.775910, 19.000185, 19.030800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.856674, 19.200619, 18.926378>,  <13.991281, 19.534674, 18.752342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.856674, 19.200619, 18.926378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207910, 0.516526, 0.830647,
		-0.918439, 0.189066, -0.347453,
		-0.336516, -0.835137, 0.435089,
		13.755719, 18.950077, 19.056906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.342009, 19.739149, 19.041603>,  <13.991281, 19.534674, 18.752342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.342009, 19.739149, 19.041603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.451143, 19.407913, 19.237492>,  <13.516624, 19.209171, 19.355024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.451143, 19.407913, 19.237492>,  <13.342009, 19.739149, 19.041603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.451143, 19.407913, 19.237492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184497, 0.454551, 0.871403,
		-0.944204, -0.328104, -0.028762,
		0.272837, -0.828089, 0.489723,
		13.532994, 19.159487, 19.384409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.796700, 19.530857, 19.334616>,  <13.342009, 19.739149, 19.041603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.796700, 19.530857, 19.334616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.063885, 19.331913, 19.556051>,  <13.224195, 19.212547, 19.688913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.063885, 19.331913, 19.556051>,  <12.796700, 19.530857, 19.334616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.063885, 19.331913, 19.556051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444517, 0.329950, 0.832789,
		-0.596853, -0.802350, -0.000692,
		0.667960, -0.497360, 0.553590,
		13.264273, 19.182705, 19.722128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.448645, 19.155699, 19.843040>,  <12.796700, 19.530857, 19.334616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.448645, 19.155699, 19.843040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.815482, 19.163361, 20.002325>,  <13.035584, 19.167957, 20.097897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.815482, 19.163361, 20.002325>,  <12.448645, 19.155699, 19.843040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.815482, 19.163361, 20.002325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388756, 0.264354, 0.882602,
		-0.088362, -0.964235, 0.249885,
		0.917094, 0.019155, 0.398211,
		13.090611, 19.169107, 20.121788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.330809, 18.955400, 20.472057>,  <12.448645, 19.155699, 19.843040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.330809, 18.955400, 20.472057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.696802, 19.116375, 20.483723>,  <12.916398, 19.212959, 20.490723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.696802, 19.116375, 20.483723>,  <12.330809, 18.955400, 20.472057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.696802, 19.116375, 20.483723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190906, 0.368108, 0.909974,
		0.355456, -0.838185, 0.413639,
		0.914989, 0.402422, 0.029168,
		12.971297, 19.237104, 20.492472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.735100, 18.758501, 21.075993>,  <12.330809, 18.955400, 20.472057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.735100, 18.758501, 21.075993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.925982, 19.087492, 20.952183>,  <13.040510, 19.284887, 20.877897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.925982, 19.087492, 20.952183>,  <12.735100, 18.758501, 21.075993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.925982, 19.087492, 20.952183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045263, 0.374750, 0.926020,
		0.877626, -0.427891, 0.216061,
		0.477204, 0.822479, -0.309523,
		13.069143, 19.334236, 20.859325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.097700, 18.183039, 21.280838>,  <12.735100, 18.758501, 21.075993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.097700, 18.183039, 21.280838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.790042, 18.007158, 21.466345>,  <12.605447, 17.901630, 21.577648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.790042, 18.007158, 21.466345>,  <13.097700, 18.183039, 21.280838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.790042, 18.007158, 21.466345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338562, -0.335131, -0.879240,
		0.542024, -0.833277, 0.108899,
		-0.769146, -0.439700, 0.463765,
		12.559299, 17.875248, 21.605474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.058320, 17.604956, 20.934647>,  <13.097700, 18.183039, 21.280838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.058320, 17.604956, 20.934647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.697237, 17.642675, 21.102564>,  <12.480587, 17.665308, 21.203314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.697237, 17.642675, 21.102564>,  <13.058320, 17.604956, 20.934647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.697237, 17.642675, 21.102564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427371, -0.309316, -0.849516,
		0.049739, -0.946272, 0.319523,
		-0.902707, 0.094301, 0.419795,
		12.426425, 17.670965, 21.228502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.735383, 16.991486, 20.772203>,  <13.058320, 17.604956, 20.934647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.735383, 16.991486, 20.772203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.421534, 17.226629, 20.850979>,  <12.233224, 17.367716, 20.898245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.421534, 17.226629, 20.850979>,  <12.735383, 16.991486, 20.772203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.421534, 17.226629, 20.850979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468710, -0.354541, -0.809081,
		-0.405802, -0.727133, 0.553717,
		-0.784625, 0.587859, 0.196941,
		12.186147, 17.402988, 20.910061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.144917, 16.600630, 20.670147>,  <12.735383, 16.991486, 20.772203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.144917, 16.600630, 20.670147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.013157, 16.978186, 20.660635>,  <11.934100, 17.204720, 20.654928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.013157, 16.978186, 20.660635>,  <12.144917, 16.600630, 20.670147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.013157, 16.978186, 20.660635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612863, -0.232901, -0.755087,
		-0.718258, -0.234153, 0.655193,
		-0.329401, 0.943891, -0.023780,
		11.914336, 17.261353, 20.653502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.413153, 16.584705, 20.675406>,  <12.144917, 16.600630, 20.670147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.413153, 16.584705, 20.675406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.534873, 16.922255, 20.498642>,  <11.607905, 17.124784, 20.392584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.534873, 16.922255, 20.498642>,  <11.413153, 16.584705, 20.675406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.534873, 16.922255, 20.498642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523857, -0.239210, -0.817529,
		-0.795597, 0.480271, 0.369276,
		0.304301, 0.843871, -0.441908,
		11.626163, 17.175415, 20.366070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.825634, 16.988733, 20.354856>,  <11.413153, 16.584705, 20.675406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.825634, 16.988733, 20.354856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.142982, 17.143515, 20.166887>,  <11.333390, 17.236383, 20.054106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.142982, 17.143515, 20.166887>,  <10.825634, 16.988733, 20.354856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.142982, 17.143515, 20.166887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475775, -0.087400, -0.875214,
		-0.379741, 0.917947, 0.114763,
		0.793370, 0.386956, -0.469925,
		11.380993, 17.259602, 20.025909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.450698, 17.304674, 19.712500>,  <10.825634, 16.988733, 20.354856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.450698, 17.304674, 19.712500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.845292, 17.309952, 19.647175>,  <11.082048, 17.313118, 19.607979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.845292, 17.309952, 19.647175>,  <10.450698, 17.304674, 19.712500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.845292, 17.309952, 19.647175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157558, -0.197075, -0.967645,
		-0.044954, 0.980300, -0.192333,
		0.986486, 0.013196, -0.163313,
		11.141238, 17.313911, 19.598181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.492986, 17.769138, 19.190153>,  <10.450698, 17.304674, 19.712500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.492986, 17.769138, 19.190153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.811897, 17.528540, 19.169956>,  <11.003244, 17.384180, 19.157837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.811897, 17.528540, 19.169956>,  <10.492986, 17.769138, 19.190153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.811897, 17.528540, 19.169956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090244, -0.036067, -0.995266,
		0.596828, 0.798061, -0.083037,
		0.797278, -0.601496, -0.050494,
		11.051081, 17.348091, 19.154808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.757391, 17.992231, 18.664043>,  <10.492986, 17.769138, 19.190153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.757391, 17.992231, 18.664043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.943822, 17.639130, 18.687777>,  <11.055680, 17.427269, 18.702017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.943822, 17.639130, 18.687777>,  <10.757391, 17.992231, 18.664043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.943822, 17.639130, 18.687777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344543, -0.242863, -0.906812,
		0.814900, 0.402201, -0.417339,
		0.466077, -0.882752, 0.059334,
		11.083645, 17.374304, 18.705576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.211274, 17.878504, 18.052940>,  <10.757391, 17.992231, 18.664043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.211274, 17.878504, 18.052940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.100578, 17.526440, 18.207203>,  <11.034161, 17.315201, 18.299761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.100578, 17.526440, 18.207203>,  <11.211274, 17.878504, 18.052940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.100578, 17.526440, 18.207203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398672, -0.260002, -0.879466,
		0.874343, -0.397133, -0.278943,
		-0.276739, -0.880161, 0.385657,
		11.017556, 17.262392, 18.322901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.244101, 18.664801, 17.828770>,  <11.211274, 17.878504, 18.052940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.244101, 18.664801, 17.828770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.951095, 18.791670, 18.069710>,  <10.775291, 18.867792, 18.214273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.951095, 18.791670, 18.069710>,  <11.244101, 18.664801, 17.828770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.951095, 18.791670, 18.069710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655293, 0.568245, 0.497683,
		-0.184431, 0.759275, -0.624089,
		-0.732514, 0.317173, 0.602349,
		10.731340, 18.886822, 18.250414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.775690, 18.780903, 17.347715>,  <11.244101, 18.664801, 17.828770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.775690, 18.780903, 17.347715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.086194, 19.031275, 17.317703>,  <12.272496, 19.181498, 17.299696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.086194, 19.031275, 17.317703>,  <11.775690, 18.780903, 17.347715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.086194, 19.031275, 17.317703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492421, -0.676351, -0.547788,
		-0.393625, 0.388279, -0.833246,
		0.776261, 0.625931, -0.075032,
		12.319072, 19.219053, 17.295193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<13.835867, 19.785118, 26.518684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.153888, 19.547464, 26.567501>,  <14.344701, 19.404871, 26.596790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.153888, 19.547464, 26.567501>,  <13.835867, 19.785118, 26.518684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.153888, 19.547464, 26.567501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080643, -0.302967, -0.949583,
		0.601155, 0.745127, -0.288788,
		0.795053, -0.594135, 0.122041,
		14.392404, 19.369225, 26.604113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.224795, 19.962702, 25.946913>,  <13.835867, 19.785118, 26.518684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.224795, 19.962702, 25.946913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.309381, 19.595474, 26.081038>,  <14.360132, 19.375137, 26.161512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.309381, 19.595474, 26.081038>,  <14.224795, 19.962702, 25.946913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.309381, 19.595474, 26.081038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244388, -0.381840, -0.891332,
		0.946339, 0.106538, -0.305110,
		0.211464, -0.918067, 0.335314,
		14.372820, 19.320053, 26.181631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.573189, 19.685623, 25.367384>,  <14.224795, 19.962702, 25.946913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.573189, 19.685623, 25.367384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.483020, 19.380951, 25.610374>,  <14.428919, 19.198149, 25.756168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.483020, 19.380951, 25.610374>,  <14.573189, 19.685623, 25.367384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.483020, 19.380951, 25.610374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249818, -0.557490, -0.791704,
		0.941688, -0.330226, -0.064611,
		-0.225422, -0.761679, 0.607478,
		14.415393, 19.152447, 25.792618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.824092, 19.146378, 25.041924>,  <14.573189, 19.685623, 25.367384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.824092, 19.146378, 25.041924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.556004, 18.977270, 25.285913>,  <14.395150, 18.875805, 25.432308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.556004, 18.977270, 25.285913>,  <14.824092, 19.146378, 25.041924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.556004, 18.977270, 25.285913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207385, -0.682464, -0.700881,
		0.712598, -0.596245, 0.369726,
		-0.670221, -0.422770, 0.609975,
		14.354938, 18.850439, 25.468906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.804108, 18.412554, 24.776842>,  <14.824092, 19.146378, 25.041924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.804108, 18.412554, 24.776842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.478622, 18.452614, 25.005873>,  <14.283332, 18.476650, 25.143291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.478622, 18.452614, 25.005873>,  <14.804108, 18.412554, 24.776842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.478622, 18.452614, 25.005873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502767, -0.615622, -0.606824,
		0.291716, -0.781651, 0.551292,
		-0.813712, 0.100151, 0.572575,
		14.234509, 18.482658, 25.177645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.556179, 17.740395, 25.004789>,  <14.804108, 18.412554, 24.776842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.556179, 17.740395, 25.004789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.254293, 18.002810, 25.002882>,  <14.073162, 18.160257, 25.001738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.254293, 18.002810, 25.002882>,  <14.556179, 17.740395, 25.004789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.254293, 18.002810, 25.002882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512217, -0.593776, -0.620536,
		-0.409925, -0.465885, 0.784164,
		-0.754715, 0.656035, -0.004769,
		14.027879, 18.199619, 25.001451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.030065, 17.281561, 24.741474>,  <14.556179, 17.740395, 25.004789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.030065, 17.281561, 24.741474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.847550, 17.637487, 24.743702>,  <13.738042, 17.851044, 24.745039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.847550, 17.637487, 24.743702>,  <14.030065, 17.281561, 24.741474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.847550, 17.637487, 24.743702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642200, -0.324967, -0.694244,
		-0.615940, -0.320350, 0.719718,
		-0.456286, 0.889816, 0.005568,
		13.710665, 17.904432, 24.745373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.323565, 17.096796, 24.630205>,  <14.030065, 17.281561, 24.741474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.323565, 17.096796, 24.630205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.358098, 17.476675, 24.509790>,  <13.378819, 17.704601, 24.437542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.358098, 17.476675, 24.509790>,  <13.323565, 17.096796, 24.630205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.358098, 17.476675, 24.509790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491326, -0.222279, -0.842135,
		-0.866686, 0.220614, 0.447420,
		0.086335, 0.949696, -0.301039,
		13.383999, 17.761583, 24.419479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.650611, 17.343140, 24.364923>,  <13.323565, 17.096796, 24.630205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.650611, 17.343140, 24.364923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.916061, 17.586117, 24.190287>,  <13.075332, 17.731903, 24.085505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.916061, 17.586117, 24.190287>,  <12.650611, 17.343140, 24.364923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.916061, 17.586117, 24.190287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585805, 0.059030, -0.808299,
		-0.465223, 0.792167, 0.395017,
		0.663626, 0.607442, -0.436593,
		13.115149, 17.768349, 24.059309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.261594, 17.829979, 23.989595>,  <12.650611, 17.343140, 24.364923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.261594, 17.829979, 23.989595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.626475, 17.852985, 23.827324>,  <12.845405, 17.866789, 23.729961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.626475, 17.852985, 23.827324>,  <12.261594, 17.829979, 23.989595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.626475, 17.852985, 23.827324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409727, 0.134671, -0.902213,
		0.002741, 0.989220, 0.146413,
		0.912204, 0.057516, -0.405679,
		12.900137, 17.870241, 23.705620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.213809, 18.391058, 23.517439>,  <12.261594, 17.829979, 23.989595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.213809, 18.391058, 23.517439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.515372, 18.160589, 23.391172>,  <12.696310, 18.022308, 23.315413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.515372, 18.160589, 23.391172>,  <12.213809, 18.391058, 23.517439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.515372, 18.160589, 23.391172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289678, 0.139727, -0.946870,
		0.589669, 0.805295, -0.061564,
		0.753908, -0.576174, -0.315669,
		12.741545, 17.987738, 23.296473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.090611, 18.524158, 22.842155>,  <12.213809, 18.391058, 23.517439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.090611, 18.524158, 22.842155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.392270, 18.261652, 22.832565>,  <12.573266, 18.104149, 22.826811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.392270, 18.261652, 22.832565>,  <12.090611, 18.524158, 22.842155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.392270, 18.261652, 22.832565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263008, -0.268382, -0.926714,
		0.601737, 0.705185, -0.375003,
		0.754149, -0.656266, -0.023974,
		12.618515, 18.064772, 22.825373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.564214, 18.714388, 22.411068>,  <12.090611, 18.524158, 22.842155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.564214, 18.714388, 22.411068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.557718, 18.314602, 22.422436>,  <12.553822, 18.074730, 22.429256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.557718, 18.314602, 22.422436>,  <12.564214, 18.714388, 22.411068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.557718, 18.314602, 22.422436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036085, -0.027820, -0.998961,
		0.999217, -0.017246, -0.035614,
		-0.016238, -0.999464, 0.028421,
		12.552847, 18.014763, 22.430962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.973815, 18.533836, 21.904026>,  <12.564214, 18.714388, 22.411068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.973815, 18.533836, 21.904026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.769485, 18.199190, 21.983154>,  <12.646888, 17.998402, 22.030632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.769485, 18.199190, 21.983154>,  <12.973815, 18.533836, 21.904026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.769485, 18.199190, 21.983154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165308, -0.130225, -0.977607,
		0.843643, -0.532085, -0.071777,
		-0.510823, -0.836616, 0.197821,
		12.616239, 17.948206, 22.042501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.419288, 18.972216, 21.604963>,  <12.973815, 18.533836, 21.904026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.419288, 18.972216, 21.604963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.267830, 19.285618, 21.407887>,  <13.176955, 19.473660, 21.289640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.267830, 19.285618, 21.407887>,  <13.419288, 18.972216, 21.604963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.267830, 19.285618, 21.407887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136301, 0.479319, 0.866992,
		0.915451, 0.395437, -0.074699,
		-0.378645, 0.783507, -0.492691,
		13.154236, 19.520670, 21.260078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.784595, 19.490419, 21.910370>,  <13.419288, 18.972216, 21.604963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.784595, 19.490419, 21.910370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.470139, 19.674753, 21.745632>,  <13.281465, 19.785353, 21.646790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.470139, 19.674753, 21.745632>,  <13.784595, 19.490419, 21.910370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.470139, 19.674753, 21.745632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095764, 0.567491, 0.817792,
		0.610585, 0.682338, -0.401996,
		-0.786140, 0.460834, -0.411845,
		13.234297, 19.813004, 21.622078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.933710, 20.141047, 22.008001>,  <13.784595, 19.490419, 21.910370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.933710, 20.141047, 22.008001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.544472, 20.165762, 21.919218>,  <13.310928, 20.180592, 21.865948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.544472, 20.165762, 21.919218>,  <13.933710, 20.141047, 22.008001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.544472, 20.165762, 21.919218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106077, 0.735043, 0.669671,
		0.204527, 0.675199, -0.708714,
		-0.973096, 0.061787, -0.221959,
		13.252542, 20.184298, 21.852631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.685641, 20.851000, 21.694967>,  <13.933710, 20.141047, 22.008001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.685641, 20.851000, 21.694967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.408329, 20.649073, 21.900692>,  <13.241941, 20.527916, 22.024128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.408329, 20.649073, 21.900692>,  <13.685641, 20.851000, 21.694967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.408329, 20.649073, 21.900692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099929, 0.774108, 0.625117,
		-0.713705, 0.381987, -0.587121,
		-0.693282, -0.504819, 0.514313,
		13.200344, 20.497627, 22.054985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.214998, 21.437239, 21.898396>,  <13.685641, 20.851000, 21.694967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.214998, 21.437239, 21.898396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.110263, 21.106600, 22.097666>,  <13.047421, 20.908216, 22.217228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.110263, 21.106600, 22.097666>,  <13.214998, 21.437239, 21.898396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.110263, 21.106600, 22.097666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053628, 0.527846, 0.847645,
		-0.963621, 0.195230, -0.182539,
		-0.261838, -0.826598, 0.498174,
		13.031712, 20.858620, 22.247118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.800817, 21.709492, 22.429874>,  <13.214998, 21.437239, 21.898396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.800817, 21.709492, 22.429874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.880800, 21.333239, 22.539583>,  <12.928790, 21.107487, 22.605408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.880800, 21.333239, 22.539583>,  <12.800817, 21.709492, 22.429874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.880800, 21.333239, 22.539583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013791, 0.282598, 0.959139,
		-0.979707, -0.188006, 0.069481,
		0.199959, -0.940634, 0.274271,
		12.940788, 21.051048, 22.621864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.324964, 21.864685, 22.961809>,  <12.800817, 21.709492, 22.429874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.324964, 21.864685, 22.961809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.548422, 21.538013, 23.019705>,  <12.682497, 21.342010, 23.054443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.548422, 21.538013, 23.019705>,  <12.324964, 21.864685, 22.961809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.548422, 21.538013, 23.019705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369598, 0.401349, 0.838043,
		-0.742504, -0.414673, 0.526055,
		0.558646, -0.816680, 0.144741,
		12.716016, 21.293009, 23.063128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.144135, 21.496904, 23.584156>,  <12.324964, 21.864685, 22.961809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.144135, 21.496904, 23.584156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.525564, 21.416193, 23.494728>,  <12.754421, 21.367765, 23.441071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.525564, 21.416193, 23.494728>,  <12.144135, 21.496904, 23.584156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.525564, 21.416193, 23.494728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290718, 0.422921, 0.858266,
		-0.078626, -0.883416, 0.461947,
		0.953573, -0.201778, -0.223572,
		12.811636, 21.355659, 23.427656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.518939, 21.424803, 24.261854>,  <12.144135, 21.496904, 23.584156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.518939, 21.424803, 24.261854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.826206, 21.464132, 24.008793>,  <13.010567, 21.487730, 23.856956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.826206, 21.464132, 24.008793>,  <12.518939, 21.424803, 24.261854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.826206, 21.464132, 24.008793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587294, 0.285286, 0.757428,
		0.254958, -0.953386, 0.161405,
		0.768168, 0.098320, -0.632654,
		13.056656, 21.493629, 23.818996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.106209, 21.227697, 24.651943>,  <12.518939, 21.424803, 24.261854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.106209, 21.227697, 24.651943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.299437, 21.404409, 24.349560>,  <13.415373, 21.510437, 24.168129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.299437, 21.404409, 24.349560>,  <13.106209, 21.227697, 24.651943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.299437, 21.404409, 24.349560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762437, 0.212267, 0.611255,
		0.430505, -0.871650, -0.234289,
		0.483069, 0.441779, -0.755960,
		13.444357, 21.536943, 24.122772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.772973, 21.039343, 24.695328>,  <13.106209, 21.227697, 24.651943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.772973, 21.039343, 24.695328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.813987, 21.369499, 24.473257>,  <13.838595, 21.567593, 24.340015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.813987, 21.369499, 24.473257>,  <13.772973, 21.039343, 24.695328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.813987, 21.369499, 24.473257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677091, 0.350955, 0.646822,
		0.728721, -0.442226, -0.522878,
		0.102535, 0.825389, -0.555176,
		13.844748, 21.617115, 24.306704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.463220, 21.077177, 24.498562>,  <13.772973, 21.039343, 24.695328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.463220, 21.077177, 24.498562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.313753, 21.446779, 24.466105>,  <14.224073, 21.668541, 24.446630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.313753, 21.446779, 24.466105>,  <14.463220, 21.077177, 24.498562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.313753, 21.446779, 24.466105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605817, 0.309359, 0.732995,
		0.702395, 0.224738, -0.675377,
		-0.373666, 0.924008, -0.081142,
		14.201653, 21.723982, 24.441761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.039656, 21.568869, 24.464762>,  <14.463220, 21.077177, 24.498562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.039656, 21.568869, 24.464762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.739432, 21.811113, 24.570511>,  <14.559299, 21.956461, 24.633961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.739432, 21.811113, 24.570511>,  <15.039656, 21.568869, 24.464762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.739432, 21.811113, 24.570511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602761, 0.463490, 0.649505,
		0.270815, 0.646845, -0.712917,
		-0.750559, 0.605614, 0.264373,
		14.514265, 21.992798, 24.649822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.361171, 22.292387, 24.549837>,  <15.039656, 21.568869, 24.464762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.361171, 22.292387, 24.549837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.011170, 22.311157, 24.742575>,  <14.801170, 22.322418, 24.858217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.011170, 22.311157, 24.742575>,  <15.361171, 22.292387, 24.549837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.011170, 22.311157, 24.742575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430434, 0.530960, 0.729937,
		-0.221588, 0.846097, -0.484788,
		-0.875000, 0.046924, 0.481843,
		14.748671, 22.325233, 24.887127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<10.323639, 25.751854, 24.552101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.437155, 25.368631, 24.536152>,  <10.505264, 25.138699, 24.526583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.437155, 25.368631, 24.536152>,  <10.323639, 25.751854, 24.552101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.437155, 25.368631, 24.536152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636371, -0.157072, -0.755222,
		0.717283, 0.239698, -0.654255,
		0.283790, -0.958057, -0.039872,
		10.522292, 25.081215, 24.524191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.343680, 25.687189, 23.786076>,  <10.323639, 25.751854, 24.552101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.343680, 25.687189, 23.786076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.343592, 25.327078, 23.960201>,  <10.343538, 25.111012, 24.064676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.343592, 25.327078, 23.960201>,  <10.343680, 25.687189, 23.786076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.343592, 25.327078, 23.960201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282949, -0.417468, -0.863516,
		0.959135, -0.123363, -0.254640,
		-0.000222, -0.900279, 0.435314,
		10.343525, 25.056993, 24.090796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.758848, 25.347849, 23.336084>,  <10.343680, 25.687189, 23.786076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.758848, 25.347849, 23.336084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.534748, 25.093359, 23.548250>,  <10.400288, 24.940664, 23.675549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.534748, 25.093359, 23.548250>,  <10.758848, 25.347849, 23.336084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.534748, 25.093359, 23.548250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252408, -0.478764, -0.840878,
		0.788930, -0.604983, 0.107639,
		-0.560250, -0.636224, 0.530414,
		10.366673, 24.902493, 23.707375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.919728, 24.800760, 23.004761>,  <10.758848, 25.347849, 23.336084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.919728, 24.800760, 23.004761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.572306, 24.736719, 23.192368>,  <10.363852, 24.698294, 23.304932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.572306, 24.736719, 23.192368>,  <10.919728, 24.800760, 23.004761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.572306, 24.736719, 23.192368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329133, -0.521187, -0.787424,
		0.370514, -0.838291, 0.399985,
		-0.868557, -0.160104, 0.469016,
		10.311739, 24.688688, 23.333073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.774816, 24.077515, 22.814554>,  <10.919728, 24.800760, 23.004761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.774816, 24.077515, 22.814554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.421061, 24.220924, 22.934097>,  <10.208807, 24.306971, 23.005823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.421061, 24.220924, 22.934097>,  <10.774816, 24.077515, 22.814554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.421061, 24.220924, 22.934097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439449, -0.423806, -0.792006,
		-0.157296, -0.831774, 0.532362,
		-0.884388, 0.358525, 0.298860,
		10.155745, 24.328482, 23.023756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.259708, 23.491945, 22.849405>,  <10.774816, 24.077515, 22.814554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.259708, 23.491945, 22.849405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.064280, 23.838465, 22.807787>,  <9.947022, 24.046377, 22.782816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.064280, 23.838465, 22.807787>,  <10.259708, 23.491945, 22.849405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.064280, 23.838465, 22.807787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462964, -0.358466, -0.810658,
		-0.739569, -0.347893, 0.576201,
		-0.488571, 0.866298, -0.104048,
		9.917708, 24.098354, 22.776573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.681266, 23.296457, 22.479553>,  <10.259708, 23.491945, 22.849405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.681266, 23.296457, 22.479553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.685749, 23.695324, 22.449800>,  <9.688439, 23.934645, 22.431950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.685749, 23.695324, 22.449800>,  <9.681266, 23.296457, 22.479553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.685749, 23.695324, 22.449800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497897, -0.058942, -0.865231,
		-0.867164, 0.046732, 0.495826,
		0.011209, 0.997167, -0.074380,
		9.689112, 23.994474, 22.427486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.078664, 23.431581, 22.195568>,  <9.681266, 23.296457, 22.479553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.078664, 23.431581, 22.195568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.283298, 23.761189, 22.098183>,  <9.406077, 23.958954, 22.039751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.283298, 23.761189, 22.098183>,  <9.078664, 23.431581, 22.195568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.283298, 23.761189, 22.098183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267589, -0.116468, -0.956468,
		-0.816504, 0.554462, 0.160915,
		0.511584, 0.824019, -0.243465,
		9.436772, 24.008394, 22.025143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.609026, 23.867958, 21.664871>,  <9.078664, 23.431581, 22.195568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.609026, 23.867958, 21.664871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.997823, 23.950594, 21.620058>,  <9.231101, 24.000175, 21.593170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.997823, 23.950594, 21.620058>,  <8.609026, 23.867958, 21.664871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.997823, 23.950594, 21.620058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052762, -0.272725, -0.960644,
		-0.229013, 0.939650, -0.254186,
		0.971992, 0.206589, -0.112035,
		9.289420, 24.012571, 21.586447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.607979, 23.980768, 20.955072>,  <8.609026, 23.867958, 21.664871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.607979, 23.980768, 20.955072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.988734, 23.928833, 21.066105>,  <9.217187, 23.897673, 21.132725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.988734, 23.928833, 21.066105>,  <8.607979, 23.980768, 20.955072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.988734, 23.928833, 21.066105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256473, -0.158238, -0.953511,
		0.167726, 0.978827, -0.117325,
		0.951887, -0.129838, 0.277583,
		9.274301, 23.889881, 21.149380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.101332, 24.358671, 20.517094>,  <8.607979, 23.980768, 20.955072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.101332, 24.358671, 20.517094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.294361, 24.030060, 20.638559>,  <9.410179, 23.832893, 20.711439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.294361, 24.030060, 20.638559>,  <9.101332, 24.358671, 20.517094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.294361, 24.030060, 20.638559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393764, -0.106197, -0.913056,
		0.782350, 0.560190, 0.272241,
		0.482574, -0.821529, 0.303666,
		9.439134, 23.783602, 20.729660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.552175, 24.234684, 20.138481>,  <9.101332, 24.358671, 20.517094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.552175, 24.234684, 20.138481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.615486, 23.864710, 20.276726>,  <9.653473, 23.642725, 20.359673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.615486, 23.864710, 20.276726>,  <9.552175, 24.234684, 20.138481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.615486, 23.864710, 20.276726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399369, -0.260144, -0.879107,
		0.903024, 0.277170, 0.328215,
		0.158279, -0.924933, 0.345610,
		9.662970, 23.587231, 20.380409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.184369, 24.165922, 19.941156>,  <9.552175, 24.234684, 20.138481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.184369, 24.165922, 19.941156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.079197, 23.791405, 20.034296>,  <10.016093, 23.566694, 20.090179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.079197, 23.791405, 20.034296>,  <10.184369, 24.165922, 19.941156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.079197, 23.791405, 20.034296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511154, -0.339867, -0.789438,
		0.818285, -0.088546, 0.567952,
		-0.262930, -0.936296, 0.232847,
		10.000318, 23.510515, 20.104151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.785739, 23.720152, 20.009287>,  <10.184369, 24.165922, 19.941156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.785739, 23.720152, 20.009287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.482463, 23.476032, 19.917479>,  <10.300497, 23.329559, 19.862394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.482463, 23.476032, 19.917479>,  <10.785739, 23.720152, 20.009287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.482463, 23.476032, 19.917479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538193, -0.387043, -0.748696,
		0.368096, -0.691180, 0.621912,
		-0.758191, -0.610301, -0.229519,
		10.255006, 23.292942, 19.848623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.410991, 23.619694, 19.693649>,  <10.785739, 23.720152, 20.009287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.410991, 23.619694, 19.693649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.718498, 23.812181, 19.525162>,  <11.903003, 23.927673, 19.424070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.718498, 23.812181, 19.525162>,  <11.410991, 23.619694, 19.693649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.718498, 23.812181, 19.525162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271316, 0.351015, 0.896201,
		0.579124, -0.803252, 0.139286,
		0.768767, 0.481221, -0.421217,
		11.949128, 23.956547, 19.398796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.189923, 23.352472, 19.896175>,  <11.410991, 23.619694, 19.693649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.189923, 23.352472, 19.896175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.150735, 23.740501, 19.807304>,  <12.127222, 23.973318, 19.753981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.150735, 23.740501, 19.807304>,  <12.189923, 23.352472, 19.896175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.150735, 23.740501, 19.807304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336810, 0.242398, 0.909836,
		0.936462, 0.014306, -0.350478,
		-0.097972, 0.970071, -0.222178,
		12.121344, 24.031523, 19.740650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.643991, 23.635921, 20.319120>,  <12.189923, 23.352472, 19.896175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.643991, 23.635921, 20.319120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.425077, 23.952394, 20.209934>,  <12.293729, 24.142279, 20.144423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.425077, 23.952394, 20.209934>,  <12.643991, 23.635921, 20.319120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.425077, 23.952394, 20.209934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232727, 0.457141, 0.858406,
		0.803938, 0.406267, -0.434316,
		-0.547286, 0.791182, -0.272964,
		12.260892, 24.189749, 20.128044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.124996, 24.248240, 20.479664>,  <12.643991, 23.635921, 20.319120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.124996, 24.248240, 20.479664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.739615, 24.353207, 20.458136>,  <12.508387, 24.416187, 20.445219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.739615, 24.353207, 20.458136>,  <13.124996, 24.248240, 20.479664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.739615, 24.353207, 20.458136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141938, 0.670476, 0.728228,
		0.227186, 0.693973, -0.683219,
		-0.963452, 0.262418, -0.053822,
		12.450580, 24.431932, 20.441988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.158912, 24.946726, 20.309555>,  <13.124996, 24.248240, 20.479664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.158912, 24.946726, 20.309555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.792469, 24.919600, 20.467617>,  <12.572603, 24.903324, 20.562454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.792469, 24.919600, 20.467617>,  <13.158912, 24.946726, 20.309555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.792469, 24.919600, 20.467617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187792, 0.798218, 0.572348,
		-0.354234, 0.598540, -0.718518,
		-0.916107, -0.067813, 0.395157,
		12.517637, 24.899256, 20.586164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.877698, 25.615072, 20.237150>,  <13.158912, 24.946726, 20.309555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.877698, 25.615072, 20.237150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.684092, 25.438810, 20.539555>,  <12.567927, 25.333054, 20.720997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.684092, 25.438810, 20.539555>,  <12.877698, 25.615072, 20.237150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.684092, 25.438810, 20.539555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368214, 0.681182, 0.632779,
		-0.793818, 0.584649, -0.167448,
		-0.484017, -0.440654, 0.756010,
		12.538887, 25.306614, 20.766357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.631119, 26.204882, 20.756458>,  <12.877698, 25.615072, 20.237150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.631119, 26.204882, 20.756458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.583271, 25.873722, 20.975647>,  <12.554563, 25.675026, 21.107161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.583271, 25.873722, 20.975647>,  <12.631119, 26.204882, 20.756458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.583271, 25.873722, 20.975647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407984, 0.462190, 0.787356,
		-0.905119, 0.317747, 0.282483,
		-0.119619, -0.827899, 0.547973,
		12.547385, 25.625353, 21.140039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.237155, 26.423834, 21.379044>,  <12.631119, 26.204882, 20.756458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.237155, 26.423834, 21.379044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.419392, 26.081406, 21.476679>,  <12.528733, 25.875948, 21.535259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.419392, 26.081406, 21.476679>,  <12.237155, 26.423834, 21.379044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.419392, 26.081406, 21.476679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341780, 0.421399, 0.840006,
		-0.821963, -0.299274, 0.484574,
		0.455590, -0.856071, 0.244088,
		12.556068, 25.824585, 21.549906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.062614, 26.420420, 22.056753>,  <12.237155, 26.423834, 21.379044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.062614, 26.420420, 22.056753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.384863, 26.186108, 22.021351>,  <12.578212, 26.045521, 22.000111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.384863, 26.186108, 22.021351>,  <12.062614, 26.420420, 22.056753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.384863, 26.186108, 22.021351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255660, 0.208995, 0.943906,
		-0.534426, -0.783059, 0.318132,
		0.805622, -0.585781, -0.088504,
		12.626550, 26.010374, 21.994799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.071503, 25.949314, 22.620695>,  <12.062614, 26.420420, 22.056753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.071503, 25.949314, 22.620695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.450682, 25.903252, 22.501944>,  <12.678189, 25.875614, 22.430693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.450682, 25.903252, 22.501944>,  <12.071503, 25.949314, 22.620695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.450682, 25.903252, 22.501944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310881, 0.132882, 0.941114,
		-0.068925, -0.984419, 0.161765,
		0.947947, -0.115156, -0.296878,
		12.735065, 25.868704, 22.412880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.384775, 25.647430, 23.209785>,  <12.071503, 25.949314, 22.620695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.384775, 25.647430, 23.209785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.705935, 25.734758, 22.987906>,  <12.898630, 25.787155, 22.854778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.705935, 25.734758, 22.987906>,  <12.384775, 25.647430, 23.209785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.705935, 25.734758, 22.987906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577585, -0.054704, 0.814495,
		0.147476, -0.974343, -0.170020,
		0.802898, 0.218320, -0.554698,
		12.946804, 25.800255, 22.821495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.043568, 25.056208, 23.283724>,  <12.384775, 25.647430, 23.209785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.043568, 25.056208, 23.283724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.191795, 25.409286, 23.168123>,  <13.280732, 25.621134, 23.098763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.191795, 25.409286, 23.168123>,  <13.043568, 25.056208, 23.283724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.191795, 25.409286, 23.168123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556288, 0.038247, 0.830109,
		0.743789, -0.468382, -0.476861,
		0.370570, 0.882698, -0.289003,
		13.302966, 25.674095, 23.081423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.717879, 25.012192, 23.377815>,  <13.043568, 25.056208, 23.283724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.717879, 25.012192, 23.377815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.636402, 25.403805, 23.378740>,  <13.587516, 25.638773, 23.379295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.636402, 25.403805, 23.378740>,  <13.717879, 25.012192, 23.377815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.636402, 25.403805, 23.378740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412780, 0.083740, 0.906973,
		0.887762, 0.185698, -0.421182,
		-0.203692, 0.979032, 0.002311,
		13.575294, 25.697514, 23.379433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.328448, 25.363106, 23.725206>,  <13.717879, 25.012192, 23.377815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.328448, 25.363106, 23.725206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.031147, 25.630680, 23.729233>,  <13.852766, 25.791225, 23.731647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.031147, 25.630680, 23.729233>,  <14.328448, 25.363106, 23.725206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.031147, 25.630680, 23.729233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266320, 0.282039, 0.921698,
		0.613718, 0.687735, -0.387777,
		-0.743253, 0.668935, 0.010065,
		13.808171, 25.831360, 23.732252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.053992, 25.549307, 23.560024>,  <14.328448, 25.363106, 23.725206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.053992, 25.549307, 23.560024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.331948, 25.261841, 23.570196>,  <15.498722, 25.089361, 23.576300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.331948, 25.261841, 23.570196>,  <15.053992, 25.549307, 23.560024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.331948, 25.261841, 23.570196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031172, -0.065429, -0.997370,
		0.718439, 0.692271, -0.067868,
		0.694891, -0.718665, 0.025428,
		15.540416, 25.046242, 23.577824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.649610, 25.681187, 23.061970>,  <15.053992, 25.549307, 23.560024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.649610, 25.681187, 23.061970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.664266, 25.291162, 23.149527>,  <15.673059, 25.057148, 23.202061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.664266, 25.291162, 23.149527>,  <15.649610, 25.681187, 23.061970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.664266, 25.291162, 23.149527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113035, -0.221675, -0.968547,
		0.992915, 0.010746, -0.118338,
		0.036641, -0.975061, 0.218890,
		15.675258, 24.998644, 23.215193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.045341, 25.449652, 22.546391>,  <15.649610, 25.681187, 23.061970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.045341, 25.449652, 22.546391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.870997, 25.124191, 22.700272>,  <15.766391, 24.928915, 22.792601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.870997, 25.124191, 22.700272>,  <16.045341, 25.449652, 22.546391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.870997, 25.124191, 22.700272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015117, -0.433998, -0.900787,
		0.899886, -0.386803, 0.201463,
		-0.435862, -0.813651, 0.384702,
		15.740239, 24.880096, 22.815681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.432402, 24.880768, 22.293303>,  <16.045341, 25.449652, 22.546391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.432402, 24.880768, 22.293303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.065353, 24.743788, 22.373999>,  <15.845124, 24.661600, 22.422417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.065353, 24.743788, 22.373999>,  <16.432402, 24.880768, 22.293303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.065353, 24.743788, 22.373999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035943, -0.434000, -0.900196,
		0.395828, -0.833290, 0.385938,
		-0.917621, -0.342451, 0.201740,
		15.790067, 24.641052, 22.434521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532625, 24.247606, 21.998760>,  <16.432402, 24.880768, 22.293303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.532625, 24.247606, 21.998760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.143707, 24.340832, 22.005953>,  <15.910357, 24.396767, 22.010267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.143707, 24.340832, 22.005953>,  <16.532625, 24.247606, 21.998760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.143707, 24.340832, 22.005953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125881, -0.457235, -0.880392,
		-0.196965, -0.858265, 0.473906,
		-0.972296, 0.233062, 0.017980,
		15.852018, 24.410751, 22.011347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.277187, 23.617884, 21.847435>,  <16.532625, 24.247606, 21.998760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.277187, 23.617884, 21.847435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.024063, 23.912470, 21.751793>,  <15.872189, 24.089222, 21.694408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.024063, 23.912470, 21.751793>,  <16.277187, 23.617884, 21.847435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.024063, 23.912470, 21.751793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017584, -0.322386, -0.946445,
		-0.774106, -0.594717, 0.216960,
		-0.632811, 0.736464, -0.239104,
		15.834220, 24.133410, 21.680061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.947096, 23.395643, 21.305899>,  <16.277187, 23.617884, 21.847435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.947096, 23.395643, 21.305899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.817598, 23.772055, 21.266588>,  <15.739900, 23.997902, 21.243002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.817598, 23.772055, 21.266588>,  <15.947096, 23.395643, 21.305899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.817598, 23.772055, 21.266588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120564, -0.144054, -0.982198,
		-0.938432, -0.306132, 0.160091,
		-0.323744, 0.941027, -0.098277,
		15.720475, 24.054363, 21.237104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.334176, 23.339209, 20.868359>,  <15.947096, 23.395643, 21.305899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.334176, 23.339209, 20.868359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.476772, 23.712202, 20.845058>,  <15.562330, 23.935997, 20.831078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.476772, 23.712202, 20.845058>,  <15.334176, 23.339209, 20.868359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.476772, 23.712202, 20.845058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152066, -0.003609, -0.988364,
		-0.921841, 0.361200, 0.140513,
		0.356490, 0.932481, -0.058253,
		15.583719, 23.991947, 20.827583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.907986, 23.647068, 20.414904>,  <15.334176, 23.339209, 20.868359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.907986, 23.647068, 20.414904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.246795, 23.859446, 20.404697>,  <15.450080, 23.986872, 20.398575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.246795, 23.859446, 20.404697>,  <14.907986, 23.647068, 20.414904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.246795, 23.859446, 20.404697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020533, -0.015281, -0.999672,
		-0.531160, 0.847269, -0.002041,
		0.847023, 0.530944, -0.025514,
		15.500901, 24.018728, 20.397043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.778491, 24.225733, 19.900148>,  <14.907986, 23.647068, 20.414904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.778491, 24.225733, 19.900148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.165761, 24.146152, 19.960884>,  <15.398123, 24.098404, 19.997326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.165761, 24.146152, 19.960884>,  <14.778491, 24.225733, 19.900148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.165761, 24.146152, 19.960884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116962, -0.176681, -0.977294,
		0.221261, 0.963951, -0.147788,
		0.968175, -0.198951, 0.151839,
		15.456214, 24.086468, 20.006435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.296223, 24.520155, 19.330708>,  <14.778491, 24.225733, 19.900148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.296223, 24.520155, 19.330708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.512473, 24.224798, 19.491955>,  <15.642223, 24.047585, 19.588703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.512473, 24.224798, 19.491955>,  <15.296223, 24.520155, 19.330708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.512473, 24.224798, 19.491955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189498, -0.359980, -0.913512,
		0.819643, 0.570258, -0.054690,
		0.540626, -0.738390, 0.403118,
		15.674661, 24.003281, 19.612890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.876842, 24.435816, 18.996725>,  <15.296223, 24.520155, 19.330708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.876842, 24.435816, 18.996725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.840609, 24.067791, 19.149189>,  <15.818869, 23.846975, 19.240667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.840609, 24.067791, 19.149189>,  <15.876842, 24.435816, 18.996725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.840609, 24.067791, 19.149189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033276, -0.385314, -0.922185,
		0.995333, -0.070850, 0.065518,
		-0.090582, -0.920062, 0.381158,
		15.813434, 23.791773, 19.263536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305706, 24.051605, 18.508148>,  <15.876842, 24.435816, 18.996725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.305706, 24.051605, 18.508148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.118231, 23.772709, 18.725103>,  <16.005745, 23.605371, 18.855276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.118231, 23.772709, 18.725103>,  <16.305706, 24.051605, 18.508148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.118231, 23.772709, 18.725103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179993, -0.676501, -0.714107,
		0.864831, -0.237068, 0.442568,
		-0.468689, -0.697241, 0.542388,
		15.977624, 23.563536, 18.887819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.811417, 23.474976, 18.497547>,  <16.305706, 24.051605, 18.508148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.811417, 23.474976, 18.497547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.448502, 23.321848, 18.567156>,  <16.230753, 23.229971, 18.608921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.448502, 23.321848, 18.567156>,  <16.811417, 23.474976, 18.497547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.448502, 23.321848, 18.567156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201394, -0.758851, -0.619343,
		0.369152, -0.526874, 0.765592,
		-0.907286, -0.382818, 0.174021,
		16.176315, 23.207003, 18.619362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.057829, 12.963759, 19.408953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.051946, 13.254220, 19.134001>,  <14.048415, 13.428496, 18.969030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.051946, 13.254220, 19.134001>,  <14.057829, 12.963759, 19.408953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.051946, 13.254220, 19.134001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982781, -0.116133, -0.143714,
		-0.184186, -0.677656, -0.711939,
		-0.014709, 0.726151, -0.687378,
		14.047533, 13.472065, 18.927788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.546201, 12.824900, 18.858908>,  <14.057829, 12.963759, 19.408953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.546201, 12.824900, 18.858908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.528438, 13.222365, 18.900208>,  <14.517779, 13.460845, 18.924988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.528438, 13.222365, 18.900208>,  <14.546201, 12.824900, 18.858908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.528438, 13.222365, 18.900208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991998, 0.056088, -0.113116,
		-0.118191, 0.097402, -0.988202,
		-0.044408, 0.993663, 0.103251,
		14.515115, 13.520464, 18.931183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.842529, 12.523727, 18.802736>,  <14.546201, 12.824900, 18.858908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.842529, 12.523727, 18.802736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.649135, 12.640891, 18.472780>,  <13.533097, 12.711189, 18.274807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.649135, 12.640891, 18.472780>,  <13.842529, 12.523727, 18.802736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.649135, 12.640891, 18.472780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691423, -0.450117, -0.565091,
		-0.536818, -0.843563, 0.015101,
		-0.483487, 0.292910, -0.824890,
		13.504088, 12.728765, 18.225313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.768251, 11.899008, 18.300102>,  <13.842529, 12.523727, 18.802736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.768251, 11.899008, 18.300102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.765658, 12.236009, 18.084641>,  <13.764103, 12.438210, 17.955364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.765658, 12.236009, 18.084641>,  <13.768251, 11.899008, 18.300102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.765658, 12.236009, 18.084641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730074, -0.364110, -0.578286,
		-0.683337, -0.397005, -0.612729,
		-0.006482, 0.842502, -0.538653,
		13.763714, 12.488759, 17.923044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.748960, 11.890104, 17.473215>,  <13.768251, 11.899008, 18.300102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.748960, 11.890104, 17.473215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.965781, 12.212994, 17.566656>,  <14.095874, 12.406728, 17.622721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.965781, 12.212994, 17.566656>,  <13.748960, 11.890104, 17.473215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.965781, 12.212994, 17.566656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797339, -0.406252, -0.446329,
		-0.265387, 0.428193, -0.863840,
		0.542052, 0.807224, 0.233601,
		14.128397, 12.455161, 17.636736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.015027, 12.194710, 16.867067>,  <13.748960, 11.890104, 17.473215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.015027, 12.194710, 16.867067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.257151, 12.267015, 17.177145>,  <14.402425, 12.310399, 17.363192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.257151, 12.267015, 17.177145>,  <14.015027, 12.194710, 16.867067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.257151, 12.267015, 17.177145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770868, -0.375859, -0.514288,
		0.198399, 0.908876, -0.366856,
		0.605310, 0.180763, 0.775193,
		14.438744, 12.321244, 17.409702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.717325, 11.942889, 16.191881>,  <14.015027, 12.194710, 16.867067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.717325, 11.942889, 16.191881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.720392, 12.312820, 16.039759>,  <13.722233, 12.534780, 15.948485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.720392, 12.312820, 16.039759>,  <13.717325, 11.942889, 16.191881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.720392, 12.312820, 16.039759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951003, -0.110810, -0.288643,
		-0.309087, 0.363887, 0.878665,
		0.007669, 0.924828, -0.380307,
		13.722692, 12.590269, 15.925667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.280978, 12.447182, 16.532255>,  <13.717325, 11.942889, 16.191881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.280978, 12.447182, 16.532255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.292595, 12.546248, 16.144892>,  <13.299565, 12.605689, 15.912474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.292595, 12.546248, 16.144892>,  <13.280978, 12.447182, 16.532255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.292595, 12.546248, 16.144892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952302, -0.287568, -0.102104,
		-0.303772, 0.925184, 0.227503,
		0.029042, 0.247668, -0.968410,
		13.301308, 12.620549, 15.854369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.703741, 12.987617, 16.242203>,  <13.280978, 12.447182, 16.532255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.703741, 12.987617, 16.242203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.830004, 12.776304, 15.926918>,  <12.905762, 12.649516, 15.737747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.830004, 12.776304, 15.926918>,  <12.703741, 12.987617, 16.242203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.830004, 12.776304, 15.926918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948792, -0.186607, -0.254896,
		-0.012428, 0.828309, -0.560134,
		0.315658, -0.528283, -0.788211,
		12.924701, 12.617820, 15.690454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.416110, 13.205549, 15.554107>,  <12.703741, 12.987617, 16.242203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.416110, 13.205549, 15.554107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.497636, 12.814259, 15.538454>,  <12.546551, 12.579484, 15.529062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.497636, 12.814259, 15.538454>,  <12.416110, 13.205549, 15.554107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.497636, 12.814259, 15.538454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968261, -0.195508, -0.155717,
		0.144676, 0.069627, -0.987026,
		0.203814, -0.978227, -0.039132,
		12.558780, 12.520790, 15.526714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.040750, 12.930286, 15.073065>,  <12.416110, 13.205549, 15.554107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.040750, 12.930286, 15.073065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.138379, 12.601591, 15.279045>,  <12.196957, 12.404374, 15.402634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.138379, 12.601591, 15.279045>,  <12.040750, 12.930286, 15.073065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.138379, 12.601591, 15.279045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962440, -0.270366, 0.024734,
		0.118901, -0.501646, -0.856863,
		0.244074, -0.821738, 0.514951,
		12.211601, 12.355070, 15.433531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.709084, 12.216125, 14.787367>,  <12.040750, 12.930286, 15.073065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.709084, 12.216125, 14.787367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.766540, 12.197562, 15.182783>,  <11.801013, 12.186424, 15.420033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.766540, 12.197562, 15.182783>,  <11.709084, 12.216125, 14.787367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.766540, 12.197562, 15.182783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948616, -0.291047, 0.124175,
		0.281950, -0.955582, -0.085829,
		0.143640, -0.046408, 0.988541,
		11.809631, 12.183640, 15.479345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.209545, 11.680379, 15.018166>,  <11.709084, 12.216125, 14.787367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.209545, 11.680379, 15.018166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.342115, 11.871971, 15.343307>,  <11.421658, 11.986927, 15.538393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.342115, 11.871971, 15.343307>,  <11.209545, 11.680379, 15.018166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.342115, 11.871971, 15.343307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860542, -0.199756, 0.468577,
		0.386812, -0.854795, 0.345980,
		0.331426, 0.478981, 0.812855,
		11.441544, 12.015665, 15.587164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.926981, 11.202540, 15.519105>,  <11.209545, 11.680379, 15.018166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.926981, 11.202540, 15.519105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.996373, 11.569728, 15.661786>,  <11.038009, 11.790041, 15.747395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.996373, 11.569728, 15.661786>,  <10.926981, 11.202540, 15.519105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.996373, 11.569728, 15.661786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826523, -0.061234, 0.559563,
		0.535504, -0.391896, 0.748100,
		0.173481, 0.917970, 0.356702,
		11.048417, 11.845119, 15.768797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.656443, 11.210272, 16.237913>,  <10.926981, 11.202540, 15.519105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.656443, 11.210272, 16.237913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.679404, 11.600621, 16.153652>,  <10.693181, 11.834831, 16.103096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.679404, 11.600621, 16.153652>,  <10.656443, 11.210272, 16.237913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.679404, 11.600621, 16.153652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793966, 0.172543, 0.582965,
		0.605247, 0.133786, 0.784715,
		0.057405, 0.975874, -0.210652,
		10.696626, 11.893383, 16.090456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.468213, 11.548934, 16.860844>,  <10.656443, 11.210272, 16.237913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.468213, 11.548934, 16.860844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.418700, 11.842460, 16.593653>,  <10.388992, 12.018576, 16.433338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.418700, 11.842460, 16.593653>,  <10.468213, 11.548934, 16.860844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.418700, 11.842460, 16.593653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835958, 0.285578, 0.468636,
		0.534652, 0.616409, 0.578089,
		-0.123783, 0.733815, -0.667977,
		10.381565, 12.062604, 16.393259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.280363, 12.176848, 17.281515>,  <10.468213, 11.548934, 16.860844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.280363, 12.176848, 17.281515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.171521, 12.263676, 16.906528>,  <10.106216, 12.315772, 16.681538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.171521, 12.263676, 16.906528>,  <10.280363, 12.176848, 17.281515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.171521, 12.263676, 16.906528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940560, 0.145770, 0.306755,
		0.203241, 0.965211, 0.164501,
		-0.272104, 0.217068, -0.937465,
		10.089890, 12.328796, 16.625288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.996926, 12.958201, 17.230520>,  <10.280363, 12.176848, 17.281515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.996926, 12.958201, 17.230520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.847687, 12.765060, 16.913622>,  <9.758143, 12.649176, 16.723482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.847687, 12.765060, 16.913622>,  <9.996926, 12.958201, 17.230520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.847687, 12.765060, 16.913622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888692, 0.431269, 0.155672,
		0.266505, 0.762143, -0.590012,
		-0.373098, -0.482852, -0.792245,
		9.735758, 12.620205, 16.675949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.601969, 13.434036, 16.980606>,  <9.996926, 12.958201, 17.230520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.601969, 13.434036, 16.980606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.436427, 13.126719, 16.785278>,  <9.337102, 12.942329, 16.668081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.436427, 13.126719, 16.785278>,  <9.601969, 13.434036, 16.980606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.436427, 13.126719, 16.785278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880106, 0.474776, -0.001087,
		0.232676, 0.429321, -0.872665,
		-0.413853, -0.768291, -0.488317,
		9.312271, 12.896233, 16.638783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.231442, 13.800299, 16.517311>,  <9.601969, 13.434036, 16.980606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.231442, 13.800299, 16.517311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.074057, 13.432566, 16.518793>,  <8.979626, 13.211926, 16.519682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.074057, 13.432566, 16.518793>,  <9.231442, 13.800299, 16.517311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.074057, 13.432566, 16.518793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917959, 0.392649, -0.056374,
		0.050372, -0.025581, -0.998403,
		-0.393464, -0.919333, 0.003704,
		8.956017, 13.156766, 16.519905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.704578, 13.794762, 15.990086>,  <9.231442, 13.800299, 16.517311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.704578, 13.794762, 15.990086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.584944, 13.472793, 16.195082>,  <8.513164, 13.279611, 16.318079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.584944, 13.472793, 16.195082>,  <8.704578, 13.794762, 15.990086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.584944, 13.472793, 16.195082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951569, 0.291644, -0.097270,
		-0.071170, -0.516762, -0.853166,
		-0.299086, -0.804924, 0.512490,
		8.495218, 13.231316, 16.348829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.185311, 13.435722, 15.624177>,  <8.704578, 13.794762, 15.990086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.185311, 13.435722, 15.624177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.126782, 13.383718, 16.016439>,  <8.091665, 13.352515, 16.251797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.126782, 13.383718, 16.016439>,  <8.185311, 13.435722, 15.624177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.126782, 13.383718, 16.016439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950304, 0.293847, -0.102837,
		-0.274793, -0.946970, -0.166546,
		-0.146323, -0.130011, 0.980656,
		8.082886, 13.344714, 16.310637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.453576, 13.167665, 15.671638>,  <8.185311, 13.435722, 15.624177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.453576, 13.167665, 15.671638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.537961, 13.230012, 16.057632>,  <7.588593, 13.267420, 16.289228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.537961, 13.230012, 16.057632>,  <7.453576, 13.167665, 15.671638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.537961, 13.230012, 16.057632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930535, 0.334327, 0.149431,
		-0.299330, -0.929479, 0.215572,
		0.210965, 0.155868, 0.964987,
		7.601251, 13.276772, 16.347128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.900462, 12.845408, 16.075392>,  <7.453576, 13.167665, 15.671638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.900462, 12.845408, 16.075392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.087753, 13.133793, 16.279736>,  <7.200128, 13.306824, 16.402342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.087753, 13.133793, 16.279736>,  <6.900462, 12.845408, 16.075392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.087753, 13.133793, 16.279736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870286, 0.476297, 0.125475,
		-0.152858, -0.503345, 0.850457,
		0.468228, 0.720961, 0.510860,
		7.228221, 13.350081, 16.432993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.379319, 12.926201, 16.669323>,  <6.900462, 12.845408, 16.075392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.379319, 12.926201, 16.669323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.633292, 13.233078, 16.632940>,  <6.785676, 13.417205, 16.611111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.633292, 13.233078, 16.632940>,  <6.379319, 12.926201, 16.669323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.633292, 13.233078, 16.632940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765729, 0.640566, 0.057744,
		0.102565, 0.032986, 0.994179,
		0.634933, 0.767194, -0.090958,
		6.823771, 13.463236, 16.605652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.149567, 13.449306, 17.133762>,  <6.379319, 12.926201, 16.669323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.149567, 13.449306, 17.133762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.379557, 13.639540, 16.867462>,  <6.517551, 13.753679, 16.707682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.379557, 13.639540, 16.867462>,  <6.149567, 13.449306, 17.133762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.379557, 13.639540, 16.867462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675185, 0.735381, -0.057801,
		0.462091, 0.482739, 0.743932,
		0.574976, 0.475582, -0.665751,
		6.552050, 13.782214, 16.667736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.986020, 14.155297, 17.217371>,  <6.149567, 13.449306, 17.133762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.986020, 14.155297, 17.217371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.166284, 14.142263, 16.860531>,  <6.274442, 14.134443, 16.646427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.166284, 14.142263, 16.860531>,  <5.986020, 14.155297, 17.217371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.166284, 14.142263, 16.860531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723055, 0.572761, -0.386182,
		0.523545, 0.819074, 0.234560,
		0.450658, -0.032584, -0.892102,
		6.301481, 14.132488, 16.592901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.973881, 14.828066, 16.930214>,  <5.986020, 14.155297, 17.217371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.973881, 14.828066, 16.930214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.025422, 14.586514, 16.615578>,  <6.056346, 14.441582, 16.426796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.025422, 14.586514, 16.615578>,  <5.973881, 14.828066, 16.930214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.025422, 14.586514, 16.615578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725105, 0.483720, -0.490141,
		0.676476, 0.633516, -0.375549,
		0.128852, -0.603881, -0.786590,
		6.064077, 14.405349, 16.379601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.883566, 15.247089, 16.354889>,  <5.973881, 14.828066, 16.930214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.883566, 15.247089, 16.354889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.799253, 14.867616, 16.260597>,  <5.748665, 14.639932, 16.204021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.799253, 14.867616, 16.260597>,  <5.883566, 15.247089, 16.354889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.799253, 14.867616, 16.260597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815154, 0.303680, -0.493256,
		0.539531, 0.088187, -0.837335,
		-0.210784, -0.948684, -0.235731,
		5.736018, 14.583011, 16.189878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.540065, 15.263876, 15.738219>,  <5.883566, 15.247089, 16.354889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.540065, 15.263876, 15.738219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.468141, 14.879750, 15.823507>,  <5.424987, 14.649275, 15.874681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.468141, 14.879750, 15.823507>,  <5.540065, 15.263876, 15.738219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.468141, 14.879750, 15.823507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843252, 0.038856, -0.536112,
		0.506552, -0.276197, -0.816774,
		-0.179809, -0.960315, 0.213221,
		5.414198, 14.591656, 15.887474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.426152, 14.970921, 15.101170>,  <5.540065, 15.263876, 15.738219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.426152, 14.970921, 15.101170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.238605, 14.742877, 15.371026>,  <5.126077, 14.606051, 15.532940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.238605, 14.742877, 15.371026>,  <5.426152, 14.970921, 15.101170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.238605, 14.742877, 15.371026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791688, -0.067426, -0.607194,
		0.391655, -0.818798, -0.419735,
		-0.468868, -0.570109, 0.674640,
		5.097945, 14.571844, 15.573418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.725630, 14.931347, 14.491425>,  <5.426152, 14.970921, 15.101170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.725630, 14.931347, 14.491425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.754653, 15.330010, 14.476417>,  <5.772067, 15.569208, 14.467412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.754653, 15.330010, 14.476417>,  <5.725630, 14.931347, 14.491425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.754653, 15.330010, 14.476417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966879, -0.079520, -0.242531,
		-0.244704, -0.018679, -0.969418,
		0.072558, 0.996658, -0.037520,
		5.776420, 15.629008, 14.465160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.997481, 15.144084, 13.859820>,  <5.725630, 14.931347, 14.491425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.997481, 15.144084, 13.859820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.082562, 15.428963, 14.127412>,  <6.133611, 15.599890, 14.287967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.082562, 15.428963, 14.127412>,  <5.997481, 15.144084, 13.859820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.082562, 15.428963, 14.127412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969712, -0.069728, -0.234089,
		-0.120070, 0.698508, -0.705457,
		0.212703, 0.712197, 0.668979,
		6.146373, 15.642622, 14.328106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.518098, 15.563899, 13.539122>,  <5.997481, 15.144084, 13.859820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.518098, 15.563899, 13.539122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.558434, 15.650828, 13.927472>,  <6.582635, 15.702986, 14.160482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.558434, 15.650828, 13.927472>,  <6.518098, 15.563899, 13.539122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.558434, 15.650828, 13.927472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994465, -0.050970, -0.091881,
		0.029518, 0.974768, -0.221259,
		0.100840, 0.217322, 0.970877,
		6.588686, 15.716025, 14.218736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.959617, 16.200632, 13.573639>,  <6.518098, 15.563899, 13.539122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.959617, 16.200632, 13.573639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.970824, 15.978920, 13.906383>,  <6.977549, 15.845893, 14.106029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.970824, 15.978920, 13.906383>,  <6.959617, 16.200632, 13.573639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.970824, 15.978920, 13.906383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978464, -0.155049, -0.136267,
		0.204509, 0.817761, 0.537999,
		0.028018, -0.554281, 0.831858,
		6.979229, 15.812635, 14.155940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.608946, 16.186804, 13.653951>,  <6.959617, 16.200632, 13.573639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.608946, 16.186804, 13.653951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.503860, 15.949068, 13.957987>,  <7.440807, 15.806426, 14.140409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.503860, 15.949068, 13.957987>,  <7.608946, 16.186804, 13.653951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.503860, 15.949068, 13.957987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952903, -0.283520, 0.107666,
		0.151510, 0.752579, 0.640835,
		-0.262717, -0.594341, 0.760091,
		7.425045, 15.770765, 14.186014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.029287, 16.478313, 14.240373>,  <7.608946, 16.186804, 13.653951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.029287, 16.478313, 14.240373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.914078, 16.098757, 14.291984>,  <7.844953, 15.871023, 14.322950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.914078, 16.098757, 14.291984>,  <8.029287, 16.478313, 14.240373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.914078, 16.098757, 14.291984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932019, -0.246816, 0.265372,
		-0.219963, 0.196690, 0.955474,
		-0.288022, -0.948892, 0.129028,
		7.827672, 15.814089, 14.330692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.170418, 16.323776, 14.899470>,  <8.029287, 16.478313, 14.240373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.170418, 16.323776, 14.899470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.184641, 15.984482, 14.688102>,  <8.193174, 15.780905, 14.561280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.184641, 15.984482, 14.688102>,  <8.170418, 16.323776, 14.899470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.184641, 15.984482, 14.688102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892623, -0.210817, 0.398474,
		-0.449401, -0.485850, 0.749659,
		0.035558, -0.848237, -0.528422,
		8.195308, 15.730011, 14.529575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.565475, 15.873989, 15.230364>,  <8.170418, 16.323776, 14.899470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.565475, 15.873989, 15.230364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.574960, 15.693622, 14.873464>,  <8.580651, 15.585401, 14.659324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.574960, 15.693622, 14.873464>,  <8.565475, 15.873989, 15.230364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.574960, 15.693622, 14.873464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962259, -0.231728, 0.142684,
		-0.271098, -0.861959, 0.428406,
		0.023714, -0.450919, -0.892250,
		8.582074, 15.558346, 14.605789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.870984, 15.192589, 15.337353>,  <8.565475, 15.873989, 15.230364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.870984, 15.192589, 15.337353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.911976, 15.213725, 14.940021>,  <8.936571, 15.226407, 14.701621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.911976, 15.213725, 14.940021>,  <8.870984, 15.192589, 15.337353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.911976, 15.213725, 14.940021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935598, -0.344296, 0.078208,
		-0.337867, -0.937373, -0.084719,
		0.102478, 0.052839, -0.993331,
		8.942719, 15.229577, 14.642021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.015999, 14.534823, 14.958578>,  <8.870984, 15.192589, 15.337353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.015999, 14.534823, 14.958578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.178844, 14.794412, 14.701488>,  <9.276551, 14.950165, 14.547235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.178844, 14.794412, 14.701488>,  <9.015999, 14.534823, 14.958578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.178844, 14.794412, 14.701488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808793, -0.583101, -0.076465,
		-0.424397, -0.488701, -0.762272,
		0.407113, 0.648972, -0.642724,
		9.300979, 14.989103, 14.508671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.444126, 14.058660, 14.573697>,  <9.015999, 14.534823, 14.958578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.444126, 14.058660, 14.573697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.587887, 14.419675, 14.478824>,  <9.674143, 14.636284, 14.421900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.587887, 14.419675, 14.478824>,  <9.444126, 14.058660, 14.573697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.587887, 14.419675, 14.478824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925013, -0.378115, -0.037157,
		-0.123218, -0.206042, -0.970754,
		0.359401, 0.902538, -0.237183,
		9.695707, 14.690436, 14.407669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.905231, 13.984690, 13.902762>,  <9.444126, 14.058660, 14.573697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.905231, 13.984690, 13.902762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.020837, 14.333674, 14.060387>,  <10.090200, 14.543065, 14.154961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.020837, 14.333674, 14.060387>,  <9.905231, 13.984690, 13.902762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.020837, 14.333674, 14.060387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956956, -0.251860, -0.144230,
		-0.026587, 0.418782, -0.907697,
		0.289014, 0.872461, 0.394060,
		10.107541, 14.595413, 14.178604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.345265, 14.242723, 13.467980>,  <9.905231, 13.984690, 13.902762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.345265, 14.242723, 13.467980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.422673, 14.413452, 13.821335>,  <10.469118, 14.515889, 14.033348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.422673, 14.413452, 13.821335>,  <10.345265, 14.242723, 13.467980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.422673, 14.413452, 13.821335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974923, -0.184515, -0.124420,
		0.109893, 0.885312, -0.451826,
		0.193519, 0.426822, 0.883387,
		10.480729, 14.541499, 14.086351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.994093, 14.560033, 13.365777>,  <10.345265, 14.242723, 13.467980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.994093, 14.560033, 13.365777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.986862, 14.552876, 13.765648>,  <10.982524, 14.548582, 14.005570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.986862, 14.552876, 13.765648>,  <10.994093, 14.560033, 13.365777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.986862, 14.552876, 13.765648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990285, -0.138193, 0.015433,
		0.137872, 0.990244, 0.020216,
		-0.018076, -0.017891, 0.999676,
		10.981440, 14.547509, 14.065551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.567897, 14.890402, 13.540686>,  <10.994093, 14.560033, 13.365777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.567897, 14.890402, 13.540686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.478457, 14.707394, 13.884936>,  <11.424794, 14.597589, 14.091487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.478457, 14.707394, 13.884936>,  <11.567897, 14.890402, 13.540686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.478457, 14.707394, 13.884936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956947, -0.270722, 0.104702,
		0.185087, 0.846985, 0.498356,
		-0.223597, -0.457521, 0.860627,
		11.411378, 14.570137, 14.143125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.132555, 15.090249, 13.856623>,  <11.567897, 14.890402, 13.540686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.132555, 15.090249, 13.856623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.980418, 14.782921, 14.062545>,  <11.889136, 14.598524, 14.186098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.980418, 14.782921, 14.062545>,  <12.132555, 15.090249, 13.856623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.980418, 14.782921, 14.062545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915848, -0.390356, 0.094050,
		0.128697, 0.507254, 0.852133,
		-0.380342, -0.768320, 0.514805,
		11.866316, 14.552424, 14.216987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.616261, 15.006968, 14.295906>,  <12.132555, 15.090249, 13.856623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.616261, 15.006968, 14.295906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.414029, 14.661861, 14.294063>,  <12.292690, 14.454797, 14.292956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.414029, 14.661861, 14.294063>,  <12.616261, 15.006968, 14.295906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.414029, 14.661861, 14.294063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857666, -0.503155, 0.106040,
		-0.093806, 0.049660, 0.994351,
		-0.505579, -0.862768, -0.004607,
		12.262356, 14.403031, 14.292681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.875652, 14.637572, 14.895714>,  <12.616261, 15.006968, 14.295906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.875652, 14.637572, 14.895714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.713653, 14.374526, 14.641622>,  <12.616452, 14.216699, 14.489166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.713653, 14.374526, 14.641622>,  <12.875652, 14.637572, 14.895714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.713653, 14.374526, 14.641622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872500, -0.485679, -0.053480,
		-0.273349, -0.575898, 0.770469,
		-0.405000, -0.657615, -0.635231,
		12.592153, 14.177241, 14.451053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.003649, 13.986499, 15.163196>,  <12.875652, 14.637572, 14.895714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.003649, 13.986499, 15.163196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.959039, 13.970097, 14.766029>,  <12.932273, 13.960256, 14.527730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.959039, 13.970097, 14.766029>,  <13.003649, 13.986499, 15.163196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.959039, 13.970097, 14.766029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918341, -0.386064, -0.087205,
		-0.379753, -0.921560, 0.080713,
		-0.111525, -0.041005, -0.992915,
		12.925581, 13.957795, 14.468155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.133367, 13.294780, 15.042134>,  <13.003649, 13.986499, 15.163196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.133367, 13.294780, 15.042134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.163959, 13.475069, 14.686381>,  <13.182314, 13.583242, 14.472930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.163959, 13.475069, 14.686381>,  <13.133367, 13.294780, 15.042134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.163959, 13.475069, 14.686381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863682, -0.475645, -0.166779,
		-0.498201, -0.755388, -0.425659,
		0.076480, 0.450723, -0.889382,
		13.186902, 13.610286, 14.419567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.196610, 12.788743, 14.467003>,  <13.133367, 13.294780, 15.042134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.196610, 12.788743, 14.467003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.373013, 13.135240, 14.373075>,  <13.478855, 13.343138, 14.316719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.373013, 13.135240, 14.373075>,  <13.196610, 12.788743, 14.467003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.373013, 13.135240, 14.373075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853221, -0.485813, -0.189738,
		-0.278437, -0.116676, -0.953341,
		0.441007, 0.866241, -0.234819,
		13.505316, 13.395112, 14.302629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<15.329089, 23.066370, 24.785250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.066024, 22.855721, 25.000710>,  <14.908185, 22.729330, 25.129986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.066024, 22.855721, 25.000710>,  <15.329089, 23.066370, 24.785250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.066024, 22.855721, 25.000710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494609, 0.237458, 0.836048,
		-0.568192, 0.816259, 0.104306,
		-0.657663, -0.526626, 0.538651,
		14.868725, 22.697733, 25.162304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.357958, 23.357635, 25.468992>,  <15.329089, 23.066370, 24.785250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.357958, 23.357635, 25.468992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.135761, 23.041706, 25.572998>,  <15.002443, 22.852148, 25.635403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.135761, 23.041706, 25.572998>,  <15.357958, 23.357635, 25.468992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.135761, 23.041706, 25.572998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311654, 0.092148, 0.945717,
		-0.770909, 0.606373, 0.194964,
		-0.555492, -0.789823, 0.260016,
		14.969113, 22.804760, 25.651003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.950112, 23.571218, 26.009008>,  <15.357958, 23.357635, 25.468992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.950112, 23.571218, 26.009008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.043923, 23.182388, 26.005846>,  <15.100210, 22.949089, 26.003948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.043923, 23.182388, 26.005846>,  <14.950112, 23.571218, 26.009008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.043923, 23.182388, 26.005846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458027, 0.103326, 0.882913,
		-0.857443, -0.210689, 0.469470,
		0.234528, -0.972077, -0.007905,
		15.114282, 22.890764, 26.003475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.706011, 23.315622, 26.702776>,  <14.950112, 23.571218, 26.009008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.706011, 23.315622, 26.702776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.979742, 23.054214, 26.573404>,  <15.143981, 22.897369, 26.495781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.979742, 23.054214, 26.573404>,  <14.706011, 23.315622, 26.702776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.979742, 23.054214, 26.573404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385827, -0.051848, 0.921113,
		-0.618735, -0.755131, 0.216664,
		0.684328, -0.653520, -0.323430,
		15.185040, 22.858158, 26.476376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.703371, 22.830614, 27.283440>,  <14.706011, 23.315622, 26.702776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.703371, 22.830614, 27.283440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.046565, 22.769567, 27.087248>,  <15.252481, 22.732939, 26.969534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.046565, 22.769567, 27.087248>,  <14.703371, 22.830614, 27.283440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.046565, 22.769567, 27.087248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499247, 0.023053, 0.866153,
		-0.120886, -0.988016, 0.095974,
		0.857985, -0.152621, -0.490478,
		15.303961, 22.723782, 26.940105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.167911, 22.250093, 27.593477>,  <14.703371, 22.830614, 27.283440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.167911, 22.250093, 27.593477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.409267, 22.483835, 27.376425>,  <15.554082, 22.624081, 27.246193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.409267, 22.483835, 27.376425>,  <15.167911, 22.250093, 27.593477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.409267, 22.483835, 27.376425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565362, 0.166416, 0.807881,
		0.562391, -0.794252, -0.229957,
		0.603392, 0.584354, -0.542631,
		15.590285, 22.659142, 27.213634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.859979, 22.097166, 27.865685>,  <15.167911, 22.250093, 27.593477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.859979, 22.097166, 27.865685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.881199, 22.446016, 27.671125>,  <15.893930, 22.655327, 27.554390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.881199, 22.446016, 27.671125>,  <15.859979, 22.097166, 27.865685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.881199, 22.446016, 27.671125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689463, 0.320363, 0.649621,
		0.722376, -0.369814, -0.584304,
		0.053049, 0.872127, -0.486395,
		15.897114, 22.707655, 27.525208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.612421, 22.265144, 27.938820>,  <15.859979, 22.097166, 27.865685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.612421, 22.265144, 27.938820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.414618, 22.598507, 27.840115>,  <16.295935, 22.798525, 27.780891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.414618, 22.598507, 27.840115>,  <16.612421, 22.265144, 27.938820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.414618, 22.598507, 27.840115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570581, 0.525437, 0.631152,
		0.655665, 0.171312, -0.735360,
		-0.494510, 0.833408, -0.246763,
		16.266264, 22.848530, 27.766085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.097975, 22.689400, 27.866308>,  <16.612421, 22.265144, 27.938820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.097975, 22.689400, 27.866308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.782242, 22.931894, 27.905153>,  <16.592802, 23.077391, 27.928461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.782242, 22.931894, 27.905153>,  <17.097975, 22.689400, 27.866308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.782242, 22.931894, 27.905153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553668, 0.634492, 0.539325,
		0.265340, 0.479477, -0.836479,
		-0.789333, 0.606236, 0.097115,
		16.545443, 23.113766, 27.934288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.455889, 23.330673, 27.920879>,  <17.097975, 22.689400, 27.866308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.455889, 23.330673, 27.920879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.089577, 23.394264, 28.068434>,  <16.869789, 23.432419, 28.156965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.089577, 23.394264, 28.068434>,  <17.455889, 23.330673, 27.920879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.089577, 23.394264, 28.068434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390051, 0.571357, 0.722088,
		-0.095969, 0.805156, -0.585246,
		-0.915778, 0.158978, 0.368885,
		16.814844, 23.441957, 28.179100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.528048, 23.964783, 28.281660>,  <17.455889, 23.330673, 27.920879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.528048, 23.964783, 28.281660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.193077, 23.821337, 28.446640>,  <16.992096, 23.735270, 28.545628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.193077, 23.821337, 28.446640>,  <17.528048, 23.964783, 28.281660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.193077, 23.821337, 28.446640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156866, 0.565185, 0.809913,
		-0.523558, 0.742941, -0.417045,
		-0.837425, -0.358616, 0.412449,
		16.941849, 23.713753, 28.570375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.024069, 24.509739, 28.351578>,  <17.528048, 23.964783, 28.281660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.024069, 24.509739, 28.351578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.031836, 24.221252, 28.628553>,  <17.036495, 24.048161, 28.794739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.031836, 24.221252, 28.628553>,  <17.024069, 24.509739, 28.351578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.031836, 24.221252, 28.628553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554937, 0.583868, 0.592574,
		-0.831666, 0.372754, 0.411565,
		0.019415, -0.721216, 0.692438,
		17.037661, 24.004887, 28.836285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.909122, 24.771858, 28.954483>,  <17.024069, 24.509739, 28.351578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.909122, 24.771858, 28.954483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.079821, 24.437840, 29.093384>,  <17.182240, 24.237429, 29.176723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.079821, 24.437840, 29.093384>,  <16.909122, 24.771858, 28.954483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.079821, 24.437840, 29.093384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402504, 0.519214, 0.753928,
		-0.809864, -0.181965, 0.557683,
		0.426745, -0.835048, 0.347251,
		17.207844, 24.187325, 29.197559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.643576, 24.636074, 29.537786>,  <16.909122, 24.771858, 28.954483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.643576, 24.636074, 29.537786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.019974, 24.502970, 29.562439>,  <17.245813, 24.423107, 29.577230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.019974, 24.502970, 29.562439>,  <16.643576, 24.636074, 29.537786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019974, 24.502970, 29.562439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162740, 0.604614, 0.779717,
		-0.296723, -0.723679, 0.623092,
		0.940995, -0.332762, 0.061631,
		17.302273, 24.403141, 29.580929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.498150, 25.431431, 29.217821>,  <16.643576, 24.636074, 29.537786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.498150, 25.431431, 29.217821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.520933, 25.806839, 29.081625>,  <16.534603, 26.032084, 28.999907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.520933, 25.806839, 29.081625>,  <16.498150, 25.431431, 29.217821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.520933, 25.806839, 29.081625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106603, -0.333378, -0.936747,
		-0.992669, 0.089654, 0.081060,
		0.056960, 0.938521, -0.340491,
		16.538021, 26.088396, 28.979477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.952615, 25.517466, 28.755777>,  <16.498150, 25.431431, 29.217821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.952615, 25.517466, 28.755777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.226904, 25.798254, 28.678812>,  <16.391478, 25.966726, 28.632633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.226904, 25.798254, 28.678812>,  <15.952615, 25.517466, 28.755777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.226904, 25.798254, 28.678812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026792, -0.239830, -0.970445,
		-0.727369, 0.670612, -0.145650,
		0.685723, 0.701970, -0.192412,
		16.432621, 26.008844, 28.621088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.771619, 25.828190, 28.181063>,  <15.952615, 25.517466, 28.755777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.771619, 25.828190, 28.181063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.164591, 25.899561, 28.202946>,  <16.400373, 25.942383, 28.216076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.164591, 25.899561, 28.202946>,  <15.771619, 25.828190, 28.181063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.164591, 25.899561, 28.202946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093283, -0.215590, -0.972018,
		-0.161640, 0.960044, -0.228447,
		0.982431, 0.178427, 0.054708,
		16.459320, 25.953089, 28.219358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.898365, 26.384027, 27.825430>,  <15.771619, 25.828190, 28.181063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.898365, 26.384027, 27.825430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.260448, 26.215969, 27.799891>,  <16.477699, 26.115135, 27.784567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.260448, 26.215969, 27.799891>,  <15.898365, 26.384027, 27.825430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.260448, 26.215969, 27.799891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119567, -0.107625, -0.986975,
		0.407800, 0.901053, -0.147659,
		0.905209, -0.420144, -0.063847,
		16.532011, 26.089926, 27.780737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.350460, 26.715118, 27.279751>,  <15.898365, 26.384027, 27.825430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.350460, 26.715118, 27.279751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.512850, 26.351809, 27.320187>,  <16.610283, 26.133821, 27.344448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.512850, 26.351809, 27.320187>,  <16.350460, 26.715118, 27.279751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.512850, 26.351809, 27.320187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194296, -0.193870, -0.961594,
		0.892992, 0.370739, -0.255180,
		0.405973, -0.908277, 0.101092,
		16.634642, 26.079325, 27.350513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849768, 26.766743, 26.814827>,  <16.350460, 26.715118, 27.279751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.849768, 26.766743, 26.814827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.777622, 26.376772, 26.866962>,  <16.734335, 26.142790, 26.898243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.777622, 26.376772, 26.866962>,  <16.849768, 26.766743, 26.814827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.777622, 26.376772, 26.866962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130915, -0.107537, -0.985544,
		0.974849, -0.194820, -0.108236,
		-0.180365, -0.974926, 0.130337,
		16.723513, 26.084293, 26.906063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.236288, 26.343908, 26.317986>,  <16.849768, 26.766743, 26.814827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.236288, 26.343908, 26.317986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.934191, 26.105616, 26.427322>,  <16.752934, 25.962641, 26.492924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.934191, 26.105616, 26.427322>,  <17.236288, 26.343908, 26.317986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.934191, 26.105616, 26.427322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112063, -0.293530, -0.949359,
		0.645796, -0.747627, 0.154927,
		-0.755241, -0.595730, 0.273342,
		16.707619, 25.926897, 26.509325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.368462, 25.690134, 25.913254>,  <17.236288, 26.343908, 26.317986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.368462, 25.690134, 25.913254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.985052, 25.649206, 26.019655>,  <16.755005, 25.624649, 26.083496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.985052, 25.649206, 26.019655>,  <17.368462, 25.690134, 25.913254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.985052, 25.649206, 26.019655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188817, -0.471130, -0.861617,
		0.213485, -0.876109, 0.432270,
		-0.958526, -0.102322, 0.266004,
		16.697495, 25.618509, 26.099457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.303995, 25.081781, 25.715088>,  <17.368462, 25.690134, 25.913254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.303995, 25.081781, 25.715088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.927605, 25.213226, 25.747532>,  <16.701771, 25.292093, 25.766998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.927605, 25.213226, 25.747532>,  <17.303995, 25.081781, 25.715088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.927605, 25.213226, 25.747532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243493, -0.490752, -0.836584,
		-0.235105, -0.806956, 0.541801,
		-0.940976, 0.328610, 0.081110,
		16.645311, 25.311810, 25.771864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.844070, 24.536163, 25.481882>,  <17.303995, 25.081781, 25.715088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.844070, 24.536163, 25.481882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.608591, 24.859425, 25.474693>,  <16.467304, 25.053381, 25.470381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.608591, 24.859425, 25.474693>,  <16.844070, 24.536163, 25.481882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.608591, 24.859425, 25.474693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488877, -0.373649, -0.788281,
		-0.643767, -0.455273, 0.615053,
		-0.588697, 0.808154, -0.017970,
		16.431982, 25.101871, 25.469303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.162132, 24.307394, 25.358654>,  <16.844070, 24.536163, 25.481882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.162132, 24.307394, 25.358654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.176422, 24.691452, 25.247766>,  <16.184996, 24.921886, 25.181234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.176422, 24.691452, 25.247766>,  <16.162132, 24.307394, 25.358654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.176422, 24.691452, 25.247766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416728, -0.237813, -0.877373,
		-0.908329, 0.146870, 0.391622,
		0.035727, 0.960143, -0.277217,
		16.187140, 24.979494, 25.164602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.529452, 24.492281, 25.132843>,  <16.162132, 24.307394, 25.358654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.529452, 24.492281, 25.132843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.741949, 24.791107, 24.973005>,  <15.869447, 24.970404, 24.877104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.741949, 24.791107, 24.973005>,  <15.529452, 24.492281, 25.132843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.741949, 24.791107, 24.973005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509680, -0.094948, -0.855109,
		-0.676763, 0.657934, 0.330324,
		0.531242, 0.747066, -0.399593,
		15.901321, 25.015226, 24.853127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.008584, 24.865913, 24.750080>,  <15.529452, 24.492281, 25.132843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.008584, 24.865913, 24.750080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.375821, 24.948189, 24.614552>,  <15.596163, 24.997555, 24.533236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.375821, 24.948189, 24.614552>,  <15.008584, 24.865913, 24.750080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.375821, 24.948189, 24.614552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305617, -0.176978, -0.935562,
		-0.252400, 0.962481, -0.099620,
		0.918092, 0.205690, -0.338820,
		15.651249, 25.009895, 24.512905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.878359, 25.212078, 24.158499>,  <15.008584, 24.865913, 24.750080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.878359, 25.212078, 24.158499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.259279, 25.095997, 24.120750>,  <15.487831, 25.026348, 24.098103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.259279, 25.095997, 24.120750>,  <14.878359, 25.212078, 24.158499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.259279, 25.095997, 24.120750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164516, -0.227776, -0.959715,
		0.257016, 0.929463, -0.264655,
		0.952301, -0.290202, -0.094369,
		15.544970, 25.008936, 24.092440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.608279, 25.987156, 24.047890>,  <14.878359, 25.212078, 24.158499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.608279, 25.987156, 24.047890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.211671, 26.000132, 24.098223>,  <13.973706, 26.007917, 24.128422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.211671, 26.000132, 24.098223>,  <14.608279, 25.987156, 24.047890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.211671, 26.000132, 24.098223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129651, 0.312200, 0.941128,
		-0.008756, 0.949463, -0.313758,
		-0.991521, 0.032438, 0.125832,
		13.914214, 26.009863, 24.135973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.516941, 26.599710, 24.553276>,  <14.608279, 25.987156, 24.047890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.516941, 26.599710, 24.553276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.170215, 26.400671, 24.566071>,  <13.962179, 26.281246, 24.573748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.170215, 26.400671, 24.566071>,  <14.516941, 26.599710, 24.553276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.170215, 26.400671, 24.566071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108045, 0.250059, 0.962183,
		-0.486781, 0.830581, -0.270518,
		-0.866816, -0.497601, 0.031984,
		13.910170, 26.251390, 24.575666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.997634, 27.050482, 24.819338>,  <14.516941, 26.599710, 24.553276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.997634, 27.050482, 24.819338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.851446, 26.683784, 24.883852>,  <13.763734, 26.463766, 24.922562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.851446, 26.683784, 24.883852>,  <13.997634, 27.050482, 24.819338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.851446, 26.683784, 24.883852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031370, 0.185305, 0.982180,
		-0.930295, 0.353897, -0.096481,
		-0.365469, -0.916744, 0.161286,
		13.741805, 26.408762, 24.932238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.493778, 27.067097, 25.274269>,  <13.997634, 27.050482, 24.819338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.493778, 27.067097, 25.274269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.519081, 26.669905, 25.314238>,  <13.534263, 26.431589, 25.338219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.519081, 26.669905, 25.314238>,  <13.493778, 27.067097, 25.274269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.519081, 26.669905, 25.314238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139257, 0.090362, 0.986125,
		-0.988234, -0.076293, -0.132564,
		0.063256, -0.992982, 0.099924,
		13.538058, 26.372009, 25.344215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.002920, 26.876343, 25.710152>,  <13.493778, 27.067097, 25.274269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.002920, 26.876343, 25.710152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.218906, 26.541447, 25.744709>,  <13.348498, 26.340509, 25.765444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.218906, 26.541447, 25.744709>,  <13.002920, 26.876343, 25.710152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.218906, 26.541447, 25.744709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098849, 0.038854, 0.994344,
		-0.835862, -0.545452, -0.061781,
		0.539966, -0.837241, 0.086393,
		13.380897, 26.290274, 25.770628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.603769, 26.422209, 26.100756>,  <13.002920, 26.876343, 25.710152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.603769, 26.422209, 26.100756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.989927, 26.323156, 26.133472>,  <13.221622, 26.263725, 26.153103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.989927, 26.323156, 26.133472>,  <12.603769, 26.422209, 26.100756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.989927, 26.323156, 26.133472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073563, 0.042321, 0.996392,
		-0.250201, -0.967929, 0.022640,
		0.965395, -0.247633, 0.081793,
		13.279546, 26.248867, 26.158010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.693369, 25.836325, 26.652742>,  <12.603769, 26.422209, 26.100756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.693369, 25.836325, 26.652742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.035435, 26.038759, 26.607899>,  <13.240674, 26.160221, 26.580992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.035435, 26.038759, 26.607899>,  <12.693369, 25.836325, 26.652742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.035435, 26.038759, 26.607899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098218, 0.054162, 0.993690,
		0.508966, -0.860780, -0.003389,
		0.855164, 0.506087, -0.112110,
		13.291985, 26.190586, 26.574266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.694433, 25.038040, 26.565996>,  <12.693369, 25.836325, 26.652742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.694433, 25.038040, 26.565996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.477611, 24.745413, 26.731398>,  <12.347517, 24.569838, 26.830639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.477611, 24.745413, 26.731398>,  <12.694433, 25.038040, 26.565996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.477611, 24.745413, 26.731398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354675, -0.246924, -0.901795,
		0.761827, -0.635483, -0.125621,
		-0.542057, -0.731566, 0.413504,
		12.314994, 24.525944, 26.855450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.848448, 24.407049, 26.187460>,  <12.694433, 25.038040, 26.565996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.848448, 24.407049, 26.187460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.495519, 24.339663, 26.363245>,  <12.283761, 24.299231, 26.468716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.495519, 24.339663, 26.363245>,  <12.848448, 24.407049, 26.187460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.495519, 24.339663, 26.363245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434378, -0.067957, -0.898164,
		0.181175, -0.983362, -0.013218,
		-0.882322, -0.168467, 0.439463,
		12.230823, 24.289124, 26.495085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.514116, 23.899105, 25.769476>,  <12.848448, 24.407049, 26.187460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.514116, 23.899105, 25.769476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.220929, 24.072321, 25.979328>,  <12.045017, 24.176250, 26.105240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.220929, 24.072321, 25.979328>,  <12.514116, 23.899105, 25.769476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.220929, 24.072321, 25.979328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625193, -0.124844, -0.770420,
		-0.268129, -0.892685, 0.362242,
		-0.732967, 0.433044, 0.524627,
		12.001039, 24.202232, 26.136717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.910554, 23.483370, 25.715115>,  <12.514116, 23.899105, 25.769476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.910554, 23.483370, 25.715115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.774225, 23.850151, 25.798096>,  <11.692428, 24.070221, 25.847883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.774225, 23.850151, 25.798096>,  <11.910554, 23.483370, 25.715115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.774225, 23.850151, 25.798096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679170, -0.087571, -0.728738,
		-0.650053, -0.389264, 0.652614,
		-0.340822, 0.916954, 0.207451,
		11.671979, 24.125237, 25.860331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.193069, 23.440086, 25.752592>,  <11.910554, 23.483370, 25.715115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.193069, 23.440086, 25.752592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.232649, 23.832106, 25.683636>,  <11.256397, 24.067316, 25.642262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.232649, 23.832106, 25.683636>,  <11.193069, 23.440086, 25.752592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.232649, 23.832106, 25.683636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698046, -0.055104, -0.713929,
		-0.709183, 0.190981, 0.678665,
		0.098950, 0.980046, -0.172392,
		11.262334, 24.126120, 25.631918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.506122, 23.713408, 25.674717>,  <11.193069, 23.440086, 25.752592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.506122, 23.713408, 25.674717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.739834, 23.992193, 25.508413>,  <10.880061, 24.159466, 25.408632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.739834, 23.992193, 25.508413>,  <10.506122, 23.713408, 25.674717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.739834, 23.992193, 25.508413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610572, 0.040035, -0.790948,
		-0.534618, 0.715987, 0.448939,
		0.584282, 0.696965, -0.415758,
		10.915118, 24.201283, 25.383686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.133381, 24.319963, 25.591587>,  <10.506122, 23.713408, 25.674717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.133381, 24.319963, 25.591587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.422523, 24.296053, 25.316223>,  <10.596007, 24.281706, 25.151005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.422523, 24.296053, 25.316223>,  <10.133381, 24.319963, 25.591587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.422523, 24.296053, 25.316223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690635, -0.030125, -0.722575,
		0.022456, 0.997757, -0.063060,
		0.722854, -0.059778, -0.688410,
		10.639379, 24.278120, 25.109699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<19.529121, 20.823309, 29.339369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.554323, 20.448143, 29.202929>,  <19.569445, 20.223043, 29.121065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.554323, 20.448143, 29.202929>,  <19.529121, 20.823309, 29.339369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.554323, 20.448143, 29.202929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945370, 0.053452, -0.321588,
		0.319854, 0.342726, -0.883307,
		0.063002, -0.937913, -0.341100,
		19.573223, 20.166769, 29.100599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.092903, 20.708736, 28.652534>,  <19.529121, 20.823309, 29.339369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.092903, 20.708736, 28.652534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.147690, 20.343536, 28.806248>,  <19.180561, 20.124416, 28.898476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.147690, 20.343536, 28.806248>,  <19.092903, 20.708736, 28.652534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.147690, 20.343536, 28.806248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886428, -0.286121, -0.363841,
		0.442137, -0.290804, -0.848497,
		0.136967, -0.912999, 0.384281,
		19.188780, 20.069637, 28.921532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.106821, 20.147062, 28.114956>,  <19.092903, 20.708736, 28.652534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.106821, 20.147062, 28.114956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.973118, 20.007502, 28.465164>,  <18.892897, 19.923765, 28.675289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.973118, 20.007502, 28.465164>,  <19.106821, 20.147062, 28.114956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.973118, 20.007502, 28.465164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854389, -0.279973, -0.437760,
		0.397857, -0.894362, -0.204514,
		-0.334258, -0.348900, 0.875523,
		18.872841, 19.902832, 28.727821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.773327, 19.493904, 28.010820>,  <19.106821, 20.147062, 28.114956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.773327, 19.493904, 28.010820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.607628, 19.642307, 28.343267>,  <18.508207, 19.731348, 28.542736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.607628, 19.642307, 28.343267>,  <18.773327, 19.493904, 28.010820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.607628, 19.642307, 28.343267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907272, -0.241057, -0.344600,
		0.072498, -0.896798, 0.436460,
		-0.414249, 0.371005, 0.831116,
		18.483353, 19.753609, 28.592602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.363907, 19.038467, 28.234488>,  <18.773327, 19.493904, 28.010820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.363907, 19.038467, 28.234488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.230249, 19.397478, 28.349581>,  <18.150055, 19.612885, 28.418636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.230249, 19.397478, 28.349581>,  <18.363907, 19.038467, 28.234488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.230249, 19.397478, 28.349581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879966, -0.187711, -0.436377,
		-0.337650, -0.399007, 0.852517,
		-0.334144, 0.897529, 0.287732,
		18.130007, 19.666737, 28.435900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.636293, 19.025156, 28.621645>,  <18.363907, 19.038467, 28.234488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.636293, 19.025156, 28.621645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.666471, 19.385744, 28.451159>,  <17.684578, 19.602097, 28.348867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.666471, 19.385744, 28.451159>,  <17.636293, 19.025156, 28.621645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.666471, 19.385744, 28.451159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776813, -0.214858, -0.591944,
		-0.625196, 0.375750, 0.684063,
		0.075447, 0.901470, -0.426215,
		17.689106, 19.656185, 28.323294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.922251, 19.422529, 28.653484>,  <17.636293, 19.025156, 28.621645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.922251, 19.422529, 28.653484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.145872, 19.557285, 28.350443>,  <17.280045, 19.638138, 28.168617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.145872, 19.557285, 28.350443>,  <16.922251, 19.422529, 28.653484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.145872, 19.557285, 28.350443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795736, -0.038712, -0.604405,
		-0.232946, 0.940749, 0.246432,
		0.559053, 0.336888, -0.757605,
		17.313589, 19.658352, 28.123161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.455320, 19.683119, 28.105057>,  <16.922251, 19.422529, 28.653484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.455320, 19.683119, 28.105057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.084633, 19.799713, 28.199909>,  <15.862221, 19.869669, 28.256821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.084633, 19.799713, 28.199909>,  <16.455320, 19.683119, 28.105057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.084633, 19.799713, 28.199909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367852, -0.574974, -0.730814,
		-0.076676, -0.764488, 0.640062,
		-0.926718, 0.291484, 0.237131,
		15.806618, 19.887159, 28.271048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.032976, 18.993649, 28.087704>,  <16.455320, 19.683119, 28.105057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.032976, 18.993649, 28.087704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.755896, 19.281494, 28.068434>,  <15.589647, 19.454201, 28.056871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.755896, 19.281494, 28.068434>,  <16.032976, 18.993649, 28.087704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.755896, 19.281494, 28.068434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461300, -0.493416, -0.737390,
		-0.554409, -0.488565, 0.673747,
		-0.692700, 0.719615, -0.048179,
		15.548085, 19.497377, 28.053980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.406506, 18.626068, 28.268728>,  <16.032976, 18.993649, 28.087704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.406506, 18.626068, 28.268728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.267493, 18.964191, 28.106407>,  <15.184086, 19.167065, 28.009014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.267493, 18.964191, 28.106407>,  <15.406506, 18.626068, 28.268728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.267493, 18.964191, 28.106407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466161, -0.531265, -0.707426,
		-0.813582, -0.056683, 0.578681,
		-0.347532, 0.845308, -0.405804,
		15.163234, 19.217783, 27.984667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.692783, 18.474764, 28.111193>,  <15.406506, 18.626068, 28.268728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.692783, 18.474764, 28.111193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.784385, 18.790073, 27.882744>,  <14.839346, 18.979259, 27.745674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.784385, 18.790073, 27.882744>,  <14.692783, 18.474764, 28.111193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.784385, 18.790073, 27.882744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594291, -0.351464, -0.723389,
		-0.770957, 0.505072, 0.387978,
		0.229003, 0.788273, -0.571123,
		14.853086, 19.026556, 27.711407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.061939, 18.704203, 27.770542>,  <14.692783, 18.474764, 28.111193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.061939, 18.704203, 27.770542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.341739, 18.858709, 27.530043>,  <14.509619, 18.951414, 27.385744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.341739, 18.858709, 27.530043>,  <14.061939, 18.704203, 27.770542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.341739, 18.858709, 27.530043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492919, -0.348381, -0.797284,
		-0.517428, 0.854065, -0.053293,
		0.699499, 0.386268, -0.601247,
		14.551588, 18.974590, 27.349669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.272104, 18.849602, 27.770996>,  <14.061939, 18.704203, 27.770542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.272104, 18.849602, 27.770996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.917263, 18.759146, 27.931948>,  <12.704358, 18.704872, 28.028519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.917263, 18.759146, 27.931948>,  <13.272104, 18.849602, 27.770996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.917263, 18.759146, 27.931948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083772, 0.778400, 0.622154,
		-0.453905, 0.585623, -0.671578,
		-0.887104, -0.226139, 0.402378,
		12.651132, 18.691303, 28.052662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.866551, 19.427299, 27.726994>,  <13.272104, 18.849602, 27.770996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.866551, 19.427299, 27.726994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.693958, 19.219604, 28.022078>,  <12.590403, 19.094988, 28.199129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.693958, 19.219604, 28.022078>,  <12.866551, 19.427299, 27.726994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.693958, 19.219604, 28.022078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147544, 0.766122, 0.625530,
		-0.889974, 0.378750, -0.253958,
		-0.431482, -0.519236, 0.737711,
		12.564513, 19.063833, 28.243391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.375080, 19.896488, 27.965815>,  <12.866551, 19.427299, 27.726994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.375080, 19.896488, 27.965815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.463453, 19.631765, 28.252367>,  <12.516478, 19.472933, 28.424299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.463453, 19.631765, 28.252367>,  <12.375080, 19.896488, 27.965815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.463453, 19.631765, 28.252367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114259, 0.747038, 0.654889,
		-0.968573, -0.062834, 0.240663,
		0.220933, -0.661806, 0.716381,
		12.529734, 19.433224, 28.467281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.002513, 20.081415, 28.612627>,  <12.375080, 19.896488, 27.965815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.002513, 20.081415, 28.612627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.298171, 19.843328, 28.738726>,  <12.475566, 19.700476, 28.814384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.298171, 19.843328, 28.738726>,  <12.002513, 20.081415, 28.612627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.298171, 19.843328, 28.738726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215006, 0.652060, 0.727042,
		-0.638308, -0.469610, 0.609942,
		0.739145, -0.595218, 0.315246,
		12.519915, 19.664762, 28.833300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.917821, 19.881733, 29.378510>,  <12.002513, 20.081415, 28.612627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.917821, 19.881733, 29.378510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.304717, 19.821737, 29.296583>,  <12.536855, 19.785740, 29.247427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.304717, 19.821737, 29.296583>,  <11.917821, 19.881733, 29.378510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.304717, 19.821737, 29.296583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253816, 0.556026, 0.791463,
		-0.004826, -0.817520, 0.575879,
		0.967240, -0.149987, -0.204816,
		12.594890, 19.776741, 29.235138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.262008, 19.960964, 30.060087>,  <11.917821, 19.881733, 29.378510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.262008, 19.960964, 30.060087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.575839, 19.965868, 29.812124>,  <12.764138, 19.968811, 29.663345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.575839, 19.965868, 29.812124>,  <12.262008, 19.960964, 30.060087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.575839, 19.965868, 29.812124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501978, 0.574303, 0.646680,
		0.363944, -0.818551, 0.444431,
		0.784578, 0.012261, -0.619909,
		12.811213, 19.969547, 29.626152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.818751, 19.994717, 30.522961>,  <12.262008, 19.960964, 30.060087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.818751, 19.994717, 30.522961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.989635, 20.108088, 30.179527>,  <13.092164, 20.176111, 29.973467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.989635, 20.108088, 30.179527>,  <12.818751, 19.994717, 30.522961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.989635, 20.108088, 30.179527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538769, 0.682795, 0.493476,
		0.726100, -0.673394, 0.138993,
		0.427208, 0.283428, -0.858582,
		13.117797, 20.193115, 29.921953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.585818, 20.276598, 30.770479>,  <12.818751, 19.994717, 30.522961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.585818, 20.276598, 30.770479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.471094, 20.403309, 30.408840>,  <13.402260, 20.479336, 30.191856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.471094, 20.403309, 30.408840>,  <13.585818, 20.276598, 30.770479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.471094, 20.403309, 30.408840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327680, 0.919262, 0.218138,
		0.900203, -0.233691, -0.367454,
		-0.286809, 0.316776, -0.904098,
		13.385052, 20.498343, 30.137611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.257872, 20.522301, 30.496422>,  <13.585818, 20.276598, 30.770479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.257872, 20.522301, 30.496422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.928039, 20.694029, 30.349047>,  <13.730139, 20.797066, 30.260622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.928039, 20.694029, 30.349047>,  <14.257872, 20.522301, 30.496422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.928039, 20.694029, 30.349047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434055, 0.897784, 0.074700,
		0.362848, -0.098326, -0.926646,
		-0.824583, 0.429321, -0.368438,
		13.680664, 20.822824, 30.238516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.602744, 21.028481, 30.057695>,  <14.257872, 20.522301, 30.496422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.602744, 21.028481, 30.057695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.215158, 21.123186, 30.086109>,  <13.982605, 21.180010, 30.103157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.215158, 21.123186, 30.086109>,  <14.602744, 21.028481, 30.057695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.215158, 21.123186, 30.086109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231939, 0.970211, -0.069962,
		-0.085485, -0.051315, -0.995017,
		-0.968967, 0.236764, 0.071036,
		13.924467, 21.194216, 30.107420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.427816, 21.518045, 29.535223>,  <14.602744, 21.028481, 30.057695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.427816, 21.518045, 29.535223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.130101, 21.557133, 29.799492>,  <13.951472, 21.580585, 29.958054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.130101, 21.557133, 29.799492>,  <14.427816, 21.518045, 29.535223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.130101, 21.557133, 29.799492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158897, 0.986741, 0.033061,
		-0.648682, 0.129586, -0.749946,
		-0.744287, 0.097718, 0.660672,
		13.906816, 21.586449, 29.997694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.964170, 22.067827, 29.395414>,  <14.427816, 21.518045, 29.535223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.964170, 22.067827, 29.395414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.908237, 22.022795, 29.788916>,  <13.874676, 21.995775, 30.025017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.908237, 22.022795, 29.788916>,  <13.964170, 22.067827, 29.395414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.908237, 22.022795, 29.788916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213504, 0.966717, 0.140979,
		-0.966883, 0.229749, -0.111144,
		-0.139835, -0.112580, 0.983754,
		13.866286, 21.989021, 30.084042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.478532, 22.652441, 29.591938>,  <13.964170, 22.067827, 29.395414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.478532, 22.652441, 29.591938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.664272, 22.518894, 29.920063>,  <13.775717, 22.438766, 30.116938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.664272, 22.518894, 29.920063>,  <13.478532, 22.652441, 29.591938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.664272, 22.518894, 29.920063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016118, 0.929256, 0.369085,
		-0.885505, -0.158163, 0.436882,
		0.464351, -0.333868, 0.820311,
		13.803577, 22.418734, 30.166157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.218559, 23.102272, 30.221098>,  <13.478532, 22.652441, 29.591938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.218559, 23.102272, 30.221098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.559672, 22.916578, 30.316803>,  <13.764340, 22.805162, 30.374226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.559672, 22.916578, 30.316803>,  <13.218559, 23.102272, 30.221098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.559672, 22.916578, 30.316803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343010, 0.843319, 0.413711,
		-0.393833, -0.270737, 0.878406,
		0.852784, -0.464235, 0.239262,
		13.815508, 22.777308, 30.388582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.445691, 23.538012, 29.739853>,  <13.218559, 23.102272, 30.221098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.445691, 23.538012, 29.739853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.229698, 23.869579, 29.681454>,  <13.100102, 24.068520, 29.646414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.229698, 23.869579, 29.681454>,  <13.445691, 23.538012, 29.739853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.229698, 23.869579, 29.681454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098504, -0.234505, -0.967111,
		-0.835893, -0.507841, 0.208280,
		-0.539982, 0.828918, -0.145996,
		13.067703, 24.118256, 29.637655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.852691, 23.389187, 29.342083>,  <13.445691, 23.538012, 29.739853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.852691, 23.389187, 29.342083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.907150, 23.780333, 29.278522>,  <12.939826, 24.015020, 29.240387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.907150, 23.780333, 29.278522>,  <12.852691, 23.389187, 29.342083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.907150, 23.780333, 29.278522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308887, -0.110498, -0.944658,
		-0.941304, 0.177696, 0.287005,
		0.136148, 0.977862, -0.158900,
		12.947995, 24.073690, 29.230852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.321606, 23.618259, 28.981539>,  <12.852691, 23.389187, 29.342083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.321606, 23.618259, 28.981539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.553576, 23.931890, 28.893080>,  <12.692759, 24.120070, 28.840004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.553576, 23.931890, 28.893080>,  <12.321606, 23.618259, 28.981539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.553576, 23.931890, 28.893080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399911, 0.037488, -0.915787,
		-0.709758, 0.619529, 0.335302,
		0.579927, 0.784078, -0.221149,
		12.727554, 24.167114, 28.826735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.827474, 24.222393, 28.744238>,  <12.321606, 23.618259, 28.981539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.827474, 24.222393, 28.744238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.198134, 24.297436, 28.613935>,  <12.420531, 24.342461, 28.535753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.198134, 24.297436, 28.613935>,  <11.827474, 24.222393, 28.744238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.198134, 24.297436, 28.613935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346713, 0.091646, -0.933483,
		-0.145274, 0.977959, 0.149970,
		0.926653, 0.187607, -0.325758,
		12.476130, 24.353718, 28.516209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.744602, 24.608654, 28.208864>,  <11.827474, 24.222393, 28.744238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.744602, 24.608654, 28.208864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.128759, 24.508270, 28.160423>,  <12.359254, 24.448040, 28.131359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.128759, 24.508270, 28.160423>,  <11.744602, 24.608654, 28.208864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.128759, 24.508270, 28.160423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084065, 0.153410, -0.984580,
		0.265666, 0.955764, 0.126237,
		0.960393, -0.250957, -0.121102,
		12.416878, 24.432983, 28.124092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.106004, 25.177158, 27.859982>,  <11.744602, 24.608654, 28.208864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.106004, 25.177158, 27.859982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.249400, 24.813698, 27.774345>,  <12.335438, 24.595621, 27.722963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.249400, 24.813698, 27.774345>,  <12.106004, 25.177158, 27.859982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.249400, 24.813698, 27.774345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243430, 0.130409, -0.961111,
		0.901236, 0.396666, -0.174443,
		0.358491, -0.908653, -0.214090,
		12.356947, 24.541101, 27.710119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.455400, 25.280279, 27.220385>,  <12.106004, 25.177158, 27.859982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.455400, 25.280279, 27.220385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.396634, 24.887144, 27.265009>,  <12.361375, 24.651262, 27.291784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.396634, 24.887144, 27.265009>,  <12.455400, 25.280279, 27.220385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.396634, 24.887144, 27.265009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400413, -0.044039, -0.915276,
		0.904481, -0.179136, -0.387072,
		-0.146913, -0.982838, 0.111561,
		12.352560, 24.592293, 27.298477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.185688, 25.665758, 27.338394>,  <12.455400, 25.280279, 27.220385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.185688, 25.665758, 27.338394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.393085, 25.975952, 27.194290>,  <13.517524, 26.162069, 27.107828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.393085, 25.975952, 27.194290>,  <13.185688, 25.665758, 27.338394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.393085, 25.975952, 27.194290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445793, 0.114377, 0.887798,
		0.729680, -0.620919, -0.286402,
		0.518493, 0.775485, -0.360260,
		13.548634, 26.208597, 27.086212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.872178, 25.582300, 27.588888>,  <13.185688, 25.665758, 27.338394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.872178, 25.582300, 27.588888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.833605, 25.969765, 27.497330>,  <13.810461, 26.202244, 27.442394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.833605, 25.969765, 27.497330>,  <13.872178, 25.582300, 27.588888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.833605, 25.969765, 27.497330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549506, 0.243556, 0.799202,
		0.829906, -0.048709, -0.555773,
		-0.096434, 0.968663, -0.228894,
		13.804675, 26.260365, 27.428661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.564668, 25.937639, 27.596289>,  <13.872178, 25.582300, 27.588888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.564668, 25.937639, 27.596289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.286781, 26.219767, 27.652714>,  <14.120049, 26.389042, 27.686569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.286781, 26.219767, 27.652714>,  <14.564668, 25.937639, 27.596289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.286781, 26.219767, 27.652714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389624, 0.204155, 0.898061,
		0.604619, 0.678859, -0.416638,
		-0.694715, 0.705317, 0.141064,
		14.078366, 26.431362, 27.695032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.989079, 26.579060, 28.000713>,  <14.564668, 25.937639, 27.596289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.989079, 26.579060, 28.000713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.596312, 26.637430, 28.048954>,  <14.360651, 26.672453, 28.077898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.596312, 26.637430, 28.048954>,  <14.989079, 26.579060, 28.000713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.596312, 26.637430, 28.048954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161150, 0.309978, 0.936987,
		0.099346, 0.939478, -0.327888,
		-0.981917, 0.145926, 0.120602,
		14.301737, 26.681208, 28.085135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.982515, 27.268295, 28.296314>,  <14.989079, 26.579060, 28.000713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.982515, 27.268295, 28.296314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.642354, 27.068785, 28.363287>,  <14.438257, 26.949078, 28.403471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.642354, 27.068785, 28.363287>,  <14.982515, 27.268295, 28.296314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.642354, 27.068785, 28.363287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077346, 0.196258, 0.977497,
		-0.520414, 0.844218, -0.128320,
		-0.850404, -0.498778, 0.167432,
		14.387233, 26.919151, 28.413517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.625280, 27.757044, 28.576384>,  <14.982515, 27.268295, 28.296314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.625280, 27.757044, 28.576384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.454158, 27.415964, 28.696306>,  <14.351484, 27.211315, 28.768259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.454158, 27.415964, 28.696306>,  <14.625280, 27.757044, 28.576384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.454158, 27.415964, 28.696306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148238, 0.261010, 0.953886,
		-0.891631, 0.452522, 0.014741,
		-0.427807, -0.852700, 0.299805,
		14.325816, 27.160154, 28.786247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.196291, 27.963037, 29.027369>,  <14.625280, 27.757044, 28.576384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.196291, 27.963037, 29.027369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.250190, 27.578005, 29.121416>,  <14.282529, 27.346985, 29.177845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.250190, 27.578005, 29.121416>,  <14.196291, 27.963037, 29.027369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.250190, 27.578005, 29.121416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113229, 0.250689, 0.961423,
		-0.984389, -0.102926, 0.142772,
		0.134747, -0.962581, 0.235121,
		14.290614, 27.289230, 29.191952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.771193, 27.843075, 29.641706>,  <14.196291, 27.963037, 29.027369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.771193, 27.843075, 29.641706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.045900, 27.552898, 29.623447>,  <14.210725, 27.378792, 29.612492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.045900, 27.552898, 29.623447>,  <13.771193, 27.843075, 29.641706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.045900, 27.552898, 29.623447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219961, 0.147561, 0.964283,
		-0.692794, -0.672281, 0.260909,
		0.686770, -0.725440, -0.045647,
		14.251931, 27.335266, 29.609753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.621864, 27.374174, 30.150446>,  <13.771193, 27.843075, 29.641706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.621864, 27.374174, 30.150446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.014555, 27.329641, 30.088713>,  <14.250170, 27.302921, 30.051674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.014555, 27.329641, 30.088713>,  <13.621864, 27.374174, 30.150446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.014555, 27.329641, 30.088713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168668, 0.133550, 0.976584,
		-0.088115, -0.984769, 0.149888,
		0.981727, -0.111333, -0.154331,
		14.309072, 27.296242, 30.042414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<11.495234, 21.186344, 16.324890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.879910, 21.107376, 16.248810>,  <12.110716, 21.059996, 16.203161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.879910, 21.107376, 16.248810>,  <11.495234, 21.186344, 16.324890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.879910, 21.107376, 16.248810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273406, 0.640076, 0.718019,
		-0.020006, -0.742515, 0.669531,
		0.961690, -0.197419, -0.190203,
		12.168418, 21.048151, 16.191750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.821545, 21.001009, 16.971781>,  <11.495234, 21.186344, 16.324890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.821545, 21.001009, 16.971781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.109859, 21.119194, 16.720968>,  <12.282848, 21.190105, 16.570480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.109859, 21.119194, 16.720968>,  <11.821545, 21.001009, 16.971781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.109859, 21.119194, 16.720968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353375, 0.621588, 0.699110,
		0.596315, -0.725486, 0.343623,
		0.720787, 0.295462, -0.627031,
		12.326096, 21.207832, 16.532860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.515469, 20.913727, 17.262211>,  <11.821545, 21.001009, 16.971781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.515469, 20.913727, 17.262211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.569041, 21.204998, 16.993340>,  <12.601185, 21.379761, 16.832018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.569041, 21.204998, 16.993340>,  <12.515469, 20.913727, 17.262211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.569041, 21.204998, 16.993340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310702, 0.613233, 0.726229,
		0.941024, -0.306111, -0.144115,
		0.133930, 0.728176, -0.672177,
		12.609221, 21.423450, 16.791687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.031466, 21.247404, 17.522951>,  <12.515469, 20.913727, 17.262211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.031466, 21.247404, 17.522951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.882264, 21.510965, 17.261658>,  <12.792743, 21.669102, 17.104881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.882264, 21.510965, 17.261658>,  <13.031466, 21.247404, 17.522951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.882264, 21.510965, 17.261658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261853, 0.750185, 0.607170,
		0.890113, 0.055426, -0.452358,
		-0.373005, 0.658901, -0.653235,
		12.770363, 21.708635, 17.065687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.495188, 21.730316, 17.508734>,  <13.031466, 21.247404, 17.522951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.495188, 21.730316, 17.508734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.159033, 21.889458, 17.361513>,  <12.957340, 21.984943, 17.273182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.159033, 21.889458, 17.361513>,  <13.495188, 21.730316, 17.508734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.159033, 21.889458, 17.361513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285715, 0.902261, 0.322942,
		0.460561, 0.166239, -0.871922,
		-0.840387, 0.397856, -0.368049,
		12.906917, 22.008814, 17.251099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.786436, 22.435760, 17.220213>,  <13.495188, 21.730316, 17.508734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.786436, 22.435760, 17.220213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.388393, 22.444197, 17.258829>,  <13.149568, 22.449259, 17.282000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.388393, 22.444197, 17.258829>,  <13.786436, 22.435760, 17.220213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.388393, 22.444197, 17.258829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065722, 0.870820, 0.487189,
		-0.073793, 0.491149, -0.867944,
		-0.995106, 0.021092, 0.096540,
		13.089862, 22.450523, 17.287790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.641027, 23.176527, 17.077259>,  <13.786436, 22.435760, 17.220213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.641027, 23.176527, 17.077259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.304529, 23.030046, 17.236359>,  <13.102631, 22.942158, 17.331818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.304529, 23.030046, 17.236359>,  <13.641027, 23.176527, 17.077259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.304529, 23.030046, 17.236359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106971, 0.833875, 0.541488,
		-0.529966, 0.412976, -0.740666,
		-0.841245, -0.366200, 0.397749,
		13.052155, 22.920187, 17.355684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.097308, 23.613842, 17.018650>,  <13.641027, 23.176527, 17.077259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.097308, 23.613842, 17.018650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.008027, 23.383747, 17.333427>,  <12.954458, 23.245689, 17.522295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.008027, 23.383747, 17.333427>,  <13.097308, 23.613842, 17.018650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.008027, 23.383747, 17.333427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291806, 0.809721, 0.509119,
		-0.930070, -0.115998, -0.348589,
		-0.223203, -0.575237, 0.786946,
		12.941066, 23.211176, 17.569511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.612384, 24.074720, 17.367146>,  <13.097308, 23.613842, 17.018650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.612384, 24.074720, 17.367146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.684304, 23.790092, 17.638832>,  <12.727456, 23.619316, 17.801844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.684304, 23.790092, 17.638832>,  <12.612384, 24.074720, 17.367146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.684304, 23.790092, 17.638832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419214, 0.569207, 0.707293,
		-0.889905, -0.411909, -0.195958,
		0.179800, -0.711572, 0.679218,
		12.738244, 23.576620, 17.842598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.039842, 24.136545, 17.813423>,  <12.612384, 24.074720, 17.367146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.039842, 24.136545, 17.813423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.307122, 23.925306, 18.023039>,  <12.467490, 23.798563, 18.148808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.307122, 23.925306, 18.023039>,  <12.039842, 24.136545, 17.813423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.307122, 23.925306, 18.023039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269364, 0.484857, 0.832079,
		-0.693505, -0.697154, 0.181731,
		0.668202, -0.528100, 0.524040,
		12.507583, 23.766876, 18.180250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.604951, 23.709360, 18.242237>,  <12.039842, 24.136545, 17.813423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.604951, 23.709360, 18.242237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.956965, 23.743225, 18.429157>,  <12.168174, 23.763544, 18.541309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.956965, 23.743225, 18.429157>,  <11.604951, 23.709360, 18.242237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.956965, 23.743225, 18.429157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438224, 0.523976, 0.730349,
		-0.183023, -0.847515, 0.498218,
		0.880036, 0.084660, 0.467301,
		12.220976, 23.768623, 18.569347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.509097, 23.408819, 18.924044>,  <11.604951, 23.709360, 18.242237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.509097, 23.408819, 18.924044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.839044, 23.631962, 18.960691>,  <12.037011, 23.765846, 18.982679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.839044, 23.631962, 18.960691>,  <11.509097, 23.408819, 18.924044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.839044, 23.631962, 18.960691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320693, 0.328273, 0.888478,
		0.465567, -0.762255, 0.449682,
		0.824866, 0.557856, 0.091616,
		12.086504, 23.799318, 18.988176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.130236, 22.862865, 19.253710>,  <11.509097, 23.408819, 18.924044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.130236, 22.862865, 19.253710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.742971, 22.800980, 19.332426>,  <10.510612, 22.763847, 19.379656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.742971, 22.800980, 19.332426>,  <11.130236, 22.862865, 19.253710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.742971, 22.800980, 19.332426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061719, -0.614335, -0.786628,
		0.242601, -0.773728, 0.585226,
		-0.968161, -0.154717, 0.196792,
		10.452523, 22.754564, 19.391464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.012215, 22.161951, 19.489426>,  <11.130236, 22.862865, 19.253710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.012215, 22.161951, 19.489426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.692681, 22.332426, 19.319613>,  <10.500961, 22.434711, 19.217724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.692681, 22.332426, 19.319613>,  <11.012215, 22.161951, 19.489426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.692681, 22.332426, 19.319613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122145, -0.805947, -0.579250,
		-0.589022, -0.410870, 0.695873,
		-0.798833, 0.426188, -0.424534,
		10.453032, 22.460283, 19.192251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.391459, 21.734100, 19.446508>,  <11.012215, 22.161951, 19.489426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.391459, 21.734100, 19.446508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.267162, 22.000471, 19.175220>,  <10.192584, 22.160294, 19.012447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.267162, 22.000471, 19.175220>,  <10.391459, 21.734100, 19.446508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.267162, 22.000471, 19.175220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379494, -0.741126, -0.553820,
		-0.871449, 0.085284, 0.483016,
		-0.310743, 0.665927, -0.678218,
		10.173939, 22.200249, 18.971756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.727611, 21.528442, 19.402250>,  <10.391459, 21.734100, 19.446508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.727611, 21.528442, 19.402250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.832479, 21.749125, 19.085546>,  <9.895401, 21.881535, 18.895523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.832479, 21.749125, 19.085546>,  <9.727611, 21.528442, 19.402250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.832479, 21.749125, 19.085546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375767, -0.697341, -0.610340,
		-0.888856, 0.457532, 0.024490,
		0.262172, 0.551707, -0.791761,
		9.911131, 21.914637, 18.848019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.125422, 21.701439, 19.040409>,  <9.727611, 21.528442, 19.402250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.125422, 21.701439, 19.040409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.418055, 21.715998, 18.768097>,  <9.593634, 21.724733, 18.604710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.418055, 21.715998, 18.768097>,  <9.125422, 21.701439, 19.040409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.418055, 21.715998, 18.768097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514606, -0.625510, -0.586446,
		-0.447180, 0.779367, -0.438881,
		0.731581, 0.036396, -0.680782,
		9.637529, 21.726917, 18.563862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.748008, 21.599789, 18.476875>,  <9.125422, 21.701439, 19.040409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.748008, 21.599789, 18.476875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.127395, 21.526592, 18.373398>,  <9.355027, 21.482674, 18.311312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.127395, 21.526592, 18.373398>,  <8.748008, 21.599789, 18.476875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.127395, 21.526592, 18.373398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291641, -0.823363, -0.486845,
		-0.123908, 0.537202, -0.834303,
		0.948468, -0.182993, -0.258692,
		9.411935, 21.471695, 18.295790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.677937, 21.344139, 17.816355>,  <8.748008, 21.599789, 18.476875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.677937, 21.344139, 17.816355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.036963, 21.217951, 17.939548>,  <9.252379, 21.142239, 18.013464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.036963, 21.217951, 17.939548>,  <8.677937, 21.344139, 17.816355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.036963, 21.217951, 17.939548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102544, -0.828788, -0.550087,
		0.428788, 0.462158, -0.776241,
		0.897566, -0.315470, 0.307983,
		9.306233, 21.123310, 18.031944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.910784, 20.984470, 17.276537>,  <8.677937, 21.344139, 17.816355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.910784, 20.984470, 17.276537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.141253, 20.856762, 17.577492>,  <9.279535, 20.780136, 17.758064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.141253, 20.856762, 17.577492>,  <8.910784, 20.984470, 17.276537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.141253, 20.856762, 17.577492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029300, -0.911889, -0.409391,
		0.816802, 0.257925, -0.516052,
		0.576174, -0.319271, 0.752389,
		9.314106, 20.760981, 17.803209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.531551, 20.615099, 16.982264>,  <8.910784, 20.984470, 17.276537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.531551, 20.615099, 16.982264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.413699, 20.496630, 17.345686>,  <9.342988, 20.425549, 17.563740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.413699, 20.496630, 17.345686>,  <9.531551, 20.615099, 16.982264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.413699, 20.496630, 17.345686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070788, -0.941384, -0.329827,
		0.952985, -0.161492, 0.256396,
		-0.294632, -0.296171, 0.908557,
		9.325310, 20.407778, 17.618254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.678547, 19.985689, 16.887762>,  <9.531551, 20.615099, 16.982264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.678547, 19.985689, 16.887762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.472951, 19.980806, 17.230846>,  <9.349593, 19.977877, 17.436697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.472951, 19.980806, 17.230846>,  <9.678547, 19.985689, 16.887762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.472951, 19.980806, 17.230846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232965, -0.960330, -0.153277,
		0.825555, -0.278599, 0.490756,
		-0.513990, -0.012209, 0.857709,
		9.318754, 19.977144, 17.488159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.804754, 19.252750, 17.160076>,  <9.678547, 19.985689, 16.887762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.804754, 19.252750, 17.160076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.472013, 19.366663, 17.350620>,  <9.272369, 19.435011, 17.464947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.472013, 19.366663, 17.350620>,  <9.804754, 19.252750, 17.160076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.472013, 19.366663, 17.350620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396084, -0.905860, -0.150119,
		0.388766, -0.313557, 0.866339,
		-0.831852, 0.284782, 0.476362,
		9.222458, 19.452097, 17.493528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.463550, 18.674709, 17.659061>,  <9.804754, 19.252750, 17.160076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.463550, 18.674709, 17.659061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.154243, 18.912626, 17.571173>,  <8.968658, 19.055376, 17.518440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.154243, 18.912626, 17.571173>,  <9.463550, 18.674709, 17.659061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.154243, 18.912626, 17.571173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582853, -0.803204, -0.123067,
		-0.249680, 0.032901, 0.967769,
		-0.773268, 0.594795, -0.219720,
		8.922262, 19.091064, 17.505257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.869518, 18.212734, 17.721909>,  <9.463550, 18.674709, 17.659061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.869518, 18.212734, 17.721909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.722823, 18.533850, 17.533852>,  <8.634806, 18.726519, 17.421017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.722823, 18.533850, 17.533852>,  <8.869518, 18.212734, 17.721909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.722823, 18.533850, 17.533852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610848, -0.588947, -0.529156,
		-0.701689, 0.093124, 0.706371,
		-0.366738, 0.802789, -0.470142,
		8.612802, 18.774687, 17.392809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.220933, 18.033394, 17.855686>,  <8.869518, 18.212734, 17.721909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.220933, 18.033394, 17.855686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.282481, 18.255747, 17.528927>,  <8.319410, 18.389158, 17.332872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.282481, 18.255747, 17.528927>,  <8.220933, 18.033394, 17.855686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.282481, 18.255747, 17.528927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605190, -0.600506, -0.522626,
		-0.781069, 0.574793, 0.244015,
		0.153870, 0.555882, -0.816896,
		8.328642, 18.422512, 17.283857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.123384, 17.372087, 18.240494>,  <8.220933, 18.033394, 17.855686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.123384, 17.372087, 18.240494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.971692, 17.048710, 18.420540>,  <7.880676, 16.854683, 18.528566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.971692, 17.048710, 18.420540>,  <8.123384, 17.372087, 18.240494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.971692, 17.048710, 18.420540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629657, 0.130981, 0.765752,
		-0.678024, 0.573813, 0.459371,
		-0.379230, -0.808444, 0.450113,
		7.857923, 16.806177, 18.555574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.958625, 17.454374, 18.984838>,  <8.123384, 17.372087, 18.240494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.958625, 17.454374, 18.984838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.037883, 17.068266, 18.916729>,  <8.085437, 16.836601, 18.875864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.037883, 17.068266, 18.916729>,  <7.958625, 17.454374, 18.984838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.037883, 17.068266, 18.916729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620940, -0.010797, 0.783784,
		-0.758401, -0.261031, 0.597235,
		0.198144, -0.965270, -0.170272,
		8.097326, 16.778685, 18.865646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.628114, 17.035116, 19.524996>,  <7.958625, 17.454374, 18.984838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.628114, 17.035116, 19.524996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.957215, 16.883114, 19.355917>,  <8.154676, 16.791912, 19.254469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.957215, 16.883114, 19.355917>,  <7.628114, 17.035116, 19.524996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.957215, 16.883114, 19.355917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472913, 0.045096, 0.879954,
		-0.315326, -0.923884, 0.216812,
		0.822753, -0.380006, -0.422697,
		8.204041, 16.769112, 19.229107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.827950, 16.438299, 19.959581>,  <7.628114, 17.035116, 19.524996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.827950, 16.438299, 19.959581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.151436, 16.550478, 19.752766>,  <8.345528, 16.617785, 19.628675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.151436, 16.550478, 19.752766>,  <7.827950, 16.438299, 19.959581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.151436, 16.550478, 19.752766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522661, 0.060609, 0.850384,
		0.269825, -0.957954, -0.097563,
		0.808715, 0.280447, -0.517039,
		8.394051, 16.634611, 19.597654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.368235, 15.940425, 20.105669>,  <7.827950, 16.438299, 19.959581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.368235, 15.940425, 20.105669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.562260, 16.271568, 19.992983>,  <8.678675, 16.470255, 19.925371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.562260, 16.271568, 19.992983>,  <8.368235, 15.940425, 20.105669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.562260, 16.271568, 19.992983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496967, 0.004108, 0.867760,
		0.719540, -0.560921, -0.409426,
		0.485062, 0.827859, -0.281715,
		8.707778, 16.519926, 19.908468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.062472, 15.800246, 20.330645>,  <8.368235, 15.940425, 20.105669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.062472, 15.800246, 20.330645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.023638, 16.196545, 20.292702>,  <9.000337, 16.434324, 20.269936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.023638, 16.196545, 20.292702>,  <9.062472, 15.800246, 20.330645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.023638, 16.196545, 20.292702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601986, 0.134352, 0.787123,
		0.792583, 0.019318, -0.609458,
		-0.097087, 0.990745, -0.094856,
		8.994512, 16.493769, 20.264244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.648427, 16.127909, 20.453184>,  <9.062472, 15.800246, 20.330645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.648427, 16.127909, 20.453184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.403630, 16.439074, 20.510206>,  <9.256752, 16.625772, 20.544418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.403630, 16.439074, 20.510206>,  <9.648427, 16.127909, 20.453184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.403630, 16.439074, 20.510206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378547, 0.129872, 0.916425,
		0.694383, 0.614808, -0.373956,
		-0.611992, 0.777910, 0.142553,
		9.220033, 16.672447, 20.552973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.036125, 16.656727, 20.741497>,  <9.648427, 16.127909, 20.453184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.036125, 16.656727, 20.741497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.662153, 16.766108, 20.831945>,  <9.437770, 16.831736, 20.886215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.662153, 16.766108, 20.831945>,  <10.036125, 16.656727, 20.741497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.662153, 16.766108, 20.831945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311231, 0.325903, 0.892706,
		0.170419, 0.904992, -0.389803,
		-0.934929, 0.273452, 0.226121,
		9.381675, 16.848143, 20.899782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.138196, 17.372419, 20.897623>,  <10.036125, 16.656727, 20.741497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.138196, 17.372419, 20.897623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.804706, 17.247490, 21.079767>,  <9.604611, 17.172531, 21.189054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.804706, 17.247490, 21.079767>,  <10.138196, 17.372419, 20.897623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.804706, 17.247490, 21.079767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449265, 0.095770, 0.888251,
		-0.321033, 0.945135, 0.060471,
		-0.833726, -0.312325, 0.455362,
		9.554588, 17.153793, 21.216375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.250748, 17.684296, 21.478113>,  <10.138196, 17.372419, 20.897623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.250748, 17.684296, 21.478113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.915346, 17.497686, 21.590731>,  <9.714105, 17.385721, 21.658300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.915346, 17.497686, 21.590731>,  <10.250748, 17.684296, 21.478113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.915346, 17.497686, 21.590731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355686, -0.077191, 0.931412,
		-0.412792, 0.881135, 0.230661,
		-0.838504, -0.466523, 0.281544,
		9.663795, 17.357729, 21.675194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.821645, 18.106039, 21.925318>,  <10.250748, 17.684296, 21.478113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.821645, 18.106039, 21.925318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.734377, 17.722033, 21.995485>,  <9.682016, 17.491629, 22.037586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.734377, 17.722033, 21.995485>,  <9.821645, 18.106039, 21.925318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.734377, 17.722033, 21.995485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202523, 0.131300, 0.970435,
		-0.954666, 0.247246, 0.165780,
		-0.218170, -0.960015, 0.175420,
		9.668926, 17.434029, 22.048111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.450957, 18.146902, 22.559772>,  <9.821645, 18.106039, 21.925318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.450957, 18.146902, 22.559772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.552111, 17.760365, 22.540901>,  <9.612803, 17.528442, 22.529577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.552111, 17.760365, 22.540901>,  <9.450957, 18.146902, 22.559772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.552111, 17.760365, 22.540901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244661, 0.016694, 0.969465,
		-0.936051, -0.256704, 0.240649,
		0.252883, -0.966346, -0.047179,
		9.627975, 17.470461, 22.526747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.114761, 17.756659, 23.090677>,  <9.450957, 18.146902, 22.559772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.114761, 17.756659, 23.090677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.441070, 17.544577, 22.998240>,  <9.636854, 17.417328, 22.942778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.441070, 17.544577, 22.998240>,  <9.114761, 17.756659, 23.090677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.441070, 17.544577, 22.998240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249679, -0.037583, 0.967599,
		-0.521710, -0.847037, 0.101722,
		0.815769, -0.530203, -0.231095,
		9.685801, 17.385515, 22.928911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.167672, 17.084415, 23.589005>,  <9.114761, 17.756659, 23.090677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.167672, 17.084415, 23.589005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.535581, 17.143738, 23.443663>,  <9.756326, 17.179331, 23.356459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.535581, 17.143738, 23.443663>,  <9.167672, 17.084415, 23.589005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.535581, 17.143738, 23.443663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387123, -0.190775, 0.902076,
		0.064464, -0.970366, -0.232882,
		0.919772, 0.148305, -0.363353,
		9.811512, 17.188229, 23.334656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.590431, 16.529579, 23.772526>,  <9.167672, 17.084415, 23.589005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.590431, 16.529579, 23.772526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.840041, 16.836073, 23.711241>,  <9.989807, 17.019970, 23.674469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.840041, 16.836073, 23.711241>,  <9.590431, 16.529579, 23.772526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.840041, 16.836073, 23.711241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474332, -0.215629, 0.853530,
		0.620967, -0.605299, -0.498008,
		0.624026, 0.766235, -0.153215,
		10.027249, 17.065943, 23.665276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.135702, 16.286707, 23.990776>,  <9.590431, 16.529579, 23.772526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.135702, 16.286707, 23.990776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.273266, 16.660677, 23.955818>,  <10.355804, 16.885059, 23.934843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.273266, 16.660677, 23.955818>,  <10.135702, 16.286707, 23.990776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.273266, 16.660677, 23.955818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530270, -0.116559, 0.839778,
		0.774945, -0.335150, -0.535849,
		0.343910, 0.934927, -0.087394,
		10.376439, 16.941154, 23.929600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.833272, 16.295975, 24.087206>,  <10.135702, 16.286707, 23.990776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.833272, 16.295975, 24.087206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.727327, 16.673798, 24.164829>,  <10.663760, 16.900492, 24.211403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.727327, 16.673798, 24.164829>,  <10.833272, 16.295975, 24.087206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.727327, 16.673798, 24.164829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655793, 0.028902, 0.754387,
		0.706954, 0.327070, -0.627089,
		-0.264862, 0.944558, 0.194058,
		10.647869, 16.957165, 24.223047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.540394, 16.687864, 24.140490>,  <10.833272, 16.295975, 24.087206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.540394, 16.687864, 24.140490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.257252, 16.912445, 24.311937>,  <11.087367, 17.047194, 24.414806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.257252, 16.912445, 24.311937>,  <11.540394, 16.687864, 24.140490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.257252, 16.912445, 24.311937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638118, 0.248078, 0.728878,
		0.302899, 0.789449, -0.533875,
		-0.707855, 0.561452, 0.428619,
		11.044895, 17.080881, 24.440523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.846041, 17.311081, 24.375006>,  <11.540394, 16.687864, 24.140490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.846041, 17.311081, 24.375006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.515059, 17.283367, 24.597904>,  <11.316471, 17.266739, 24.731644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.515059, 17.283367, 24.597904>,  <11.846041, 17.311081, 24.375006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.515059, 17.283367, 24.597904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537989, 0.186544, 0.822052,
		-0.160907, 0.980000, -0.117081,
		-0.827452, -0.069286, 0.557245,
		11.266824, 17.262581, 24.765078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.809357, 17.894182, 24.811712>,  <11.846041, 17.311081, 24.375006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.809357, 17.894182, 24.811712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.550045, 17.666153, 25.013603>,  <11.394458, 17.529335, 25.134737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.550045, 17.666153, 25.013603>,  <11.809357, 17.894182, 24.811712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.550045, 17.666153, 25.013603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431925, 0.270567, 0.860369,
		-0.627035, 0.775764, 0.070826,
		-0.648280, -0.570073, 0.504727,
		11.355561, 17.495131, 25.165022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.395945, 18.319454, 25.290232>,  <11.809357, 17.894182, 24.811712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.395945, 18.319454, 25.290232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.351523, 17.944201, 25.421425>,  <11.324871, 17.719049, 25.500141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.351523, 17.944201, 25.421425>,  <11.395945, 18.319454, 25.290232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.351523, 17.944201, 25.421425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148582, 0.310644, 0.938842,
		-0.982645, 0.152993, 0.104892,
		-0.111052, -0.938133, 0.327985,
		11.318208, 17.662760, 25.519821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.085896, 18.396891, 25.950022>,  <11.395945, 18.319454, 25.290232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.085896, 18.396891, 25.950022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.258490, 18.036064, 25.945976>,  <11.362045, 17.819569, 25.943548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.258490, 18.036064, 25.945976>,  <11.085896, 18.396891, 25.950022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.258490, 18.036064, 25.945976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283432, 0.124912, 0.950822,
		-0.856440, -0.413130, 0.309572,
		0.431482, -0.902065, -0.010115,
		11.387935, 17.765444, 25.942942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.988677, 18.096340, 26.610899>,  <11.085896, 18.396891, 25.950022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.988677, 18.096340, 26.610899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.293081, 17.877197, 26.471924>,  <11.475724, 17.745710, 26.388538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.293081, 17.877197, 26.471924>,  <10.988677, 18.096340, 26.610899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.293081, 17.877197, 26.471924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323747, -0.143381, 0.935216,
		-0.562183, -0.824192, 0.068253,
		0.761012, -0.547859, -0.347436,
		11.521385, 17.712839, 26.367693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.050791, 17.552769, 27.145794>,  <10.988677, 18.096340, 26.610899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.050791, 17.552769, 27.145794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.400605, 17.559898, 26.951941>,  <11.610494, 17.564177, 26.835629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.400605, 17.559898, 26.951941>,  <11.050791, 17.552769, 27.145794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.400605, 17.559898, 26.951941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483637, -0.105827, 0.868847,
		-0.035797, -0.994225, -0.101172,
		0.874537, 0.017828, -0.484632,
		11.662966, 17.565245, 26.806551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.424481, 17.218800, 27.658108>,  <11.050791, 17.552769, 27.145794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.424481, 17.218800, 27.658108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.700400, 17.387445, 27.422678>,  <11.865952, 17.488632, 27.281420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.700400, 17.387445, 27.422678>,  <11.424481, 17.218800, 27.658108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.700400, 17.387445, 27.422678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579140, 0.166539, 0.798036,
		0.434485, -0.891350, -0.129296,
		0.689798, 0.421615, -0.588575,
		11.907339, 17.513929, 27.246105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.233491, 16.975544, 27.803173>,  <11.424481, 17.218800, 27.658108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.233491, 16.975544, 27.803173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.243855, 17.332495, 27.622955>,  <12.250074, 17.546665, 27.514826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.243855, 17.332495, 27.622955>,  <12.233491, 16.975544, 27.803173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.243855, 17.332495, 27.622955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416553, 0.400064, 0.816353,
		0.908742, -0.208828, -0.361356,
		0.025912, 0.892378, -0.450543,
		12.251629, 17.600208, 27.487793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.781079, 17.290115, 28.149113>,  <12.233491, 16.975544, 27.803173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.781079, 17.290115, 28.149113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.568314, 17.584396, 27.981394>,  <12.440654, 17.760965, 27.880762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.568314, 17.584396, 27.981394>,  <12.781079, 17.290115, 28.149113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.568314, 17.584396, 27.981394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251354, 0.610015, 0.751467,
		0.808633, 0.294325, -0.509397,
		-0.531915, 0.735700, -0.419298,
		12.408739, 17.805107, 27.855604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.229393, 17.821945, 28.140142>,  <12.781079, 17.290115, 28.149113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.229393, 17.821945, 28.140142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.864098, 17.984915, 28.140163>,  <12.644920, 18.082697, 28.140177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.864098, 17.984915, 28.140163>,  <13.229393, 17.821945, 28.140142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.864098, 17.984915, 28.140163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255399, 0.572374, 0.779204,
		0.317438, 0.711613, -0.626770,
		-0.913238, 0.407426, 0.000052,
		12.590126, 18.107143, 28.140179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
