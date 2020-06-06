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
	<40.870686, 34.377552, 48.207779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768177, 34.763805, 48.190426>,  <40.706673, 34.995556, 48.180016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768177, 34.763805, 48.190426>,  <40.870686, 34.377552, 48.207779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768177, 34.763805, 48.190426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766773, 0.230417, 0.599138,
		0.588542, 0.120278, -0.799469,
		-0.256274, 0.965630, -0.043384,
		40.691296, 35.053493, 48.177410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460110, 34.604565, 48.029598>,  <40.870686, 34.377552, 48.207779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460110, 34.604565, 48.029598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219780, 34.864067, 48.216412>,  <41.075584, 35.019768, 48.328499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219780, 34.864067, 48.216412>,  <41.460110, 34.604565, 48.029598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219780, 34.864067, 48.216412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775791, 0.332332, 0.536381,
		0.192772, 0.684592, -0.702975,
		-0.600823, 0.648760, 0.467036,
		41.039532, 35.058697, 48.356522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708889, 35.232677, 48.024605>,  <41.460110, 34.604565, 48.029598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708889, 35.232677, 48.024605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472103, 35.270573, 48.344753>,  <41.330032, 35.293308, 48.536842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472103, 35.270573, 48.344753>,  <41.708889, 35.232677, 48.024605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472103, 35.270573, 48.344753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779277, 0.320699, 0.538405,
		-0.205671, 0.942431, -0.263671,
		-0.591969, 0.094738, 0.800373,
		41.294514, 35.298992, 48.584866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964176, 35.798218, 48.291927>,  <41.708889, 35.232677, 48.024605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964176, 35.798218, 48.291927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763554, 35.617901, 48.587288>,  <41.643181, 35.509712, 48.764503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763554, 35.617901, 48.587288>,  <41.964176, 35.798218, 48.291927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763554, 35.617901, 48.587288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788687, 0.112526, 0.604409,
		-0.355552, 0.885508, 0.299097,
		-0.501553, -0.450792, 0.738397,
		41.613087, 35.482662, 48.808807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136761, 36.246021, 48.822037>,  <41.964176, 35.798218, 48.291927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136761, 36.246021, 48.822037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049496, 35.887188, 48.975735>,  <41.997139, 35.671886, 49.067955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049496, 35.887188, 48.975735>,  <42.136761, 36.246021, 48.822037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049496, 35.887188, 48.975735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886347, -0.017366, 0.462696,
		-0.408405, 0.441515, 0.798918,
		-0.218161, -0.897086, 0.384243,
		41.984047, 35.618061, 49.091007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261364, 36.344376, 49.540951>,  <42.136761, 36.246021, 48.822037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261364, 36.344376, 49.540951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272591, 35.948116, 49.487553>,  <42.279327, 35.710361, 49.455513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272591, 35.948116, 49.487553>,  <42.261364, 36.344376, 49.540951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272591, 35.948116, 49.487553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890439, -0.035910, 0.453684,
		-0.454237, -0.131597, 0.881108,
		0.028062, -0.990653, -0.133491,
		42.281010, 35.650921, 49.447506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454380, 36.101654, 50.166687>,  <42.261364, 36.344376, 49.540951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454380, 36.101654, 50.166687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540604, 35.774361, 49.953510>,  <42.592339, 35.577984, 49.825603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540604, 35.774361, 49.953510>,  <42.454380, 36.101654, 50.166687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540604, 35.774361, 49.953510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806006, -0.159016, 0.570147,
		-0.551259, -0.552460, 0.625221,
		0.215563, -0.818231, -0.532945,
		42.605274, 35.528893, 49.793625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660740, 35.645367, 50.688248>,  <42.454380, 36.101654, 50.166687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660740, 35.645367, 50.688248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810230, 35.522472, 50.338177>,  <42.899925, 35.448734, 50.128136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810230, 35.522472, 50.338177>,  <42.660740, 35.645367, 50.688248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810230, 35.522472, 50.338177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822280, -0.326832, 0.465870,
		-0.429169, -0.893749, 0.130489,
		0.373723, -0.307236, -0.875179,
		42.922348, 35.430302, 50.075623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977257, 35.019699, 50.863098>,  <42.660740, 35.645367, 50.688248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977257, 35.019699, 50.863098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155491, 35.135433, 50.524220>,  <43.262432, 35.204876, 50.320892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155491, 35.135433, 50.524220>,  <42.977257, 35.019699, 50.863098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155491, 35.135433, 50.524220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894761, -0.113035, 0.432003,
		0.029232, -0.950530, -0.309255,
		0.445588, 0.289338, -0.847192,
		43.289165, 35.222233, 50.270061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552353, 34.556416, 50.678173>,  <42.977257, 35.019699, 50.863098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552353, 34.556416, 50.678173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627159, 34.913380, 50.513912>,  <43.672043, 35.127556, 50.415356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627159, 34.913380, 50.513912>,  <43.552353, 34.556416, 50.678173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627159, 34.913380, 50.513912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943716, -0.047119, 0.327383,
		0.272809, -0.448764, -0.850991,
		0.187016, 0.892407, -0.410651,
		43.683266, 35.181103, 50.390717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.062572, 34.440601, 50.209328>,  <43.552353, 34.556416, 50.678173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.062572, 34.440601, 50.209328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092972, 34.838726, 50.233231>,  <44.111210, 35.077602, 50.247574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092972, 34.838726, 50.233231>,  <44.062572, 34.440601, 50.209328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.092972, 34.838726, 50.233231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980955, -0.085376, 0.174466,
		0.178751, 0.045362, -0.982848,
		0.075998, 0.995316, 0.059759,
		44.115772, 35.137321, 50.251160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.714958, 34.601418, 49.864449>,  <44.062572, 34.440601, 50.209328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.714958, 34.601418, 49.864449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.616314, 34.919743, 50.085667>,  <44.557125, 35.110737, 50.218399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.616314, 34.919743, 50.085667>,  <44.714958, 34.601418, 49.864449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.616314, 34.919743, 50.085667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906411, -0.012527, 0.422211,
		0.342930, 0.605410, -0.718247,
		-0.246613, 0.795815, 0.553046,
		44.542332, 35.158485, 50.251579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.301476, 35.031700, 49.716309>,  <44.714958, 34.601418, 49.864449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.301476, 35.031700, 49.716309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.145691, 35.180126, 50.053505>,  <45.052219, 35.269180, 50.255821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.145691, 35.180126, 50.053505>,  <45.301476, 35.031700, 49.716309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.145691, 35.180126, 50.053505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921032, 0.161077, 0.354619,
		-0.004201, 0.914531, -0.404493,
		-0.389465, 0.371062, 0.842989,
		45.028851, 35.291443, 50.306400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601067, 35.714279, 49.769295>,  <45.301476, 35.031700, 49.716309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601067, 35.714279, 49.769295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492527, 35.608852, 50.139572>,  <45.427402, 35.545597, 50.361736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492527, 35.608852, 50.139572>,  <45.601067, 35.714279, 49.769295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.492527, 35.608852, 50.139572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928996, 0.179758, 0.323502,
		-0.251665, 0.947744, 0.196077,
		-0.271351, -0.263568, 0.925689,
		45.411121, 35.529781, 50.417278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.933731, 36.148468, 50.137630>,  <45.601067, 35.714279, 49.769295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.933731, 36.148468, 50.137630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853703, 35.862209, 50.405312>,  <45.805687, 35.690456, 50.565918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853703, 35.862209, 50.405312>,  <45.933731, 36.148468, 50.137630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.853703, 35.862209, 50.405312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927560, 0.081665, 0.364642,
		-0.315603, 0.693676, 0.647463,
		-0.200069, -0.715643, 0.669199,
		45.793682, 35.647518, 50.606071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.140102, 36.388298, 50.750759>,  <45.933731, 36.148468, 50.137630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.140102, 36.388298, 50.750759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136059, 35.995426, 50.825825>,  <46.133633, 35.759701, 50.870865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136059, 35.995426, 50.825825>,  <46.140102, 36.388298, 50.750759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.136059, 35.995426, 50.825825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819901, 0.099291, 0.563830,
		-0.572416, 0.159565, 0.804288,
		-0.010109, -0.982181, 0.187663,
		46.133026, 35.700771, 50.882122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.342167, 36.397190, 51.502281>,  <46.140102, 36.388298, 50.750759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.342167, 36.397190, 51.502281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377434, 36.026310, 51.356667>,  <46.398594, 35.803783, 51.269299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377434, 36.026310, 51.356667>,  <46.342167, 36.397190, 51.502281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.377434, 36.026310, 51.356667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796457, -0.153864, 0.584792,
		-0.598233, -0.341501, 0.724910,
		0.088169, -0.927202, -0.364037,
		46.403885, 35.748150, 51.247456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.376167, 35.918217, 52.049702>,  <46.342167, 36.397190, 51.502281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.376167, 35.918217, 52.049702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.537975, 35.724678, 51.739281>,  <46.635059, 35.608555, 51.553028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.537975, 35.724678, 51.739281>,  <46.376167, 35.918217, 52.049702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.537975, 35.724678, 51.739281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847384, -0.120854, 0.517044,
		-0.343957, -0.866770, 0.361113,
		0.404516, -0.483843, -0.776056,
		46.659328, 35.579525, 51.506462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.734093, 35.429199, 52.397671>,  <46.376167, 35.918217, 52.049702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.734093, 35.429199, 52.397671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.881973, 35.454628, 52.026882>,  <46.970703, 35.469883, 51.804409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.881973, 35.454628, 52.026882>,  <46.734093, 35.429199, 52.397671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.881973, 35.454628, 52.026882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928328, -0.067206, 0.365637,
		-0.039055, -0.995712, -0.083860,
		0.369705, 0.063570, -0.926972,
		46.992886, 35.473698, 51.748791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.325237, 34.986969, 52.411434>,  <46.734093, 35.429199, 52.397671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.325237, 34.986969, 52.411434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.399475, 35.166859, 52.061966>,  <47.444019, 35.274792, 51.852283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.399475, 35.166859, 52.061966>,  <47.325237, 34.986969, 52.411434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.399475, 35.166859, 52.061966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969824, 0.059214, 0.236504,
		0.158095, -0.891204, -0.425160,
		0.185598, 0.449721, -0.873673,
		47.455154, 35.301773, 51.799866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.867378, 34.589207, 52.113750>,  <47.325237, 34.986969, 52.411434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.867378, 34.589207, 52.113750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.866722, 34.959496, 51.962471>,  <47.866329, 35.181667, 51.871704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.866722, 34.959496, 51.962471>,  <47.867378, 34.589207, 52.113750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.866722, 34.959496, 51.962471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948338, 0.121423, 0.293105,
		0.317256, -0.358181, -0.878097,
		-0.001637, 0.925723, -0.378199,
		47.866230, 35.237213, 51.849010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.393480, 34.657181, 52.015602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.462324, 35.024975, 51.874222>,  <24.503632, 35.245651, 51.789394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.462324, 35.024975, 51.874222>,  <24.393480, 34.657181, 52.015602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.462324, 35.024975, 51.874222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923374, -0.275579, -0.267276,
		-0.343159, -0.280363, -0.896459,
		0.172111, 0.919485, -0.353447,
		24.513958, 35.300819, 51.768188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.716841, 34.498501, 51.429123>,  <24.393480, 34.657181, 52.015602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.716841, 34.498501, 51.429123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.822445, 34.879963, 51.486862>,  <24.885807, 35.108841, 51.521507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.822445, 34.879963, 51.486862>,  <24.716841, 34.498501, 51.429123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.822445, 34.879963, 51.486862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912311, -0.198336, -0.358262,
		-0.313030, 0.226275, -0.922394,
		0.264010, 0.953657, 0.144348,
		24.901648, 35.166061, 51.530167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.043211, 34.680420, 50.786469>,  <24.716841, 34.498501, 51.429123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.043211, 34.680420, 50.786469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.204187, 34.920738, 51.062756>,  <25.300774, 35.064930, 51.228527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.204187, 34.920738, 51.062756>,  <25.043211, 34.680420, 50.786469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.204187, 34.920738, 51.062756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913841, -0.308308, -0.264274,
		0.054180, 0.737560, -0.673105,
		0.402442, 0.600792, 0.690716,
		25.324921, 35.100975, 51.269970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524788, 35.030243, 50.412357>,  <25.043211, 34.680420, 50.786469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524788, 35.030243, 50.412357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.658499, 35.112488, 50.780266>,  <25.738726, 35.161835, 51.001011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.658499, 35.112488, 50.780266>,  <25.524788, 35.030243, 50.412357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658499, 35.112488, 50.780266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941978, -0.041215, -0.333135,
		-0.030589, 0.977765, -0.207460,
		0.334278, 0.205613, 0.919773,
		25.758781, 35.174171, 51.056198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.063736, 35.559185, 50.350887>,  <25.524788, 35.030243, 50.412357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.063736, 35.559185, 50.350887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.118130, 35.365433, 50.696575>,  <26.150766, 35.249180, 50.903988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.118130, 35.365433, 50.696575>,  <26.063736, 35.559185, 50.350887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.118130, 35.365433, 50.696575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968101, -0.120335, -0.219773,
		0.210450, 0.866542, 0.452567,
		0.135982, -0.484381, 0.864224,
		26.158924, 35.220119, 50.955841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645908, 35.796227, 50.615555>,  <26.063736, 35.559185, 50.350887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645908, 35.796227, 50.615555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.622919, 35.441383, 50.798740>,  <26.609125, 35.228477, 50.908653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.622919, 35.441383, 50.798740>,  <26.645908, 35.796227, 50.615555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622919, 35.441383, 50.798740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944351, -0.197123, -0.263330,
		0.323878, 0.417347, 0.849072,
		-0.057472, -0.887110, 0.457967,
		26.605677, 35.175251, 50.936131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344812, 35.749035, 51.036232>,  <26.645908, 35.796227, 50.615555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344812, 35.749035, 51.036232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.181938, 35.385460, 51.000374>,  <27.084213, 35.167316, 50.978859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.181938, 35.385460, 51.000374>,  <27.344812, 35.749035, 51.036232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181938, 35.385460, 51.000374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901904, -0.384654, -0.196498,
		0.144122, -0.160862, 0.976398,
		-0.407184, -0.908936, -0.089645,
		27.059782, 35.112778, 50.973480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716581, 35.315189, 51.537678>,  <27.344812, 35.749035, 51.036232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716581, 35.315189, 51.537678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.563347, 35.091846, 51.243336>,  <27.471407, 34.957840, 51.066730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.563347, 35.091846, 51.243336>,  <27.716581, 35.315189, 51.537678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563347, 35.091846, 51.243336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887025, -0.444651, -0.124389,
		-0.257743, -0.700370, 0.665620,
		-0.383087, -0.558361, -0.735852,
		27.448421, 34.924339, 51.022579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049969, 34.683868, 51.656361>,  <27.716581, 35.315189, 51.537678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049969, 34.683868, 51.656361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.893066, 34.698109, 51.288692>,  <27.798925, 34.706654, 51.068092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.893066, 34.698109, 51.288692>,  <28.049969, 34.683868, 51.656361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893066, 34.698109, 51.288692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748132, -0.569043, -0.341304,
		-0.535196, -0.821537, 0.196577,
		-0.392254, 0.035599, -0.919168,
		27.775391, 34.708790, 51.012943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078707, 33.975796, 51.347401>,  <28.049969, 34.683868, 51.656361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078707, 33.975796, 51.347401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.020264, 34.227371, 51.041962>,  <27.985199, 34.378319, 50.858696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.020264, 34.227371, 51.041962>,  <28.078707, 33.975796, 51.347401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020264, 34.227371, 51.041962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751701, -0.431214, -0.498999,
		-0.643116, -0.646907, -0.409772,
		-0.146106, 0.628940, -0.763601,
		27.976431, 34.416054, 50.812881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046997, 33.531784, 50.733711>,  <28.078707, 33.975796, 51.347401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046997, 33.531784, 50.733711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.128021, 33.902107, 50.606056>,  <28.176636, 34.124302, 50.529465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.128021, 33.902107, 50.606056>,  <28.046997, 33.531784, 50.733711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128021, 33.902107, 50.606056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663430, -0.369445, -0.650670,
		-0.720298, -0.079923, -0.689044,
		0.202560, 0.925809, -0.319134,
		28.188789, 34.179852, 50.510315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255285, 33.413776, 50.037811>,  <28.046997, 33.531784, 50.733711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255285, 33.413776, 50.037811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.381756, 33.778297, 50.143311>,  <28.457638, 33.997009, 50.206608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.381756, 33.778297, 50.143311>,  <28.255285, 33.413776, 50.037811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381756, 33.778297, 50.143311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767808, -0.082512, -0.635345,
		-0.557229, 0.403385, -0.725793,
		0.316176, 0.911303, 0.263744,
		28.476608, 34.051689, 50.222435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419243, 33.809765, 49.402397>,  <28.255285, 33.413776, 50.037811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419243, 33.809765, 49.402397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.616943, 33.988831, 49.700474>,  <28.735563, 34.096268, 49.879322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.616943, 33.988831, 49.700474>,  <28.419243, 33.809765, 49.402397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616943, 33.988831, 49.700474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804177, 0.090130, -0.587517,
		-0.330174, 0.889649, -0.315453,
		0.494252, 0.447663, 0.745194,
		28.765219, 34.123131, 49.924030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671764, 34.449371, 49.090111>,  <28.419243, 33.809765, 49.402397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671764, 34.449371, 49.090111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.881960, 34.391994, 49.425560>,  <29.008078, 34.357567, 49.626827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.881960, 34.391994, 49.425560>,  <28.671764, 34.449371, 49.090111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881960, 34.391994, 49.425560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845455, 0.198345, -0.495847,
		-0.095209, 0.969579, 0.225504,
		0.525490, -0.143444, 0.838620,
		29.039608, 34.348961, 49.677147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256222, 34.873486, 48.992359>,  <28.671764, 34.449371, 49.090111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256222, 34.873486, 48.992359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.389814, 34.618931, 49.270485>,  <29.469971, 34.466198, 49.437363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.389814, 34.618931, 49.270485>,  <29.256222, 34.873486, 48.992359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389814, 34.618931, 49.270485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924405, 0.076981, -0.373564,
		0.184206, 0.767517, 0.613991,
		0.333983, -0.636389, 0.695316,
		29.490009, 34.428013, 49.479080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807199, 35.236713, 49.265987>,  <29.256222, 34.873486, 48.992359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807199, 35.236713, 49.265987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.847494, 34.857689, 49.387299>,  <29.871672, 34.630276, 49.460087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.847494, 34.857689, 49.387299>,  <29.807199, 35.236713, 49.265987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847494, 34.857689, 49.387299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986985, 0.056774, -0.150459,
		0.125351, 0.314488, 0.940949,
		0.100738, -0.947562, 0.303278,
		29.877716, 34.573421, 49.478283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218149, 35.174492, 49.904739>,  <29.807199, 35.236713, 49.265987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218149, 35.174492, 49.904739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.249662, 34.829960, 49.703976>,  <30.268570, 34.623241, 49.583519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.249662, 34.829960, 49.703976>,  <30.218149, 35.174492, 49.904739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249662, 34.829960, 49.703976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984042, 0.147770, -0.099127,
		0.159547, -0.486086, 0.859224,
		0.078784, -0.861327, -0.501905,
		30.273298, 34.571560, 49.553406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906376, 35.090080, 49.957867>,  <30.218149, 35.174492, 49.904739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906376, 35.090080, 49.957867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.811096, 34.787006, 49.714828>,  <30.753929, 34.605164, 49.569004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.811096, 34.787006, 49.714828>,  <30.906376, 35.090080, 49.957867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811096, 34.787006, 49.714828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966339, -0.122277, -0.226354,
		0.097209, -0.641064, 0.761307,
		-0.238198, -0.757684, -0.607599,
		30.739637, 34.559700, 49.532547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287804, 34.406662, 50.223747>,  <30.906376, 35.090080, 49.957867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287804, 34.406662, 50.223747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.205656, 34.402889, 49.832291>,  <31.156368, 34.400623, 49.597416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.205656, 34.402889, 49.832291>,  <31.287804, 34.406662, 50.223747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205656, 34.402889, 49.832291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949711, -0.243433, -0.196950,
		-0.236375, -0.969872, 0.058952,
		-0.205367, -0.009434, -0.978640,
		31.144045, 34.400059, 49.538700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543016, 33.690250, 49.938511>,  <31.287804, 34.406662, 50.223747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543016, 33.690250, 49.938511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.509949, 33.963657, 49.648418>,  <31.490108, 34.127701, 49.474361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.509949, 33.963657, 49.648418>,  <31.543016, 33.690250, 49.938511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509949, 33.963657, 49.648418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990937, -0.020932, -0.132684,
		-0.105873, -0.729632, -0.675595,
		-0.082669, 0.683520, -0.725236,
		31.485147, 34.168713, 49.430847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813133, 33.322136, 49.371349>,  <31.543016, 33.690250, 49.938511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813133, 33.322136, 49.371349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.845268, 33.717873, 49.322781>,  <31.864550, 33.955315, 49.293640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.845268, 33.717873, 49.322781>,  <31.813133, 33.322136, 49.371349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845268, 33.717873, 49.322781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976987, -0.102303, -0.187162,
		-0.197590, -0.103592, -0.974796,
		0.080336, 0.989345, -0.121423,
		31.869370, 34.014675, 49.286354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.275324, 34.574463, 35.070427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.415184, 34.914745, 35.227425>,  <24.499100, 35.118916, 35.321621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.415184, 34.914745, 35.227425>,  <24.275324, 34.574463, 35.070427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.415184, 34.914745, 35.227425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304429, -0.499364, 0.811146,
		0.886041, -0.164132, -0.433581,
		0.349650, 0.850703, 0.392491,
		24.520079, 35.169956, 35.345173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.017017, 34.609188, 35.185085>,  <24.275324, 34.574463, 35.070427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.017017, 34.609188, 35.185085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.800177, 34.808701, 35.455593>,  <24.670073, 34.928410, 35.617897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.800177, 34.808701, 35.455593>,  <25.017017, 34.609188, 35.185085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.800177, 34.808701, 35.455593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413673, -0.542108, 0.731433,
		0.731436, 0.676267, 0.087548,
		-0.542104, 0.498780, 0.676271,
		24.637545, 34.958336, 35.658474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558346, 34.891876, 35.692898>,  <25.017017, 34.609188, 35.185085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558346, 34.891876, 35.692898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.189148, 34.829823, 35.833759>,  <24.967628, 34.792591, 35.918278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.189148, 34.829823, 35.833759>,  <25.558346, 34.891876, 35.692898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.189148, 34.829823, 35.833759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380863, -0.499044, 0.778395,
		0.054985, 0.852577, 0.519701,
		-0.922995, -0.155134, 0.352155,
		24.912249, 34.783283, 35.939407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605717, 34.989792, 36.386211>,  <25.558346, 34.891876, 35.692898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605717, 34.989792, 36.386211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.318737, 34.726673, 36.294491>,  <25.146549, 34.568802, 36.239460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.318737, 34.726673, 36.294491>,  <25.605717, 34.989792, 36.386211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318737, 34.726673, 36.294491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315505, -0.600301, 0.734912,
		-0.621068, 0.454916, 0.638221,
		-0.717448, -0.657792, -0.229300,
		25.103502, 34.529335, 36.225700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266874, 34.916271, 36.684113>,  <25.605717, 34.989792, 36.386211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266874, 34.916271, 36.684113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.560467, 35.011124, 36.938683>,  <26.736622, 35.068035, 37.091423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.560467, 35.011124, 36.938683>,  <26.266874, 34.916271, 36.684113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.560467, 35.011124, 36.938683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614765, 0.630267, 0.474160,
		-0.288679, -0.739277, 0.608386,
		0.733981, 0.237135, 0.636426,
		26.780661, 35.082264, 37.129612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467630, 34.326683, 36.255116>,  <26.266874, 34.916271, 36.684113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467630, 34.326683, 36.255116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.594393, 33.985489, 36.089230>,  <26.670450, 33.780773, 35.989697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.594393, 33.985489, 36.089230>,  <26.467630, 34.326683, 36.255116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594393, 33.985489, 36.089230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376555, -0.288165, 0.880436,
		-0.870505, -0.435177, 0.229874,
		0.316904, -0.852984, -0.414717,
		26.689465, 33.729595, 35.964813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421801, 33.773434, 36.894024>,  <26.467630, 34.326683, 36.255116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.421801, 33.773434, 36.894024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.688763, 33.637985, 36.628723>,  <26.848940, 33.556717, 36.469543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.688763, 33.637985, 36.628723>,  <26.421801, 33.773434, 36.894024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688763, 33.637985, 36.628723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487196, -0.475046, 0.732784,
		-0.563214, -0.812197, -0.152071,
		0.667406, -0.338626, -0.663251,
		26.888985, 33.536396, 36.429749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.440008, 33.107491, 37.059971>,  <26.421801, 33.773434, 36.894024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.440008, 33.107491, 37.059971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.784105, 33.229897, 36.896832>,  <26.990564, 33.303341, 36.798950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.784105, 33.229897, 36.896832>,  <26.440008, 33.107491, 37.059971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784105, 33.229897, 36.896832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508643, -0.459219, 0.728286,
		0.035579, -0.833949, -0.550693,
		0.860242, 0.306017, -0.407844,
		27.042177, 33.321701, 36.774479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790442, 32.521637, 37.155384>,  <26.440008, 33.107491, 37.059971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790442, 32.521637, 37.155384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.014868, 32.852139, 37.135349>,  <27.149523, 33.050438, 37.123329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.014868, 32.852139, 37.135349>,  <26.790442, 32.521637, 37.155384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014868, 32.852139, 37.135349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442882, -0.248514, 0.861450,
		0.699330, -0.505512, -0.505366,
		0.561064, 0.826255, -0.050089,
		27.183187, 33.100014, 37.120323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243877, 32.414627, 37.679153>,  <26.790442, 32.521637, 37.155384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243877, 32.414627, 37.679153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.332850, 32.789253, 37.570801>,  <27.386232, 33.014027, 37.505787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.332850, 32.789253, 37.570801>,  <27.243877, 32.414627, 37.679153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332850, 32.789253, 37.570801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465359, 0.142163, 0.873631,
		0.856719, -0.320380, -0.404216,
		0.222429, 0.936561, -0.270885,
		27.399578, 33.070221, 37.489536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905140, 32.577805, 37.996231>,  <27.243877, 32.414627, 37.679153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905140, 32.577805, 37.996231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.678493, 32.900665, 37.929955>,  <27.542505, 33.094383, 37.890186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.678493, 32.900665, 37.929955>,  <27.905140, 32.577805, 37.996231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678493, 32.900665, 37.929955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165256, 0.308322, 0.936818,
		0.807241, 0.503432, -0.308087,
		-0.566614, 0.807151, -0.165695,
		27.508509, 33.142811, 37.880245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387037, 33.213638, 37.983654>,  <27.905140, 32.577805, 37.996231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387037, 33.213638, 37.983654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.008831, 33.237431, 38.111694>,  <27.781908, 33.251705, 38.188519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.008831, 33.237431, 38.111694>,  <28.387037, 33.213638, 37.983654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008831, 33.237431, 38.111694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320584, 0.341604, 0.883477,
		-0.056796, 0.937960, -0.342061,
		-0.945516, 0.059482, 0.320097,
		27.725176, 33.255276, 38.207722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224808, 33.841980, 38.369087>,  <28.387037, 33.213638, 37.983654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224808, 33.841980, 38.369087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.947086, 33.587608, 38.503864>,  <27.780453, 33.434986, 38.584732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.947086, 33.587608, 38.503864>,  <28.224808, 33.841980, 38.369087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947086, 33.587608, 38.503864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373060, 0.082349, 0.924146,
		-0.615442, 0.767338, 0.180066,
		-0.694303, -0.635934, 0.336944,
		27.738796, 33.396828, 38.604946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103487, 34.222198, 38.901314>,  <28.224808, 33.841980, 38.369087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103487, 34.222198, 38.901314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.980825, 33.845818, 38.958679>,  <27.907228, 33.619987, 38.993099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.980825, 33.845818, 38.958679>,  <28.103487, 34.222198, 38.901314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980825, 33.845818, 38.958679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467799, -0.017772, 0.883656,
		-0.828931, 0.338069, 0.445627,
		-0.306656, -0.940954, 0.143417,
		27.888828, 33.563530, 39.001705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614626, 34.087452, 39.502232>,  <28.103487, 34.222198, 38.901314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614626, 34.087452, 39.502232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.878048, 33.804882, 39.398487>,  <28.036102, 33.635342, 39.336239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.878048, 33.804882, 39.398487>,  <27.614626, 34.087452, 39.502232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878048, 33.804882, 39.398487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438158, 0.079739, 0.895354,
		-0.611817, -0.703284, 0.362037,
		0.658557, -0.706423, -0.259364,
		28.075615, 33.592957, 39.320679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607393, 33.633518, 40.031475>,  <27.614626, 34.087452, 39.502232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607393, 33.633518, 40.031475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.965895, 33.569267, 39.866104>,  <28.180996, 33.530716, 39.766880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.965895, 33.569267, 39.866104>,  <27.607393, 33.633518, 40.031475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965895, 33.569267, 39.866104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430310, 0.088957, 0.898287,
		-0.107517, -0.982998, 0.148850,
		0.896255, -0.160632, -0.413429,
		28.234772, 33.521080, 39.742077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947247, 32.961529, 40.280872>,  <27.607393, 33.633518, 40.031475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947247, 32.961529, 40.280872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.176910, 33.282505, 40.215832>,  <28.314709, 33.475090, 40.176807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.176910, 33.282505, 40.215832>,  <27.947247, 32.961529, 40.280872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176910, 33.282505, 40.215832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272683, -0.000155, 0.962104,
		0.772002, -0.596737, -0.218900,
		0.574157, 0.802437, -0.162600,
		28.349157, 33.523235, 40.167053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585089, 32.814480, 40.554291>,  <27.947247, 32.961529, 40.280872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585089, 32.814480, 40.554291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.531782, 33.210903, 40.551544>,  <28.499798, 33.448757, 40.549896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.531782, 33.210903, 40.551544>,  <28.585089, 32.814480, 40.554291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531782, 33.210903, 40.551544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268123, 0.042718, 0.962437,
		0.954123, 0.126421, -0.271418,
		-0.133267, 0.991056, -0.006862,
		28.491802, 33.508221, 40.549484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093391, 32.922039, 41.063599>,  <28.585089, 32.814480, 40.554291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093391, 32.922039, 41.063599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.866604, 33.246140, 41.004219>,  <28.730532, 33.440601, 40.968590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.866604, 33.246140, 41.004219>,  <29.093391, 32.922039, 41.063599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866604, 33.246140, 41.004219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314217, 0.379322, 0.870277,
		0.761453, 0.446776, -0.469660,
		-0.566971, 0.810251, -0.148451,
		28.696512, 33.489216, 40.959682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480705, 33.439941, 41.297905>,  <29.093391, 32.922039, 41.063599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480705, 33.439941, 41.297905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.109045, 33.583950, 41.331505>,  <28.886049, 33.670357, 41.351665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.109045, 33.583950, 41.331505>,  <29.480705, 33.439941, 41.297905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109045, 33.583950, 41.331505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212282, 0.333543, 0.918523,
		0.302674, 0.871281, -0.386340,
		-0.929153, 0.360026, 0.084002,
		28.830299, 33.691959, 41.356705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458323, 34.193817, 41.417210>,  <29.480705, 33.439941, 41.297905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458323, 34.193817, 41.417210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.160679, 33.990791, 41.590958>,  <28.982092, 33.868977, 41.695206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.160679, 33.990791, 41.590958>,  <29.458323, 34.193817, 41.417210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160679, 33.990791, 41.590958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387447, 0.201799, 0.899535,
		-0.544229, 0.837647, 0.046495,
		-0.744110, -0.507567, 0.434368,
		28.937447, 33.838520, 41.721268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012833, 34.596985, 41.855080>,  <29.458323, 34.193817, 41.417210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012833, 34.596985, 41.855080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.051291, 34.216072, 41.970951>,  <29.074366, 33.987526, 42.040474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.051291, 34.216072, 41.970951>,  <29.012833, 34.596985, 41.855080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051291, 34.216072, 41.970951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420199, 0.302656, 0.855472,
		-0.902324, 0.039476, 0.429246,
		0.096143, -0.952282, 0.289682,
		29.080133, 33.930386, 42.057858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871037, 34.638012, 42.537991>,  <29.012833, 34.596985, 41.855080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871037, 34.638012, 42.537991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.978174, 34.252663, 42.543190>,  <29.042456, 34.021454, 42.546310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.978174, 34.252663, 42.543190>,  <28.871037, 34.638012, 42.537991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978174, 34.252663, 42.543190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427081, 0.130815, 0.894700,
		-0.863633, -0.234085, 0.446477,
		0.267842, -0.963375, 0.013003,
		29.058527, 33.963650, 42.547092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648970, 34.160358, 43.191227>,  <28.871037, 34.638012, 42.537991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648970, 34.160358, 43.191227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.992407, 34.040203, 43.025055>,  <29.198469, 33.968109, 42.925350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.992407, 34.040203, 43.025055>,  <28.648970, 34.160358, 43.191227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992407, 34.040203, 43.025055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504933, 0.355390, 0.786600,
		-0.088647, -0.885135, 0.456813,
		0.858594, -0.300389, -0.415430,
		29.249985, 33.950085, 42.900425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256178, 34.111523, 43.659683>,  <28.648970, 34.160358, 43.191227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256178, 34.111523, 43.659683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.468897, 34.099300, 43.321156>,  <29.596529, 34.091969, 43.118038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.468897, 34.099300, 43.321156>,  <29.256178, 34.111523, 43.659683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468897, 34.099300, 43.321156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829455, 0.220422, 0.513243,
		0.170865, -0.974926, 0.142565,
		0.531798, -0.030556, -0.846320,
		29.628437, 34.090134, 43.067261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839491, 33.655930, 43.556450>,  <29.256178, 34.111523, 43.659683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839491, 33.655930, 43.556450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.927874, 33.977703, 43.335884>,  <29.980904, 34.170769, 43.203545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.927874, 33.977703, 43.335884>,  <29.839491, 33.655930, 43.556450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927874, 33.977703, 43.335884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905787, 0.040342, 0.421808,
		0.361563, -0.592668, -0.719734,
		0.220956, 0.804436, -0.551417,
		29.994160, 34.219032, 43.170460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583534, 33.542240, 43.340572>,  <29.839491, 33.655930, 43.556450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583534, 33.542240, 43.340572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.408861, 33.899067, 43.387089>,  <30.304056, 34.113163, 43.414997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.408861, 33.899067, 43.387089>,  <30.583534, 33.542240, 43.340572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408861, 33.899067, 43.387089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794053, 0.321453, 0.515896,
		0.422832, 0.317624, -0.848722,
		-0.436684, 0.892067, 0.116290,
		30.277855, 34.166687, 43.421974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158918, 33.946568, 43.426899>,  <30.583534, 33.542240, 43.340572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158918, 33.946568, 43.426899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.836174, 34.140732, 43.561573>,  <30.642529, 34.257229, 43.642376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.836174, 34.140732, 43.561573>,  <31.158918, 33.946568, 43.426899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836174, 34.140732, 43.561573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551272, 0.413860, 0.724444,
		0.212314, 0.770127, -0.601520,
		-0.806859, 0.485411, 0.336681,
		30.594116, 34.286354, 43.662579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274490, 34.661983, 43.420021>,  <31.158918, 33.946568, 43.426899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274490, 34.661983, 43.420021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.997288, 34.568382, 43.692780>,  <30.830965, 34.512222, 43.856434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.997288, 34.568382, 43.692780>,  <31.274490, 34.661983, 43.420021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997288, 34.568382, 43.692780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507107, 0.514077, 0.691785,
		-0.512426, 0.825207, -0.237596,
		-0.693009, -0.234002, 0.681896,
		30.789385, 34.498180, 43.897346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851889, 35.239475, 43.569988>,  <31.274490, 34.661983, 43.420021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851889, 35.239475, 43.569988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.923315, 34.967163, 43.854145>,  <30.966171, 34.803776, 44.024639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.923315, 34.967163, 43.854145>,  <30.851889, 35.239475, 43.569988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923315, 34.967163, 43.854145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702463, 0.593755, 0.392430,
		-0.688956, 0.428948, 0.584246,
		0.178567, -0.680778, 0.710391,
		30.976885, 34.762928, 44.067261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917738, 35.581985, 44.260429>,  <30.851889, 35.239475, 43.569988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917738, 35.581985, 44.260429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.127262, 35.245594, 44.314655>,  <31.252975, 35.043758, 44.347191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.127262, 35.245594, 44.314655>,  <30.917738, 35.581985, 44.260429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127262, 35.245594, 44.314655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694710, 0.513841, 0.503334,
		-0.492953, -0.169472, 0.853391,
		0.523808, -0.840980, 0.135565,
		31.284405, 34.993301, 44.355324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921194, 35.444031, 45.014511>,  <30.917738, 35.581985, 44.260429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921194, 35.444031, 45.014511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.223963, 35.344288, 44.772888>,  <31.405624, 35.284443, 44.627914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.223963, 35.344288, 44.772888>,  <30.921194, 35.444031, 45.014511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223963, 35.344288, 44.772888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638975, 0.476215, 0.604094,
		0.137029, -0.843233, 0.519790,
		0.756924, -0.249354, -0.604060,
		31.451040, 35.269482, 44.591671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527391, 35.013931, 45.348415>,  <30.921194, 35.444031, 45.014511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527391, 35.013931, 45.348415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.641838, 35.247917, 45.044849>,  <31.710506, 35.388309, 44.862709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.641838, 35.247917, 45.044849>,  <31.527391, 35.013931, 45.348415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641838, 35.247917, 45.044849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696214, 0.417264, 0.584103,
		0.658350, -0.695487, -0.287878,
		0.286115, 0.584969, -0.758914,
		31.727673, 35.423409, 44.817177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234596, 34.884094, 45.141670>,  <31.527391, 35.013931, 45.348415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234596, 34.884094, 45.141670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.148476, 35.260689, 45.037949>,  <32.096802, 35.486645, 44.975716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.148476, 35.260689, 45.037949>,  <32.234596, 34.884094, 45.141670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148476, 35.260689, 45.037949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802594, 0.321869, 0.502238,
		0.556315, -0.099982, -0.824935,
		-0.215306, 0.941490, -0.259306,
		32.083885, 35.543137, 44.960155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862762, 35.212273, 45.050976>,  <32.234596, 34.884094, 45.141670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862762, 35.212273, 45.050976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.594067, 35.497505, 45.131252>,  <32.432850, 35.668644, 45.179417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.594067, 35.497505, 45.131252>,  <32.862762, 35.212273, 45.050976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594067, 35.497505, 45.131252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638870, 0.420525, 0.644208,
		0.374981, 0.560953, -0.738052,
		-0.671740, 0.713085, 0.200687,
		32.392544, 35.711430, 45.191460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278419, 35.856216, 45.141293>,  <32.862762, 35.212273, 45.050976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278419, 35.856216, 45.141293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.941132, 35.939613, 45.339489>,  <32.738758, 35.989651, 45.458405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.941132, 35.939613, 45.339489>,  <33.278419, 35.856216, 45.141293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941132, 35.939613, 45.339489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537267, 0.357549, 0.763874,
		-0.017903, 0.910325, -0.413507,
		-0.843222, 0.208488, 0.495488,
		32.688164, 36.002159, 45.488136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359825, 36.438435, 45.391121>,  <33.278419, 35.856216, 45.141293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359825, 36.438435, 45.391121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.082378, 36.280102, 45.631859>,  <32.915913, 36.185104, 45.776302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.082378, 36.280102, 45.631859>,  <33.359825, 36.438435, 45.391121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082378, 36.280102, 45.631859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523590, 0.296779, 0.798609,
		-0.494728, 0.869047, 0.001401,
		-0.693613, -0.395827, 0.601849,
		32.874294, 36.161354, 45.812412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177452, 36.956394, 45.898293>,  <33.359825, 36.438435, 45.391121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177452, 36.956394, 45.898293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.111931, 36.587837, 46.039265>,  <33.072617, 36.366703, 46.123848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.111931, 36.587837, 46.039265>,  <33.177452, 36.956394, 45.898293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111931, 36.587837, 46.039265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518756, 0.223421, 0.825213,
		-0.839083, 0.318002, 0.441378,
		-0.163806, -0.921389, 0.352434,
		33.062790, 36.311420, 46.144997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149769, 36.988842, 46.650669>,  <33.177452, 36.956394, 45.898293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149769, 36.988842, 46.650669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.234158, 36.615589, 46.534222>,  <33.284790, 36.391636, 46.464352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.234158, 36.615589, 46.534222>,  <33.149769, 36.988842, 46.650669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234158, 36.615589, 46.534222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508013, -0.149774, 0.848228,
		-0.835114, -0.326841, 0.442448,
		0.210968, -0.933136, -0.291117,
		33.297447, 36.335648, 46.446888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901554, 36.514980, 47.216888>,  <33.149769, 36.988842, 46.650669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901554, 36.514980, 47.216888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.205509, 36.356060, 47.011086>,  <33.387882, 36.260708, 46.887604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.205509, 36.356060, 47.011086>,  <32.901554, 36.514980, 47.216888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205509, 36.356060, 47.011086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523938, -0.094169, 0.846534,
		-0.384779, -0.912844, 0.136602,
		0.759890, -0.397300, -0.514509,
		33.433475, 36.236870, 46.856731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034443, 35.857643, 47.524307>,  <32.901554, 36.514980, 47.216888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034443, 35.857643, 47.524307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.345627, 36.020782, 47.333122>,  <33.532337, 36.118664, 47.218410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.345627, 36.020782, 47.333122>,  <33.034443, 35.857643, 47.524307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345627, 36.020782, 47.333122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570373, -0.139336, 0.809481,
		0.263545, -0.902357, -0.341021,
		0.777958, 0.407844, -0.477959,
		33.579014, 36.143135, 47.189735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697441, 35.191124, 47.905838>,  <33.034443, 35.857643, 47.524307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697441, 35.191124, 47.905838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.776218, 35.094185, 48.285835>,  <32.823486, 35.036022, 48.513832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.776218, 35.094185, 48.285835>,  <32.697441, 35.191124, 47.905838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776218, 35.094185, 48.285835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880013, 0.470842, -0.062321,
		-0.432192, 0.848278, 0.305998,
		0.196943, -0.242347, 0.949990,
		32.835300, 35.021481, 48.570831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937752, 35.810448, 48.302322>,  <32.697441, 35.191124, 47.905838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937752, 35.810448, 48.302322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.088696, 35.493126, 48.493431>,  <33.179264, 35.302734, 48.608097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.088696, 35.493126, 48.493431>,  <32.937752, 35.810448, 48.302322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088696, 35.493126, 48.493431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913562, 0.403391, -0.051766,
		-0.151663, 0.456009, 0.876957,
		0.377362, -0.793304, 0.477772,
		33.201904, 35.255135, 48.636765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325703, 36.054665, 48.817535>,  <32.937752, 35.810448, 48.302322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325703, 36.054665, 48.817535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.480007, 35.687542, 48.779972>,  <33.572590, 35.467270, 48.757435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.480007, 35.687542, 48.779972>,  <33.325703, 36.054665, 48.817535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480007, 35.687542, 48.779972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914647, 0.393786, -0.091400,
		0.120866, -0.050631, 0.991377,
		0.385763, -0.917807, -0.093905,
		33.595737, 35.412201, 48.751801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928112, 36.087086, 49.172424>,  <33.325703, 36.054665, 48.817535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928112, 36.087086, 49.172424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960121, 35.783833, 48.913555>,  <33.979328, 35.601883, 48.758232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960121, 35.783833, 48.913555>,  <33.928112, 36.087086, 49.172424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960121, 35.783833, 48.913555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949962, 0.254672, -0.180869,
		0.301939, -0.600316, 0.740576,
		0.080025, -0.758131, -0.647173,
		33.984127, 35.556393, 48.719402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570927, 35.861481, 49.299000>,  <33.928112, 36.087086, 49.172424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570927, 35.861481, 49.299000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.492203, 35.661205, 48.961819>,  <34.444969, 35.541039, 48.759510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.492203, 35.661205, 48.961819>,  <34.570927, 35.861481, 49.299000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492203, 35.661205, 48.961819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950250, 0.114303, -0.289757,
		0.241432, -0.858045, 0.453287,
		-0.196812, -0.500692, -0.842954,
		34.433159, 35.510998, 48.708931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121067, 35.263870, 49.154774>,  <34.570927, 35.861481, 49.299000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121067, 35.263870, 49.154774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.972290, 35.365105, 48.797539>,  <34.883026, 35.425846, 48.583199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.972290, 35.365105, 48.797539>,  <35.121067, 35.263870, 49.154774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972290, 35.365105, 48.797539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918889, -0.035963, -0.392874,
		-0.131547, -0.966776, -0.219177,
		-0.371939, 0.253081, -0.893091,
		34.860710, 35.441029, 48.529610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583538, 34.984337, 48.583855>,  <35.121067, 35.263870, 49.154774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583538, 34.984337, 48.583855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.402542, 35.284767, 48.391544>,  <35.293945, 35.465023, 48.276157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.402542, 35.284767, 48.391544>,  <35.583538, 34.984337, 48.583855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402542, 35.284767, 48.391544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866049, 0.241551, -0.437735,
		-0.212639, -0.614445, -0.759764,
		-0.452486, 0.751073, -0.480776,
		35.266796, 35.510090, 48.247311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818237, 34.793346, 47.901093>,  <35.583538, 34.984337, 48.583855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818237, 34.793346, 47.901093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.697857, 35.174259, 47.921459>,  <35.625629, 35.402805, 47.933681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.697857, 35.174259, 47.921459>,  <35.818237, 34.793346, 47.901093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697857, 35.174259, 47.921459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862203, 0.294522, -0.412145,
		-0.407474, -0.080131, -0.909694,
		-0.300951, 0.952279, 0.050921,
		35.607571, 35.459942, 47.936737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864567, 35.142391, 47.224594>,  <35.818237, 34.793346, 47.901093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864567, 35.142391, 47.224594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.875481, 35.439598, 47.492081>,  <35.882030, 35.617920, 47.652573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.875481, 35.439598, 47.492081>,  <35.864567, 35.142391, 47.224594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875481, 35.439598, 47.492081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832781, 0.353135, -0.426346,
		-0.552929, 0.568531, -0.609132,
		0.027285, 0.743013, 0.668721,
		35.883667, 35.662502, 47.692696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214405, 35.708797, 46.880459>,  <35.864567, 35.142391, 47.224594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214405, 35.708797, 46.880459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.219715, 35.838459, 47.258823>,  <36.222900, 35.916256, 47.485844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.219715, 35.838459, 47.258823>,  <36.214405, 35.708797, 46.880459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219715, 35.838459, 47.258823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937246, 0.325594, -0.124731,
		-0.348415, 0.888209, -0.299485,
		0.013276, 0.324150, 0.945913,
		36.223698, 35.935703, 47.542599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206699, 36.549065, 46.965595>,  <36.214405, 35.708797, 46.880459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206699, 36.549065, 46.965595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.390266, 36.349941, 47.259964>,  <36.500408, 36.230469, 47.436584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.390266, 36.349941, 47.259964>,  <36.206699, 36.549065, 46.965595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390266, 36.349941, 47.259964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878365, 0.378822, -0.291494,
		-0.133676, 0.780181, 0.611104,
		0.458917, -0.497807, 0.735923,
		36.527943, 36.200600, 47.480740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561970, 37.015625, 47.487576>,  <36.206699, 36.549065, 46.965595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561970, 37.015625, 47.487576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.745411, 36.668495, 47.411087>,  <36.855476, 36.460217, 47.365196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.745411, 36.668495, 47.411087>,  <36.561970, 37.015625, 47.487576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745411, 36.668495, 47.411087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783860, 0.496417, -0.373008,
		0.418630, 0.021172, 0.907910,
		0.458599, -0.867826, -0.191219,
		36.882992, 36.408146, 47.353722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213604, 37.386131, 47.298683>,  <36.561970, 37.015625, 47.487576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213604, 37.386131, 47.298683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.236980, 36.992203, 47.233311>,  <37.251007, 36.755844, 47.194088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.236980, 36.992203, 47.233311>,  <37.213604, 37.386131, 47.298683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236980, 36.992203, 47.233311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774979, 0.147948, -0.614426,
		0.629280, -0.090746, 0.771863,
		0.058439, -0.984823, -0.163427,
		37.254513, 36.696754, 47.184284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910110, 37.280891, 47.386272>,  <37.213604, 37.386131, 47.298683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910110, 37.280891, 47.386272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.727924, 36.996380, 47.172119>,  <37.618610, 36.825672, 47.043625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.727924, 36.996380, 47.172119>,  <37.910110, 37.280891, 47.386272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727924, 36.996380, 47.172119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667828, 0.124693, -0.733797,
		0.588690, -0.691766, 0.418215,
		-0.455467, -0.711274, -0.535386,
		37.591286, 36.782997, 47.011505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448597, 36.796871, 47.102135>,  <37.910110, 37.280891, 47.386272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448597, 36.796871, 47.102135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113323, 36.805031, 46.884132>,  <37.912159, 36.809925, 46.753330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113323, 36.805031, 46.884132>,  <38.448597, 36.796871, 47.102135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113323, 36.805031, 46.884132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544961, 0.071041, -0.835446,
		0.021680, -0.997265, -0.070659,
		-0.838181, 0.020394, -0.545011,
		37.861870, 36.811150, 46.720631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607349, 36.324097, 46.518738>,  <38.448597, 36.796871, 47.102135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607349, 36.324097, 46.518738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.329872, 36.595577, 46.422276>,  <38.163387, 36.758465, 46.364399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.329872, 36.595577, 46.422276>,  <38.607349, 36.324097, 46.518738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329872, 36.595577, 46.422276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467530, 0.169602, -0.867554,
		-0.547913, -0.714560, -0.434966,
		-0.693691, 0.678704, -0.241152,
		38.121765, 36.799187, 46.349930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363941, 36.000103, 46.579494>,  <38.607349, 36.324097, 46.518738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363941, 36.000103, 46.579494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.169647, 35.665775, 46.681843>,  <39.053070, 35.465179, 46.743252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.169647, 35.665775, 46.681843>,  <39.363941, 36.000103, 46.579494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169647, 35.665775, 46.681843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785717, -0.545763, -0.291190,
		0.383027, 0.059601, 0.921812,
		-0.485736, -0.835817, 0.255871,
		39.023926, 35.415031, 46.758606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776268, 35.566681, 47.072506>,  <39.363941, 36.000103, 46.579494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776268, 35.566681, 47.072506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501205, 35.339066, 46.892139>,  <39.336170, 35.202496, 46.783920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501205, 35.339066, 46.892139>,  <39.776268, 35.566681, 47.072506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501205, 35.339066, 46.892139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723156, -0.592097, -0.355620,
		-0.064621, -0.570624, 0.818665,
		-0.687655, -0.569043, -0.450912,
		39.294910, 35.168354, 46.756866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494614, 34.912777, 47.253311>,  <39.776268, 35.566681, 47.072506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494614, 34.912777, 47.253311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772411, 35.056675, 47.502552>,  <39.939091, 35.143013, 47.652096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772411, 35.056675, 47.502552>,  <39.494614, 34.912777, 47.253311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772411, 35.056675, 47.502552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597499, 0.770838, 0.220915,
		-0.400841, -0.525730, 0.750290,
		0.694494, 0.359746, 0.623106,
		39.980759, 35.164600, 47.689484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411777, 34.777229, 47.979500>,  <39.494614, 34.912777, 47.253311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411777, 34.777229, 47.979500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.286633, 35.122398, 48.138233>,  <39.211544, 35.329502, 48.233471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.286633, 35.122398, 48.138233>,  <39.411777, 34.777229, 47.979500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286633, 35.122398, 48.138233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761015, -0.477742, 0.438884,
		0.568307, -0.164684, 0.806167,
		-0.312863, 0.862926, 0.396832,
		39.192772, 35.381275, 48.257282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294594, 34.699127, 48.778141>,  <39.411777, 34.777229, 47.979500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294594, 34.699127, 48.778141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.059746, 34.983280, 48.622890>,  <38.918839, 35.153774, 48.529739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.059746, 34.983280, 48.622890>,  <39.294594, 34.699127, 48.778141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059746, 34.983280, 48.622890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770297, -0.342876, 0.537661,
		0.248868, 0.614643, 0.748517,
		-0.587119, 0.710387, -0.388127,
		38.883610, 35.196396, 48.506451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002666, 34.965790, 49.367264>,  <39.294594, 34.699127, 48.778141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002666, 34.965790, 49.367264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.767830, 35.091869, 49.069008>,  <38.626930, 35.167519, 48.890057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.767830, 35.091869, 49.069008>,  <39.002666, 34.965790, 49.367264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767830, 35.091869, 49.069008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805810, -0.139429, 0.575525,
		0.077442, 0.938727, 0.335849,
		-0.587088, 0.315200, -0.745638,
		38.591702, 35.186428, 48.845318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752193, 35.457703, 49.647438>,  <39.002666, 34.965790, 49.367264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752193, 35.457703, 49.647438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.509151, 35.344906, 49.350441>,  <38.363327, 35.277225, 49.172241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.509151, 35.344906, 49.350441>,  <38.752193, 35.457703, 49.647438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509151, 35.344906, 49.350441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731928, -0.164167, 0.661309,
		-0.308380, 0.945266, -0.106652,
		-0.607605, -0.281996, -0.742493,
		38.326870, 35.260307, 49.127693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204979, 35.836414, 49.755199>,  <38.752193, 35.457703, 49.647438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204979, 35.836414, 49.755199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.088703, 35.531151, 49.524345>,  <38.018936, 35.347992, 49.385834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.088703, 35.531151, 49.524345>,  <38.204979, 35.836414, 49.755199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088703, 35.531151, 49.524345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797929, -0.139510, 0.586384,
		-0.528022, 0.630969, -0.568393,
		-0.290694, -0.763161, -0.577133,
		38.001495, 35.302204, 49.351204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502495, 35.874870, 49.843494>,  <38.204979, 35.836414, 49.755199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502495, 35.874870, 49.843494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.546310, 35.513737, 49.677170>,  <37.572601, 35.297058, 49.577377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.546310, 35.513737, 49.677170>,  <37.502495, 35.874870, 49.843494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546310, 35.513737, 49.677170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820363, -0.318325, 0.475051,
		-0.561253, 0.289078, -0.775518,
		0.109540, -0.902830, -0.415810,
		37.579174, 35.242889, 49.552425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815571, 35.695408, 49.606655>,  <37.502495, 35.874870, 49.843494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815571, 35.695408, 49.606655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.031013, 35.362251, 49.657543>,  <37.160278, 35.162357, 49.688076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.031013, 35.362251, 49.657543>,  <36.815571, 35.695408, 49.606655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031013, 35.362251, 49.657543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749450, -0.404600, 0.524045,
		-0.385001, -0.377602, -0.842135,
		0.538608, -0.832895, 0.127223,
		37.192596, 35.112381, 49.695709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403980, 35.084599, 49.463837>,  <36.815571, 35.695408, 49.606655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403980, 35.084599, 49.463837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.697937, 34.970490, 49.709942>,  <36.874310, 34.902023, 49.857605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.697937, 34.970490, 49.709942>,  <36.403980, 35.084599, 49.463837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697937, 34.970490, 49.709942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678183, -0.309058, 0.666746,
		-0.000055, -0.907249, -0.420595,
		0.734893, -0.285277, 0.615264,
		36.918404, 34.884907, 49.894520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374081, 34.399250, 49.592686>,  <36.403980, 35.084599, 49.463837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374081, 34.399250, 49.592686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.587128, 34.556625, 49.892426>,  <36.714954, 34.651051, 50.072269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.587128, 34.556625, 49.892426>,  <36.374081, 34.399250, 49.592686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587128, 34.556625, 49.892426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712728, -0.268990, 0.647814,
		0.456442, -0.879120, 0.137145,
		0.532616, 0.393437, 0.749352,
		36.746914, 34.674656, 50.117229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353836, 33.875473, 50.048553>,  <36.374081, 34.399250, 49.592686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353836, 33.875473, 50.048553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.457298, 34.201057, 50.256618>,  <36.519375, 34.396408, 50.381458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.457298, 34.201057, 50.256618>,  <36.353836, 33.875473, 50.048553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457298, 34.201057, 50.256618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631917, -0.264701, 0.728432,
		0.730602, -0.517111, 0.445889,
		0.258653, 0.813959, 0.520162,
		36.534893, 34.445244, 50.412666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188076, 33.655754, 50.795307>,  <36.353836, 33.875473, 50.048553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188076, 33.655754, 50.795307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220573, 34.052437, 50.835133>,  <36.240074, 34.290447, 50.859028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220573, 34.052437, 50.835133>,  <36.188076, 33.655754, 50.795307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220573, 34.052437, 50.835133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557143, -0.037640, 0.829563,
		0.826433, -0.122870, 0.549465,
		0.081247, 0.991709, 0.099564,
		36.244949, 34.349949, 50.865002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366035, 33.679016, 51.508938>,  <36.188076, 33.655754, 50.795307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366035, 33.679016, 51.508938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.204975, 34.029926, 51.404430>,  <36.108341, 34.240471, 51.341724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.204975, 34.029926, 51.404430>,  <36.366035, 33.679016, 51.508938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204975, 34.029926, 51.404430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520983, 0.015055, 0.853434,
		0.752630, 0.479751, 0.450984,
		-0.402646, 0.877275, -0.261273,
		36.084183, 34.293110, 51.326050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378605, 33.982094, 52.101395>,  <36.366035, 33.679016, 51.508938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378605, 33.982094, 52.101395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118233, 34.224228, 51.918152>,  <35.962009, 34.369507, 51.808205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118233, 34.224228, 51.918152>,  <36.378605, 33.982094, 52.101395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118233, 34.224228, 51.918152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411762, 0.225445, 0.882965,
		0.637766, 0.763379, 0.102504,
		-0.650928, 0.605332, -0.458112,
		35.922955, 34.405827, 51.780720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462090, 34.610962, 52.427898>,  <36.378605, 33.982094, 52.101395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462090, 34.610962, 52.427898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.093834, 34.598881, 52.272205>,  <35.872879, 34.591633, 52.178787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.093834, 34.598881, 52.272205>,  <36.462090, 34.610962, 52.427898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093834, 34.598881, 52.272205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379845, 0.299613, 0.875185,
		0.090191, 0.953583, -0.287308,
		-0.920643, -0.030198, -0.389236,
		35.817642, 34.589821, 52.155434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091145, 35.231014, 52.496521>,  <36.462090, 34.610962, 52.427898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091145, 35.231014, 52.496521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.765041, 35.014599, 52.413925>,  <35.569382, 34.884750, 52.364368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.765041, 35.014599, 52.413925>,  <36.091145, 35.231014, 52.496521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765041, 35.014599, 52.413925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491121, 0.457005, 0.741584,
		-0.306857, 0.705992, -0.638290,
		-0.815254, -0.541037, -0.206492,
		35.520466, 34.852287, 52.351978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548546, 35.671886, 52.386997>,  <36.091145, 35.231014, 52.496521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548546, 35.671886, 52.386997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.364285, 35.333111, 52.493202>,  <35.253727, 35.129845, 52.556927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.364285, 35.333111, 52.493202>,  <35.548546, 35.671886, 52.386997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364285, 35.333111, 52.493202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461396, 0.484049, 0.743512,
		-0.758229, 0.219995, -0.613752,
		-0.460655, -0.846935, 0.265516,
		35.226089, 35.079029, 52.572857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837757, 35.845219, 52.423542>,  <35.548546, 35.671886, 52.386997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837757, 35.845219, 52.423542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.893772, 35.529354, 52.662479>,  <34.927383, 35.339836, 52.805840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.893772, 35.529354, 52.662479>,  <34.837757, 35.845219, 52.423542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893772, 35.529354, 52.662479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532071, 0.448765, 0.717991,
		-0.835038, -0.418376, -0.357313,
		0.140041, -0.789666, 0.597342,
		34.935783, 35.292454, 52.841682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315491, 35.924809, 52.832680>,  <34.837757, 35.845219, 52.423542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315491, 35.924809, 52.832680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.509056, 35.626999, 53.016640>,  <34.625195, 35.448311, 53.127014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.509056, 35.626999, 53.016640>,  <34.315491, 35.924809, 52.832680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509056, 35.626999, 53.016640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345643, 0.320187, 0.882050,
		-0.803963, -0.585798, -0.102397,
		0.483916, -0.744528, 0.459895,
		34.654232, 35.403641, 53.154610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837002, 35.463341, 53.011646>,  <34.315491, 35.924809, 52.832680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837002, 35.463341, 53.011646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.158234, 35.454536, 53.249832>,  <34.350971, 35.449253, 53.392742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.158234, 35.454536, 53.249832>,  <33.837002, 35.463341, 53.011646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158234, 35.454536, 53.249832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556125, 0.331174, 0.762266,
		-0.213983, -0.943313, 0.253716,
		0.803080, -0.022014, 0.595465,
		34.399158, 35.447933, 53.428471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527531, 35.170975, 53.541920>,  <33.837002, 35.463341, 53.011646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527531, 35.170975, 53.541920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858994, 35.329857, 53.699684>,  <34.057873, 35.425186, 53.794342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858994, 35.329857, 53.699684>,  <33.527531, 35.170975, 53.541920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858994, 35.329857, 53.699684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498739, 0.204015, 0.842400,
		0.254135, -0.894768, 0.367158,
		0.828658, 0.397199, 0.394408,
		34.107590, 35.449017, 53.818005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476772, 34.948235, 54.120033>,  <33.527531, 35.170975, 53.541920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476772, 34.948235, 54.120033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.743439, 35.233624, 54.206306>,  <33.903439, 35.404858, 54.258072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.743439, 35.233624, 54.206306>,  <33.476772, 34.948235, 54.120033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743439, 35.233624, 54.206306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424629, 0.125726, 0.896595,
		0.612579, -0.689312, 0.386777,
		0.666662, 0.713472, 0.215684,
		33.943436, 35.447666, 54.271011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727474, 34.862038, 54.800922>,  <33.476772, 34.948235, 54.120033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727474, 34.862038, 54.800922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.779198, 35.248386, 54.711143>,  <33.810230, 35.480194, 54.657276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.779198, 35.248386, 54.711143>,  <33.727474, 34.862038, 54.800922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779198, 35.248386, 54.711143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369889, 0.256990, 0.892826,
		0.920034, -0.032428, 0.390495,
		0.129306, 0.965870, -0.224444,
		33.817989, 35.538147, 54.643810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891903, 35.185097, 55.499390>,  <33.727474, 34.862038, 54.800922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891903, 35.185097, 55.499390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.774582, 35.482193, 55.258621>,  <33.704189, 35.660450, 55.114159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.774582, 35.482193, 55.258621>,  <33.891903, 35.185097, 55.499390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774582, 35.482193, 55.258621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437726, 0.455406, 0.775242,
		0.849924, 0.490855, 0.191547,
		-0.293300, 0.742742, -0.601921,
		33.686592, 35.705017, 55.078045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964260, 35.801640, 55.839413>,  <33.891903, 35.185097, 55.499390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964260, 35.801640, 55.839413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.725178, 35.908516, 55.537060>,  <33.581726, 35.972641, 55.355648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.725178, 35.908516, 55.537060>,  <33.964260, 35.801640, 55.839413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725178, 35.908516, 55.537060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549898, 0.549456, 0.629055,
		0.583399, 0.791649, -0.181488,
		-0.597710, 0.267191, -0.755878,
		33.545864, 35.988674, 55.310295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819626, 36.596352, 55.937096>,  <33.964260, 35.801640, 55.839413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819626, 36.596352, 55.937096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524841, 36.456043, 55.705978>,  <33.347969, 36.371857, 55.567307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524841, 36.456043, 55.705978>,  <33.819626, 36.596352, 55.937096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524841, 36.456043, 55.705978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672648, 0.464764, 0.575794,
		0.066564, 0.812990, -0.578461,
		-0.736963, -0.350773, -0.577792,
		33.303753, 36.350811, 55.532642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464973, 37.177769, 55.715092>,  <33.819626, 36.596352, 55.937096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464973, 37.177769, 55.715092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.212048, 36.870880, 55.672104>,  <33.060291, 36.686749, 55.646309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.212048, 36.870880, 55.672104>,  <33.464973, 37.177769, 55.715092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212048, 36.870880, 55.672104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702909, 0.509842, 0.495964,
		-0.325719, 0.389150, -0.861667,
		-0.632318, -0.767218, -0.107471,
		33.022350, 36.640717, 55.639862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746357, 37.487877, 55.456367>,  <33.464973, 37.177769, 55.715092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746357, 37.487877, 55.456367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.649208, 37.120678, 55.581779>,  <32.590919, 36.900360, 55.657028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.649208, 37.120678, 55.581779>,  <32.746357, 37.487877, 55.456367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649208, 37.120678, 55.581779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784126, 0.376066, 0.493681,
		-0.571105, -0.125949, -0.811157,
		-0.242870, -0.917993, 0.313533,
		32.576347, 36.845280, 55.675838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062309, 37.434158, 55.327568>,  <32.746357, 37.487877, 55.456367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062309, 37.434158, 55.327568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124264, 37.130550, 55.580517>,  <32.161438, 36.948387, 55.732288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124264, 37.130550, 55.580517>,  <32.062309, 37.434158, 55.327568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124264, 37.130550, 55.580517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872223, 0.195531, 0.448324,
		-0.463936, -0.621012, -0.631750,
		0.154888, -0.759020, 0.632375,
		32.170731, 36.902843, 55.770229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448099, 37.024147, 55.397148>,  <32.062309, 37.434158, 55.327568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448099, 37.024147, 55.397148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.661018, 36.948410, 55.727192>,  <31.788771, 36.902966, 55.925217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.661018, 36.948410, 55.727192>,  <31.448099, 37.024147, 55.397148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661018, 36.948410, 55.727192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833232, 0.055066, 0.550174,
		-0.149610, -0.980365, -0.128460,
		0.532298, -0.189348, 0.825110,
		31.820707, 36.891605, 55.974724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092857, 36.523643, 55.770012>,  <31.448099, 37.024147, 55.397148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092857, 36.523643, 55.770012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.316370, 36.721188, 56.036507>,  <31.450478, 36.839714, 56.196404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.316370, 36.721188, 56.036507>,  <31.092857, 36.523643, 55.770012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316370, 36.721188, 56.036507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704537, -0.141097, 0.695500,
		0.437480, -0.858020, 0.269096,
		0.558784, 0.493855, 0.666233,
		31.484005, 36.869343, 56.236378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939501, 36.213966, 56.297371>,  <31.092857, 36.523643, 55.770012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939501, 36.213966, 56.297371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.108206, 36.551708, 56.429539>,  <31.209429, 36.754353, 56.508839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.108206, 36.551708, 56.429539>,  <30.939501, 36.213966, 56.297371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108206, 36.551708, 56.429539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715531, 0.086120, 0.693253,
		0.556896, -0.528816, 0.640485,
		0.421762, 0.844356, 0.330424,
		31.234734, 36.805016, 56.528667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978064, 36.202900, 57.062271>,  <30.939501, 36.213966, 56.297371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978064, 36.202900, 57.062271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.964651, 36.585510, 56.946381>,  <30.956604, 36.815075, 56.876846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.964651, 36.585510, 56.946381>,  <30.978064, 36.202900, 57.062271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964651, 36.585510, 56.946381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577907, 0.217955, 0.786460,
		0.815414, 0.193804, 0.545473,
		-0.033531, 0.956523, -0.289725,
		30.954592, 36.872467, 56.859463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122202, 36.563553, 57.619438>,  <30.978064, 36.202900, 57.062271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122202, 36.563553, 57.619438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.923634, 36.798485, 57.363747>,  <30.804493, 36.939445, 57.210331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.923634, 36.798485, 57.363747>,  <31.122202, 36.563553, 57.619438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923634, 36.798485, 57.363747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485828, 0.422275, 0.765282,
		0.719401, 0.690456, 0.075714,
		-0.496421, 0.587328, -0.639227,
		30.774708, 36.974682, 57.171978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935913, 37.109753, 58.091526>,  <31.122202, 36.563553, 57.619438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935913, 37.109753, 58.091526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.755100, 37.235241, 57.757523>,  <30.646612, 37.310535, 57.557121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.755100, 37.235241, 57.757523>,  <30.935913, 37.109753, 58.091526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755100, 37.235241, 57.757523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707509, 0.443990, 0.549822,
		0.543228, 0.839316, 0.021263,
		-0.452034, 0.313722, -0.835011,
		30.619490, 37.329357, 57.507019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873825, 37.860168, 58.074478>,  <30.935913, 37.109753, 58.091526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873825, 37.860168, 58.074478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.584997, 37.714840, 57.838982>,  <30.411701, 37.627644, 57.697685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.584997, 37.714840, 57.838982>,  <30.873825, 37.860168, 58.074478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584997, 37.714840, 57.838982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668966, 0.583610, 0.460308,
		0.176354, 0.726221, -0.664456,
		-0.722069, -0.363322, -0.588739,
		30.368376, 37.605843, 57.662361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634153, 38.360958, 57.626541>,  <30.873825, 37.860168, 58.074478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634153, 38.360958, 57.626541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.331284, 38.103191, 57.669273>,  <30.149561, 37.948532, 57.694912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.331284, 38.103191, 57.669273>,  <30.634153, 38.360958, 57.626541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331284, 38.103191, 57.669273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607331, 0.754724, 0.248075,
		-0.240489, 0.122956, -0.962833,
		-0.757175, -0.644417, 0.106828,
		30.104132, 37.909866, 57.701321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024523, 38.626122, 57.258827>,  <30.634153, 38.360958, 57.626541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024523, 38.626122, 57.258827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.856735, 38.375477, 57.521549>,  <29.756062, 38.225090, 57.679184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.856735, 38.375477, 57.521549>,  <30.024523, 38.626122, 57.258827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856735, 38.375477, 57.521549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702503, 0.682322, 0.202302,
		-0.574921, -0.376550, -0.726413,
		-0.419471, -0.626615, 0.656809,
		29.730894, 38.187492, 57.718594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251410, 38.559204, 57.097473>,  <30.024523, 38.626122, 57.258827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251410, 38.559204, 57.097473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.315292, 38.464226, 57.480747>,  <29.353622, 38.407238, 57.710712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.315292, 38.464226, 57.480747>,  <29.251410, 38.559204, 57.097473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315292, 38.464226, 57.480747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612075, 0.737723, 0.284831,
		-0.774505, -0.631969, -0.027513,
		0.159708, -0.237443, 0.958183,
		29.363205, 38.392994, 57.768204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594791, 38.575844, 57.366146>,  <29.251410, 38.559204, 57.097473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594791, 38.575844, 57.366146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.857279, 38.621376, 57.664520>,  <29.014772, 38.648697, 57.843544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.857279, 38.621376, 57.664520>,  <28.594791, 38.575844, 57.366146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857279, 38.621376, 57.664520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558609, 0.737869, 0.378822,
		-0.507280, -0.665275, 0.547792,
		0.656219, 0.113833, 0.745935,
		29.054144, 38.655525, 57.888302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120548, 38.611286, 57.956024>,  <28.594791, 38.575844, 57.366146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120548, 38.611286, 57.956024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.467613, 38.740189, 58.107452>,  <28.675852, 38.817528, 58.198307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.467613, 38.740189, 58.107452>,  <28.120548, 38.611286, 57.956024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467613, 38.740189, 58.107452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484095, 0.721020, 0.495764,
		-0.113194, -0.613419, 0.781603,
		0.867663, 0.322253, 0.378568,
		28.727913, 38.836864, 58.221024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045574, 38.652180, 58.698826>,  <28.120548, 38.611286, 57.956024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045574, 38.652180, 58.698826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.358698, 38.887310, 58.617165>,  <28.546572, 39.028389, 58.568169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.358698, 38.887310, 58.617165>,  <28.045574, 38.652180, 58.698826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358698, 38.887310, 58.617165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385681, 0.715792, 0.582144,
		0.488325, -0.376971, 0.787040,
		0.782808, 0.587822, -0.204148,
		28.593540, 39.063656, 58.555920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399622, 38.850246, 59.280815>,  <28.045574, 38.652180, 58.698826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399622, 38.850246, 59.280815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.432919, 39.140316, 59.007408>,  <28.452896, 39.314358, 58.843365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.432919, 39.140316, 59.007408>,  <28.399622, 38.850246, 59.280815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432919, 39.140316, 59.007408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489599, 0.627170, 0.605764,
		0.867965, 0.284225, 0.407250,
		0.083242, 0.725171, -0.683518,
		28.457891, 39.357868, 58.802353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855141, 39.068104, 59.762928>,  <28.399622, 38.850246, 59.280815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855141, 39.068104, 59.762928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.017900, 38.722332, 59.881046>,  <28.115557, 38.514870, 59.951916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.017900, 38.722332, 59.881046>,  <27.855141, 39.068104, 59.762928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017900, 38.722332, 59.881046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489823, 0.479333, 0.728226,
		-0.771043, -0.151672, 0.618456,
		0.406898, -0.864428, 0.295294,
		28.139969, 38.463005, 59.969635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239960, 39.384071, 60.235451>,  <27.855141, 39.068104, 59.762928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239960, 39.384071, 60.235451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.304836, 39.771526, 60.310757>,  <28.343763, 40.003998, 60.355942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.304836, 39.771526, 60.310757>,  <28.239960, 39.384071, 60.235451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304836, 39.771526, 60.310757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692917, -0.247640, 0.677156,
		0.702538, 0.020622, -0.711348,
		0.162193, 0.968633, 0.188266,
		28.353495, 40.062115, 60.367237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025810, 39.604343, 60.161682>,  <28.239960, 39.384071, 60.235451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025810, 39.604343, 60.161682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.796394, 39.809597, 60.417103>,  <28.658745, 39.932747, 60.570354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.796394, 39.809597, 60.417103>,  <29.025810, 39.604343, 60.161682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796394, 39.809597, 60.417103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665857, -0.162037, 0.728271,
		0.477168, 0.842876, -0.248738,
		-0.573538, 0.513132, 0.638553,
		28.624332, 39.963535, 60.608669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555376, 39.869743, 60.627602>,  <29.025810, 39.604343, 60.161682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555376, 39.869743, 60.627602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.190737, 39.894562, 60.790154>,  <28.971954, 39.909454, 60.887684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.190737, 39.894562, 60.790154>,  <29.555376, 39.869743, 60.627602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190737, 39.894562, 60.790154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404593, -0.039588, 0.913640,
		0.072774, 0.997288, 0.010986,
		-0.911597, 0.062045, 0.406377,
		28.917257, 39.913174, 60.912067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449709, 40.351879, 61.065792>,  <29.555376, 39.869743, 60.627602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449709, 40.351879, 61.065792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.222549, 40.074387, 61.242981>,  <29.086254, 39.907890, 61.349297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.222549, 40.074387, 61.242981>,  <29.449709, 40.351879, 61.065792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222549, 40.074387, 61.242981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599734, 0.019853, 0.799953,
		-0.563748, 0.719959, 0.404781,
		-0.567897, -0.693733, 0.442976,
		29.052179, 39.866268, 61.375874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107355, 40.596638, 61.689129>,  <29.449709, 40.351879, 61.065792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107355, 40.596638, 61.689129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.245092, 40.224842, 61.636253>,  <29.327734, 40.001762, 61.604527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.245092, 40.224842, 61.636253>,  <29.107355, 40.596638, 61.689129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245092, 40.224842, 61.636253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635887, 0.127316, 0.761209,
		-0.690708, -0.346172, 0.634892,
		0.344341, -0.929492, -0.132188,
		29.348394, 39.945995, 61.596596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935680, 41.122772, 61.217464>,  <29.107355, 40.596638, 61.689129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935680, 41.122772, 61.217464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.889252, 41.506836, 61.319145>,  <28.861395, 41.737274, 61.380154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.889252, 41.506836, 61.319145>,  <28.935680, 41.122772, 61.217464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889252, 41.506836, 61.319145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438901, 0.180008, -0.880320,
		-0.891007, -0.213750, 0.400522,
		-0.116071, 0.960161, 0.254203,
		28.854431, 41.794884, 61.395405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344175, 41.292114, 60.892700>,  <28.935680, 41.122772, 61.217464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344175, 41.292114, 60.892700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.499660, 41.651085, 60.976154>,  <28.592953, 41.866467, 61.026226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.499660, 41.651085, 60.976154>,  <28.344175, 41.292114, 60.892700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499660, 41.651085, 60.976154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456233, 0.384215, -0.802640,
		-0.800470, 0.216811, 0.558785,
		0.388714, 0.897425, 0.208636,
		28.616276, 41.920311, 61.038746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217754, 41.168316, 60.089733>,  <28.344175, 41.292114, 60.892700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217754, 41.168316, 60.089733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.603374, 41.274464, 60.095119>,  <28.834747, 41.338154, 60.098351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.603374, 41.274464, 60.095119>,  <28.217754, 41.168316, 60.089733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603374, 41.274464, 60.095119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103381, 0.421278, -0.901020,
		-0.244775, 0.867239, 0.433568,
		0.964053, 0.265370, 0.013462,
		28.892590, 41.354076, 60.099159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336197, 41.809856, 59.855522>,  <28.217754, 41.168316, 60.089733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336197, 41.809856, 59.855522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.698095, 41.656490, 59.781307>,  <28.915236, 41.564472, 59.736778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.698095, 41.656490, 59.781307>,  <28.336197, 41.809856, 59.855522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698095, 41.656490, 59.781307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044091, 0.348953, -0.936102,
		0.423661, 0.855116, 0.298809,
		0.904747, -0.383416, -0.185541,
		28.969519, 41.541466, 59.725643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885571, 42.334278, 59.658924>,  <28.336197, 41.809856, 59.855522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885571, 42.334278, 59.658924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.989010, 41.982834, 59.498337>,  <29.051073, 41.771969, 59.401985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.989010, 41.982834, 59.498337>,  <28.885571, 42.334278, 59.658924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989010, 41.982834, 59.498337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153157, 0.447640, -0.881000,
		0.953766, 0.166337, 0.250324,
		0.258598, -0.878607, -0.401469,
		29.066589, 41.719254, 59.377895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606760, 42.347317, 59.331070>,  <28.885571, 42.334278, 59.658924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606760, 42.347317, 59.331070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.398645, 42.048347, 59.165829>,  <29.273777, 41.868965, 59.066685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.398645, 42.048347, 59.165829>,  <29.606760, 42.347317, 59.331070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398645, 42.048347, 59.165829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354167, 0.251328, -0.900777,
		0.777090, -0.614969, 0.133952,
		-0.520285, -0.747427, -0.413107,
		29.242559, 41.824120, 59.041897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066090, 41.890007, 58.898846>,  <29.606760, 42.347317, 59.331070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066090, 41.890007, 58.898846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.701975, 41.796997, 58.761845>,  <29.483505, 41.741192, 58.679646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.701975, 41.796997, 58.761845>,  <30.066090, 41.890007, 58.898846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701975, 41.796997, 58.761845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349143, 0.013309, -0.936975,
		0.222425, -0.972500, 0.069068,
		-0.910289, -0.232522, -0.342502,
		29.428888, 41.727242, 58.659096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195803, 41.331261, 58.408543>,  <30.066090, 41.890007, 58.898846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195803, 41.331261, 58.408543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.832031, 41.460754, 58.304134>,  <29.613768, 41.538452, 58.241489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.832031, 41.460754, 58.304134>,  <30.195803, 41.331261, 58.408543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832031, 41.460754, 58.304134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276083, 0.000624, -0.961134,
		-0.310992, -0.946147, -0.089946,
		-0.909430, 0.323738, -0.261020,
		29.559202, 41.557877, 58.225830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861546, 40.866142, 57.916100>,  <30.195803, 41.331261, 58.408543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861546, 40.866142, 57.916100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.727001, 41.235859, 57.843948>,  <29.646275, 41.457691, 57.800655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.727001, 41.235859, 57.843948>,  <29.861546, 40.866142, 57.916100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727001, 41.235859, 57.843948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133127, -0.142948, -0.980736,
		-0.932276, -0.353896, -0.074966,
		-0.336362, 0.924296, -0.180380,
		29.626093, 41.513149, 57.789833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488939, 40.756748, 57.234291>,  <29.861546, 40.866142, 57.916100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488939, 40.756748, 57.234291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.536757, 41.150349, 57.287140>,  <29.565447, 41.386509, 57.318848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.536757, 41.150349, 57.287140>,  <29.488939, 40.756748, 57.234291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536757, 41.150349, 57.287140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261015, 0.097244, -0.960424,
		-0.957905, 0.149295, -0.245213,
		0.119541, 0.983999, 0.132119,
		29.572618, 41.445549, 57.326775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215624, 41.058701, 56.734890>,  <29.488939, 40.756748, 57.234291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215624, 41.058701, 56.734890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.431126, 41.377041, 56.845432>,  <29.560427, 41.568043, 56.911758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.431126, 41.377041, 56.845432>,  <29.215624, 41.058701, 56.734890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431126, 41.377041, 56.845432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225957, 0.179505, -0.957456,
		-0.811595, 0.578277, -0.083118,
		0.538755, 0.795848, 0.276352,
		29.592752, 41.615795, 56.928337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051559, 41.492867, 56.254330>,  <29.215624, 41.058701, 56.734890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051559, 41.492867, 56.254330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.396862, 41.598331, 56.426502>,  <29.604044, 41.661610, 56.529804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.396862, 41.598331, 56.426502>,  <29.051559, 41.492867, 56.254330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396862, 41.598331, 56.426502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400783, 0.160361, -0.902030,
		-0.306853, 0.951193, 0.032762,
		0.863258, 0.263660, 0.430429,
		29.655840, 41.677429, 56.555630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175213, 42.103287, 55.968990>,  <29.051559, 41.492867, 56.254330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175213, 42.103287, 55.968990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.529341, 41.964596, 56.092915>,  <29.741817, 41.881382, 56.167271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.529341, 41.964596, 56.092915>,  <29.175213, 42.103287, 55.968990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529341, 41.964596, 56.092915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382529, 0.164313, -0.909216,
		0.264345, 0.923461, 0.278104,
		0.885321, -0.346729, 0.309815,
		29.794937, 41.860577, 56.185860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647310, 42.550350, 55.646252>,  <29.175213, 42.103287, 55.968990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647310, 42.550350, 55.646252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.844267, 42.215145, 55.740307>,  <29.962440, 42.014023, 55.796741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.844267, 42.215145, 55.740307>,  <29.647310, 42.550350, 55.646252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844267, 42.215145, 55.740307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544050, 0.085458, -0.834690,
		0.679383, 0.538922, 0.497998,
		0.492391, -0.838009, 0.235142,
		29.991983, 41.963741, 55.810848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331888, 42.646320, 55.335251>,  <29.647310, 42.550350, 55.646252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331888, 42.646320, 55.335251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.293495, 42.254234, 55.404499>,  <30.270460, 42.018982, 55.446049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.293495, 42.254234, 55.404499>,  <30.331888, 42.646320, 55.335251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293495, 42.254234, 55.404499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408664, -0.197398, -0.891082,
		0.907624, -0.014778, 0.419524,
		-0.095982, -0.980212, 0.173124,
		30.264700, 41.960171, 55.456436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906990, 42.373055, 55.131382>,  <30.331888, 42.646320, 55.335251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906990, 42.373055, 55.131382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.662111, 42.057041, 55.144402>,  <30.515184, 41.867432, 55.152214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.662111, 42.057041, 55.144402>,  <30.906990, 42.373055, 55.131382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662111, 42.057041, 55.144402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419281, -0.359252, -0.833752,
		0.670387, -0.496773, 0.551179,
		-0.612197, -0.790035, 0.032550,
		30.478453, 41.820030, 55.154167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322746, 41.840385, 54.856144>,  <30.906990, 42.373055, 55.131382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322746, 41.840385, 54.856144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.947247, 41.703796, 54.837631>,  <30.721947, 41.621841, 54.826523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.947247, 41.703796, 54.837631>,  <31.322746, 41.840385, 54.856144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947247, 41.703796, 54.837631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189810, -0.400310, -0.896507,
		0.287608, -0.850381, 0.440607,
		-0.938752, -0.341474, -0.046279,
		30.665621, 41.601353, 54.823750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361544, 41.173706, 54.517761>,  <31.322746, 41.840385, 54.856144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361544, 41.173706, 54.517761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.991449, 41.321175, 54.481941>,  <30.769392, 41.409657, 54.460449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.991449, 41.321175, 54.481941>,  <31.361544, 41.173706, 54.517761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991449, 41.321175, 54.481941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016259, -0.274340, -0.961495,
		-0.379043, -0.888154, 0.259823,
		-0.925236, 0.368673, -0.089546,
		30.713879, 41.431774, 54.455078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927958, 40.644447, 54.428783>,  <31.361544, 41.173706, 54.517761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927958, 40.644447, 54.428783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.788576, 40.967960, 54.239281>,  <30.704948, 41.162067, 54.125580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.788576, 40.967960, 54.239281>,  <30.927958, 40.644447, 54.428783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788576, 40.967960, 54.239281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215364, -0.422829, -0.880247,
		-0.912250, -0.408753, -0.026848,
		-0.348451, 0.808787, -0.473756,
		30.684040, 41.210598, 54.097153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457037, 40.406731, 53.983162>,  <30.927958, 40.644447, 54.428783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457037, 40.406731, 53.983162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.636692, 40.740715, 53.855965>,  <30.744486, 40.941105, 53.779648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.636692, 40.740715, 53.855965>,  <30.457037, 40.406731, 53.983162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636692, 40.740715, 53.855965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396642, -0.505249, -0.766419,
		-0.800593, 0.218099, -0.558107,
		0.449138, 0.834959, -0.317991,
		30.771433, 40.991203, 53.760567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510899, 40.400990, 53.184551>,  <30.457037, 40.406731, 53.983162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510899, 40.400990, 53.184551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.798269, 40.653488, 53.301441>,  <30.970692, 40.804985, 53.371574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.798269, 40.653488, 53.301441>,  <30.510899, 40.400990, 53.184551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798269, 40.653488, 53.301441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638567, -0.431901, -0.636941,
		-0.275855, 0.644198, -0.713381,
		0.718426, 0.631245, 0.292222,
		31.013798, 40.842861, 53.389107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800333, 40.756210, 52.606533>,  <30.510899, 40.400990, 53.184551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800333, 40.756210, 52.606533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.090801, 40.802372, 52.877636>,  <31.265081, 40.830067, 53.040298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.090801, 40.802372, 52.877636>,  <30.800333, 40.756210, 52.606533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090801, 40.802372, 52.877636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649274, -0.439306, -0.620849,
		0.226096, 0.890895, -0.393938,
		0.726170, 0.115402, 0.677760,
		31.308653, 40.836994, 53.080963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356337, 41.113506, 52.301765>,  <30.800333, 40.756210, 52.606533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356337, 41.113506, 52.301765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.531942, 40.916241, 52.602180>,  <31.637306, 40.797882, 52.782429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.531942, 40.916241, 52.602180>,  <31.356337, 41.113506, 52.301765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531942, 40.916241, 52.602180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760597, -0.240983, -0.602843,
		0.478286, 0.835894, 0.269302,
		0.439016, -0.493162, 0.751037,
		31.663647, 40.768291, 52.827492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081562, 41.340145, 52.343723>,  <31.356337, 41.113506, 52.301765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081562, 41.340145, 52.343723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.042355, 40.978012, 52.509018>,  <32.018829, 40.760731, 52.608196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.042355, 40.978012, 52.509018>,  <32.081562, 41.340145, 52.343723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042355, 40.978012, 52.509018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637756, -0.375910, -0.672279,
		0.763976, 0.197652, 0.614226,
		-0.098016, -0.905332, 0.413240,
		32.012951, 40.706413, 52.632992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825920, 41.208736, 52.605740>,  <32.081562, 41.340145, 52.343723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825920, 41.208736, 52.605740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.644436, 40.853912, 52.571632>,  <32.535545, 40.641018, 52.551170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.644436, 40.853912, 52.571632>,  <32.825920, 41.208736, 52.605740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644436, 40.853912, 52.571632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847479, -0.399907, -0.349077,
		0.275555, -0.230639, 0.933207,
		-0.453706, -0.887063, -0.085265,
		32.508324, 40.587795, 52.546051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315273, 40.712399, 52.786049>,  <32.825920, 41.208736, 52.605740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315273, 40.712399, 52.786049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.042603, 40.485897, 52.600716>,  <32.879002, 40.349998, 52.489517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.042603, 40.485897, 52.600716>,  <33.315273, 40.712399, 52.786049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042603, 40.485897, 52.600716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714181, -0.377404, -0.589501,
		0.158943, -0.732752, 0.661674,
		-0.681676, -0.566252, -0.463331,
		32.838100, 40.316021, 52.461716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606323, 40.081875, 52.869911>,  <33.315273, 40.712399, 52.786049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606323, 40.081875, 52.869911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.331802, 40.035931, 52.582634>,  <33.167091, 40.008362, 52.410267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.331802, 40.035931, 52.582634>,  <33.606323, 40.081875, 52.869911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331802, 40.035931, 52.582634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600188, -0.647184, -0.470029,
		-0.410812, -0.753630, 0.513103,
		-0.686300, -0.114865, -0.718191,
		33.125912, 40.001472, 52.367176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550346, 39.365295, 52.711296>,  <33.606323, 40.081875, 52.869911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550346, 39.365295, 52.711296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.402168, 39.546284, 52.386818>,  <33.313259, 39.654877, 52.192131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.402168, 39.546284, 52.386818>,  <33.550346, 39.365295, 52.711296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402168, 39.546284, 52.386818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640059, -0.508535, -0.575948,
		-0.673121, -0.732572, -0.101223,
		-0.370448, 0.452472, -0.811195,
		33.291035, 39.682026, 52.143459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346325, 38.806438, 52.237553>,  <33.550346, 39.365295, 52.711296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346325, 38.806438, 52.237553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.409145, 39.161274, 52.063927>,  <33.446838, 39.374176, 51.959751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.409145, 39.161274, 52.063927>,  <33.346325, 38.806438, 52.237553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409145, 39.161274, 52.063927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726751, -0.401414, -0.557404,
		-0.668705, -0.227913, -0.707735,
		0.157055, 0.887086, -0.434064,
		33.456261, 39.427399, 51.933708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369293, 38.559498, 51.527145>,  <33.346325, 38.806438, 52.237553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369293, 38.559498, 51.527145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.509815, 38.933495, 51.546619>,  <33.594128, 39.157894, 51.558304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.509815, 38.933495, 51.546619>,  <33.369293, 38.559498, 51.527145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509815, 38.933495, 51.546619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626325, -0.196045, -0.754508,
		-0.695917, 0.295554, -0.654482,
		0.351306, 0.934994, 0.048682,
		33.615208, 39.213993, 51.561222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352905, 38.897800, 50.829948>,  <33.369293, 38.559498, 51.527145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352905, 38.897800, 50.829948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625069, 39.105881, 51.036419>,  <33.788368, 39.230728, 51.160301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625069, 39.105881, 51.036419>,  <33.352905, 38.897800, 50.829948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625069, 39.105881, 51.036419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656007, -0.118399, -0.745410,
		-0.326645, 0.845799, -0.421813,
		0.680409, 0.520197, 0.516176,
		33.829193, 39.261940, 51.191273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731323, 39.234459, 50.264786>,  <33.352905, 38.897800, 50.829948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731323, 39.234459, 50.264786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.945210, 39.266300, 50.601295>,  <34.073540, 39.285404, 50.803204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.945210, 39.266300, 50.601295>,  <33.731323, 39.234459, 50.264786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945210, 39.266300, 50.601295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845033, -0.048643, -0.532497,
		-0.001465, 0.995639, -0.093275,
		0.534712, 0.079600, 0.841277,
		34.105621, 39.290180, 50.853680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263405, 39.624359, 50.149269>,  <33.731323, 39.234459, 50.264786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263405, 39.624359, 50.149269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.407581, 39.409023, 50.453972>,  <34.494087, 39.279823, 50.636795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.407581, 39.409023, 50.453972>,  <34.263405, 39.624359, 50.149269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407581, 39.409023, 50.453972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856878, -0.131594, -0.498440,
		0.368572, 0.832392, 0.413858,
		0.360437, -0.538337, 0.761760,
		34.515713, 39.247520, 50.682499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873573, 39.937366, 50.188839>,  <34.263405, 39.624359, 50.149269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873573, 39.937366, 50.188839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.894505, 39.595219, 50.394981>,  <34.907063, 39.389931, 50.518669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.894505, 39.595219, 50.394981>,  <34.873573, 39.937366, 50.188839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894505, 39.595219, 50.394981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878037, -0.206431, -0.431783,
		0.475723, 0.475101, 0.740248,
		0.052330, -0.855374, 0.515361,
		34.910202, 39.338608, 50.549591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519459, 39.957638, 50.394657>,  <34.873573, 39.937366, 50.188839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519459, 39.957638, 50.394657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.426128, 39.569237, 50.415531>,  <35.370132, 39.336197, 50.428055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.426128, 39.569237, 50.415531>,  <35.519459, 39.957638, 50.394657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426128, 39.569237, 50.415531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776452, -0.218343, -0.591142,
		0.585391, -0.097410, 0.804878,
		-0.233323, -0.970998, 0.052182,
		35.356133, 39.277939, 50.431187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072105, 39.472710, 50.580166>,  <35.519459, 39.957638, 50.394657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072105, 39.472710, 50.580166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.824696, 39.211933, 50.404713>,  <35.676250, 39.055466, 50.299442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.824696, 39.211933, 50.404713>,  <36.072105, 39.472710, 50.580166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824696, 39.211933, 50.404713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671975, -0.149533, -0.725321,
		0.407277, -0.743379, 0.530578,
		-0.618527, -0.651941, -0.438631,
		35.639137, 39.016350, 50.273125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505173, 38.979904, 50.255905>,  <36.072105, 39.472710, 50.580166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505173, 38.979904, 50.255905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.148613, 38.886765, 50.100376>,  <35.934677, 38.830883, 50.007057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.148613, 38.886765, 50.100376>,  <36.505173, 38.979904, 50.255905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148613, 38.886765, 50.100376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453047, -0.480801, -0.750718,
		-0.012144, -0.845348, 0.534078,
		-0.891404, -0.232846, -0.388821,
		35.881191, 38.816910, 49.983730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542759, 38.295490, 50.139393>,  <36.505173, 38.979904, 50.255905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542759, 38.295490, 50.139393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.252228, 38.420918, 49.894730>,  <36.077908, 38.496174, 49.747932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.252228, 38.420918, 49.894730>,  <36.542759, 38.295490, 50.139393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252228, 38.420918, 49.894730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543364, -0.283049, -0.790341,
		-0.420956, -0.906398, 0.035203,
		-0.726327, 0.313571, -0.611655,
		36.034328, 38.514988, 49.711231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551548, 37.837532, 49.595715>,  <36.542759, 38.295490, 50.139393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551548, 37.837532, 49.595715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339378, 38.134983, 49.432907>,  <36.212078, 38.313454, 49.335224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339378, 38.134983, 49.432907>,  <36.551548, 37.837532, 49.595715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339378, 38.134983, 49.432907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381795, -0.219125, -0.897896,
		-0.756890, -0.631664, -0.167684,
		-0.530425, 0.743629, -0.407020,
		36.180252, 38.358070, 49.310802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153389, 37.457066, 49.177113>,  <36.551548, 37.837532, 49.595715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153389, 37.457066, 49.177113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.158035, 37.832970, 49.040459>,  <36.160824, 38.058514, 48.958466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.158035, 37.832970, 49.040459>,  <36.153389, 37.457066, 49.177113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158035, 37.832970, 49.040459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350281, -0.323834, -0.878882,
		-0.936573, -0.109458, -0.332942,
		0.011617, 0.939761, -0.341635,
		36.161522, 38.114899, 48.937969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686432, 37.543098, 48.576008>,  <36.153389, 37.457066, 49.177113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686432, 37.543098, 48.576008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.960194, 37.833561, 48.549812>,  <36.124451, 38.007839, 48.534096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.960194, 37.833561, 48.549812>,  <35.686432, 37.543098, 48.576008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960194, 37.833561, 48.549812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222018, -0.293124, -0.929939,
		-0.694481, 0.621910, -0.361834,
		0.684401, 0.726158, -0.065493,
		36.165512, 38.051407, 48.530163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521046, 37.919193, 47.991688>,  <35.686432, 37.543098, 48.576008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521046, 37.919193, 47.991688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.917606, 37.954342, 48.030457>,  <36.155544, 37.975430, 48.053719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.917606, 37.954342, 48.030457>,  <35.521046, 37.919193, 47.991688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917606, 37.954342, 48.030457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116850, -0.261640, -0.958066,
		-0.058829, 0.961157, -0.269659,
		0.991406, 0.087872, 0.096919,
		36.215027, 37.980705, 48.059532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760307, 38.335289, 47.398117>,  <35.521046, 37.919193, 47.991688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760307, 38.335289, 47.398117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.063496, 38.101051, 47.513054>,  <36.245407, 37.960510, 47.582016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.063496, 38.101051, 47.513054>,  <35.760307, 38.335289, 47.398117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063496, 38.101051, 47.513054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358049, 0.005297, -0.933688,
		0.545239, 0.810588, 0.213686,
		0.757968, -0.585593, 0.287342,
		36.290886, 37.925373, 47.599258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683052, 38.836777, 46.682564>,  <35.760307, 38.335289, 47.398117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683052, 38.836777, 46.682564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.443447, 38.690327, 46.397709>,  <35.299683, 38.602459, 46.226795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.443447, 38.690327, 46.397709>,  <35.683052, 38.836777, 46.682564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443447, 38.690327, 46.397709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784761, 0.445198, 0.431217,
		0.159163, 0.817161, -0.553998,
		-0.599013, -0.366123, -0.712136,
		35.263744, 38.580490, 46.184067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281353, 39.422058, 46.336651>,  <35.683052, 38.836777, 46.682564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281353, 39.422058, 46.336651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.071133, 39.083748, 46.299862>,  <34.945000, 38.880764, 46.277790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.071133, 39.083748, 46.299862>,  <35.281353, 39.422058, 46.336651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071133, 39.083748, 46.299862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807856, 0.462231, 0.365665,
		-0.266759, 0.266476, -0.926191,
		-0.525555, -0.845774, -0.091970,
		34.913467, 38.830017, 46.272270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676430, 39.643623, 46.002686>,  <35.281353, 39.422058, 46.336651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676430, 39.643623, 46.002686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.592712, 39.294640, 46.179329>,  <34.542480, 39.085251, 46.285313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.592712, 39.294640, 46.179329>,  <34.676430, 39.643623, 46.002686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592712, 39.294640, 46.179329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913055, 0.336021, 0.231127,
		-0.350037, -0.354838, -0.866928,
		-0.209294, -0.872456, 0.441606,
		34.529922, 39.032902, 46.311810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980698, 39.686558, 45.935234>,  <34.676430, 39.643623, 46.002686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980698, 39.686558, 45.935234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.024052, 39.370232, 46.176186>,  <34.050064, 39.180435, 46.320759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.024052, 39.370232, 46.176186>,  <33.980698, 39.686558, 45.935234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024052, 39.370232, 46.176186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948359, 0.099460, 0.301202,
		-0.298108, -0.603919, -0.739198,
		0.108381, -0.790816, 0.602382,
		34.056564, 39.132988, 46.356899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508293, 39.204861, 45.801701>,  <33.980698, 39.686558, 45.935234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508293, 39.204861, 45.801701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.631428, 39.125687, 46.173950>,  <33.705307, 39.078182, 46.397301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.631428, 39.125687, 46.173950>,  <33.508293, 39.204861, 45.801701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631428, 39.125687, 46.173950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949297, 0.001719, 0.314377,
		-0.063832, -0.980210, -0.187386,
		0.307834, -0.197952, 0.930620,
		33.723778, 39.066307, 46.453136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845055, 38.843945, 46.127262>,  <33.508293, 39.204861, 45.801701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845055, 38.843945, 46.127262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.074154, 38.958260, 46.434582>,  <33.211613, 39.026848, 46.618973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.074154, 38.958260, 46.434582>,  <32.845055, 38.843945, 46.127262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074154, 38.958260, 46.434582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811174, 0.062499, 0.581455,
		0.118159, -0.956250, 0.267626,
		0.572743, 0.285796, 0.768301,
		33.245975, 39.043995, 46.665073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611801, 38.440151, 46.642792>,  <32.845055, 38.843945, 46.127262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611801, 38.440151, 46.642792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.827797, 38.734608, 46.806011>,  <32.957394, 38.911282, 46.903942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.827797, 38.734608, 46.806011>,  <32.611801, 38.440151, 46.642792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827797, 38.734608, 46.806011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687342, 0.105887, 0.718574,
		0.485767, -0.668492, 0.563160,
		0.539993, 0.736143, 0.408046,
		32.989796, 38.955452, 46.928425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517178, 38.293953, 47.354721>,  <32.611801, 38.440151, 46.642792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517178, 38.293953, 47.354721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.647381, 38.671799, 47.338001>,  <32.725502, 38.898506, 47.327969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.647381, 38.671799, 47.338001>,  <32.517178, 38.293953, 47.354721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647381, 38.671799, 47.338001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599595, 0.240398, 0.763344,
		0.731115, -0.223414, 0.644638,
		0.325511, 0.944613, -0.041801,
		32.745033, 38.955181, 47.325462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665657, 38.511097, 48.097328>,  <32.517178, 38.293953, 47.354721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665657, 38.511097, 48.097328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.584469, 38.831394, 47.871902>,  <32.535755, 39.023575, 47.736645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.584469, 38.831394, 47.871902>,  <32.665657, 38.511097, 48.097328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584469, 38.831394, 47.871902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686671, 0.293911, 0.664906,
		0.698060, 0.521939, 0.490196,
		-0.202967, 0.800747, -0.563568,
		32.523579, 39.071617, 47.702831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657135, 39.000904, 48.588593>,  <32.665657, 38.511097, 48.097328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657135, 39.000904, 48.588593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.485580, 39.181503, 48.275620>,  <32.382648, 39.289864, 48.087837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.485580, 39.181503, 48.275620>,  <32.657135, 39.000904, 48.588593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485580, 39.181503, 48.275620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643569, 0.455103, 0.615385,
		0.633935, 0.767482, 0.095384,
		-0.428887, 0.451501, -0.782434,
		32.356915, 39.316952, 48.040890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554466, 39.705891, 48.834408>,  <32.657135, 39.000904, 48.588593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554466, 39.705891, 48.834408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.282120, 39.644474, 48.547955>,  <32.118710, 39.607624, 48.376083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.282120, 39.644474, 48.547955>,  <32.554466, 39.705891, 48.834408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282120, 39.644474, 48.547955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675574, 0.509302, 0.533114,
		0.282873, 0.846780, -0.450496,
		-0.680869, -0.153540, -0.716131,
		32.077858, 39.598412, 48.333115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221600, 40.349022, 48.705162>,  <32.554466, 39.705891, 48.834408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221600, 40.349022, 48.705162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.961792, 40.066204, 48.593288>,  <31.805908, 39.896515, 48.526165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.961792, 40.066204, 48.593288>,  <32.221600, 40.349022, 48.705162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961792, 40.066204, 48.593288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739003, 0.500472, 0.451001,
		-0.178901, 0.499621, -0.847569,
		-0.649515, -0.707040, -0.279686,
		31.766937, 39.854092, 48.509384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689743, 40.685917, 48.549702>,  <32.221600, 40.349022, 48.705162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689743, 40.685917, 48.549702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.523724, 40.325848, 48.602509>,  <31.424112, 40.109806, 48.634193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.523724, 40.325848, 48.602509>,  <31.689743, 40.685917, 48.549702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523724, 40.325848, 48.602509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780336, 0.426825, 0.457052,
		-0.467771, 0.086683, -0.879589,
		-0.415049, -0.900170, 0.132014,
		31.399208, 40.055798, 48.642113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921585, 40.707947, 48.421852>,  <31.689743, 40.685917, 48.549702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921585, 40.707947, 48.421852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.973265, 40.388645, 48.657173>,  <31.004272, 40.197063, 48.798367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.973265, 40.388645, 48.657173>,  <30.921585, 40.707947, 48.421852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973265, 40.388645, 48.657173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714652, 0.336333, 0.613313,
		-0.687445, -0.499667, -0.527022,
		0.129197, -0.798256, 0.588299,
		31.012024, 40.149170, 48.833664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214830, 40.536617, 48.752682>,  <30.921585, 40.707947, 48.421852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214830, 40.536617, 48.752682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.440884, 40.318745, 49.000534>,  <30.576515, 40.188023, 49.149246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.440884, 40.318745, 49.000534>,  <30.214830, 40.536617, 48.752682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440884, 40.318745, 49.000534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561097, 0.296849, 0.772690,
		-0.604808, -0.784348, -0.137861,
		0.565134, -0.544683, 0.619632,
		30.610424, 40.155338, 49.186424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807718, 40.064434, 49.113136>,  <30.214830, 40.536617, 48.752682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807718, 40.064434, 49.113136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.126644, 40.102421, 49.351555>,  <30.317999, 40.125214, 49.494606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.126644, 40.102421, 49.351555>,  <29.807718, 40.064434, 49.113136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126644, 40.102421, 49.351555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603566, 0.125338, 0.787400,
		0.000070, -0.987558, 0.157252,
		0.797313, 0.094967, 0.596048,
		30.365837, 40.130913, 49.530369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453869, 40.059891, 49.690140>,  <29.807718, 40.064434, 49.113136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453869, 40.059891, 49.690140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.820866, 40.154587, 49.817993>,  <30.041063, 40.211403, 49.894703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.820866, 40.154587, 49.817993>,  <29.453869, 40.059891, 49.690140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820866, 40.154587, 49.817993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388863, 0.364919, 0.845943,
		0.083625, -0.900439, 0.426869,
		0.917493, 0.236736, 0.319631,
		30.096113, 40.225609, 49.913883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500879, 39.747704, 50.328068>,  <29.453869, 40.059891, 49.690140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500879, 39.747704, 50.328068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.768021, 40.045280, 50.318928>,  <29.928305, 40.223827, 50.313446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.768021, 40.045280, 50.318928>,  <29.500879, 39.747704, 50.328068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768021, 40.045280, 50.318928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239013, 0.243436, 0.940007,
		0.704874, -0.622325, 0.340391,
		0.667852, 0.743943, -0.022848,
		29.968376, 40.268463, 50.312073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911461, 39.648853, 50.983593>,  <29.500879, 39.747704, 50.328068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911461, 39.648853, 50.983593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.966900, 40.023441, 50.854713>,  <30.000164, 40.248196, 50.777386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.966900, 40.023441, 50.854713>,  <29.911461, 39.648853, 50.983593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966900, 40.023441, 50.854713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329566, 0.350412, 0.876697,
		0.933904, -0.015323, 0.357195,
		0.138599, 0.936470, -0.322201,
		30.008480, 40.304382, 50.758053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237488, 40.041729, 51.544300>,  <29.911461, 39.648853, 50.983593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237488, 40.041729, 51.544300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.063303, 40.315456, 51.310349>,  <29.958792, 40.479691, 51.169975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.063303, 40.315456, 51.310349>,  <30.237488, 40.041729, 51.544300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063303, 40.315456, 51.310349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320969, 0.488990, 0.811090,
		0.841043, 0.540927, 0.006708,
		-0.435460, 0.684315, -0.584882,
		29.932665, 40.520752, 51.134884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376619, 40.631439, 51.850262>,  <30.237488, 40.041729, 51.544300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376619, 40.631439, 51.850262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.059151, 40.713669, 51.621239>,  <29.868670, 40.763008, 51.483826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.059151, 40.713669, 51.621239>,  <30.376619, 40.631439, 51.850262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059151, 40.713669, 51.621239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491792, 0.337182, 0.802776,
		0.358088, 0.918720, -0.166511,
		-0.793671, 0.205576, -0.572560,
		29.821049, 40.775341, 51.449471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167150, 41.293430, 52.054764>,  <30.376619, 40.631439, 51.850262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167150, 41.293430, 52.054764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.833212, 41.179577, 51.866291>,  <29.632849, 41.111263, 51.753208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.833212, 41.179577, 51.866291>,  <30.167150, 41.293430, 52.054764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833212, 41.179577, 51.866291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549373, 0.376480, 0.745957,
		-0.034937, 0.881614, -0.470675,
		-0.834846, -0.284638, -0.471182,
		29.582758, 41.094185, 51.724937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755192, 41.827675, 51.967720>,  <30.167150, 41.293430, 52.054764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755192, 41.827675, 51.967720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.506100, 41.515167, 51.950638>,  <29.356646, 41.327663, 51.940388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.506100, 41.515167, 51.950638>,  <29.755192, 41.827675, 51.967720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506100, 41.515167, 51.950638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479965, 0.338319, 0.809428,
		-0.617935, 0.524552, -0.585663,
		-0.622728, -0.781272, -0.042707,
		29.319281, 41.280785, 51.937824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127621, 42.053596, 52.118851>,  <29.755192, 41.827675, 51.967720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127621, 42.053596, 52.118851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.072407, 41.660622, 52.169064>,  <29.039278, 41.424835, 52.199192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.072407, 41.660622, 52.169064>,  <29.127621, 42.053596, 52.118851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072407, 41.660622, 52.169064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544042, 0.181120, 0.819276,
		-0.827626, 0.044798, -0.559490,
		-0.138037, -0.982440, 0.125528,
		29.030996, 41.365891, 52.206722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361742, 41.865421, 52.089596>,  <29.127621, 42.053596, 52.118851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361742, 41.865421, 52.089596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.533783, 41.566952, 52.292866>,  <28.637007, 41.387871, 52.414825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.533783, 41.566952, 52.292866>,  <28.361742, 41.865421, 52.089596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533783, 41.566952, 52.292866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583709, 0.199560, 0.787058,
		-0.688692, -0.635139, -0.349717,
		0.430102, -0.746173, 0.508172,
		28.662813, 41.343102, 52.445316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852407, 41.611145, 52.470024>,  <28.361742, 41.865421, 52.089596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852407, 41.611145, 52.470024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.172388, 41.469841, 52.664047>,  <28.364376, 41.385059, 52.780460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.172388, 41.469841, 52.664047>,  <27.852407, 41.611145, 52.470024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172388, 41.469841, 52.664047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519109, -0.001915, 0.854706,
		-0.301008, -0.935522, -0.184914,
		0.799950, -0.353264, 0.485061,
		28.412373, 41.363861, 52.809566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485296, 41.359730, 53.014702>,  <27.852407, 41.611145, 52.470024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485296, 41.359730, 53.014702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.864119, 41.287968, 53.121208>,  <28.091412, 41.244911, 53.185112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.864119, 41.287968, 53.121208>,  <27.485296, 41.359730, 53.014702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864119, 41.287968, 53.121208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266724, 0.022004, 0.963522,
		-0.178721, -0.983529, -0.027013,
		0.947057, -0.179407, 0.266263,
		28.148235, 41.234146, 53.201088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610962, 40.732433, 53.458244>,  <27.485296, 41.359730, 53.014702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610962, 40.732433, 53.458244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.896664, 41.002522, 53.531910>,  <28.068085, 41.164574, 53.576111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.896664, 41.002522, 53.531910>,  <27.610962, 40.732433, 53.458244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896664, 41.002522, 53.531910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235881, -0.015505, 0.971658,
		0.658938, -0.737454, 0.148197,
		0.714255, 0.675219, 0.184168,
		28.110941, 41.205086, 53.587162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918411, 40.473904, 53.990528>,  <27.610962, 40.732433, 53.458244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918411, 40.473904, 53.990528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.024401, 40.859596, 53.993073>,  <28.087994, 41.091011, 53.994598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.024401, 40.859596, 53.993073>,  <27.918411, 40.473904, 53.990528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024401, 40.859596, 53.993073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116722, 0.025524, 0.992837,
		0.957165, -0.263818, 0.119311,
		0.264974, 0.964235, 0.006363,
		28.103893, 41.148865, 53.994980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354532, 40.496223, 54.509880>,  <27.918411, 40.473904, 53.990528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354532, 40.496223, 54.509880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.256704, 40.881344, 54.463917>,  <28.198008, 41.112415, 54.436337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.256704, 40.881344, 54.463917>,  <28.354532, 40.496223, 54.509880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256704, 40.881344, 54.463917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142096, 0.081644, 0.986480,
		0.959164, 0.257590, 0.116843,
		-0.244568, 0.962799, -0.114913,
		28.183334, 41.170185, 54.429443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637651, 40.882679, 55.024166>,  <28.354532, 40.496223, 54.509880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637651, 40.882679, 55.024166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.319048, 41.097324, 54.912724>,  <28.127886, 41.226112, 54.845860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.319048, 41.097324, 54.912724>,  <28.637651, 40.882679, 55.024166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319048, 41.097324, 54.912724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287479, 0.069259, 0.955280,
		0.531913, 0.840981, 0.099100,
		-0.796508, 0.536615, -0.278604,
		28.080095, 41.258308, 54.829144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579994, 41.226204, 55.562912>,  <28.637651, 40.882679, 55.024166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579994, 41.226204, 55.562912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.243208, 41.320393, 55.368736>,  <28.041136, 41.376904, 55.252232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.243208, 41.320393, 55.368736>,  <28.579994, 41.226204, 55.562912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243208, 41.320393, 55.368736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475849, 0.099966, 0.873827,
		0.254286, 0.966727, 0.027880,
		-0.841966, 0.235469, -0.485436,
		27.990618, 41.391033, 55.223106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276636, 41.779678, 55.913403>,  <28.579994, 41.226204, 55.562912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276636, 41.779678, 55.913403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.967640, 41.595181, 55.738811>,  <27.782242, 41.484482, 55.634056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.967640, 41.595181, 55.738811>,  <28.276636, 41.779678, 55.913403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967640, 41.595181, 55.738811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517203, 0.058180, 0.853883,
		-0.368452, 0.885365, -0.283500,
		-0.772492, -0.461242, -0.436477,
		27.735893, 41.456806, 55.607868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688145, 42.255341, 55.815876>,  <28.276636, 41.779678, 55.913403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688145, 42.255341, 55.815876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.534990, 41.886238, 55.798389>,  <27.443098, 41.664776, 55.787899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.534990, 41.886238, 55.798389>,  <27.688145, 42.255341, 55.815876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534990, 41.886238, 55.798389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597471, 0.211268, 0.773559,
		-0.704574, 0.322304, -0.632215,
		-0.382888, -0.922760, -0.043713,
		27.420124, 41.609409, 55.785275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998253, 42.329769, 55.799252>,  <27.688145, 42.255341, 55.815876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998253, 42.329769, 55.799252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.021479, 41.953278, 55.932354>,  <27.035414, 41.727383, 56.012215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.021479, 41.953278, 55.932354>,  <26.998253, 42.329769, 55.799252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.021479, 41.953278, 55.932354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534419, 0.252231, 0.806707,
		-0.843223, -0.224670, -0.488363,
		0.058063, -0.941224, 0.332755,
		27.038897, 41.670910, 56.032181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362169, 42.071877, 55.971539>,  <26.998253, 42.329769, 55.799252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362169, 42.071877, 55.971539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.582100, 41.810513, 56.179668>,  <26.714058, 41.653694, 56.304546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.582100, 41.810513, 56.179668>,  <26.362169, 42.071877, 55.971539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582100, 41.810513, 56.179668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588947, 0.138468, 0.796221,
		-0.592311, -0.744228, -0.308693,
		0.549826, -0.653415, 0.520327,
		26.747047, 41.614487, 56.335766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854280, 41.714725, 56.380177>,  <26.362169, 42.071877, 55.971539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854280, 41.714725, 56.380177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.199808, 41.639385, 56.567085>,  <26.407124, 41.594181, 56.679230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.199808, 41.639385, 56.567085>,  <25.854280, 41.714725, 56.380177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199808, 41.639385, 56.567085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483267, -0.047654, 0.874175,
		-0.142385, -0.980945, -0.132188,
		0.863817, -0.188351, 0.467273,
		26.458954, 41.582882, 56.707268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.723478, 41.065777, 56.800610>,  <25.854280, 41.714725, 56.380177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.723478, 41.065777, 56.800610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.053228, 41.238201, 56.947361>,  <26.251078, 41.341656, 57.035412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.053228, 41.238201, 56.947361>,  <25.723478, 41.065777, 56.800610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053228, 41.238201, 56.947361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315370, -0.188454, 0.930068,
		0.470053, -0.882425, -0.019413,
		0.824373, 0.431059, 0.366874,
		26.300541, 41.367519, 57.057423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035439, 40.630016, 57.239349>,  <25.723478, 41.065777, 56.800610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035439, 40.630016, 57.239349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.094133, 41.011597, 57.343994>,  <26.129351, 41.240547, 57.406780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.094133, 41.011597, 57.343994>,  <26.035439, 40.630016, 57.239349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.094133, 41.011597, 57.343994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472315, -0.164808, 0.865885,
		0.869130, -0.250622, 0.426383,
		0.146739, 0.953953, 0.261612,
		26.138155, 41.297783, 57.422478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.522301, 40.122974, 57.265636>,  <26.035439, 40.630016, 57.239349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.522301, 40.122974, 57.265636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.216957, 39.864735, 57.274418>,  <25.033751, 39.709789, 57.279686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.216957, 39.864735, 57.274418>,  <25.522301, 40.122974, 57.265636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216957, 39.864735, 57.274418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484227, -0.549402, 0.680942,
		-0.427556, 0.530434, 0.732008,
		-0.763361, -0.645599, 0.021951,
		24.987949, 39.671055, 57.281002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865208, 39.510979, 57.052128>,  <25.522301, 40.122974, 57.265636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865208, 39.510979, 57.052128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.638367, 39.189503, 56.980042>,  <25.502262, 38.996616, 56.936790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.638367, 39.189503, 56.980042>,  <25.865208, 39.510979, 57.052128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.638367, 39.189503, 56.980042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772223, -0.442713, -0.455716,
		0.286467, -0.397608, 0.871690,
		-0.567105, -0.803687, -0.180220,
		25.468235, 38.948395, 56.925976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.118662, 38.995197, 57.467651>,  <25.865208, 39.510979, 57.052128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.118662, 38.995197, 57.467651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.934341, 38.833466, 57.151630>,  <25.823750, 38.736427, 56.962017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.934341, 38.833466, 57.151630>,  <26.118662, 38.995197, 57.467651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.934341, 38.833466, 57.151630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885729, -0.265765, -0.380595,
		-0.056084, -0.875151, 0.480589,
		-0.460802, -0.404326, -0.790052,
		25.796101, 38.712166, 56.914616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.603313, 38.535759, 57.281872>,  <26.118662, 38.995197, 57.467651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.603313, 38.535759, 57.281872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.373690, 38.539349, 56.954365>,  <26.235916, 38.541504, 56.757862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.373690, 38.539349, 56.954365>,  <26.603313, 38.535759, 57.281872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373690, 38.539349, 56.954365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771594, -0.328731, -0.544591,
		-0.274042, -0.944381, 0.181784,
		-0.574059, 0.008977, -0.818765,
		26.201471, 38.542042, 56.708736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789461, 37.892010, 56.937626>,  <26.603313, 38.535759, 57.281872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789461, 37.892010, 56.937626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.627819, 38.150391, 56.678566>,  <26.530834, 38.305420, 56.523129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.627819, 38.150391, 56.678566>,  <26.789461, 37.892010, 56.937626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627819, 38.150391, 56.678566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782322, -0.122832, -0.610643,
		-0.473997, -0.753433, -0.455704,
		-0.404104, 0.645950, -0.647649,
		26.506588, 38.344177, 56.484272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542385, 37.607414, 56.320766>,  <26.789461, 37.892010, 56.937626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542385, 37.607414, 56.320766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.618296, 37.985207, 56.213474>,  <26.663843, 38.211880, 56.149101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.618296, 37.985207, 56.213474>,  <26.542385, 37.607414, 56.320766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618296, 37.985207, 56.213474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679808, -0.323517, -0.658178,
		-0.708410, -0.057435, -0.703460,
		0.189779, 0.944478, -0.268227,
		26.675230, 38.268551, 56.133007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706587, 37.551548, 55.641758>,  <26.542385, 37.607414, 56.320766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706587, 37.551548, 55.641758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.814951, 37.927296, 55.725845>,  <26.879969, 38.152744, 55.776299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.814951, 37.927296, 55.725845>,  <26.706587, 37.551548, 55.641758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814951, 37.927296, 55.725845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699047, -0.041852, -0.713850,
		-0.661771, 0.340341, -0.668002,
		0.270910, 0.939370, 0.210218,
		26.896223, 38.209106, 55.788910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752995, 37.855175, 54.908474>,  <26.706587, 37.551548, 55.641758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752995, 37.855175, 54.908474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.976612, 38.076626, 55.155361>,  <27.110783, 38.209496, 55.303493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.976612, 38.076626, 55.155361>,  <26.752995, 37.855175, 54.908474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976612, 38.076626, 55.155361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717162, 0.050720, -0.695058,
		-0.416111, 0.831217, -0.368688,
		0.559044, 0.553630, 0.617222,
		27.144325, 38.242714, 55.340527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025600, 38.438496, 54.443741>,  <26.752995, 37.855175, 54.908474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025600, 38.438496, 54.443741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.258190, 38.399899, 54.766869>,  <27.397745, 38.376740, 54.960747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.258190, 38.399899, 54.766869>,  <27.025600, 38.438496, 54.443741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258190, 38.399899, 54.766869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786996, 0.318395, -0.528453,
		-0.206212, 0.943034, 0.261082,
		0.581476, -0.096497, 0.807820,
		27.432632, 38.370949, 55.009216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582006, 39.063774, 54.328075>,  <27.025600, 38.438496, 54.443741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582006, 39.063774, 54.328075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.754856, 38.833714, 54.605915>,  <27.858566, 38.695679, 54.772621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.754856, 38.833714, 54.605915>,  <27.582006, 39.063774, 54.328075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754856, 38.833714, 54.605915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835222, -0.035234, -0.548782,
		0.340105, 0.817290, 0.465152,
		0.432125, -0.575149, 0.694602,
		27.884493, 38.661167, 54.814297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190638, 39.461369, 54.698517>,  <27.582006, 39.063774, 54.328075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190638, 39.461369, 54.698517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.207611, 39.061729, 54.699112>,  <28.217794, 38.821945, 54.699467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.207611, 39.061729, 54.699112>,  <28.190638, 39.461369, 54.698517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207611, 39.061729, 54.699112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828184, 0.034342, -0.559403,
		0.558848, 0.024967, 0.828894,
		0.042432, -0.999098, 0.001485,
		28.220341, 38.762001, 54.699558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893860, 39.374645, 54.747467>,  <28.190638, 39.461369, 54.698517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893860, 39.374645, 54.747467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.730062, 39.044266, 54.592487>,  <28.631784, 38.846039, 54.499500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.730062, 39.044266, 54.592487>,  <28.893860, 39.374645, 54.747467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730062, 39.044266, 54.592487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763437, -0.077718, -0.641190,
		0.499481, -0.558356, 0.662388,
		-0.409492, -0.825953, -0.387451,
		28.607216, 38.796478, 54.476254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433132, 38.996078, 54.479248>,  <28.893860, 39.374645, 54.747467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433132, 38.996078, 54.479248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.133511, 38.776142, 54.331413>,  <28.953737, 38.644180, 54.242714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.133511, 38.776142, 54.331413>,  <29.433132, 38.996078, 54.479248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133511, 38.776142, 54.331413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604015, -0.337592, -0.721940,
		0.272180, -0.764009, 0.584986,
		-0.749055, -0.549838, -0.369587,
		28.908794, 38.611191, 54.220535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615768, 38.219009, 54.415230>,  <29.433132, 38.996078, 54.479248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615768, 38.219009, 54.415230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.329046, 38.276276, 54.142262>,  <29.157013, 38.310635, 53.978481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.329046, 38.276276, 54.142262>,  <29.615768, 38.219009, 54.415230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329046, 38.276276, 54.142262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566845, -0.450290, -0.689873,
		-0.406050, -0.881330, 0.241620,
		-0.716805, 0.143162, -0.682418,
		29.114006, 38.319225, 53.937534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642515, 37.618496, 54.064335>,  <29.615768, 38.219009, 54.415230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642515, 37.618496, 54.064335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.461349, 37.885509, 53.827942>,  <29.352650, 38.045719, 53.686108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.461349, 37.885509, 53.827942>,  <29.642515, 37.618496, 54.064335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461349, 37.885509, 53.827942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597064, -0.265173, -0.757098,
		-0.662104, -0.695756, -0.278462,
		-0.452915, 0.667537, -0.590984,
		29.325476, 38.085770, 53.650646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527758, 37.246628, 53.436337>,  <29.642515, 37.618496, 54.064335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527758, 37.246628, 53.436337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.527899, 37.633915, 53.336288>,  <29.527983, 37.866287, 53.276260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.527899, 37.633915, 53.336288>,  <29.527758, 37.246628, 53.436337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527899, 37.633915, 53.336288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588999, -0.202330, -0.782395,
		-0.808134, -0.147043, -0.570349,
		0.000353, 0.968215, -0.250117,
		29.528006, 37.924381, 53.261253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215839, 37.221382, 52.821697>,  <29.527758, 37.246628, 53.436337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215839, 37.221382, 52.821697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.430784, 37.558197, 52.840530>,  <29.559752, 37.760284, 52.851830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.430784, 37.558197, 52.840530>,  <29.215839, 37.221382, 52.821697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430784, 37.558197, 52.840530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363477, -0.180854, -0.913880,
		-0.761005, 0.508198, -0.403245,
		0.537360, 0.842037, 0.047087,
		29.591991, 37.810810, 52.854656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987400, 37.659512, 52.293167>,  <29.215839, 37.221382, 52.821697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987400, 37.659512, 52.293167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.357132, 37.784794, 52.380360>,  <29.578972, 37.859962, 52.432674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.357132, 37.784794, 52.380360>,  <28.987400, 37.659512, 52.293167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357132, 37.784794, 52.380360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301576, -0.249587, -0.920195,
		-0.233802, 0.916302, -0.325156,
		0.924331, 0.313203, 0.217981,
		29.634432, 37.878754, 52.445755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162600, 37.999557, 51.728527>,  <28.987400, 37.659512, 52.293167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162600, 37.999557, 51.728527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.521379, 37.945580, 51.896942>,  <29.736647, 37.913193, 51.997990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.521379, 37.945580, 51.896942>,  <29.162600, 37.999557, 51.728527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521379, 37.945580, 51.896942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380358, -0.249996, -0.890410,
		0.225415, 0.958797, -0.172906,
		0.896948, -0.134946, 0.421039,
		29.790464, 37.905094, 52.023254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688282, 38.375809, 51.414696>,  <29.162600, 37.999557, 51.728527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688282, 38.375809, 51.414696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.897861, 38.076477, 51.577415>,  <30.023609, 37.896877, 51.675045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.897861, 38.076477, 51.577415>,  <29.688282, 38.375809, 51.414696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897861, 38.076477, 51.577415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404595, -0.201614, -0.891995,
		0.749521, 0.631947, 0.197135,
		0.523948, -0.748328, 0.406797,
		30.055046, 37.851978, 51.699455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369318, 38.664742, 51.280148>,  <29.688282, 38.375809, 51.414696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369318, 38.664742, 51.280148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.427446, 38.275421, 51.351208>,  <30.462322, 38.041828, 51.393845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.427446, 38.275421, 51.351208>,  <30.369318, 38.664742, 51.280148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427446, 38.275421, 51.351208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590234, -0.058824, -0.805086,
		0.794044, 0.221851, 0.565930,
		0.145319, -0.973305, 0.177653,
		30.471043, 37.983429, 51.404503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045559, 38.405304, 51.197834>,  <30.369318, 38.664742, 51.280148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045559, 38.405304, 51.197834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.935329, 38.020954, 51.209026>,  <30.869192, 37.790344, 51.215740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.935329, 38.020954, 51.209026>,  <31.045559, 38.405304, 51.197834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935329, 38.020954, 51.209026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623127, -0.200724, -0.755925,
		0.731964, -0.190876, 0.654060,
		-0.275573, -0.960873, 0.027982,
		30.852657, 37.732693, 51.217422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699911, 37.952206, 51.143738>,  <31.045559, 38.405304, 51.197834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699911, 37.952206, 51.143738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.369267, 37.758064, 51.029793>,  <31.170879, 37.641579, 50.961426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.369267, 37.758064, 51.029793>,  <31.699911, 37.952206, 51.143738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369267, 37.758064, 51.029793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436984, -0.234588, -0.868339,
		0.354623, -0.842260, 0.406004,
		-0.826611, -0.485351, -0.284864,
		31.121283, 37.612457, 50.944332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928253, 37.441395, 50.672440>,  <31.699911, 37.952206, 51.143738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928253, 37.441395, 50.672440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.540052, 37.424637, 50.577465>,  <31.307133, 37.414581, 50.520481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.540052, 37.424637, 50.577465>,  <31.928253, 37.441395, 50.672440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540052, 37.424637, 50.577465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241089, -0.179236, -0.953808,
		-0.002595, -0.982914, 0.184049,
		-0.970500, -0.041897, -0.237435,
		31.248903, 37.412067, 50.506233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890463, 36.848965, 50.170052>,  <31.928253, 37.441395, 50.672440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890463, 36.848965, 50.170052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.552950, 37.053707, 50.105511>,  <31.350441, 37.176552, 50.066788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.552950, 37.053707, 50.105511>,  <31.890463, 36.848965, 50.170052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552950, 37.053707, 50.105511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006255, -0.291242, -0.956629,
		-0.536646, -0.808197, 0.242544,
		-0.843784, 0.511854, -0.161349,
		31.299814, 37.207264, 50.057106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404274, 36.475937, 49.723255>,  <31.890463, 36.848965, 50.170052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404274, 36.475937, 49.723255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.247503, 36.843346, 49.702419>,  <31.153440, 37.063789, 49.689919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.247503, 36.843346, 49.702419>,  <31.404274, 36.475937, 49.723255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247503, 36.843346, 49.702419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278731, -0.172507, -0.944749,
		-0.876756, -0.355755, 0.323631,
		-0.391928, 0.918521, -0.052087,
		31.129925, 37.118900, 49.686794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616848, 36.492973, 49.642990>,  <31.404274, 36.475937, 49.723255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616848, 36.492973, 49.642990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.781103, 36.827900, 49.498615>,  <30.879656, 37.028858, 49.411991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.781103, 36.827900, 49.498615>,  <30.616848, 36.492973, 49.642990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781103, 36.827900, 49.498615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358256, -0.215846, -0.908330,
		-0.838468, 0.502302, 0.211340,
		0.410639, 0.837319, -0.360932,
		30.904295, 37.079094, 49.390335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129641, 36.688187, 49.167812>,  <30.616848, 36.492973, 49.642990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129641, 36.688187, 49.167812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.458170, 36.884338, 49.051228>,  <30.655289, 37.002029, 48.981277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.458170, 36.884338, 49.051228>,  <30.129641, 36.688187, 49.167812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458170, 36.884338, 49.051228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207561, -0.219016, -0.953389,
		-0.531359, 0.843539, -0.078100,
		0.821326, 0.490382, -0.291462,
		30.704567, 37.031452, 48.963791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931625, 37.051083, 48.557217>,  <30.129641, 36.688187, 49.167812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931625, 37.051083, 48.557217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.330759, 37.038410, 48.534157>,  <30.570240, 37.030807, 48.520321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.330759, 37.038410, 48.534157>,  <29.931625, 37.051083, 48.557217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330759, 37.038410, 48.534157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065653, -0.424934, -0.902840,
		0.004104, 0.904670, -0.426093,
		0.997834, -0.031679, -0.057650,
		30.630110, 37.028908, 48.516861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295542, 37.465752, 47.906498>,  <29.931625, 37.051083, 48.557217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295542, 37.465752, 47.906498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.542006, 37.169872, 48.014713>,  <30.689884, 36.992344, 48.079643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.542006, 37.169872, 48.014713>,  <30.295542, 37.465752, 47.906498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542006, 37.169872, 48.014713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113166, -0.256779, -0.959822,
		0.779448, 0.622021, -0.074508,
		0.616161, -0.739699, 0.270538,
		30.726854, 36.947964, 48.095875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761173, 37.403141, 47.350552>,  <30.295542, 37.465752, 47.906498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761173, 37.403141, 47.350552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.819832, 37.067215, 47.559631>,  <30.855026, 36.865662, 47.685078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.819832, 37.067215, 47.559631>,  <30.761173, 37.403141, 47.350552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819832, 37.067215, 47.559631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041164, -0.522769, -0.851480,
		0.988332, 0.146383, -0.042093,
		0.146647, -0.839812, 0.522696,
		30.863827, 36.815269, 47.716438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253771, 36.988483, 46.971687>,  <30.761173, 37.403141, 47.350552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253771, 36.988483, 46.971687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.108313, 36.714142, 47.223835>,  <31.021038, 36.549538, 47.375126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.108313, 36.714142, 47.223835>,  <31.253771, 36.988483, 46.971687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108313, 36.714142, 47.223835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240388, -0.722874, -0.647817,
		0.899986, -0.084043, 0.427741,
		-0.363647, -0.685850, 0.630374,
		30.999218, 36.508389, 47.412949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863375, 36.508835, 47.153599>,  <31.253771, 36.988483, 46.971687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863375, 36.508835, 47.153599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.513741, 36.320995, 47.203320>,  <31.303959, 36.208294, 47.233154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.513741, 36.320995, 47.203320>,  <31.863375, 36.508835, 47.153599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513741, 36.320995, 47.203320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326319, -0.757182, -0.565854,
		0.359845, -0.454042, 0.815081,
		-0.874087, -0.469596, 0.124305,
		31.251514, 36.180115, 47.240612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105026, 35.799137, 47.296280>,  <31.863375, 36.508835, 47.153599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105026, 35.799137, 47.296280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.727228, 35.775841, 47.166950>,  <31.500549, 35.761864, 47.089352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.727228, 35.775841, 47.166950>,  <32.105026, 35.799137, 47.296280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727228, 35.775841, 47.166950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261846, -0.727831, -0.633797,
		-0.198410, -0.683279, 0.702683,
		-0.944495, -0.058243, -0.323323,
		31.443880, 35.758369, 47.069954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985065, 35.149536, 47.208485>,  <32.105026, 35.799137, 47.296280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985065, 35.149536, 47.208485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.672760, 35.302025, 47.010460>,  <31.485376, 35.393517, 46.891647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.672760, 35.302025, 47.010460>,  <31.985065, 35.149536, 47.208485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672760, 35.302025, 47.010460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119352, -0.686732, -0.717045,
		-0.613322, -0.618929, 0.490676,
		-0.780763, 0.381216, -0.495058,
		31.438532, 35.416389, 46.861942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520798, 34.572823, 47.113071>,  <31.985065, 35.149536, 47.208485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520798, 34.572823, 47.113071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.395912, 34.845184, 46.848076>,  <31.320980, 35.008602, 46.689079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.395912, 34.845184, 46.848076>,  <31.520798, 34.572823, 47.113071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395912, 34.845184, 46.848076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124483, -0.662010, -0.739086,
		-0.941821, -0.313221, 0.121927,
		-0.312214, 0.680908, -0.662485,
		31.302248, 35.049458, 46.649330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994057, 34.199741, 46.694172>,  <31.520798, 34.572823, 47.113071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994057, 34.199741, 46.694172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.138437, 34.498322, 46.470558>,  <31.225065, 34.677471, 46.336388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.138437, 34.498322, 46.470558>,  <30.994057, 34.199741, 46.694172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138437, 34.498322, 46.470558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246818, -0.654537, -0.714606,
		-0.899329, 0.119959, -0.420495,
		0.360953, 0.746452, -0.559036,
		31.246723, 34.722256, 46.302849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722269, 34.144379, 45.998890>,  <30.994057, 34.199741, 46.694172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722269, 34.144379, 45.998890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.076925, 34.329330, 45.995449>,  <31.289719, 34.440300, 45.993385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.076925, 34.329330, 45.995449>,  <30.722269, 34.144379, 45.998890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076925, 34.329330, 45.995449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298309, -0.586047, -0.753366,
		-0.353384, 0.665398, -0.657545,
		0.886641, 0.462379, -0.008606,
		31.342918, 34.468044, 45.992867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895350, 34.093800, 45.329060>,  <30.722269, 34.144379, 45.998890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895350, 34.093800, 45.329060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.238810, 34.198418, 45.505386>,  <31.444885, 34.261189, 45.611183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.238810, 34.198418, 45.505386>,  <30.895350, 34.093800, 45.329060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238810, 34.198418, 45.505386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507100, -0.558707, -0.656274,
		0.074644, 0.787047, -0.612361,
		0.858649, 0.261541, 0.440816,
		31.496405, 34.276878, 45.637630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385159, 33.916523, 44.828339>,  <30.895350, 34.093800, 45.329060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385159, 33.916523, 44.828339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.637888, 33.984310, 45.130882>,  <31.789526, 34.024982, 45.312408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.637888, 33.984310, 45.130882>,  <31.385159, 33.916523, 44.828339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637888, 33.984310, 45.130882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702302, -0.538071, -0.466103,
		0.327984, 0.825687, -0.458986,
		0.631822, 0.169473, 0.756360,
		31.827435, 34.035152, 45.357792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029148, 34.156666, 44.533291>,  <31.385159, 33.916523, 44.828339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029148, 34.156666, 44.533291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.128021, 34.000919, 44.888210>,  <32.187344, 33.907471, 45.101162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.128021, 34.000919, 44.888210>,  <32.029148, 34.156666, 44.533291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128021, 34.000919, 44.888210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816043, -0.410107, -0.407291,
		0.522471, 0.824748, 0.216366,
		0.247180, -0.389362, 0.887299,
		32.202175, 33.884109, 45.154400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637386, 34.377251, 44.682941>,  <32.029148, 34.156666, 44.533291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637386, 34.377251, 44.682941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.619976, 34.017685, 44.857323>,  <32.609531, 33.801945, 44.961952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.619976, 34.017685, 44.857323>,  <32.637386, 34.377251, 44.682941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619976, 34.017685, 44.857323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808383, -0.288097, -0.513340,
		0.587047, 0.330076, 0.739207,
		-0.043522, -0.898916, 0.435954,
		32.606918, 33.748009, 44.988110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275955, 34.232872, 44.999443>,  <32.637386, 34.377251, 44.682941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275955, 34.232872, 44.999443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.124184, 33.865967, 44.951012>,  <33.033119, 33.645824, 44.921951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.124184, 33.865967, 44.951012>,  <33.275955, 34.232872, 44.999443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124184, 33.865967, 44.951012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870933, -0.309928, -0.381339,
		0.312261, -0.250147, 0.916471,
		-0.379431, -0.917263, -0.121083,
		33.010353, 33.590790, 44.914688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405266, 33.656105, 45.464962>,  <33.275955, 34.232872, 44.999443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405266, 33.656105, 45.464962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.403877, 33.529339, 45.085583>,  <33.403046, 33.453278, 44.857956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.403877, 33.529339, 45.085583>,  <33.405266, 33.656105, 45.464962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403877, 33.529339, 45.085583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985022, -0.164593, 0.051394,
		-0.172396, -0.934063, 0.312741,
		-0.003470, -0.316917, -0.948447,
		33.402836, 33.434265, 44.801048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777512, 33.052139, 45.428936>,  <33.405266, 33.656105, 45.464962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777512, 33.052139, 45.428936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.782600, 33.258423, 45.086269>,  <33.785656, 33.382195, 44.880669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.782600, 33.258423, 45.086269>,  <33.777512, 33.052139, 45.428936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782600, 33.258423, 45.086269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993636, 0.089372, 0.068561,
		0.111920, -0.852088, -0.511292,
		0.012725, 0.515711, -0.856668,
		33.786419, 33.413136, 44.829269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325836, 32.812141, 45.000957>,  <33.777512, 33.052139, 45.428936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325836, 32.812141, 45.000957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.262215, 33.182781, 44.864658>,  <34.224041, 33.405167, 44.782879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.262215, 33.182781, 44.864658>,  <34.325836, 32.812141, 45.000957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262215, 33.182781, 44.864658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948733, 0.238943, 0.206909,
		0.273142, -0.290370, -0.917103,
		-0.159055, 0.926602, -0.340749,
		34.214497, 33.460762, 44.762432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814545, 33.016792, 44.475277>,  <34.325836, 32.812141, 45.000957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814545, 33.016792, 44.475277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.721977, 33.358879, 44.660774>,  <34.666439, 33.564129, 44.772072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.721977, 33.358879, 44.660774>,  <34.814545, 33.016792, 44.475277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721977, 33.358879, 44.660774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969606, 0.163826, 0.181729,
		0.079444, 0.491701, -0.867132,
		-0.231415, 0.855214, 0.463741,
		34.652554, 33.615444, 44.799896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247902, 33.474213, 44.163219>,  <34.814545, 33.016792, 44.475277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247902, 33.474213, 44.163219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.158703, 33.621368, 44.524311>,  <35.105183, 33.709663, 44.740967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.158703, 33.621368, 44.524311>,  <35.247902, 33.474213, 44.163219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158703, 33.621368, 44.524311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952066, 0.281104, 0.120628,
		-0.209384, 0.886361, -0.412943,
		-0.223000, 0.367891, 0.902733,
		35.091805, 33.731735, 44.795132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545563, 34.159424, 44.242043>,  <35.247902, 33.474213, 44.163219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545563, 34.159424, 44.242043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.470268, 34.050751, 44.619560>,  <35.425091, 33.985546, 44.846073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.470268, 34.050751, 44.619560>,  <35.545563, 34.159424, 44.242043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470268, 34.050751, 44.619560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879772, 0.380497, 0.284998,
		-0.436542, 0.883974, 0.167397,
		-0.188237, -0.271685, 0.943798,
		35.413795, 33.969246, 44.902699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635986, 34.794155, 44.520473>,  <35.545563, 34.159424, 44.242043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635986, 34.794155, 44.520473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.708942, 34.488678, 44.768185>,  <35.752716, 34.305389, 44.916809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.708942, 34.488678, 44.768185>,  <35.635986, 34.794155, 44.520473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708942, 34.488678, 44.768185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824850, 0.461640, 0.326360,
		-0.535122, 0.451284, 0.714134,
		0.182391, -0.763696, 0.619275,
		35.763660, 34.259571, 44.953968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880856, 35.172401, 44.979996>,  <35.635986, 34.794155, 44.520473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880856, 35.172401, 44.979996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.974861, 34.792206, 45.061317>,  <36.031265, 34.564087, 45.110111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.974861, 34.792206, 45.061317>,  <35.880856, 35.172401, 44.979996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974861, 34.792206, 45.061317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827706, 0.305355, 0.470809,
		-0.509582, 0.057635, 0.858490,
		0.235010, -0.950493, 0.203308,
		36.045364, 34.507057, 45.122311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934216, 35.168205, 45.635822>,  <35.880856, 35.172401, 44.979996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934216, 35.168205, 45.635822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130783, 34.837334, 45.526810>,  <36.248726, 34.638809, 45.461403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130783, 34.837334, 45.526810>,  <35.934216, 35.168205, 45.635822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130783, 34.837334, 45.526810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797324, 0.301400, 0.522908,
		-0.350398, -0.474267, 0.807647,
		0.491423, -0.827181, -0.272534,
		36.278210, 34.589180, 45.445049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128872, 34.786350, 46.289070>,  <35.934216, 35.168205, 45.635822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128872, 34.786350, 46.289070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.369770, 34.693233, 45.983624>,  <36.514309, 34.637363, 45.800358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.369770, 34.693233, 45.983624>,  <36.128872, 34.786350, 46.289070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369770, 34.693233, 45.983624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786575, 0.336453, 0.517784,
		0.136382, -0.912472, 0.385739,
		0.602246, -0.232796, -0.763614,
		36.550446, 34.623394, 45.754539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654076, 34.492535, 46.610508>,  <36.128872, 34.786350, 46.289070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654076, 34.492535, 46.610508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.781990, 34.610603, 46.250370>,  <36.858738, 34.681442, 46.034286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.781990, 34.610603, 46.250370>,  <36.654076, 34.492535, 46.610508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781990, 34.610603, 46.250370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795807, 0.432044, 0.424298,
		0.514227, -0.852181, -0.096738,
		0.319784, 0.295170, -0.900340,
		36.877926, 34.699154, 45.980267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345303, 34.387318, 46.756618>,  <36.654076, 34.492535, 46.610508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345303, 34.387318, 46.756618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.327648, 34.590309, 46.412407>,  <37.317055, 34.712105, 46.205879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.327648, 34.590309, 46.412407>,  <37.345303, 34.387318, 46.756618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327648, 34.590309, 46.412407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828814, 0.499529, 0.252071,
		0.557781, -0.702095, -0.442654,
		-0.044141, 0.507478, -0.860533,
		37.314407, 34.742554, 46.154247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008606, 34.215084, 46.397526>,  <37.345303, 34.387318, 46.756618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008606, 34.215084, 46.397526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.890434, 34.564041, 46.241756>,  <37.819530, 34.773415, 46.148296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.890434, 34.564041, 46.241756>,  <38.008606, 34.215084, 46.397526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890434, 34.564041, 46.241756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883662, 0.404456, 0.235705,
		0.363132, -0.274485, -0.890389,
		-0.295425, 0.872395, -0.389423,
		37.801807, 34.825760, 46.124931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548706, 34.388508, 45.889698>,  <38.008606, 34.215084, 46.397526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548706, 34.388508, 45.889698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366196, 34.727768, 45.997368>,  <38.256687, 34.931324, 46.061970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366196, 34.727768, 45.997368>,  <38.548706, 34.388508, 45.889698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366196, 34.727768, 45.997368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889770, 0.438584, 0.126305,
		-0.010931, 0.297135, -0.954773,
		-0.456278, 0.848148, 0.269176,
		38.229313, 34.982212, 46.078121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930851, 34.894592, 45.549553>,  <38.548706, 34.388508, 45.889698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930851, 34.894592, 45.549553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.735699, 35.109314, 45.824890>,  <38.618607, 35.238148, 45.990093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.735699, 35.109314, 45.824890>,  <38.930851, 34.894592, 45.549553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735699, 35.109314, 45.824890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828898, 0.532133, 0.172519,
		-0.273683, 0.654737, -0.704569,
		-0.487879, 0.536800, 0.688346,
		38.589336, 35.270355, 46.031395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226547, 35.599514, 45.503609>,  <38.930851, 34.894592, 45.549553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226547, 35.599514, 45.503609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.056461, 35.599060, 45.865646>,  <38.954411, 35.598789, 46.082867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.056461, 35.599060, 45.865646>,  <39.226547, 35.599514, 45.503609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056461, 35.599060, 45.865646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689311, 0.647650, 0.324653,
		-0.586550, 0.761937, -0.274611,
		-0.425217, -0.001133, 0.905091,
		38.928898, 35.598721, 46.137173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996487, 35.734940, 45.730736>,  <39.226547, 35.599514, 45.503609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996487, 35.734940, 45.730736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.984791, 35.658646, 45.338253>,  <39.977776, 35.612869, 45.102764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.984791, 35.658646, 45.338253>,  <39.996487, 35.734940, 45.730736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984791, 35.658646, 45.338253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067954, 0.979733, -0.188428,
		0.997260, 0.061168, -0.041605,
		-0.029236, -0.190739, -0.981206,
		39.976021, 35.601425, 45.043892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648720, 35.911160, 45.351265>,  <39.996487, 35.734940, 45.730736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648720, 35.911160, 45.351265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.327068, 35.928032, 45.114086>,  <40.134075, 35.938156, 44.971779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.327068, 35.928032, 45.114086>,  <40.648720, 35.911160, 45.351265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327068, 35.928032, 45.114086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131537, 0.985378, -0.108295,
		0.579713, -0.165078, -0.797923,
		-0.804133, 0.042176, -0.592951,
		40.085827, 35.940685, 44.936199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014118, 36.229954, 44.865658>,  <40.648720, 35.911160, 45.351265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014118, 36.229954, 44.865658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.618816, 36.289627, 44.852364>,  <40.381638, 36.325432, 44.844387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.618816, 36.289627, 44.852364>,  <41.014118, 36.229954, 44.865658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618816, 36.289627, 44.852364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150528, 0.912351, -0.380733,
		-0.026471, -0.381263, -0.924087,
		-0.988251, 0.149180, -0.033240,
		40.322342, 36.334381, 44.842392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711063, 35.944221, 44.702320>,  <41.014118, 36.229954, 44.865658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711063, 35.944221, 44.702320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.027332, 35.749214, 44.554180>,  <42.217094, 35.632210, 44.465298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.027332, 35.749214, 44.554180>,  <41.711063, 35.944221, 44.702320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027332, 35.749214, 44.554180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609771, -0.681338, -0.404917,
		-0.054927, 0.545985, -0.835993,
		0.790672, -0.487523, -0.370350,
		42.264534, 35.602959, 44.443077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682438, 35.856071, 43.960155>,  <41.711063, 35.944221, 44.702320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682438, 35.856071, 43.960155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.867321, 35.553608, 44.145447>,  <41.978252, 35.372128, 44.256622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.867321, 35.553608, 44.145447>,  <41.682438, 35.856071, 43.960155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867321, 35.553608, 44.145447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694131, -0.633599, -0.341663,
		0.551853, -0.163620, -0.817733,
		0.462212, -0.756162, 0.463227,
		42.005985, 35.326759, 44.284416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392136, 36.262432, 43.404617>,  <41.682438, 35.856071, 43.960155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392136, 36.262432, 43.404617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.550758, 36.063499, 43.095970>,  <41.645931, 35.944141, 42.910782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.550758, 36.063499, 43.095970>,  <41.392136, 36.262432, 43.404617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550758, 36.063499, 43.095970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045808, -0.828772, 0.557708,
		-0.916865, -0.256511, -0.305876,
		0.396560, -0.497332, -0.771623,
		41.669727, 35.914299, 42.864483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992455, 35.636002, 43.206627>,  <41.392136, 36.262432, 43.404617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992455, 35.636002, 43.206627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.364185, 35.570660, 43.074165>,  <41.587223, 35.531456, 42.994690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.364185, 35.570660, 43.074165>,  <40.992455, 35.636002, 43.206627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364185, 35.570660, 43.074165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048426, -0.835153, 0.547882,
		-0.366059, -0.525200, -0.768223,
		0.929330, -0.163355, -0.331149,
		41.642986, 35.521652, 42.974819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978527, 34.914013, 42.969654>,  <40.992455, 35.636002, 43.206627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978527, 34.914013, 42.969654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.345016, 35.034523, 43.075314>,  <41.564911, 35.106827, 43.138710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.345016, 35.034523, 43.075314>,  <40.978527, 34.914013, 42.969654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345016, 35.034523, 43.075314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144092, -0.862910, 0.484379,
		0.373868, -0.405736, -0.834027,
		0.916221, 0.301271, 0.264151,
		41.619884, 35.124905, 43.154560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599529, 34.518734, 42.649761>,  <40.978527, 34.914013, 42.969654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599529, 34.518734, 42.649761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.642242, 34.661377, 43.021015>,  <41.667870, 34.746964, 43.243767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.642242, 34.661377, 43.021015>,  <41.599529, 34.518734, 42.649761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642242, 34.661377, 43.021015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247912, -0.913538, 0.322473,
		0.962879, 0.195659, -0.185959,
		0.106786, 0.356604, 0.928133,
		41.674278, 34.768356, 43.299454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269543, 34.768967, 42.740303>,  <41.599529, 34.518734, 42.649761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269543, 34.768967, 42.740303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.634846, 34.716022, 42.586189>,  <42.854027, 34.684254, 42.493721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.634846, 34.716022, 42.586189>,  <42.269543, 34.768967, 42.740303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634846, 34.716022, 42.586189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257812, 0.544501, -0.798155,
		0.315436, 0.828250, 0.463143,
		0.913254, -0.132363, -0.385288,
		42.908821, 34.676315, 42.470604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599876, 35.445751, 42.566486>,  <42.269543, 34.768967, 42.740303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599876, 35.445751, 42.566486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.690292, 35.123466, 42.347496>,  <42.744541, 34.930096, 42.216103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.690292, 35.123466, 42.347496>,  <42.599876, 35.445751, 42.566486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690292, 35.123466, 42.347496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403131, 0.434267, -0.805542,
		0.886788, 0.402789, -0.226647,
		0.226038, -0.805713, -0.547480,
		42.758102, 34.881752, 42.183250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852806, 35.629475, 41.851891>,  <42.599876, 35.445751, 42.566486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852806, 35.629475, 41.851891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.706120, 35.257812, 41.833149>,  <42.618107, 35.034817, 41.821903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.706120, 35.257812, 41.833149>,  <42.852806, 35.629475, 41.851891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706120, 35.257812, 41.833149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582483, 0.268584, -0.767187,
		0.725418, -0.254049, -0.639709,
		-0.366719, -0.929151, -0.046857,
		42.596104, 34.979069, 41.819092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036400, 35.283680, 41.268860>,  <42.852806, 35.629475, 41.851891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036400, 35.283680, 41.268860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.672157, 35.135830, 41.342800>,  <42.453609, 35.047119, 41.387165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.672157, 35.135830, 41.342800>,  <43.036400, 35.283680, 41.268860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672157, 35.135830, 41.342800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252375, 0.143171, -0.956979,
		0.327262, -0.918083, -0.223658,
		-0.910608, -0.369629, 0.184847,
		42.398975, 35.024940, 41.398254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937645, 34.714745, 40.840557>,  <43.036400, 35.283680, 41.268860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937645, 34.714745, 40.840557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.615669, 34.925236, 40.950214>,  <42.422482, 35.051529, 41.016010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.615669, 34.925236, 40.950214>,  <42.937645, 34.714745, 40.840557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615669, 34.925236, 40.950214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150379, 0.266014, -0.952168,
		-0.573979, -0.807666, -0.134993,
		-0.804944, 0.526224, 0.274142,
		42.374187, 35.083103, 41.032455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392101, 34.545517, 40.343124>,  <42.937645, 34.714745, 40.840557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392101, 34.545517, 40.343124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.241253, 34.881874, 40.498390>,  <42.150742, 35.083691, 40.591549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.241253, 34.881874, 40.498390>,  <42.392101, 34.545517, 40.343124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241253, 34.881874, 40.498390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026525, 0.428743, -0.903037,
		-0.925782, -0.330262, -0.183994,
		-0.377125, 0.840896, 0.388162,
		42.128117, 35.134144, 40.614838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904015, 34.717346, 39.777576>,  <42.392101, 34.545517, 40.343124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904015, 34.717346, 39.777576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.024410, 35.015972, 40.014912>,  <42.096649, 35.195148, 40.157310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.024410, 35.015972, 40.014912>,  <41.904015, 34.717346, 39.777576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024410, 35.015972, 40.014912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105223, 0.644388, -0.757425,
		-0.947805, 0.165544, 0.272509,
		0.300989, 0.746565, 0.593335,
		42.114708, 35.239941, 40.192913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478264, 35.348461, 39.810349>,  <41.904015, 34.717346, 39.777576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478264, 35.348461, 39.810349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.871803, 35.411926, 39.843517>,  <42.107925, 35.450005, 39.863419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.871803, 35.411926, 39.843517>,  <41.478264, 35.348461, 39.810349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871803, 35.411926, 39.843517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054571, 0.706942, -0.705163,
		-0.170503, 0.689246, 0.704179,
		0.983845, 0.158660, 0.082922,
		42.166958, 35.459526, 39.868393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577343, 36.047832, 39.960224>,  <41.478264, 35.348461, 39.810349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577343, 36.047832, 39.960224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.879253, 35.876564, 39.761433>,  <42.060398, 35.773804, 39.642159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.879253, 35.876564, 39.761433>,  <41.577343, 36.047832, 39.960224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879253, 35.876564, 39.761433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065010, 0.802699, -0.592831,
		0.652757, 0.415144, 0.633690,
		0.754773, -0.428171, -0.496979,
		42.105686, 35.748112, 39.612339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161850, 36.557392, 39.848145>,  <41.577343, 36.047832, 39.960224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161850, 36.557392, 39.848145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.102047, 36.276688, 39.569527>,  <42.066166, 36.108265, 39.402355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.102047, 36.276688, 39.569527>,  <42.161850, 36.557392, 39.848145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102047, 36.276688, 39.569527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079970, 0.693573, -0.715933,
		0.985521, -0.162741, -0.047576,
		-0.149509, -0.701763, -0.696546,
		42.057194, 36.066158, 39.360561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785034, 36.418449, 39.337013>,  <42.161850, 36.557392, 39.848145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785034, 36.418449, 39.337013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.412369, 36.402466, 39.192570>,  <42.188770, 36.392876, 39.105904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.412369, 36.402466, 39.192570>,  <42.785034, 36.418449, 39.337013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412369, 36.402466, 39.192570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248231, 0.655738, -0.713014,
		0.265286, -0.753930, -0.601010,
		-0.931668, -0.039963, -0.361107,
		42.132870, 36.390476, 39.084236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922638, 36.600792, 38.707996>,  <42.785034, 36.418449, 39.337013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922638, 36.600792, 38.707996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.527073, 36.648705, 38.743084>,  <42.289734, 36.677452, 38.764137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.527073, 36.648705, 38.743084>,  <42.922638, 36.600792, 38.707996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527073, 36.648705, 38.743084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036377, 0.768305, -0.639050,
		-0.143943, -0.628776, -0.764147,
		-0.988917, 0.119784, 0.087719,
		42.230396, 36.684639, 38.769402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582531, 36.671883, 38.013855>,  <42.922638, 36.600792, 38.707996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582531, 36.671883, 38.013855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.369217, 36.872074, 38.286655>,  <42.241226, 36.992191, 38.450336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.369217, 36.872074, 38.286655>,  <42.582531, 36.671883, 38.013855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369217, 36.872074, 38.286655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017723, 0.799421, -0.600509,
		-0.845749, -0.332331, -0.417451,
		-0.533287, 0.500482, 0.681999,
		42.209232, 37.022217, 38.491257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928425, 36.167786, 37.688374>,  <42.582531, 36.671883, 38.013855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928425, 36.167786, 37.688374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.787193, 36.513397, 37.544823>,  <42.702454, 36.720764, 37.458694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.787193, 36.513397, 37.544823>,  <42.928425, 36.167786, 37.688374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787193, 36.513397, 37.544823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505663, -0.146495, -0.850202,
		-0.787171, -0.481660, -0.385182,
		-0.353081, 0.864027, -0.358874,
		42.681271, 36.772606, 37.437160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787727, 36.163815, 36.962231>,  <42.928425, 36.167786, 37.688374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787727, 36.163815, 36.962231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.845963, 36.550110, 37.048168>,  <42.880905, 36.781887, 37.099731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.845963, 36.550110, 37.048168>,  <42.787727, 36.163815, 36.962231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845963, 36.550110, 37.048168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680189, 0.059988, -0.730578,
		-0.718434, 0.252498, -0.648149,
		0.145589, 0.965736, 0.214844,
		42.889641, 36.839832, 37.112621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698395, 36.832600, 36.484688>,  <42.787727, 36.163815, 36.962231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698395, 36.832600, 36.484688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.988094, 36.887833, 36.754917>,  <43.161915, 36.920971, 36.917053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.988094, 36.887833, 36.754917>,  <42.698395, 36.832600, 36.484688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.988094, 36.887833, 36.754917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684968, -0.256675, -0.681863,
		0.079250, 0.956583, -0.280477,
		0.724251, 0.138080, 0.675570,
		43.205368, 36.929256, 36.957588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124844, 37.223331, 36.151772>,  <42.698395, 36.832600, 36.484688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124844, 37.223331, 36.151772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.292145, 36.992065, 36.431999>,  <43.392525, 36.853306, 36.600136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.292145, 36.992065, 36.431999>,  <43.124844, 37.223331, 36.151772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292145, 36.992065, 36.431999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629411, -0.371613, -0.682455,
		0.654910, 0.726382, 0.208474,
		0.418251, -0.578163, 0.700567,
		43.417622, 36.818615, 36.642170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.844788, 37.379356, 36.166386>,  <43.124844, 37.223331, 36.151772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.844788, 37.379356, 36.166386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.765488, 37.005276, 36.283760>,  <43.717907, 36.780827, 36.354183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.765488, 37.005276, 36.283760>,  <43.844788, 37.379356, 36.166386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765488, 37.005276, 36.283760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783192, -0.331149, -0.526261,
		0.589329, 0.125488, 0.798088,
		-0.198246, -0.935197, 0.293437,
		43.706013, 36.724716, 36.371792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.405025, 37.106987, 36.564404>,  <43.844788, 37.379356, 36.166386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.405025, 37.106987, 36.564404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.202576, 36.800274, 36.406479>,  <44.081104, 36.616245, 36.311722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.202576, 36.800274, 36.406479>,  <44.405025, 37.106987, 36.564404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202576, 36.800274, 36.406479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856169, -0.391511, -0.337185,
		0.103973, -0.508687, 0.854650,
		-0.506127, -0.766783, -0.394815,
		44.050739, 36.570240, 36.288033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.559330, 36.451878, 36.892376>,  <44.405025, 37.106987, 36.564404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.559330, 36.451878, 36.892376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.475136, 36.439777, 36.501526>,  <44.424618, 36.432518, 36.267014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.475136, 36.439777, 36.501526>,  <44.559330, 36.451878, 36.892376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475136, 36.439777, 36.501526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941705, -0.274622, -0.194357,
		-0.262461, -0.961076, 0.086294,
		-0.210490, -0.030253, -0.977127,
		44.411987, 36.430702, 36.208389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648552, 35.717140, 36.680950>,  <44.559330, 36.451878, 36.892376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648552, 35.717140, 36.680950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.701622, 35.980213, 36.384342>,  <44.733463, 36.138058, 36.206379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.701622, 35.980213, 36.384342>,  <44.648552, 35.717140, 36.680950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701622, 35.980213, 36.384342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853838, -0.455771, -0.251464,
		-0.503346, -0.599773, -0.622025,
		0.132679, 0.657682, -0.741520,
		44.741425, 36.177517, 36.161888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.622749, 35.504154, 35.964275>,  <44.648552, 35.717140, 36.680950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.622749, 35.504154, 35.964275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.872910, 35.803123, 36.053928>,  <45.023006, 35.982506, 36.107719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.872910, 35.803123, 36.053928>,  <44.622749, 35.504154, 35.964275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872910, 35.803123, 36.053928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778510, -0.617134, -0.114315,
		0.052879, 0.245984, -0.967831,
		0.625401, 0.747421, 0.224134,
		45.060532, 36.027351, 36.121170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005966, 35.691071, 35.430534>,  <44.622749, 35.504154, 35.964275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005966, 35.691071, 35.430534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.203396, 35.766747, 35.770084>,  <45.321854, 35.812153, 35.973816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.203396, 35.766747, 35.770084>,  <45.005966, 35.691071, 35.430534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203396, 35.766747, 35.770084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665075, -0.711045, -0.228233,
		0.560412, 0.677217, -0.476776,
		0.493573, 0.189187, 0.848878,
		45.351467, 35.823502, 36.024746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.660271, 36.019604, 35.333752>,  <45.005966, 35.691071, 35.430534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.660271, 36.019604, 35.333752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.646832, 35.791348, 35.661957>,  <45.638767, 35.654392, 35.858879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.646832, 35.791348, 35.661957>,  <45.660271, 36.019604, 35.333752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.646832, 35.791348, 35.661957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843602, -0.456416, -0.282879,
		0.535917, 0.682681, 0.496729,
		-0.033599, -0.570641, 0.820512,
		45.636753, 35.620155, 35.908112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.224052, 36.097084, 35.936214>,  <45.660271, 36.019604, 35.333752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.224052, 36.097084, 35.936214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.034828, 35.755119, 35.851036>,  <45.921295, 35.549942, 35.799931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.034828, 35.755119, 35.851036>,  <46.224052, 36.097084, 35.936214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.034828, 35.755119, 35.851036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879811, -0.445683, -0.165224,
		0.046347, -0.265511, 0.962993,
		-0.473058, -0.854910, -0.212943,
		45.892910, 35.498646, 35.787151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.643753, 35.517487, 36.344391>,  <46.224052, 36.097084, 35.936214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.643753, 35.517487, 36.344391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.399422, 35.351921, 36.074406>,  <46.252823, 35.252583, 35.912415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.399422, 35.351921, 36.074406>,  <46.643753, 35.517487, 36.344391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.399422, 35.351921, 36.074406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644445, -0.755157, -0.120120,
		-0.459982, -0.508347, 0.728011,
		-0.610825, -0.413910, -0.674960,
		46.216175, 35.227749, 35.871918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.398308, 34.829693, 36.555813>,  <46.643753, 35.517487, 36.344391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.398308, 34.829693, 36.555813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.488247, 34.923306, 36.177464>,  <46.542210, 34.979473, 35.950455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.488247, 34.923306, 36.177464>,  <46.398308, 34.829693, 36.555813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.488247, 34.923306, 36.177464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775676, -0.630492, 0.028390,
		-0.589722, -0.740075, -0.323292,
		0.224844, 0.234027, -0.945873,
		46.555698, 34.993515, 35.893700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.395061, 34.156673, 36.098980>,  <46.398308, 34.829693, 36.555813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.395061, 34.156673, 36.098980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.641266, 34.470100, 36.065132>,  <46.788990, 34.658157, 36.044823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.641266, 34.470100, 36.065132>,  <46.395061, 34.156673, 36.098980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.641266, 34.470100, 36.065132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753965, -0.554162, 0.352763,
		0.229522, -0.280930, -0.931879,
		0.615513, 0.783571, -0.084619,
		46.825920, 34.705173, 36.039745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.740448, 34.115364, 35.474030>,  <46.395061, 34.156673, 36.098980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.740448, 34.115364, 35.474030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.908901, 34.268299, 35.803020>,  <47.009972, 34.360062, 36.000416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.908901, 34.268299, 35.803020>,  <46.740448, 34.115364, 35.474030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.908901, 34.268299, 35.803020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435014, -0.880847, 0.186737,
		0.795871, 0.279147, -0.537276,
		0.421131, 0.382341, 0.822474,
		47.035240, 34.383003, 36.049763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.571156, 33.990406, 35.571987>,  <46.740448, 34.115364, 35.474030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.571156, 33.990406, 35.571987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.348877, 33.998951, 35.904430>,  <47.215511, 34.004078, 36.103897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.348877, 33.998951, 35.904430>,  <47.571156, 33.990406, 35.571987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.348877, 33.998951, 35.904430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273079, -0.939515, 0.206735,
		0.785257, 0.341841, 0.516253,
		-0.555698, 0.021363, 0.831110,
		47.182167, 34.005360, 36.153763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.229107, 34.673019, 35.299343>,  <47.571156, 33.990406, 35.571987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.229107, 34.673019, 35.299343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.254848, 35.048714, 35.164467>,  <47.270294, 35.274132, 35.083542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.254848, 35.048714, 35.164467>,  <47.229107, 34.673019, 35.299343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.254848, 35.048714, 35.164467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934378, 0.061939, 0.350857,
		0.350422, -0.337640, -0.873615,
		0.064353, 0.939235, -0.337188,
		47.274155, 35.330482, 35.063309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.815609, 34.776371, 34.849949>,  <47.229107, 34.673019, 35.299343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.815609, 34.776371, 34.849949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.729752, 35.139046, 34.995190>,  <47.678238, 35.356651, 35.082336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.729752, 35.139046, 34.995190>,  <47.815609, 34.776371, 34.849949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.729752, 35.139046, 34.995190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916822, 0.058882, 0.394931,
		0.336698, 0.417672, -0.843910,
		-0.214643, 0.906688, 0.363105,
		47.665359, 35.411053, 35.104122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.195047, 32.962509, 54.211239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.416502, 33.259872, 54.361347>,  <31.549376, 33.438290, 54.451412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.416502, 33.259872, 54.361347>,  <31.195047, 32.962509, 54.211239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416502, 33.259872, 54.361347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600700, -0.044410, -0.798240,
		-0.576753, 0.667362, -0.471152,
		0.553639, 0.743408, 0.375271,
		31.582594, 33.482895, 54.473927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244890, 33.564034, 53.632736>,  <31.195047, 32.962509, 54.211239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244890, 33.564034, 53.632736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.570101, 33.596077, 53.863411>,  <31.765226, 33.615303, 54.001816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.570101, 33.596077, 53.863411>,  <31.244890, 33.564034, 53.632736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570101, 33.596077, 53.863411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577240, 0.018437, -0.816366,
		-0.076031, 0.996616, -0.031252,
		0.813027, 0.080109, 0.576688,
		31.814009, 33.620110, 54.036419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533569, 34.047607, 53.291733>,  <31.244890, 33.564034, 53.632736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533569, 34.047607, 53.291733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.824697, 33.869659, 53.500492>,  <31.999374, 33.762890, 53.625748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.824697, 33.869659, 53.500492>,  <31.533569, 34.047607, 53.291733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824697, 33.869659, 53.500492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578537, -0.010304, -0.815591,
		0.368206, 0.895538, 0.249872,
		0.727818, -0.444865, 0.521896,
		32.043041, 33.736198, 53.657063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189289, 34.373165, 53.015327>,  <31.533569, 34.047607, 53.291733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189289, 34.373165, 53.015327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.289650, 34.034920, 53.203789>,  <32.349865, 33.831974, 53.316864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.289650, 34.034920, 53.203789>,  <32.189289, 34.373165, 53.015327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289650, 34.034920, 53.203789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774771, -0.116371, -0.621440,
		0.580327, 0.520956, 0.625959,
		0.250900, -0.845614, 0.471155,
		32.364922, 33.781235, 53.345135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914013, 34.386932, 53.047867>,  <32.189289, 34.373165, 53.015327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914013, 34.386932, 53.047867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.804504, 34.005398, 53.097267>,  <32.738800, 33.776478, 53.126907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.804504, 34.005398, 53.097267>,  <32.914013, 34.386932, 53.047867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804504, 34.005398, 53.097267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636180, -0.275895, -0.720525,
		0.721334, -0.118689, 0.682342,
		-0.273773, -0.953832, 0.123505,
		32.722374, 33.719250, 53.134319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556633, 34.108471, 53.088055>,  <32.914013, 34.386932, 53.047867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556633, 34.108471, 53.088055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.314911, 33.796833, 53.021320>,  <33.169880, 33.609852, 52.981281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.314911, 33.796833, 53.021320>,  <33.556633, 34.108471, 53.088055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314911, 33.796833, 53.021320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616641, -0.324726, -0.717152,
		0.504553, -0.536253, 0.676653,
		-0.604302, -0.779093, -0.166834,
		33.133621, 33.563107, 52.971272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004921, 33.545952, 53.076729>,  <33.556633, 34.108471, 53.088055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004921, 33.545952, 53.076729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.667881, 33.466938, 52.876328>,  <33.465656, 33.419529, 52.756084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.667881, 33.466938, 52.876328>,  <34.004921, 33.545952, 53.076729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667881, 33.466938, 52.876328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537826, -0.260670, -0.801745,
		0.027779, -0.945003, 0.325881,
		-0.842598, -0.197538, -0.501006,
		33.415100, 33.407677, 52.726025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121586, 32.897057, 52.823505>,  <34.004921, 33.545952, 53.076729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121586, 32.897057, 52.823505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.826809, 33.029186, 52.587608>,  <33.649940, 33.108463, 52.446072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.826809, 33.029186, 52.587608>,  <34.121586, 32.897057, 52.823505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826809, 33.029186, 52.587608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448746, -0.413388, -0.792299,
		-0.505510, -0.848525, 0.156411,
		-0.736944, 0.330326, -0.589744,
		33.605724, 33.128284, 52.410686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131832, 32.417141, 52.324783>,  <34.121586, 32.897057, 52.823505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131832, 32.417141, 52.324783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.947498, 32.727356, 52.152191>,  <33.836899, 32.913486, 52.048634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.947498, 32.727356, 52.152191>,  <34.131832, 32.417141, 52.324783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947498, 32.727356, 52.152191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224315, -0.368617, -0.902111,
		-0.858672, -0.512508, -0.004094,
		-0.460830, 0.775536, -0.431485,
		33.809250, 32.960018, 52.022747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740677, 32.159061, 51.745956>,  <34.131832, 32.417141, 52.324783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740677, 32.159061, 51.745956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.791542, 32.549961, 51.678055>,  <33.822063, 32.784500, 51.637314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.791542, 32.549961, 51.678055>,  <33.740677, 32.159061, 51.745956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791542, 32.549961, 51.678055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269210, -0.198729, -0.942355,
		-0.954649, 0.074135, -0.288357,
		0.127167, 0.977247, -0.169758,
		33.829693, 32.843136, 51.627129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320564, 32.408070, 51.203617>,  <33.740677, 32.159061, 51.745956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320564, 32.408070, 51.203617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.610802, 32.682156, 51.228924>,  <33.784943, 32.846607, 51.244106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.610802, 32.682156, 51.228924>,  <33.320564, 32.408070, 51.203617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610802, 32.682156, 51.228924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160585, -0.079210, -0.983838,
		-0.669126, 0.724024, -0.167509,
		0.725591, 0.685211, 0.063266,
		33.828480, 32.887718, 51.247902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258450, 32.824596, 50.597576>,  <33.320564, 32.408070, 51.203617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258450, 32.824596, 50.597576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.630569, 32.902576, 50.721863>,  <33.853840, 32.949364, 50.796432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.630569, 32.902576, 50.721863>,  <33.258450, 32.824596, 50.597576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630569, 32.902576, 50.721863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286370, 0.143328, -0.947338,
		-0.229217, 0.970284, 0.077510,
		0.930297, 0.194950, 0.310713,
		33.909660, 32.961060, 50.815075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542713, 33.412949, 50.127716>,  <33.258450, 32.824596, 50.597576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542713, 33.412949, 50.127716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.862114, 33.248428, 50.303547>,  <34.053753, 33.149715, 50.409046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.862114, 33.248428, 50.303547>,  <33.542713, 33.412949, 50.127716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862114, 33.248428, 50.303547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459582, -0.055126, -0.886423,
		0.388820, 0.909831, 0.145009,
		0.798501, -0.411302, 0.439576,
		34.101665, 33.125038, 50.435421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087749, 33.774509, 49.896587>,  <33.542713, 33.412949, 50.127716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087749, 33.774509, 49.896587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.214134, 33.413475, 50.013550>,  <34.289967, 33.196854, 50.083729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.214134, 33.413475, 50.013550>,  <34.087749, 33.774509, 49.896587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214134, 33.413475, 50.013550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481966, -0.112777, -0.868901,
		0.817237, 0.415473, 0.399383,
		0.315964, -0.902587, 0.292410,
		34.308922, 33.142700, 50.101273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816223, 33.812679, 49.743580>,  <34.087749, 33.774509, 49.896587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816223, 33.812679, 49.743580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.732075, 33.422848, 49.774391>,  <34.681583, 33.188950, 49.792877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.732075, 33.422848, 49.774391>,  <34.816223, 33.812679, 49.743580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732075, 33.422848, 49.774391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471666, -0.170199, -0.865195,
		0.856314, -0.145683, 0.495483,
		-0.210375, -0.974581, 0.077030,
		34.668961, 33.130474, 49.797501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369202, 33.518551, 49.655693>,  <34.816223, 33.812679, 49.743580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369202, 33.518551, 49.655693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.103279, 33.236629, 49.556667>,  <34.943726, 33.067474, 49.497253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.103279, 33.236629, 49.556667>,  <35.369202, 33.518551, 49.655693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103279, 33.236629, 49.556667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485207, -0.155425, -0.860475,
		0.567990, -0.692165, 0.445303,
		-0.664802, -0.704806, -0.247563,
		34.903839, 33.025188, 49.482399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702229, 32.870743, 49.438675>,  <35.369202, 33.518551, 49.655693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702229, 32.870743, 49.438675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.349487, 32.790604, 49.267941>,  <35.137840, 32.742519, 49.165501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.349487, 32.790604, 49.267941>,  <35.702229, 32.870743, 49.438675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349487, 32.790604, 49.267941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460725, -0.173520, -0.870416,
		0.100318, -0.964237, 0.245324,
		-0.881855, -0.200345, -0.426840,
		35.084930, 32.730499, 49.139889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837330, 32.248894, 49.132694>,  <35.702229, 32.870743, 49.438675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837330, 32.248894, 49.132694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.506138, 32.382721, 48.952686>,  <35.307423, 32.463017, 48.844681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.506138, 32.382721, 48.952686>,  <35.837330, 32.248894, 49.132694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506138, 32.382721, 48.952686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325604, -0.366535, -0.871570,
		-0.456546, -0.868169, 0.194547,
		-0.827978, 0.334567, -0.450019,
		35.257744, 32.483089, 48.817680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653652, 31.786869, 48.559956>,  <35.837330, 32.248894, 49.132694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653652, 31.786869, 48.559956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.421326, 32.099743, 48.469765>,  <35.281929, 32.287468, 48.415649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.421326, 32.099743, 48.469765>,  <35.653652, 31.786869, 48.559956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421326, 32.099743, 48.469765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248339, -0.093520, -0.964148,
		-0.775226, -0.615991, -0.139928,
		-0.580820, 0.782183, -0.225474,
		35.247078, 32.334396, 48.402122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398403, 31.544176, 47.976009>,  <35.653652, 31.786869, 48.559956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398403, 31.544176, 47.976009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.333656, 31.938322, 47.954647>,  <35.294807, 32.174809, 47.941830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.333656, 31.938322, 47.954647>,  <35.398403, 31.544176, 47.976009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333656, 31.938322, 47.954647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508197, 0.036849, -0.860452,
		-0.845894, -0.166414, -0.506725,
		-0.161863, 0.985367, -0.053401,
		35.285099, 32.233932, 47.938625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079681, 31.680786, 47.269558>,  <35.398403, 31.544176, 47.976009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079681, 31.680786, 47.269558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.256012, 32.016682, 47.396374>,  <35.361809, 32.218220, 47.472462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.256012, 32.016682, 47.396374>,  <35.079681, 31.680786, 47.269558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256012, 32.016682, 47.396374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435749, 0.108585, -0.893494,
		-0.784728, 0.532021, -0.318049,
		0.440823, 0.839740, 0.317037,
		35.388260, 32.268604, 47.491486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992237, 32.201237, 46.759480>,  <35.079681, 31.680786, 47.269558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992237, 32.201237, 46.759480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.297112, 32.331306, 46.983383>,  <35.480038, 32.409348, 47.117725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.297112, 32.331306, 46.983383>,  <34.992237, 32.201237, 46.759480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297112, 32.331306, 46.983383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488467, 0.278558, -0.826925,
		-0.424818, 0.903698, 0.053479,
		0.762188, 0.325170, 0.559763,
		35.525768, 32.428856, 47.151314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475613, 31.759100, 46.525890>,  <34.992237, 32.201237, 46.759480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475613, 31.759100, 46.525890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.117477, 31.913710, 46.437374>,  <33.902596, 32.006474, 46.384266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.117477, 31.913710, 46.437374>,  <34.475613, 31.759100, 46.525890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117477, 31.913710, 46.437374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310735, -0.186158, 0.932088,
		0.319080, 0.903296, 0.286781,
		-0.895339, 0.386524, -0.221286,
		33.848877, 32.029667, 46.370987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292995, 32.095188, 47.141659>,  <34.475613, 31.759100, 46.525890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292995, 32.095188, 47.141659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.958870, 32.067314, 46.923519>,  <33.758396, 32.050591, 46.792637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.958870, 32.067314, 46.923519>,  <34.292995, 32.095188, 47.141659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958870, 32.067314, 46.923519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519337, -0.225484, 0.824285,
		-0.180410, 0.971751, 0.152157,
		-0.835309, -0.069689, -0.545346,
		33.708279, 32.046406, 46.759914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749283, 32.425873, 47.554615>,  <34.292995, 32.095188, 47.141659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749283, 32.425873, 47.554615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.564625, 32.185982, 47.293171>,  <33.453831, 32.042049, 47.136303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.564625, 32.185982, 47.293171>,  <33.749283, 32.425873, 47.554615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564625, 32.185982, 47.293171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569733, -0.364307, 0.736671,
		-0.679917, 0.712468, -0.173503,
		-0.461646, -0.599725, -0.653615,
		33.426132, 32.006065, 47.097088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035275, 32.579453, 47.503304>,  <33.749283, 32.425873, 47.554615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035275, 32.579453, 47.503304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.075829, 32.196312, 47.395786>,  <33.100159, 31.966429, 47.331276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.075829, 32.196312, 47.395786>,  <33.035275, 32.579453, 47.503304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075829, 32.196312, 47.395786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594726, -0.274946, 0.755451,
		-0.797510, 0.083269, -0.597532,
		0.101383, -0.957847, -0.268795,
		33.106243, 31.908958, 47.315147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398090, 32.418430, 47.708992>,  <33.035275, 32.579453, 47.503304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398090, 32.418430, 47.708992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.604469, 32.079533, 47.658432>,  <32.728298, 31.876194, 47.628098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.604469, 32.079533, 47.658432>,  <32.398090, 32.418430, 47.708992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604469, 32.079533, 47.658432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562896, -0.446552, 0.695514,
		-0.645712, -0.287701, -0.707308,
		0.515950, -0.847242, -0.126399,
		32.759254, 31.825359, 47.620514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937065, 31.976410, 47.551006>,  <32.398090, 32.418430, 47.708992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937065, 31.976410, 47.551006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.246498, 31.766708, 47.693401>,  <32.432159, 31.640888, 47.778839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.246498, 31.766708, 47.693401>,  <31.937065, 31.976410, 47.551006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246498, 31.766708, 47.693401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617738, -0.498593, 0.608116,
		-0.141313, -0.690336, -0.709554,
		0.773583, -0.524253, 0.355989,
		32.478573, 31.609432, 47.800198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594202, 31.295591, 47.596455>,  <31.937065, 31.976410, 47.551006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594202, 31.295591, 47.596455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.931143, 31.310329, 47.811520>,  <32.133308, 31.319172, 47.940559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.931143, 31.310329, 47.811520>,  <31.594202, 31.295591, 47.596455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931143, 31.310329, 47.811520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444885, -0.515535, 0.732326,
		0.304168, -0.856076, -0.417870,
		0.842353, 0.036846, 0.537665,
		32.183849, 31.321383, 47.972820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772451, 30.592888, 47.782993>,  <31.594202, 31.295591, 47.596455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772451, 30.592888, 47.782993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.953047, 30.830564, 48.049255>,  <32.061405, 30.973169, 48.209011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.953047, 30.830564, 48.049255>,  <31.772451, 30.592888, 47.782993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953047, 30.830564, 48.049255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481197, -0.466093, 0.742433,
		0.751403, -0.655511, 0.075486,
		0.451490, 0.594190, 0.665654,
		32.088493, 31.008821, 48.248951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815004, 30.165916, 48.349342>,  <31.772451, 30.592888, 47.782993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815004, 30.165916, 48.349342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.903370, 30.534393, 48.477467>,  <31.956388, 30.755480, 48.554340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.903370, 30.534393, 48.477467>,  <31.815004, 30.165916, 48.349342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903370, 30.534393, 48.477467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511609, -0.170154, 0.842202,
		0.830333, -0.349927, 0.433703,
		0.220913, 0.921195, 0.320310,
		31.969645, 30.810751, 48.573559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986639, 30.112740, 49.167694>,  <31.815004, 30.165916, 48.349342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986639, 30.112740, 49.167694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.881231, 30.494593, 49.112217>,  <31.817987, 30.723703, 49.078930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.881231, 30.494593, 49.112217>,  <31.986639, 30.112740, 49.167694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881231, 30.494593, 49.112217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551662, -0.031189, 0.833485,
		0.791345, 0.296153, 0.534853,
		-0.263520, 0.954632, -0.138695,
		31.802176, 30.780983, 49.070610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114700, 30.472942, 49.868477>,  <31.986639, 30.112740, 49.167694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114700, 30.472942, 49.868477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.852480, 30.684666, 49.653038>,  <31.695148, 30.811699, 49.523773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.852480, 30.684666, 49.653038>,  <32.114700, 30.472942, 49.868477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852480, 30.684666, 49.653038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627657, 0.014656, 0.778352,
		0.419882, 0.848303, 0.322616,
		-0.655551, 0.529308, -0.538597,
		31.655815, 30.843458, 49.491459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004116, 31.078148, 50.259567>,  <32.114700, 30.472942, 49.868477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004116, 31.078148, 50.259567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.690372, 31.045027, 50.013668>,  <31.502125, 31.025154, 49.866127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.690372, 31.045027, 50.013668>,  <32.004116, 31.078148, 50.259567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690372, 31.045027, 50.013668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620296, 0.109443, 0.776695,
		0.002969, 0.990539, -0.137204,
		-0.784362, -0.082801, -0.614752,
		31.455063, 31.020187, 49.829243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713617, 31.711227, 50.250874>,  <32.004116, 31.078148, 50.259567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713617, 31.711227, 50.250874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.431519, 31.456406, 50.126431>,  <31.262259, 31.303513, 50.051765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.431519, 31.456406, 50.126431>,  <31.713617, 31.711227, 50.250874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431519, 31.456406, 50.126431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650137, 0.406126, 0.642171,
		-0.282752, 0.655149, -0.700593,
		-0.705247, -0.637057, -0.311104,
		31.219944, 31.265289, 50.033100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237532, 32.129787, 50.166451>,  <31.713617, 31.711227, 50.250874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237532, 32.129787, 50.166451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.071840, 31.773144, 50.239609>,  <30.972425, 31.559158, 50.283504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.071840, 31.773144, 50.239609>,  <31.237532, 32.129787, 50.166451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071840, 31.773144, 50.239609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663399, 0.433342, 0.610014,
		-0.623150, 0.131351, -0.770994,
		-0.414230, -0.891606, 0.182899,
		30.947571, 31.505661, 50.294479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526815, 32.202450, 50.204861>,  <31.237532, 32.129787, 50.166451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526815, 32.202450, 50.204861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.552616, 31.854452, 50.400391>,  <30.568096, 31.645653, 50.517708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.552616, 31.854452, 50.400391>,  <30.526815, 32.202450, 50.204861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552616, 31.854452, 50.400391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745326, 0.283726, 0.603315,
		-0.663573, -0.403247, -0.630129,
		0.064501, -0.869995, 0.488823,
		30.571966, 31.593454, 50.547039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860912, 31.920078, 50.234951>,  <30.526815, 32.202450, 50.204861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860912, 31.920078, 50.234951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.080421, 31.746346, 50.520664>,  <30.212128, 31.642105, 50.692093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.080421, 31.746346, 50.520664>,  <29.860912, 31.920078, 50.234951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080421, 31.746346, 50.520664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677737, 0.269068, 0.684306,
		-0.489407, -0.859627, -0.146705,
		0.548774, -0.434332, 0.714284,
		30.245054, 31.616045, 50.734951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329473, 31.646042, 50.638168>,  <29.860912, 31.920078, 50.234951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329473, 31.646042, 50.638168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.661680, 31.659826, 50.860538>,  <29.861004, 31.668097, 50.993961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.661680, 31.659826, 50.860538>,  <29.329473, 31.646042, 50.638168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661680, 31.659826, 50.860538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513857, 0.432532, 0.740856,
		-0.214928, -0.900960, 0.376932,
		0.830516, 0.034459, 0.555927,
		29.910835, 31.670164, 51.027317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106331, 31.419735, 51.405758>,  <29.329473, 31.646042, 50.638168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106331, 31.419735, 51.405758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.445162, 31.629734, 51.438835>,  <29.648460, 31.755733, 51.458679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.445162, 31.629734, 51.438835>,  <29.106331, 31.419735, 51.405758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445162, 31.629734, 51.438835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262682, 0.278323, 0.923869,
		0.462015, -0.804310, 0.373668,
		0.847078, 0.524997, 0.082688,
		29.699286, 31.787233, 51.463642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.444176, 31.236179, 52.129963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623158, 31.584204, 52.047230>,  <29.730547, 31.793018, 51.997589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623158, 31.584204, 52.047230>,  <29.444176, 31.236179, 52.129963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623158, 31.584204, 52.047230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331580, 0.376197, 0.865177,
		0.830567, -0.318543, 0.456825,
		0.447452, 0.870061, -0.206834,
		29.757393, 31.845222, 51.985180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771688, 31.360212, 52.739788>,  <29.444176, 31.236179, 52.129963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771688, 31.360212, 52.739788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700830, 31.698221, 52.537975>,  <29.658316, 31.901026, 52.416885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700830, 31.698221, 52.537975>,  <29.771688, 31.360212, 52.739788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700830, 31.698221, 52.537975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323093, 0.434301, 0.840829,
		0.929640, 0.311962, 0.196086,
		-0.177146, 0.845022, -0.504536,
		29.647686, 31.951729, 52.386616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128298, 31.854897, 53.197060>,  <29.771688, 31.360212, 52.739788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128298, 31.854897, 53.197060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910799, 32.084690, 52.952339>,  <29.780300, 32.222569, 52.805508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910799, 32.084690, 52.952339>,  <30.128298, 31.854897, 53.197060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910799, 32.084690, 52.952339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246883, 0.587242, 0.770840,
		0.802115, 0.570186, -0.177480,
		-0.543746, 0.574486, -0.611806,
		29.747675, 32.257034, 52.768799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354622, 32.492134, 53.381298>,  <30.128298, 31.854897, 53.197060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354622, 32.492134, 53.381298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017754, 32.570961, 53.180534>,  <29.815632, 32.618259, 53.060078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017754, 32.570961, 53.180534>,  <30.354622, 32.492134, 53.381298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017754, 32.570961, 53.180534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201962, 0.747778, 0.632487,
		0.499961, 0.634028, -0.589955,
		-0.842170, 0.197071, -0.501909,
		29.765102, 32.630081, 53.029961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308355, 33.244442, 53.318264>,  <30.354622, 32.492134, 53.381298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308355, 33.244442, 53.318264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931896, 33.112198, 53.290150>,  <29.706020, 33.032852, 53.273281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931896, 33.112198, 53.290150>,  <30.308355, 33.244442, 53.318264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931896, 33.112198, 53.290150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302343, 0.730507, 0.612330,
		-0.151098, 0.597543, -0.787472,
		-0.941147, -0.330609, -0.070284,
		29.649551, 33.013016, 53.269066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893856, 33.871525, 53.338634>,  <30.308355, 33.244442, 53.318264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893856, 33.871525, 53.338634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637211, 33.573883, 53.413086>,  <29.483223, 33.395298, 53.457756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637211, 33.573883, 53.413086>,  <29.893856, 33.871525, 53.338634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637211, 33.573883, 53.413086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530394, 0.605702, 0.593133,
		-0.554089, 0.281842, -0.783295,
		-0.641613, -0.744104, 0.186125,
		29.444727, 33.350651, 53.468922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058331, 33.999996, 53.101990>,  <29.893856, 33.871525, 53.338634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058331, 33.999996, 53.101990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057917, 33.715820, 53.383492>,  <29.057669, 33.545315, 53.552395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057917, 33.715820, 53.383492>,  <29.058331, 33.999996, 53.101990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057917, 33.715820, 53.383492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678072, 0.517757, 0.521676,
		-0.734995, -0.476658, -0.482265,
		-0.001035, -0.710440, 0.703757,
		29.057606, 33.502689, 53.594620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404182, 33.727219, 53.217472>,  <29.058331, 33.999996, 53.101990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404182, 33.727219, 53.217472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587278, 33.629051, 53.559288>,  <28.697136, 33.570152, 53.764378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587278, 33.629051, 53.559288>,  <28.404182, 33.727219, 53.217472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587278, 33.629051, 53.559288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693662, 0.502651, 0.515921,
		-0.556154, -0.828922, 0.059845,
		0.457739, -0.245420, 0.854543,
		28.724600, 33.555424, 53.815651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938234, 33.322300, 53.727863>,  <28.404182, 33.727219, 53.217472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938234, 33.322300, 53.727863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213299, 33.446835, 53.990219>,  <28.378338, 33.521557, 54.147633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213299, 33.446835, 53.990219>,  <27.938234, 33.322300, 53.727863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213299, 33.446835, 53.990219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688023, 0.567912, 0.451776,
		-0.231830, -0.761934, 0.604741,
		0.687662, 0.311340, 0.655887,
		28.419598, 33.540237, 54.186985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712547, 33.240170, 54.474510>,  <27.938234, 33.322300, 53.727863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712547, 33.240170, 54.474510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968695, 33.547287, 54.466331>,  <28.122383, 33.731560, 54.461426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968695, 33.547287, 54.466331>,  <27.712547, 33.240170, 54.474510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968695, 33.547287, 54.466331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702781, 0.596464, 0.387722,
		0.309886, -0.233918, 0.921549,
		0.640366, 0.767797, -0.020443,
		28.160805, 33.777626, 54.460197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508968, 33.575420, 54.984436>,  <27.712547, 33.240170, 54.474510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508968, 33.575420, 54.984436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754320, 33.854477, 54.836353>,  <27.901531, 34.021912, 54.747505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754320, 33.854477, 54.836353>,  <27.508968, 33.575420, 54.984436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754320, 33.854477, 54.836353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507330, 0.707291, 0.492297,
		0.605292, -0.114150, 0.787776,
		0.613383, 0.697646, -0.370205,
		27.938335, 34.063770, 54.725292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712376, 34.025635, 55.555172>,  <27.508968, 33.575420, 54.984436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712376, 34.025635, 55.555172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766817, 34.231960, 55.216843>,  <27.799482, 34.355755, 55.013847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766817, 34.231960, 55.216843>,  <27.712376, 34.025635, 55.555172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766817, 34.231960, 55.216843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430193, 0.799843, 0.418551,
		0.892418, 0.306899, 0.330760,
		0.136103, 0.515813, -0.845821,
		27.807648, 34.386703, 54.963097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242813, 34.567932, 55.617897>,  <27.712376, 34.025635, 55.555172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242813, 34.567932, 55.617897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979515, 34.686375, 55.341049>,  <27.821537, 34.757442, 55.174938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979515, 34.686375, 55.341049>,  <28.242813, 34.567932, 55.617897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979515, 34.686375, 55.341049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287143, 0.751126, 0.594440,
		0.695891, 0.590025, -0.409397,
		-0.658243, 0.296110, -0.692124,
		27.782042, 34.775208, 55.133411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270384, 35.274376, 55.605846>,  <28.242813, 34.567932, 55.617897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270384, 35.274376, 55.605846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928106, 35.232582, 55.403118>,  <27.722740, 35.207504, 55.281483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928106, 35.232582, 55.403118>,  <28.270384, 35.274376, 55.605846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928106, 35.232582, 55.403118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404059, 0.746797, 0.528234,
		0.323298, 0.656793, -0.681250,
		-0.855696, -0.104488, -0.506821,
		27.671398, 35.201237, 55.251072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006660, 35.897934, 55.614716>,  <28.270384, 35.274376, 55.605846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006660, 35.897934, 55.614716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685993, 35.687901, 55.500443>,  <27.493593, 35.561882, 55.431877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685993, 35.687901, 55.500443>,  <28.006660, 35.897934, 55.614716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685993, 35.687901, 55.500443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581962, 0.576378, 0.573680,
		-0.136567, 0.626158, -0.767643,
		-0.801667, -0.525085, -0.285686,
		27.445494, 35.530376, 55.414738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408300, 36.388920, 55.505547>,  <28.006660, 35.897934, 55.614716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408300, 36.388920, 55.505547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254641, 36.022900, 55.554707>,  <27.162445, 35.803288, 55.584202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254641, 36.022900, 55.554707>,  <27.408300, 36.388920, 55.505547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254641, 36.022900, 55.554707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755811, 0.388130, 0.527357,
		-0.530262, 0.109692, -0.840708,
		-0.384150, -0.915053, 0.122904,
		27.139395, 35.748383, 55.591579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792349, 36.586975, 55.626541>,  <27.408300, 36.388920, 55.505547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792349, 36.586975, 55.626541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760691, 36.209743, 55.755753>,  <26.741695, 35.983406, 55.833279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760691, 36.209743, 55.755753>,  <26.792349, 36.586975, 55.626541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.760691, 36.209743, 55.755753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642486, 0.296020, 0.706813,
		-0.762199, -0.151597, -0.629342,
		-0.079147, -0.943075, 0.323025,
		26.736946, 35.926823, 55.852661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094074, 36.377220, 55.580429>,  <26.792349, 36.586975, 55.626541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094074, 36.377220, 55.580429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242191, 36.125637, 55.853867>,  <26.331062, 35.974686, 56.017929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242191, 36.125637, 55.853867>,  <26.094074, 36.377220, 55.580429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242191, 36.125637, 55.853867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774593, 0.197121, 0.600956,
		-0.512727, -0.752033, -0.414194,
		0.370293, -0.628958, 0.683589,
		26.353279, 35.936951, 56.058945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.519348, 35.888748, 55.816971>,  <26.094074, 36.377220, 55.580429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.519348, 35.888748, 55.816971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791187, 35.894726, 56.110344>,  <25.954290, 35.898312, 56.286369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791187, 35.894726, 56.110344>,  <25.519348, 35.888748, 55.816971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.791187, 35.894726, 56.110344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720503, 0.201575, 0.663508,
		-0.137929, -0.979359, 0.147754,
		0.679596, 0.014940, 0.733434,
		25.995066, 35.899208, 56.330376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255619, 35.298134, 56.332520>,  <25.519348, 35.888748, 55.816971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.255619, 35.298134, 56.332520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510019, 35.539494, 56.524940>,  <25.662661, 35.684311, 56.640392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510019, 35.539494, 56.524940>,  <25.255619, 35.298134, 56.332520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.510019, 35.539494, 56.524940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559782, -0.068337, 0.825817,
		0.531173, -0.794503, 0.294311,
		0.636002, 0.603402, 0.481048,
		25.700819, 35.720516, 56.669254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.096291, 35.126217, 57.006374>,  <25.255619, 35.298134, 56.332520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.096291, 35.126217, 57.006374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301573, 35.466362, 57.052845>,  <25.424742, 35.670448, 57.080727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301573, 35.466362, 57.052845>,  <25.096291, 35.126217, 57.006374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.301573, 35.466362, 57.052845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408047, 0.122662, 0.904683,
		0.755062, -0.511694, 0.409940,
		0.513205, 0.850367, 0.116178,
		25.455534, 35.721474, 57.087700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330620, 35.090046, 57.664783>,  <25.096291, 35.126217, 57.006374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330620, 35.090046, 57.664783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.320732, 35.472702, 57.548691>,  <25.314800, 35.702293, 57.479034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.320732, 35.472702, 57.548691>,  <25.330620, 35.090046, 57.664783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.320732, 35.472702, 57.548691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580661, 0.222588, 0.783127,
		0.813770, 0.187886, 0.549979,
		-0.024720, 0.956636, -0.290234,
		25.313316, 35.759693, 57.461620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.581465, 35.462463, 58.279629>,  <25.330620, 35.090046, 57.664783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.581465, 35.462463, 58.279629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355892, 35.678562, 58.029793>,  <25.220549, 35.808220, 57.879890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355892, 35.678562, 58.029793>,  <25.581465, 35.462463, 58.279629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.355892, 35.678562, 58.029793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672984, 0.137697, 0.726727,
		0.478614, 0.830166, 0.285924,
		-0.563933, 0.540244, -0.624593,
		25.186712, 35.840633, 57.842415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441687, 35.717491, 59.072994>,  <25.581465, 35.462463, 58.279629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.441687, 35.717491, 59.072994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222397, 35.399300, 59.176277>,  <25.090822, 35.208385, 59.238247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222397, 35.399300, 59.176277>,  <25.441687, 35.717491, 59.072994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.222397, 35.399300, 59.176277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286610, 0.468736, 0.835548,
		-0.785687, 0.384065, -0.484964,
		-0.548225, -0.795475, 0.258203,
		25.057930, 35.160656, 59.253738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138828, 35.560791, 59.241318>,  <25.441687, 35.717491, 59.072994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138828, 35.560791, 59.241318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355623, 35.736221, 59.528065>,  <26.485701, 35.841480, 59.700115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355623, 35.736221, 59.528065>,  <26.138828, 35.560791, 59.241318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.355623, 35.736221, 59.528065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828115, -0.133467, -0.544437,
		-0.143098, 0.888729, -0.435528,
		0.541985, 0.438575, 0.716871,
		26.518219, 35.867794, 59.743126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364822, 36.164703, 58.995537>,  <26.138828, 35.560791, 59.241318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.364822, 36.164703, 58.995537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595814, 36.007454, 59.281746>,  <26.734407, 35.913105, 59.453472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595814, 36.007454, 59.281746>,  <26.364822, 36.164703, 58.995537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595814, 36.007454, 59.281746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788152, 0.039869, -0.614188,
		0.212926, 0.918620, 0.332866,
		0.577476, -0.393126, 0.715523,
		26.769056, 35.889515, 59.496403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974909, 36.518715, 58.884209>,  <26.364822, 36.164703, 58.995537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974909, 36.518715, 58.884209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088749, 36.222000, 59.127110>,  <27.157053, 36.043972, 59.272850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088749, 36.222000, 59.127110>,  <26.974909, 36.518715, 58.884209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088749, 36.222000, 59.127110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898032, -0.015377, -0.439661,
		0.335473, 0.670459, 0.661773,
		0.284599, -0.741787, 0.607252,
		27.174129, 35.999462, 59.309284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627304, 36.734589, 58.974766>,  <26.974909, 36.518715, 58.884209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627304, 36.734589, 58.974766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581076, 36.344772, 59.051620>,  <27.553339, 36.110882, 59.097733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581076, 36.344772, 59.051620>,  <27.627304, 36.734589, 58.974766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581076, 36.344772, 59.051620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858034, -0.195397, -0.474971,
		0.500422, 0.109970, 0.858769,
		-0.115569, -0.974539, 0.192139,
		27.546406, 36.052410, 59.109261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324478, 36.501102, 59.229122>,  <27.627304, 36.734589, 58.974766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324478, 36.501102, 59.229122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126251, 36.172321, 59.116829>,  <28.007315, 35.975052, 59.049454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126251, 36.172321, 59.116829>,  <28.324478, 36.501102, 59.229122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126251, 36.172321, 59.116829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777947, -0.276298, -0.564320,
		0.386278, -0.498053, 0.776359,
		-0.495568, -0.821951, -0.280731,
		27.977581, 35.925735, 59.032608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857969, 36.077770, 59.247349>,  <28.324478, 36.501102, 59.229122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857969, 36.077770, 59.247349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580904, 35.921135, 59.005066>,  <28.414665, 35.827152, 58.859695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580904, 35.921135, 59.005066>,  <28.857969, 36.077770, 59.247349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580904, 35.921135, 59.005066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713401, -0.248312, -0.655286,
		0.106202, -0.886000, 0.451359,
		-0.692661, -0.391593, -0.605702,
		28.373106, 35.803658, 58.823357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118069, 35.438488, 59.063087>,  <28.857969, 36.077770, 59.247349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118069, 35.438488, 59.063087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846930, 35.551926, 58.791767>,  <28.684246, 35.619987, 58.628975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846930, 35.551926, 58.791767>,  <29.118069, 35.438488, 59.063087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846930, 35.551926, 58.791767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563138, -0.392854, -0.727008,
		-0.472650, -0.874780, 0.106592,
		-0.677847, 0.283595, -0.678305,
		28.643576, 35.637005, 58.588276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180632, 34.938770, 58.646503>,  <29.118069, 35.438488, 59.063087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180632, 34.938770, 58.646503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966091, 35.191681, 58.422878>,  <28.837366, 35.343430, 58.288704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966091, 35.191681, 58.422878>,  <29.180632, 34.938770, 58.646503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966091, 35.191681, 58.422878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506035, -0.289217, -0.812577,
		-0.675466, -0.718731, -0.164834,
		-0.536352, 0.632281, -0.559059,
		28.805185, 35.381367, 58.255161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093721, 34.631393, 57.948189>,  <29.180632, 34.938770, 58.646503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093721, 34.631393, 57.948189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000206, 35.011887, 57.867699>,  <28.944098, 35.240185, 57.819405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000206, 35.011887, 57.867699>,  <29.093721, 34.631393, 57.948189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000206, 35.011887, 57.867699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349693, -0.110849, -0.930283,
		-0.907226, -0.287855, -0.306726,
		-0.233787, 0.951237, -0.201227,
		28.930071, 35.297256, 57.807331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657843, 34.567585, 57.490086>,  <29.093721, 34.631393, 57.948189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657843, 34.567585, 57.490086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836977, 34.922905, 57.449364>,  <28.944458, 35.136097, 57.424931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836977, 34.922905, 57.449364>,  <28.657843, 34.567585, 57.490086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836977, 34.922905, 57.449364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202966, -0.211885, -0.955986,
		-0.870773, 0.407465, -0.275185,
		0.447838, 0.888300, -0.101802,
		28.971329, 35.189396, 57.418823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456104, 34.802135, 56.858509>,  <28.657843, 34.567585, 57.490086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456104, 34.802135, 56.858509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775461, 35.029907, 56.936806>,  <28.967075, 35.166573, 56.983784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775461, 35.029907, 56.936806>,  <28.456104, 34.802135, 56.858509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775461, 35.029907, 56.936806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415307, -0.285372, -0.863761,
		-0.435994, 0.770914, -0.464329,
		0.798391, 0.569434, 0.195745,
		29.014978, 35.200737, 56.995529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587782, 35.078117, 56.248112>,  <28.456104, 34.802135, 56.858509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587782, 35.078117, 56.248112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936796, 35.123535, 56.438183>,  <29.146204, 35.150787, 56.552223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936796, 35.123535, 56.438183>,  <28.587782, 35.078117, 56.248112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936796, 35.123535, 56.438183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480812, -0.372023, -0.793989,
		0.086623, 0.921253, -0.379197,
		0.872534, 0.113545, 0.475175,
		29.198557, 35.157600, 56.580734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048506, 35.432770, 55.731010>,  <28.587782, 35.078117, 56.248112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048506, 35.432770, 55.731010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279383, 35.247227, 55.999840>,  <29.417908, 35.135902, 56.161137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279383, 35.247227, 55.999840>,  <29.048506, 35.432770, 55.731010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279383, 35.247227, 55.999840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396071, -0.560707, -0.727142,
		0.714128, 0.685890, -0.139916,
		0.577191, -0.463856, 0.672078,
		29.452539, 35.108070, 56.201462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810228, 35.468536, 55.484207>,  <29.048506, 35.432770, 55.731010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810228, 35.468536, 55.484207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828018, 35.170692, 55.750610>,  <29.838692, 34.991985, 55.910454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828018, 35.170692, 55.750610>,  <29.810228, 35.468536, 55.484207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828018, 35.170692, 55.750610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636919, -0.492477, -0.593128,
		0.769647, 0.450573, 0.452357,
		0.044472, -0.744614, 0.666012,
		29.841360, 34.947308, 55.950413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545811, 35.246571, 55.462761>,  <29.810228, 35.468536, 55.484207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545811, 35.246571, 55.462761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345968, 34.954235, 55.648781>,  <30.226063, 34.778835, 55.760391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345968, 34.954235, 55.648781>,  <30.545811, 35.246571, 55.462761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345968, 34.954235, 55.648781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624734, -0.675881, -0.391013,
		0.600085, 0.095179, 0.794254,
		-0.499605, -0.730839, 0.465048,
		30.196087, 34.734982, 55.788296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038948, 34.913177, 55.983219>,  <30.545811, 35.246571, 55.462761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038948, 34.913177, 55.983219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748661, 34.671581, 55.851444>,  <30.574490, 34.526623, 55.772381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748661, 34.671581, 55.851444>,  <31.038948, 34.913177, 55.983219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748661, 34.671581, 55.851444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687433, -0.617283, -0.382619,
		0.027742, -0.504140, 0.863176,
		-0.725718, -0.603990, -0.329438,
		30.530945, 34.490383, 55.752613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214975, 34.257938, 56.286118>,  <31.038948, 34.913177, 55.983219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214975, 34.257938, 56.286118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972168, 34.207462, 55.972275>,  <30.826483, 34.177177, 55.783970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972168, 34.207462, 55.972275>,  <31.214975, 34.257938, 56.286118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972168, 34.207462, 55.972275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719847, -0.505588, -0.475606,
		-0.336672, -0.853497, 0.397736,
		-0.607019, -0.126186, -0.784605,
		30.790062, 34.169605, 55.736893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301752, 33.554146, 56.103809>,  <31.214975, 34.257938, 56.286118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301752, 33.554146, 56.103809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130239, 33.681553, 55.765652>,  <31.027332, 33.757999, 55.562756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130239, 33.681553, 55.765652>,  <31.301752, 33.554146, 56.103809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130239, 33.681553, 55.765652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702274, -0.471136, -0.533705,
		-0.568292, -0.822541, -0.021673,
		-0.428783, 0.318521, -0.845393,
		31.001604, 33.777111, 55.512035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457024, 33.036037, 55.720592>,  <31.301752, 33.554146, 56.103809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457024, 33.036037, 55.720592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336445, 33.327282, 55.474346>,  <31.264097, 33.502029, 55.326599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336445, 33.327282, 55.474346>,  <31.457024, 33.036037, 55.720592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336445, 33.327282, 55.474346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544717, -0.398408, -0.737939,
		-0.782568, -0.557787, -0.276515,
		-0.301447, 0.728110, -0.615618,
		31.246010, 33.545715, 55.289661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290276, 32.782639, 55.010143>,  <31.457024, 33.036037, 55.720592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290276, 32.782639, 55.010143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392092, 33.164940, 54.951164>,  <31.453180, 33.394321, 54.915775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392092, 33.164940, 54.951164>,  <31.290276, 32.782639, 55.010143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392092, 33.164940, 54.951164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538854, -0.266779, -0.799040,
		-0.803024, 0.123933, -0.582918,
		0.254538, 0.955756, -0.147448,
		31.468452, 33.451668, 54.906929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.740879, 36.492958, 51.427578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.794918, 36.121071, 51.564617>,  <47.827339, 35.897938, 51.646843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.794918, 36.121071, 51.564617>,  <47.740879, 36.492958, 51.427578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.794918, 36.121071, 51.564617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755252, -0.320438, -0.571764,
		0.641361, -0.181509, -0.745460,
		0.135094, -0.929717, 0.342602,
		47.835445, 35.842155, 51.667397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.744884, 36.002415, 50.772503>,  <47.740879, 36.492958, 51.427578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.744884, 36.002415, 50.772503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.630829, 35.811832, 51.105175>,  <47.562397, 35.697483, 51.304779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.630829, 35.811832, 51.105175>,  <47.744884, 36.002415, 50.772503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.630829, 35.811832, 51.105175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796223, -0.365312, -0.482261,
		0.533597, -0.799712, -0.275199,
		-0.285136, -0.476453, 0.831679,
		47.545288, 35.668896, 51.354679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.537384, 35.409035, 50.515980>,  <47.744884, 36.002415, 50.772503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.537384, 35.409035, 50.515980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.388813, 35.425377, 50.887005>,  <47.299671, 35.435181, 51.109619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.388813, 35.425377, 50.887005>,  <47.537384, 35.409035, 50.515980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.388813, 35.425377, 50.887005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917387, -0.169987, -0.359868,
		0.142973, -0.984599, 0.100615,
		-0.371429, 0.040851, 0.927562,
		47.277386, 35.437634, 51.165272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.159821, 34.924313, 50.550945>,  <47.537384, 35.409035, 50.515980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.159821, 34.924313, 50.550945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.008339, 35.137146, 50.853859>,  <46.917450, 35.264847, 51.035606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.008339, 35.137146, 50.853859>,  <47.159821, 34.924313, 50.550945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.008339, 35.137146, 50.853859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915469, -0.095101, -0.390990,
		-0.136021, -0.841334, 0.523121,
		-0.378702, 0.532084, 0.757279,
		46.894730, 35.296772, 51.081043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.631283, 34.522240, 50.896225>,  <47.159821, 34.924313, 50.550945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.631283, 34.522240, 50.896225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.552780, 34.896534, 51.013443>,  <46.505680, 35.121113, 51.083775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.552780, 34.896534, 51.013443>,  <46.631283, 34.522240, 50.896225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.552780, 34.896534, 51.013443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946639, -0.102886, -0.305434,
		-0.255656, -0.337350, 0.905999,
		-0.196253, 0.935740, 0.293045,
		46.493904, 35.177258, 51.101357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.019829, 34.447205, 51.225639>,  <46.631283, 34.522240, 50.896225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.019829, 34.447205, 51.225639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.053040, 34.833382, 51.126823>,  <46.072968, 35.065086, 51.067535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.053040, 34.833382, 51.126823>,  <46.019829, 34.447205, 51.225639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.053040, 34.833382, 51.126823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964305, 0.015288, -0.264352,
		-0.251440, 0.260170, 0.932250,
		0.083029, 0.965442, -0.247039,
		46.077950, 35.123013, 51.052711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487152, 34.792164, 51.530685>,  <46.019829, 34.447205, 51.225639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487152, 34.792164, 51.530685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.583187, 35.051399, 51.241592>,  <45.640808, 35.206940, 51.068134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.583187, 35.051399, 51.241592>,  <45.487152, 34.792164, 51.530685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.583187, 35.051399, 51.241592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964638, 0.075848, -0.252429,
		-0.108777, 0.757783, 0.643376,
		0.240086, 0.648084, -0.722735,
		45.655212, 35.245823, 51.024773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999416, 35.324871, 51.606632>,  <45.487152, 34.792164, 51.530685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999416, 35.324871, 51.606632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.129429, 35.357948, 51.229801>,  <45.207436, 35.377792, 51.003700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.129429, 35.357948, 51.229801>,  <44.999416, 35.324871, 51.606632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129429, 35.357948, 51.229801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923582, 0.241958, -0.297410,
		0.203351, 0.966757, 0.155016,
		0.325030, 0.082691, -0.942082,
		45.226936, 35.382755, 50.947178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480331, 35.755318, 51.359310>,  <44.999416, 35.324871, 51.606632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480331, 35.755318, 51.359310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.660461, 35.643147, 51.020237>,  <44.768539, 35.575844, 50.816792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.660461, 35.643147, 51.020237>,  <44.480331, 35.755318, 51.359310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660461, 35.643147, 51.020237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814319, 0.260379, -0.518736,
		0.366187, 0.923885, -0.111103,
		0.450324, -0.280428, -0.847684,
		44.795559, 35.559017, 50.765930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295044, 36.276905, 50.838356>,  <44.480331, 35.755318, 51.359310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295044, 36.276905, 50.838356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.397690, 35.934509, 50.658833>,  <44.459278, 35.729073, 50.551117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.397690, 35.934509, 50.658833>,  <44.295044, 36.276905, 50.838356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397690, 35.934509, 50.658833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797760, 0.074564, -0.598347,
		0.545644, 0.511588, -0.663740,
		0.256616, -0.855990, -0.448810,
		44.474674, 35.677711, 50.524189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182899, 36.454338, 50.166080>,  <44.295044, 36.276905, 50.838356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182899, 36.454338, 50.166080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.159206, 36.056217, 50.196709>,  <44.144993, 35.817345, 50.215084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.159206, 36.056217, 50.196709>,  <44.182899, 36.454338, 50.166080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159206, 36.056217, 50.196709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813177, 0.003618, -0.582005,
		0.578995, -0.096737, -0.809572,
		-0.059230, -0.995303, 0.076569,
		44.141438, 35.757626, 50.219681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.890366, 36.193478, 49.549416>,  <44.182899, 36.454338, 50.166080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.890366, 36.193478, 49.549416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.855782, 35.883434, 49.799770>,  <43.835030, 35.697407, 49.949982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.855782, 35.883434, 49.799770>,  <43.890366, 36.193478, 49.549416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855782, 35.883434, 49.799770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887991, -0.224855, -0.401139,
		0.451660, -0.590462, -0.668849,
		-0.086464, -0.775110, 0.625882,
		43.829842, 35.650902, 49.987534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812855, 35.601685, 49.153351>,  <43.890366, 36.193478, 49.549416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812855, 35.601685, 49.153351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.659962, 35.513432, 49.512287>,  <43.568226, 35.460480, 49.727650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.659962, 35.513432, 49.512287>,  <43.812855, 35.601685, 49.153351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659962, 35.513432, 49.512287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906761, -0.097487, -0.410220,
		0.177987, -0.970472, -0.162800,
		-0.382237, -0.220635, 0.897338,
		43.545292, 35.447243, 49.781490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429226, 34.992626, 48.938969>,  <43.812855, 35.601685, 49.153351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429226, 34.992626, 48.938969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.276012, 35.129379, 49.282223>,  <43.184082, 35.211433, 49.488174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.276012, 35.129379, 49.282223>,  <43.429226, 34.992626, 48.938969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276012, 35.129379, 49.282223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917942, -0.037012, -0.394985,
		-0.103279, -0.939012, 0.328009,
		-0.383036, 0.341887, 0.858135,
		43.161102, 35.231945, 49.539665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891644, 34.497883, 49.074364>,  <43.429226, 34.992626, 48.938969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891644, 34.497883, 49.074364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.811543, 34.831356, 49.280228>,  <42.763481, 35.031441, 49.403748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.811543, 34.831356, 49.280228>,  <42.891644, 34.497883, 49.074364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811543, 34.831356, 49.280228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946394, -0.028707, -0.321736,
		-0.253451, -0.551498, 0.794740,
		-0.200251, 0.833682, 0.514658,
		42.751469, 35.081459, 49.434624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083626, 34.359428, 49.307163>,  <42.891644, 34.497883, 49.074364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083626, 34.359428, 49.307163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.154072, 34.748367, 49.368515>,  <42.196339, 34.981731, 49.405327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.154072, 34.748367, 49.368515>,  <42.083626, 34.359428, 49.307163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154072, 34.748367, 49.368515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930261, 0.215352, -0.297049,
		-0.321864, -0.090365, 0.942463,
		0.176119, 0.972346, 0.153377,
		42.206909, 35.040070, 49.414528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577469, 34.504673, 49.688705>,  <42.083626, 34.359428, 49.307163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577469, 34.504673, 49.688705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.683945, 34.854809, 49.527256>,  <41.747829, 35.064892, 49.430386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.683945, 34.854809, 49.527256>,  <41.577469, 34.504673, 49.688705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683945, 34.854809, 49.527256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929835, 0.122819, -0.346875,
		-0.254062, 0.467642, 0.846619,
		0.266194, 0.875344, -0.403626,
		41.763802, 35.117413, 49.406170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985882, 34.959438, 49.796146>,  <41.577469, 34.504673, 49.688705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985882, 34.959438, 49.796146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.184834, 35.124557, 49.490936>,  <41.304203, 35.223629, 49.307808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.184834, 35.124557, 49.490936>,  <40.985882, 34.959438, 49.796146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184834, 35.124557, 49.490936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867456, 0.224784, -0.443838,
		-0.011700, 0.882648, 0.469889,
		0.497376, 0.412801, -0.763028,
		41.334045, 35.248398, 49.262028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489647, 35.490410, 49.573040>,  <40.985882, 34.959438, 49.796146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489647, 35.490410, 49.573040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.741676, 35.431194, 49.268124>,  <40.892895, 35.395664, 49.085175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.741676, 35.431194, 49.268124>,  <40.489647, 35.490410, 49.573040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741676, 35.431194, 49.268124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771189, -0.004296, -0.636592,
		0.090966, 0.988972, -0.116874,
		0.630073, -0.148040, -0.762294,
		40.930698, 35.386784, 49.039436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328777, 36.041473, 49.010536>,  <40.489647, 35.490410, 49.573040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328777, 36.041473, 49.010536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.546780, 35.766453, 48.818600>,  <40.677582, 35.601440, 48.703438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.546780, 35.766453, 48.818600>,  <40.328777, 36.041473, 49.010536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546780, 35.766453, 48.818600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655681, 0.007175, -0.755004,
		0.522544, 0.726104, -0.446901,
		0.545005, -0.687548, -0.479842,
		40.710281, 35.560188, 48.674648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074638, 36.154972, 48.382904>,  <40.328777, 36.041473, 49.010536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074638, 36.154972, 48.382904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.274609, 35.813736, 48.323143>,  <40.394588, 35.608994, 48.287285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.274609, 35.813736, 48.323143>,  <40.074638, 36.154972, 48.382904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274609, 35.813736, 48.323143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562252, -0.188472, -0.805203,
		0.658749, 0.486542, -0.573870,
		0.499923, -0.853086, -0.149404,
		40.424587, 35.557812, 48.278320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687599, 35.957497, 47.756386>,  <40.074638, 36.154972, 48.382904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687599, 35.957497, 47.756386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.455006, 35.712372, 47.542347>,  <39.315449, 35.565296, 47.413921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.455006, 35.712372, 47.542347>,  <39.687599, 35.957497, 47.756386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455006, 35.712372, 47.542347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811167, 0.386344, 0.439028,
		-0.062311, 0.689344, -0.721749,
		-0.581485, -0.612816, -0.535100,
		39.280560, 35.528526, 47.381817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070454, 36.300800, 47.419167>,  <39.687599, 35.957497, 47.756386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070454, 36.300800, 47.419167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.983829, 35.924091, 47.522060>,  <38.931854, 35.698067, 47.583797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.983829, 35.924091, 47.522060>,  <39.070454, 36.300800, 47.419167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983829, 35.924091, 47.522060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762675, 0.327692, 0.557624,
		-0.609448, -0.075426, -0.789230,
		-0.216565, -0.941769, 0.257237,
		38.918861, 35.641560, 47.599232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443680, 35.945179, 47.220867>,  <39.070454, 36.300800, 47.419167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443680, 35.945179, 47.220867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.592247, 35.815285, 46.872936>,  <38.681389, 35.737347, 46.664177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.592247, 35.815285, 46.872936>,  <38.443680, 35.945179, 47.220867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592247, 35.815285, 46.872936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927982, -0.160036, -0.336507,
		-0.029926, 0.932167, -0.360790,
		0.371420, -0.324736, -0.869824,
		38.703674, 35.717865, 46.611988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886375, 36.033066, 46.781605>,  <38.443680, 35.945179, 47.220867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886375, 36.033066, 46.781605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.104591, 35.802589, 46.538166>,  <38.235519, 35.664303, 46.392105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.104591, 35.802589, 46.538166>,  <37.886375, 36.033066, 46.781605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104591, 35.802589, 46.538166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836962, -0.412164, -0.360022,
		-0.043398, 0.705776, -0.707104,
		0.545538, -0.576195, -0.608595,
		38.268253, 35.629730, 46.355587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512333, 36.034763, 46.234253>,  <37.886375, 36.033066, 46.781605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512333, 36.034763, 46.234253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.746559, 35.711315, 46.211491>,  <37.887096, 35.517246, 46.197834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.746559, 35.711315, 46.211491>,  <37.512333, 36.034763, 46.234253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746559, 35.711315, 46.211491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729046, -0.494644, -0.473094,
		0.354406, 0.318518, -0.879172,
		0.585566, -0.808624, -0.056909,
		37.922230, 35.468727, 46.194416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485405, 35.935791, 45.564632>,  <37.512333, 36.034763, 46.234253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485405, 35.935791, 45.564632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.572151, 35.588184, 45.742523>,  <37.624199, 35.379620, 45.849258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.572151, 35.588184, 45.742523>,  <37.485405, 35.935791, 45.564632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572151, 35.588184, 45.742523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690137, -0.458684, -0.559750,
		0.690421, -0.185532, -0.699212,
		0.216865, -0.869015, 0.444727,
		37.637211, 35.327480, 45.875942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348438, 35.473866, 45.027309>,  <37.485405, 35.935791, 45.564632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348438, 35.473866, 45.027309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.342896, 35.255287, 45.362263>,  <37.339569, 35.124142, 45.563236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.342896, 35.255287, 45.362263>,  <37.348438, 35.473866, 45.027309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342896, 35.255287, 45.362263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712461, -0.582204, -0.391711,
		0.701575, -0.602030, -0.381252,
		-0.013855, -0.546441, 0.837383,
		37.338737, 35.091354, 45.613476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386177, 34.814682, 44.837387>,  <37.348438, 35.473866, 45.027309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386177, 34.814682, 44.837387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.209030, 34.788105, 45.195038>,  <37.102741, 34.772160, 45.409626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.209030, 34.788105, 45.195038>,  <37.386177, 34.814682, 44.837387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209030, 34.788105, 45.195038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720675, -0.566890, -0.399077,
		0.533384, -0.821110, 0.203174,
		-0.442863, -0.066439, 0.894124,
		37.076172, 34.768173, 45.463276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292770, 34.085484, 44.870789>,  <37.386177, 34.814682, 44.837387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292770, 34.085484, 44.870789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.063320, 34.273708, 45.138977>,  <36.925648, 34.386642, 45.299889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.063320, 34.273708, 45.138977>,  <37.292770, 34.085484, 44.870789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063320, 34.273708, 45.138977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796191, -0.512605, -0.321428,
		0.192434, -0.718200, 0.668699,
		-0.573628, 0.470558, 0.670467,
		36.891232, 34.414875, 45.340118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904560, 33.499058, 44.982941>,  <37.292770, 34.085484, 44.870789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904560, 33.499058, 44.982941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.717567, 33.825375, 45.119148>,  <36.605373, 34.021164, 45.200871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.717567, 33.825375, 45.119148>,  <36.904560, 33.499058, 44.982941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717567, 33.825375, 45.119148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883458, -0.444662, -0.147569,
		0.031030, -0.369819, 0.928586,
		-0.467481, 0.815787, 0.340517,
		36.577324, 34.070110, 45.221302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424450, 33.274384, 45.359119>,  <36.904560, 33.499058, 44.982941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424450, 33.274384, 45.359119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.291122, 33.645382, 45.291412>,  <36.211124, 33.867981, 45.250790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.291122, 33.645382, 45.291412>,  <36.424450, 33.274384, 45.359119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291122, 33.645382, 45.291412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942650, -0.331192, 0.041518,
		-0.017551, 0.173395, 0.984696,
		-0.333323, 0.927494, -0.169264,
		36.191124, 33.923630, 45.240635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700680, 33.265949, 45.727127>,  <36.424450, 33.274384, 45.359119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700680, 33.265949, 45.727127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.732063, 33.604366, 45.516201>,  <35.750893, 33.807415, 45.389645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.732063, 33.604366, 45.516201>,  <35.700680, 33.265949, 45.727127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732063, 33.604366, 45.516201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971817, -0.053041, -0.229692,
		-0.222297, 0.530477, 0.818033,
		0.078457, 0.846038, -0.527318,
		35.755600, 33.858177, 45.358006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213726, 33.629570, 46.098507>,  <35.700680, 33.265949, 45.727127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213726, 33.629570, 46.098507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.278484, 33.756527, 45.724758>,  <35.317341, 33.832703, 45.500507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.278484, 33.756527, 45.724758>,  <35.213726, 33.629570, 46.098507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278484, 33.756527, 45.724758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979512, -0.063245, -0.191199,
		-0.119780, 0.946183, 0.300652,
		0.161895, 0.317394, -0.934372,
		35.327053, 33.851746, 45.444447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775162, 34.093361, 46.034252>,  <35.213726, 33.629570, 46.098507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775162, 34.093361, 46.034252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.861553, 33.966679, 45.664810>,  <34.913387, 33.890667, 45.443146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.861553, 33.966679, 45.664810>,  <34.775162, 34.093361, 46.034252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861553, 33.966679, 45.664810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944275, -0.308393, -0.115060,
		-0.248394, 0.896989, -0.365665,
		0.215976, -0.316708, -0.923607,
		34.926346, 33.871666, 45.387730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.411592, 30.877266, 49.038898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.720314, 30.929188, 49.287888>,  <30.905546, 30.960340, 49.437279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.720314, 30.929188, 49.287888>,  <30.411592, 30.877266, 49.038898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720314, 30.929188, 49.287888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634774, -0.214486, -0.742332,
		0.037152, 0.968063, -0.247939,
		0.771804, 0.129806, 0.622470,
		30.951855, 30.968130, 49.474628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832222, 31.565067, 48.941677>,  <30.411592, 30.877266, 49.038898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832222, 31.565067, 48.941677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.065268, 31.278948, 49.096031>,  <31.205095, 31.107277, 49.188644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.065268, 31.278948, 49.096031>,  <30.832222, 31.565067, 48.941677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065268, 31.278948, 49.096031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644875, 0.117873, -0.755144,
		0.494668, 0.688806, 0.529953,
		0.582615, -0.715299, 0.385885,
		31.240051, 31.064358, 49.211796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420992, 31.962029, 48.809803>,  <30.832222, 31.565067, 48.941677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420992, 31.962029, 48.809803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.534651, 31.584471, 48.877121>,  <31.602846, 31.357937, 48.917511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.534651, 31.584471, 48.877121>,  <31.420992, 31.962029, 48.809803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534651, 31.584471, 48.877121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902404, 0.203985, -0.379548,
		0.323924, 0.259716, 0.909737,
		0.284148, -0.943895, 0.168293,
		31.619896, 31.301302, 48.927608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119370, 32.034904, 48.964859>,  <31.420992, 31.962029, 48.809803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119370, 32.034904, 48.964859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.088238, 31.650614, 48.858315>,  <32.069561, 31.420040, 48.794388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.088238, 31.650614, 48.858315>,  <32.119370, 32.034904, 48.964859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088238, 31.650614, 48.858315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872286, 0.063757, -0.484823,
		0.482764, -0.270077, 0.833065,
		-0.077826, -0.960725, -0.266364,
		32.064888, 31.362396, 48.778404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755932, 31.759666, 49.136326>,  <32.119370, 32.034904, 48.964859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755932, 31.759666, 49.136326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.579151, 31.516741, 48.872250>,  <32.473083, 31.370985, 48.713806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.579151, 31.516741, 48.872250>,  <32.755932, 31.759666, 49.136326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579151, 31.516741, 48.872250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757568, 0.141435, -0.637249,
		0.480385, -0.781769, 0.397576,
		-0.441951, -0.607316, -0.660187,
		32.446568, 31.334545, 48.674194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269005, 31.283916, 48.770401>,  <32.755932, 31.759666, 49.136326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269005, 31.283916, 48.770401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.946781, 31.291048, 48.533501>,  <32.753448, 31.295326, 48.391361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.946781, 31.291048, 48.533501>,  <33.269005, 31.283916, 48.770401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946781, 31.291048, 48.533501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586241, 0.169049, -0.792303,
		0.085993, -0.985446, -0.146631,
		-0.805560, 0.017829, -0.592246,
		32.705112, 31.296396, 48.355827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424393, 30.808661, 48.199249>,  <33.269005, 31.283916, 48.770401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424393, 30.808661, 48.199249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.150131, 31.080070, 48.093807>,  <32.985577, 31.242916, 48.030544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.150131, 31.080070, 48.093807>,  <33.424393, 30.808661, 48.199249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150131, 31.080070, 48.093807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443513, 0.102251, -0.890416,
		-0.577218, -0.727424, -0.371044,
		-0.685650, 0.678527, -0.263601,
		32.944435, 31.283628, 48.014729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355412, 30.648426, 47.496803>,  <33.424393, 30.808661, 48.199249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355412, 30.648426, 47.496803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169704, 31.001270, 47.528652>,  <33.058281, 31.212976, 47.547760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169704, 31.001270, 47.528652>,  <33.355412, 30.648426, 47.496803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169704, 31.001270, 47.528652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336298, 0.258727, -0.905519,
		-0.819368, -0.393624, -0.416769,
		-0.464263, 0.882112, 0.079618,
		33.030426, 31.265903, 47.552536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932476, 30.738503, 46.942120>,  <33.355412, 30.648426, 47.496803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932476, 30.738503, 46.942120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.995686, 31.109144, 47.078609>,  <33.033611, 31.331530, 47.160503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.995686, 31.109144, 47.078609>,  <32.932476, 30.738503, 46.942120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995686, 31.109144, 47.078609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260642, 0.294165, -0.919528,
		-0.952414, 0.234248, -0.195026,
		0.158028, 0.926604, 0.341222,
		33.043095, 31.387125, 47.180977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810135, 31.192238, 46.337933>,  <32.932476, 30.738503, 46.942120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810135, 31.192238, 46.337933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.998554, 31.438629, 46.590496>,  <33.111607, 31.586464, 46.742035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.998554, 31.438629, 46.590496>,  <32.810135, 31.192238, 46.337933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998554, 31.438629, 46.590496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363290, 0.516807, -0.775197,
		-0.803822, 0.594544, 0.019664,
		0.471052, 0.615977, 0.631413,
		33.139870, 31.623423, 46.779919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642651, 31.804926, 46.069660>,  <32.810135, 31.192238, 46.337933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642651, 31.804926, 46.069660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.977234, 31.854219, 46.283260>,  <33.177982, 31.883797, 46.411419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.977234, 31.854219, 46.283260>,  <32.642651, 31.804926, 46.069660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977234, 31.854219, 46.283260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449808, 0.402262, -0.797407,
		-0.313077, 0.907193, 0.281041,
		0.836454, 0.123235, 0.534002,
		33.228168, 31.891190, 46.443462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763767, 32.492928, 46.018173>,  <32.642651, 31.804926, 46.069660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763767, 32.492928, 46.018173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.109062, 32.302322, 46.084808>,  <33.316238, 32.187962, 46.124790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.109062, 32.302322, 46.084808>,  <32.763767, 32.492928, 46.018173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109062, 32.302322, 46.084808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361227, 0.352603, -0.863242,
		0.352603, 0.805364, 0.476509,
		0.863242, -0.476509, 0.166590,
		33.368034, 32.159370, 46.134785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212982, 32.924412, 45.811096>,  <32.763767, 32.492928, 46.018173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212982, 32.924412, 45.811096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.401699, 33.184311, 45.572689>,  <32.514931, 33.340252, 45.429646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.401699, 33.184311, 45.572689>,  <32.212982, 32.924412, 45.811096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401699, 33.184311, 45.572689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595587, 0.733296, 0.327954,
		0.650143, 0.200251, 0.732949,
		0.471795, 0.649752, -0.596014,
		32.543236, 33.379238, 45.393887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694939, 33.377125, 46.240353>,  <32.212982, 32.924412, 45.811096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694939, 33.377125, 46.240353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.519909, 33.523884, 45.911983>,  <32.414890, 33.611938, 45.714962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.519909, 33.523884, 45.911983>,  <32.694939, 33.377125, 46.240353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519909, 33.523884, 45.911983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637071, 0.517783, 0.571000,
		0.634559, 0.772842, 0.007172,
		-0.437579, 0.366902, -0.820919,
		32.388634, 33.633953, 45.665707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753952, 33.990650, 46.305370>,  <32.694939, 33.377125, 46.240353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753952, 33.990650, 46.305370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463833, 34.000988, 46.030190>,  <32.289761, 34.007191, 45.865082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463833, 34.000988, 46.030190>,  <32.753952, 33.990650, 46.305370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463833, 34.000988, 46.030190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419814, 0.775384, 0.471737,
		0.545615, 0.630961, -0.551536,
		-0.725300, 0.025844, -0.687947,
		32.246243, 34.008739, 45.823807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658298, 34.634113, 46.071751>,  <32.753952, 33.990650, 46.305370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658298, 34.634113, 46.071751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.300831, 34.519894, 45.933292>,  <32.086349, 34.451363, 45.850216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.300831, 34.519894, 45.933292>,  <32.658298, 34.634113, 46.071751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300831, 34.519894, 45.933292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425404, 0.784605, 0.451028,
		0.142797, 0.550322, -0.822651,
		-0.893667, -0.285554, -0.346148,
		32.032730, 34.434227, 45.829449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328735, 35.282467, 45.857491>,  <32.658298, 34.634113, 46.071751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328735, 35.282467, 45.857491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.028111, 35.023254, 45.906818>,  <31.847736, 34.867725, 45.936417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.028111, 35.023254, 45.906818>,  <32.328735, 35.282467, 45.857491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028111, 35.023254, 45.906818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576135, 0.735873, 0.355751,
		-0.321290, 0.196317, -0.926408,
		-0.751559, -0.648035, 0.123324,
		31.802643, 34.828842, 45.943817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739447, 35.666912, 45.606094>,  <32.328735, 35.282467, 45.857491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739447, 35.666912, 45.606094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.605394, 35.379501, 45.849869>,  <31.524963, 35.207054, 45.996132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.605394, 35.379501, 45.849869>,  <31.739447, 35.666912, 45.606094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605394, 35.379501, 45.849869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529037, 0.678752, 0.509328,
		-0.779620, -0.151723, -0.607596,
		-0.335131, -0.718523, 0.609435,
		31.504854, 35.163944, 46.032700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997913, 35.869415, 45.664719>,  <31.739447, 35.666912, 45.606094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997913, 35.869415, 45.664719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.094597, 35.626423, 45.967384>,  <31.152607, 35.480625, 46.148983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.094597, 35.626423, 45.967384>,  <30.997913, 35.869415, 45.664719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094597, 35.626423, 45.967384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479841, 0.602942, 0.637349,
		-0.843404, -0.517129, -0.145761,
		0.241707, -0.607485, 0.756664,
		31.167109, 35.444176, 46.194382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468134, 35.889282, 46.139748>,  <30.997913, 35.869415, 45.664719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468134, 35.889282, 46.139748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.756979, 35.717522, 46.356697>,  <30.930286, 35.614464, 46.486866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.756979, 35.717522, 46.356697>,  <30.468134, 35.889282, 46.139748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756979, 35.717522, 46.356697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244647, 0.574840, 0.780837,
		-0.647070, -0.696542, 0.310048,
		0.722114, -0.429403, 0.542369,
		30.973614, 35.588699, 46.519409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162365, 35.640209, 46.787895>,  <30.468134, 35.889282, 46.139748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162365, 35.640209, 46.787895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.552546, 35.685856, 46.863228>,  <30.786654, 35.713242, 46.908428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.552546, 35.685856, 46.863228>,  <30.162365, 35.640209, 46.787895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552546, 35.685856, 46.863228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218016, 0.380073, 0.898896,
		0.030994, -0.917890, 0.395622,
		0.975453, 0.114112, 0.188334,
		30.845181, 35.720089, 46.919727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185577, 35.520237, 47.442188>,  <30.162365, 35.640209, 46.787895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185577, 35.520237, 47.442188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.512075, 35.743050, 47.380920>,  <30.707975, 35.876736, 47.344162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.512075, 35.743050, 47.380920>,  <30.185577, 35.520237, 47.442188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512075, 35.743050, 47.380920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139803, 0.447714, 0.883180,
		0.560533, -0.699479, 0.443319,
		0.816246, 0.557029, -0.153169,
		30.756950, 35.910156, 47.334969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500835, 35.566086, 48.128601>,  <30.185577, 35.520237, 47.442188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500835, 35.566086, 48.128601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.675394, 35.847813, 47.904640>,  <30.780128, 36.016850, 47.770264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.675394, 35.847813, 47.904640>,  <30.500835, 35.566086, 48.128601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675394, 35.847813, 47.904640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119668, 0.571320, 0.811956,
		0.891761, -0.421337, 0.165038,
		0.436397, 0.704321, -0.559902,
		30.806313, 36.059109, 47.736671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147463, 35.776890, 48.398319>,  <30.500835, 35.566086, 48.128601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147463, 35.776890, 48.398319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.059032, 36.098667, 48.177776>,  <31.005974, 36.291733, 48.045448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.059032, 36.098667, 48.177776>,  <31.147463, 35.776890, 48.398319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059032, 36.098667, 48.177776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109980, 0.582306, 0.805496,
		0.969036, 0.117437, -0.217206,
		-0.221076, 0.804443, -0.551359,
		30.992710, 36.340000, 48.012367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689770, 36.240528, 48.528236>,  <31.147463, 35.776890, 48.398319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689770, 36.240528, 48.528236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.417370, 36.489292, 48.373592>,  <31.253929, 36.638550, 48.280807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.417370, 36.489292, 48.373592>,  <31.689770, 36.240528, 48.528236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417370, 36.489292, 48.373592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120655, 0.616028, 0.778430,
		0.722274, 0.483465, -0.494552,
		-0.681001, 0.621910, -0.386608,
		31.213070, 36.675865, 48.257610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920559, 36.973774, 48.479801>,  <31.689770, 36.240528, 48.528236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920559, 36.973774, 48.479801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.522207, 37.004429, 48.460419>,  <31.283195, 37.022820, 48.448788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.522207, 37.004429, 48.460419>,  <31.920559, 36.973774, 48.479801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522207, 37.004429, 48.460419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023250, 0.732430, 0.680446,
		0.087639, 0.676516, -0.731194,
		-0.995881, 0.076634, -0.048460,
		31.223442, 37.027420, 48.445881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706532, 37.722538, 48.568298>,  <31.920559, 36.973774, 48.479801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706532, 37.722538, 48.568298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.385466, 37.514324, 48.684757>,  <31.192825, 37.389397, 48.754631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.385466, 37.514324, 48.684757>,  <31.706532, 37.722538, 48.568298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385466, 37.514324, 48.684757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046469, 0.432082, 0.900636,
		-0.594615, 0.736440, -0.322629,
		-0.802667, -0.520539, 0.291144,
		31.144665, 37.358162, 48.772099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257790, 38.194168, 48.878944>,  <31.706532, 37.722538, 48.568298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257790, 38.194168, 48.878944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.153885, 37.840847, 49.035046>,  <31.091541, 37.628853, 49.128704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.153885, 37.840847, 49.035046>,  <31.257790, 38.194168, 48.878944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153885, 37.840847, 49.035046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033554, 0.395623, 0.917800,
		-0.965089, 0.251504, -0.073129,
		-0.259762, -0.883305, 0.390250,
		31.075956, 37.575855, 49.152122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958559, 38.856525, 48.810818>,  <31.257790, 38.194168, 48.878944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958559, 38.856525, 48.810818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.086138, 39.228367, 48.736946>,  <31.162685, 39.451473, 48.692623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.086138, 39.228367, 48.736946>,  <30.958559, 38.856525, 48.810818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086138, 39.228367, 48.736946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495269, -0.329610, -0.803782,
		-0.808072, 0.164900, -0.565534,
		0.318949, 0.929605, -0.184678,
		31.181822, 39.507248, 48.681541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011292, 38.882698, 48.066196>,  <30.958559, 38.856525, 48.810818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011292, 38.882698, 48.066196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.234201, 39.182186, 48.209785>,  <31.367949, 39.361877, 48.295937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.234201, 39.182186, 48.209785>,  <31.011292, 38.882698, 48.066196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234201, 39.182186, 48.209785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716716, -0.215468, -0.663243,
		-0.419238, 0.626889, -0.656696,
		0.557277, 0.748721, 0.358969,
		31.401384, 39.406803, 48.317474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256592, 39.229347, 47.380486>,  <31.011292, 38.882698, 48.066196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256592, 39.229347, 47.380486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.506884, 39.369301, 47.659351>,  <31.657059, 39.453274, 47.826672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.506884, 39.369301, 47.659351>,  <31.256592, 39.229347, 47.380486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506884, 39.369301, 47.659351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755445, -0.049164, -0.653365,
		-0.194329, 0.935501, -0.295084,
		0.625731, 0.349887, 0.697166,
		31.694603, 39.474266, 47.868500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648493, 39.730045, 47.053856>,  <31.256592, 39.229347, 47.380486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648493, 39.730045, 47.053856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.859594, 39.580502, 47.358932>,  <31.986256, 39.490776, 47.541981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.859594, 39.580502, 47.358932>,  <31.648493, 39.730045, 47.053856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859594, 39.580502, 47.358932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804081, -0.069469, -0.590447,
		0.273730, 0.924878, 0.263955,
		0.527755, -0.373864, 0.762693,
		32.017921, 39.468342, 47.587742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183746, 40.059193, 46.880497>,  <31.648493, 39.730045, 47.053856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183746, 40.059193, 46.880497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.294106, 39.772861, 47.137081>,  <32.360321, 39.601063, 47.291031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.294106, 39.772861, 47.137081>,  <32.183746, 40.059193, 46.880497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294106, 39.772861, 47.137081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912670, -0.014248, -0.408449,
		0.301519, 0.698132, 0.649383,
		0.275899, -0.715828, 0.641460,
		32.376877, 39.558113, 47.329517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893814, 40.250069, 47.133911>,  <32.183746, 40.059193, 46.880497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893814, 40.250069, 47.133911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846146, 39.859112, 47.203773>,  <32.817547, 39.624538, 47.245689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846146, 39.859112, 47.203773>,  <32.893814, 40.250069, 47.133911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846146, 39.859112, 47.203773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867101, -0.188143, -0.461236,
		0.483669, 0.096480, 0.869917,
		-0.119169, -0.977391, 0.174657,
		32.810394, 39.565895, 47.256172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478928, 40.031734, 47.501949>,  <32.893814, 40.250069, 47.133911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478928, 40.031734, 47.501949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.332268, 39.704803, 47.324165>,  <33.244274, 39.508644, 47.217495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.332268, 39.704803, 47.324165>,  <33.478928, 40.031734, 47.501949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332268, 39.704803, 47.324165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921875, -0.254789, -0.291942,
		0.125369, -0.516774, 0.846893,
		-0.366647, -0.817329, -0.444458,
		33.222275, 39.459606, 47.190826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948318, 39.438324, 47.743301>,  <33.478928, 40.031734, 47.501949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948318, 39.438324, 47.743301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.741627, 39.332848, 47.417488>,  <33.617611, 39.269562, 47.222000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.741627, 39.332848, 47.417488>,  <33.948318, 39.438324, 47.743301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741627, 39.332848, 47.417488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786485, -0.522112, -0.329908,
		-0.338284, -0.811090, 0.477176,
		-0.516725, -0.263689, -0.814533,
		33.586609, 39.253742, 47.173130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994946, 38.715302, 47.685513>,  <33.948318, 39.438324, 47.743301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994946, 38.715302, 47.685513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.928905, 38.841877, 47.311859>,  <33.889282, 38.917824, 47.087666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.928905, 38.841877, 47.311859>,  <33.994946, 38.715302, 47.685513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928905, 38.841877, 47.311859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862184, -0.413623, -0.292498,
		-0.478938, -0.853687, -0.204543,
		-0.165098, 0.316442, -0.934134,
		33.879375, 38.936810, 47.031620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536594, 38.382893, 47.295967>,  <33.994946, 38.715302, 47.685513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536594, 38.382893, 47.295967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.336372, 38.568356, 47.003540>,  <34.216240, 38.679634, 46.828083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.336372, 38.568356, 47.003540>,  <34.536594, 38.382893, 47.295967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336372, 38.568356, 47.003540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628105, -0.386644, -0.675270,
		-0.595762, -0.797198, -0.097693,
		-0.500552, 0.463662, -0.731072,
		34.186207, 38.707455, 46.784218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147148, 37.928516, 46.785866>,  <34.536594, 38.382893, 47.295967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147148, 37.928516, 46.785866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.248302, 38.272121, 46.607811>,  <34.308994, 38.478283, 46.500980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.248302, 38.272121, 46.607811>,  <34.147148, 37.928516, 46.785866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248302, 38.272121, 46.607811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674184, -0.486454, -0.555732,
		-0.693918, -0.159563, -0.702152,
		0.252891, 0.859012, -0.445134,
		34.324169, 38.529823, 46.474270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233612, 37.725506, 46.064060>,  <34.147148, 37.928516, 46.785866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233612, 37.725506, 46.064060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.440319, 38.058342, 46.144627>,  <34.564342, 38.258045, 46.192966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.440319, 38.058342, 46.144627>,  <34.233612, 37.725506, 46.064060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440319, 38.058342, 46.144627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790925, -0.373968, -0.484341,
		-0.327696, 0.409595, -0.851380,
		0.516772, 0.832094, 0.201411,
		34.595352, 38.307972, 46.205051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.403051, 41.331867, 53.510281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.005898, 41.301998, 53.473167>,  <28.767605, 41.284077, 53.450901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.005898, 41.301998, 53.473167>,  <29.403051, 41.331867, 53.510281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005898, 41.301998, 53.473167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116975, -0.465010, -0.877543,
		0.022385, -0.882150, 0.470436,
		-0.992882, -0.074673, -0.092781,
		28.708033, 41.279594, 53.445332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382477, 40.695549, 53.407562>,  <29.403051, 41.331867, 53.510281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382477, 40.695549, 53.407562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.086958, 40.897614, 53.229126>,  <28.909647, 41.018852, 53.122066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.086958, 40.897614, 53.229126>,  <29.382477, 40.695549, 53.407562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086958, 40.897614, 53.229126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300023, -0.346175, -0.888903,
		-0.603464, -0.790554, 0.104193,
		-0.738795, 0.505161, -0.446088,
		28.865320, 41.049160, 53.095299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220224, 40.247490, 52.934532>,  <29.382477, 40.695549, 53.407562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220224, 40.247490, 52.934532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063593, 40.591671, 52.804123>,  <28.969614, 40.798180, 52.725876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063593, 40.591671, 52.804123>,  <29.220224, 40.247490, 52.934532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063593, 40.591671, 52.804123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246183, -0.243435, -0.938154,
		-0.886601, -0.447622, -0.116505,
		-0.391577, 0.860450, -0.326026,
		28.946119, 40.849808, 52.706314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964201, 40.047180, 52.313221>,  <29.220224, 40.247490, 52.934532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964201, 40.047180, 52.313221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.982725, 40.446201, 52.292267>,  <28.993839, 40.685616, 52.279694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.982725, 40.446201, 52.292267>,  <28.964201, 40.047180, 52.313221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982725, 40.446201, 52.292267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335775, -0.064937, -0.939701,
		-0.940803, 0.025927, -0.337960,
		0.046310, 0.997553, -0.052387,
		28.996618, 40.745468, 52.276550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589748, 40.206974, 51.696678>,  <28.964201, 40.047180, 52.313221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589748, 40.206974, 51.696678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.810902, 40.529190, 51.781929>,  <28.943594, 40.722519, 51.833080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.810902, 40.529190, 51.781929>,  <28.589748, 40.206974, 51.696678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810902, 40.529190, 51.781929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456336, -0.078707, -0.886320,
		-0.697194, 0.587287, -0.411114,
		0.552882, 0.805543, 0.213126,
		28.976767, 40.770851, 51.845867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578358, 40.604408, 51.094776>,  <28.589748, 40.206974, 51.696678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578358, 40.604408, 51.094776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.897577, 40.754620, 51.283287>,  <29.089109, 40.844746, 51.396393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.897577, 40.754620, 51.283287>,  <28.578358, 40.604408, 51.094776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897577, 40.754620, 51.283287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563192, -0.186662, -0.804967,
		-0.214317, 0.907820, -0.360459,
		0.798049, 0.375525, 0.471273,
		29.136992, 40.867279, 51.424667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805098, 41.043797, 50.635773>,  <28.578358, 40.604408, 51.094776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805098, 41.043797, 50.635773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.115524, 40.952095, 50.870773>,  <29.301781, 40.897076, 51.011776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.115524, 40.952095, 50.870773>,  <28.805098, 41.043797, 50.635773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115524, 40.952095, 50.870773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555339, -0.193052, -0.808907,
		0.298865, 0.954030, -0.022507,
		0.776066, -0.229255, 0.587506,
		29.348345, 40.883320, 51.047024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288092, 41.333645, 50.358967>,  <28.805098, 41.043797, 50.635773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288092, 41.333645, 50.358967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.490791, 41.077808, 50.590179>,  <29.612411, 40.924305, 50.728909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.490791, 41.077808, 50.590179>,  <29.288092, 41.333645, 50.358967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490791, 41.077808, 50.590179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623426, -0.191228, -0.758137,
		0.595435, 0.744550, 0.301833,
		0.506752, -0.639591, 0.578036,
		29.642817, 40.885929, 50.763592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079271, 41.498795, 50.270676>,  <29.288092, 41.333645, 50.358967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079271, 41.498795, 50.270676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.054031, 41.121937, 50.402367>,  <30.038887, 40.895824, 50.481380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.054031, 41.121937, 50.402367>,  <30.079271, 41.498795, 50.270676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054031, 41.121937, 50.402367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644140, -0.290417, -0.707631,
		0.762300, 0.167416, 0.625196,
		-0.063099, -0.942141, 0.329224,
		30.035101, 40.839294, 50.501133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809792, 41.283131, 50.146320>,  <30.079271, 41.498795, 50.270676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809792, 41.283131, 50.146320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.584116, 40.958321, 50.206059>,  <30.448711, 40.763435, 50.241901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.584116, 40.958321, 50.206059>,  <30.809792, 41.283131, 50.146320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584116, 40.958321, 50.206059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590134, -0.523108, -0.614898,
		0.577436, -0.258787, 0.774336,
		-0.564189, -0.812026, 0.149342,
		30.414860, 40.714714, 50.250862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222296, 40.748421, 50.419876>,  <30.809792, 41.283131, 50.146320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222296, 40.748421, 50.419876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.903030, 40.566738, 50.261570>,  <30.711472, 40.457729, 50.166584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.903030, 40.566738, 50.261570>,  <31.222296, 40.748421, 50.419876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903030, 40.566738, 50.261570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590603, -0.460338, -0.662780,
		0.118853, -0.762748, 0.635681,
		-0.798162, -0.454208, -0.395768,
		30.663582, 40.430477, 50.142841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418411, 40.117760, 50.284966>,  <31.222296, 40.748421, 50.419876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418411, 40.117760, 50.284966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.104626, 40.150116, 50.039017>,  <30.916355, 40.169529, 49.891445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.104626, 40.150116, 50.039017>,  <31.418411, 40.117760, 50.284966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104626, 40.150116, 50.039017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526992, -0.435738, -0.729666,
		-0.326949, -0.896431, 0.299192,
		-0.784464, 0.080891, -0.614876,
		30.869286, 40.174385, 49.854553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399265, 39.481155, 49.953922>,  <31.418411, 40.117760, 50.284966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399265, 39.481155, 49.953922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.160099, 39.681225, 49.703377>,  <31.016600, 39.801266, 49.553051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.160099, 39.681225, 49.703377>,  <31.399265, 39.481155, 49.953922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160099, 39.681225, 49.703377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470176, -0.414022, -0.779436,
		-0.649180, -0.760535, 0.012380,
		-0.597914, 0.500173, -0.626359,
		30.980724, 39.831276, 49.515469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085833, 39.018208, 49.514847>,  <31.399265, 39.481155, 49.953922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085833, 39.018208, 49.514847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.061535, 39.362759, 49.313118>,  <31.046957, 39.569489, 49.192081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.061535, 39.362759, 49.313118>,  <31.085833, 39.018208, 49.514847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061535, 39.362759, 49.313118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498733, -0.411471, -0.762861,
		-0.864624, -0.297862, -0.404603,
		-0.060745, 0.861377, -0.504321,
		31.043312, 39.621170, 49.161823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787615, 38.337650, 49.645947>,  <31.085833, 39.018208, 49.514847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787615, 38.337650, 49.645947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.872311, 37.946926, 49.658669>,  <30.923128, 37.712494, 49.666302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.872311, 37.946926, 49.658669>,  <30.787615, 38.337650, 49.645947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872311, 37.946926, 49.658669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003212, 0.033242, 0.999442,
		-0.977320, -0.211522, 0.010177,
		0.211742, -0.976808, 0.031808,
		30.935833, 37.653885, 49.668213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238640, 37.949722, 50.065357>,  <30.787615, 38.337650, 49.645947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238640, 37.949722, 50.065357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.551207, 37.700275, 50.056511>,  <30.738747, 37.550610, 50.051205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.551207, 37.700275, 50.056511>,  <30.238640, 37.949722, 50.065357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551207, 37.700275, 50.056511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160637, -0.235281, 0.958561,
		-0.602976, -0.745485, -0.284029,
		0.781419, -0.623615, -0.022117,
		30.785633, 37.513191, 50.049877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976599, 37.358112, 50.228474>,  <30.238640, 37.949722, 50.065357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976599, 37.358112, 50.228474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.365593, 37.357048, 50.321651>,  <30.598989, 37.356407, 50.377560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.365593, 37.357048, 50.321651>,  <29.976599, 37.358112, 50.228474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365593, 37.357048, 50.321651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232905, -0.032696, 0.971950,
		0.005027, -0.999462, -0.032417,
		0.972487, -0.002665, 0.232944,
		30.657339, 37.356247, 50.391533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172132, 36.755585, 50.548595>,  <29.976599, 37.358112, 50.228474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172132, 36.755585, 50.548595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.433544, 37.034103, 50.667297>,  <30.590391, 37.201214, 50.738518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.433544, 37.034103, 50.667297>,  <30.172132, 36.755585, 50.548595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433544, 37.034103, 50.667297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519171, 0.127072, 0.845171,
		0.550784, -0.706411, 0.444544,
		0.653528, 0.696301, 0.296759,
		30.629602, 37.242992, 50.756325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202833, 36.626793, 51.287537>,  <30.172132, 36.755585, 50.548595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202833, 36.626793, 51.287537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.372734, 36.984970, 51.234219>,  <30.474674, 37.199875, 51.202229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.372734, 36.984970, 51.234219>,  <30.202833, 36.626793, 51.287537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372734, 36.984970, 51.234219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330167, 0.290317, 0.898168,
		0.842956, -0.337488, 0.418958,
		0.424752, 0.895443, -0.133297,
		30.500160, 37.253601, 51.194229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527035, 36.705116, 51.832008>,  <30.202833, 36.626793, 51.287537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527035, 36.705116, 51.832008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.516434, 37.080929, 51.695438>,  <30.510073, 37.306419, 51.613499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.516434, 37.080929, 51.695438>,  <30.527035, 36.705116, 51.832008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516434, 37.080929, 51.695438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163873, 0.332839, 0.928635,
		0.986125, 0.080563, 0.145143,
		-0.026504, 0.939536, -0.341423,
		30.508482, 37.362789, 51.593010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878870, 37.064682, 52.326439>,  <30.527035, 36.705116, 51.832008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878870, 37.064682, 52.326439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.640343, 37.321453, 52.133636>,  <30.497227, 37.475517, 52.017956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.640343, 37.321453, 52.133636>,  <30.878870, 37.064682, 52.326439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640343, 37.321453, 52.133636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214715, 0.451019, 0.866302,
		0.773500, 0.620085, -0.131119,
		-0.596318, 0.641932, -0.482005,
		30.461447, 37.514034, 51.989037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913290, 37.805313, 52.669769>,  <30.878870, 37.064682, 52.326439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913290, 37.805313, 52.669769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.575342, 37.846367, 52.459755>,  <30.372574, 37.870998, 52.333748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.575342, 37.846367, 52.459755>,  <30.913290, 37.805313, 52.669769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575342, 37.846367, 52.459755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445747, 0.407622, 0.796965,
		0.295812, 0.907364, -0.298639,
		-0.844870, 0.102635, -0.525034,
		30.321880, 37.877159, 52.302246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677622, 38.481106, 52.898281>,  <30.913290, 37.805313, 52.669769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677622, 38.481106, 52.898281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.364538, 38.281334, 52.749725>,  <30.176687, 38.161472, 52.660591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.364538, 38.281334, 52.749725>,  <30.677622, 38.481106, 52.898281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364538, 38.281334, 52.749725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589311, 0.402770, 0.700349,
		-0.200189, 0.767037, -0.609572,
		-0.782711, -0.499430, -0.371394,
		30.129725, 38.131504, 52.638306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171926, 38.985378, 52.789780>,  <30.677622, 38.481106, 52.898281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171926, 38.985378, 52.789780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.004276, 38.625317, 52.837215>,  <29.903687, 38.409279, 52.865677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.004276, 38.625317, 52.837215>,  <30.171926, 38.985378, 52.789780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004276, 38.625317, 52.837215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575623, 0.364456, 0.732004,
		-0.702133, 0.238541, -0.670900,
		-0.419127, -0.900150, 0.118586,
		29.878538, 38.355270, 52.872791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392017, 39.144070, 52.898869>,  <30.171926, 38.985378, 52.789780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392017, 39.144070, 52.898869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.422848, 38.764332, 53.020725>,  <29.441347, 38.536491, 53.093842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.422848, 38.764332, 53.020725>,  <29.392017, 39.144070, 52.898869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422848, 38.764332, 53.020725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880027, 0.078839, 0.468335,
		-0.468628, -0.304193, -0.829370,
		0.077077, -0.949343, 0.304645,
		29.445971, 38.479530, 53.112118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798563, 38.784790, 52.708019>,  <29.392017, 39.144070, 52.898869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798563, 38.784790, 52.708019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.955137, 38.568401, 53.005775>,  <29.049082, 38.438568, 53.184429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.955137, 38.568401, 53.005775>,  <28.798563, 38.784790, 52.708019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955137, 38.568401, 53.005775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908063, -0.096106, 0.407657,
		-0.148991, -0.835530, -0.528858,
		0.391436, -0.540974, 0.744396,
		29.072569, 38.406109, 53.229095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137508, 38.458725, 53.045574>,  <28.798563, 38.784790, 52.708019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137508, 38.458725, 53.045574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.428547, 38.411526, 53.315887>,  <28.603170, 38.383205, 53.478077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.428547, 38.411526, 53.315887>,  <28.137508, 38.458725, 53.045574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428547, 38.411526, 53.315887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685492, -0.086868, 0.722880,
		-0.026596, -0.989207, -0.144092,
		0.727595, -0.118000, 0.675783,
		28.646826, 38.376125, 53.518623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036165, 37.872520, 53.496658>,  <28.137508, 38.458725, 53.045574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036165, 37.872520, 53.496658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.284388, 38.101147, 53.711403>,  <28.433321, 38.238323, 53.840252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.284388, 38.101147, 53.711403>,  <28.036165, 37.872520, 53.496658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284388, 38.101147, 53.711403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500450, -0.238417, 0.832290,
		0.603704, -0.785158, 0.138087,
		0.620557, 0.571562, 0.536866,
		28.470554, 38.272614, 53.872463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.547218, 36.052143, 56.687248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.419014, 36.312267, 56.411751>,  <32.342091, 36.468342, 56.246452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.419014, 36.312267, 56.411751>,  <32.547218, 36.052143, 56.687248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419014, 36.312267, 56.411751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606301, -0.417803, -0.676639,
		-0.727784, -0.634458, -0.260372,
		-0.320515, 0.650311, -0.688742,
		32.322861, 36.507362, 56.205128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246960, 35.710163, 56.054230>,  <32.547218, 36.052143, 56.687248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246960, 35.710163, 56.054230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.359543, 36.078125, 55.945011>,  <32.427094, 36.298901, 55.879478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.359543, 36.078125, 55.945011>,  <32.246960, 35.710163, 56.054230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359543, 36.078125, 55.945011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635522, -0.391903, -0.665225,
		-0.718953, 0.013703, -0.694924,
		0.281458, 0.919905, -0.273051,
		32.443981, 36.354095, 55.863094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237434, 35.638351, 55.436619>,  <32.246960, 35.710163, 56.054230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237434, 35.638351, 55.436619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.470406, 35.962303, 55.464542>,  <32.610188, 36.156673, 55.481297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.470406, 35.962303, 55.464542>,  <32.237434, 35.638351, 55.436619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470406, 35.962303, 55.464542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624743, -0.391027, -0.675866,
		-0.520072, 0.437257, -0.733711,
		0.582428, 0.809879, 0.069810,
		32.645134, 36.205269, 55.485485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454693, 35.787590, 54.736954>,  <32.237434, 35.638351, 55.436619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454693, 35.787590, 54.736954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.710999, 35.976353, 54.979183>,  <32.864784, 36.089611, 55.124519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.710999, 35.976353, 54.979183>,  <32.454693, 35.787590, 54.736954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710999, 35.976353, 54.979183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733789, -0.144492, -0.663834,
		-0.225769, 0.869726, -0.438868,
		0.640767, 0.471910, 0.605574,
		32.903229, 36.117924, 55.160854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699879, 36.242050, 54.373508>,  <32.454693, 35.787590, 54.736954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699879, 36.242050, 54.373508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.957077, 36.185112, 54.674519>,  <33.111397, 36.150951, 54.855125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.957077, 36.185112, 54.674519>,  <32.699879, 36.242050, 54.373508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957077, 36.185112, 54.674519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719089, -0.225941, -0.657161,
		0.263568, 0.963685, -0.042923,
		0.642995, -0.142341, 0.752527,
		33.149975, 36.142410, 54.900276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344181, 36.616840, 54.240322>,  <32.699879, 36.242050, 54.373508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344181, 36.616840, 54.240322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442360, 36.329666, 54.500881>,  <33.501266, 36.157360, 54.657215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442360, 36.329666, 54.500881>,  <33.344181, 36.616840, 54.240322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442360, 36.329666, 54.500881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803160, -0.225678, -0.551366,
		0.542853, 0.658508, 0.521228,
		0.245449, -0.717939, 0.651397,
		33.515995, 36.114285, 54.696301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085899, 36.758366, 54.382027>,  <33.344181, 36.616840, 54.240322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085899, 36.758366, 54.382027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.991489, 36.376793, 54.456120>,  <33.934845, 36.147850, 54.500576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.991489, 36.376793, 54.456120>,  <34.085899, 36.758366, 54.382027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991489, 36.376793, 54.456120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749316, -0.300026, -0.590347,
		0.618724, -0.000538, 0.785608,
		-0.236021, -0.953931, 0.185230,
		33.920685, 36.090614, 54.511688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670078, 36.460152, 54.563686>,  <34.085899, 36.758366, 54.382027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670078, 36.460152, 54.563686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.432999, 36.160549, 54.445225>,  <34.290752, 35.980789, 54.374149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.432999, 36.160549, 54.445225>,  <34.670078, 36.460152, 54.563686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432999, 36.160549, 54.445225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722766, -0.332357, -0.605927,
		0.355413, -0.573180, 0.738340,
		-0.592698, -0.749002, -0.296151,
		34.255188, 35.935848, 54.356380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161072, 35.866051, 54.397224>,  <34.670078, 36.460152, 54.563686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161072, 35.866051, 54.397224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.837799, 35.709473, 54.221222>,  <34.643833, 35.615524, 54.115620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.837799, 35.709473, 54.221222>,  <35.161072, 35.866051, 54.397224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837799, 35.709473, 54.221222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586950, -0.474172, -0.656240,
		0.048244, -0.788625, 0.612979,
		-0.808185, -0.391447, -0.440007,
		34.595345, 35.592037, 54.089218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321701, 35.214230, 54.313057>,  <35.161072, 35.866051, 54.397224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321701, 35.214230, 54.313057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033928, 35.275284, 54.042027>,  <34.861263, 35.311916, 53.879406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033928, 35.275284, 54.042027>,  <35.321701, 35.214230, 54.313057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033928, 35.275284, 54.042027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544281, -0.482138, -0.686513,
		-0.431470, -0.862697, 0.263794,
		-0.719438, 0.152632, -0.677578,
		34.818096, 35.321075, 53.838753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337894, 34.557163, 53.848034>,  <35.321701, 35.214230, 54.313057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337894, 34.557163, 53.848034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.098824, 34.784737, 53.622078>,  <34.955383, 34.921280, 53.486504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.098824, 34.784737, 53.622078>,  <35.337894, 34.557163, 53.848034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098824, 34.784737, 53.622078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141763, -0.618485, -0.772903,
		-0.789107, -0.542024, 0.288999,
		-0.597673, 0.568933, -0.564890,
		34.919521, 34.955418, 53.452610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975067, 34.083042, 53.502075>,  <35.337894, 34.557163, 53.848034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975067, 34.083042, 53.502075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951855, 34.433399, 53.310471>,  <34.937927, 34.643612, 53.195507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951855, 34.433399, 53.310471>,  <34.975067, 34.083042, 53.502075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951855, 34.433399, 53.310471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388513, -0.422180, -0.819037,
		-0.919614, -0.233628, -0.315796,
		-0.058027, 0.875889, -0.479010,
		34.934448, 34.696167, 53.166767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666218, 33.957790, 52.850338>,  <34.975067, 34.083042, 53.502075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666218, 33.957790, 52.850338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831806, 34.316513, 52.787907>,  <34.931160, 34.531746, 52.750446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831806, 34.316513, 52.787907>,  <34.666218, 33.957790, 52.850338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831806, 34.316513, 52.787907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325800, -0.306073, -0.894525,
		-0.849988, 0.319461, -0.418886,
		0.413975, 0.896808, -0.156078,
		34.955997, 34.585556, 52.741085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497982, 34.091782, 52.206165>,  <34.666218, 33.957790, 52.850338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497982, 34.091782, 52.206165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.824780, 34.312962, 52.271606>,  <35.020859, 34.445671, 52.310871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.824780, 34.312962, 52.271606>,  <34.497982, 34.091782, 52.206165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824780, 34.312962, 52.271606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371784, -0.288234, -0.882438,
		-0.440788, 0.781773, -0.441064,
		0.816996, 0.552949, 0.163600,
		35.069878, 34.478848, 52.320686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895966, 34.105522, 51.599346>,  <34.497982, 34.091782, 52.206165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895966, 34.105522, 51.599346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874741, 33.706451, 51.582260>,  <33.862007, 33.467010, 51.572010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874741, 33.706451, 51.582260>,  <33.895966, 34.105522, 51.599346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874741, 33.706451, 51.582260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735855, 0.010148, 0.677063,
		-0.675057, 0.067358, -0.734684,
		-0.053062, -0.997678, -0.042715,
		33.858822, 33.407146, 51.569447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220596, 34.044323, 51.529087>,  <33.895966, 34.105522, 51.599346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220596, 34.044323, 51.529087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387604, 33.717815, 51.688782>,  <33.487808, 33.521912, 51.784599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387604, 33.717815, 51.688782>,  <33.220596, 34.044323, 51.529087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387604, 33.717815, 51.688782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730518, -0.040233, 0.681707,
		-0.540390, -0.576276, -0.613094,
		0.417518, -0.816265, 0.399238,
		33.512859, 33.472935, 51.808552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723293, 33.578362, 51.592251>,  <33.220596, 34.044323, 51.529087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723293, 33.578362, 51.592251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.996319, 33.453320, 51.856487>,  <33.160133, 33.378296, 52.015030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.996319, 33.453320, 51.856487>,  <32.723293, 33.578362, 51.592251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996319, 33.453320, 51.856487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696891, -0.006176, 0.717150,
		-0.220102, -0.949864, -0.222065,
		0.682567, -0.312602, 0.660593,
		33.201088, 33.359539, 52.054665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384979, 33.075386, 52.021835>,  <32.723293, 33.578362, 51.592251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384979, 33.075386, 52.021835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.706440, 33.140285, 52.250858>,  <32.899315, 33.179226, 52.388271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.706440, 33.140285, 52.250858>,  <32.384979, 33.075386, 52.021835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706440, 33.140285, 52.250858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572672, -0.050813, 0.818208,
		0.161847, -0.985441, 0.052080,
		0.803649, 0.162249, 0.572559,
		32.947536, 33.188961, 52.422626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367336, 32.635189, 52.623421>,  <32.384979, 33.075386, 52.021835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367336, 32.635189, 52.623421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.593307, 32.949875, 52.722973>,  <32.728889, 33.138687, 52.782703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.593307, 32.949875, 52.722973>,  <32.367336, 32.635189, 52.623421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593307, 32.949875, 52.722973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508658, 0.094541, 0.855762,
		0.649710, -0.610037, 0.453576,
		0.564928, 0.786713, 0.248876,
		32.762787, 33.185890, 52.797634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444328, 32.505333, 53.331051>,  <32.367336, 32.635189, 52.623421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444328, 32.505333, 53.331051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.564159, 32.882675, 53.274010>,  <32.636059, 33.109081, 53.239784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.564159, 32.882675, 53.274010>,  <32.444328, 32.505333, 53.331051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564159, 32.882675, 53.274010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267059, 0.226406, 0.936707,
		0.915931, -0.242537, 0.319758,
		0.299581, 0.943354, -0.142601,
		32.654034, 33.165680, 53.231228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840775, 32.686295, 53.910599>,  <32.444328, 32.505333, 53.331051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840775, 32.686295, 53.910599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.675179, 33.015362, 53.754734>,  <32.575821, 33.212803, 53.661213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.675179, 33.015362, 53.754734>,  <32.840775, 32.686295, 53.910599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675179, 33.015362, 53.754734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404408, 0.217288, 0.888392,
		0.815517, 0.525367, 0.242737,
		-0.413988, 0.822664, -0.389665,
		32.550983, 33.262161, 53.637836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921486, 33.197666, 54.416142>,  <32.840775, 32.686295, 53.910599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921486, 33.197666, 54.416142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.628086, 33.327690, 54.177372>,  <32.452045, 33.405704, 54.034111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.628086, 33.327690, 54.177372>,  <32.921486, 33.197666, 54.416142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628086, 33.327690, 54.177372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495304, 0.345789, 0.796934,
		0.465458, 0.880209, -0.092635,
		-0.733500, 0.325057, -0.596921,
		32.408035, 33.425209, 53.998295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872822, 33.855927, 54.709278>,  <32.921486, 33.197666, 54.416142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872822, 33.855927, 54.709278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.530659, 33.776989, 54.517719>,  <32.325363, 33.729626, 54.402786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.530659, 33.776989, 54.517719>,  <32.872822, 33.855927, 54.709278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530659, 33.776989, 54.517719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517764, 0.351375, 0.780036,
		0.014334, 0.915200, -0.402747,
		-0.855403, -0.197347, -0.478894,
		32.274036, 33.717785, 54.374050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411354, 34.402298, 54.839108>,  <32.872822, 33.855927, 54.709278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411354, 34.402298, 54.839108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.151241, 34.115868, 54.737629>,  <31.995173, 33.944008, 54.676743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.151241, 34.115868, 54.737629>,  <32.411354, 34.402298, 54.839108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151241, 34.115868, 54.737629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648933, 0.349961, 0.675583,
		-0.394986, 0.603954, -0.692261,
		-0.650286, -0.716077, -0.253696,
		31.956156, 33.901043, 54.661522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758871, 34.681221, 54.724724>,  <32.411354, 34.402298, 54.839108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758871, 34.681221, 54.724724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.666384, 34.295666, 54.777576>,  <31.610891, 34.064331, 54.809288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.666384, 34.295666, 54.777576>,  <31.758871, 34.681221, 54.724724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666384, 34.295666, 54.777576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860505, 0.265978, 0.434497,
		-0.453950, -0.013236, -0.890929,
		-0.231216, -0.963888, 0.132130,
		31.597019, 34.006500, 54.817215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065966, 34.623497, 54.582542>,  <31.758871, 34.681221, 54.724724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065966, 34.623497, 54.582542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.117315, 34.295563, 54.805752>,  <31.148125, 34.098801, 54.939678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.117315, 34.295563, 54.805752>,  <31.065966, 34.623497, 54.582542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117315, 34.295563, 54.805752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881036, 0.164044, 0.443694,
		-0.455297, -0.548593, -0.701249,
		0.128372, -0.819839, 0.558019,
		31.155827, 34.049610, 54.973156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441767, 34.132397, 54.417274>,  <31.065966, 34.623497, 54.582542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441767, 34.132397, 54.417274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.611818, 34.051502, 54.770176>,  <30.713850, 34.002968, 54.981915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.611818, 34.051502, 54.770176>,  <30.441767, 34.132397, 54.417274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.611818, 34.051502, 54.770176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892742, 0.067038, 0.445554,
		-0.149251, -0.977040, -0.152044,
		0.425131, -0.202235, 0.882250,
		30.739357, 33.990833, 55.034851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874903, 33.746166, 54.831177>,  <30.441767, 34.132397, 54.417274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874903, 33.746166, 54.831177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.153160, 33.889385, 55.080299>,  <30.320114, 33.975315, 55.229771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.153160, 33.889385, 55.080299>,  <29.874903, 33.746166, 54.831177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153160, 33.889385, 55.080299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718373, 0.340834, 0.606442,
		0.004862, -0.869272, 0.494309,
		0.695641, 0.358047, 0.622805,
		30.361853, 33.996799, 55.267139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302908, 33.237392, 54.920616>,  <29.874903, 33.746166, 54.831177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302908, 33.237392, 54.920616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.120037, 33.320141, 54.574623>,  <29.010315, 33.369789, 54.367027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.120037, 33.320141, 54.574623>,  <29.302908, 33.237392, 54.920616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120037, 33.320141, 54.574623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615818, -0.628077, -0.475697,
		-0.641685, -0.750148, 0.159744,
		-0.457175, 0.206874, -0.864982,
		28.982883, 33.382202, 54.315128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205563, 32.613190, 54.456490>,  <29.302908, 33.237392, 54.920616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205563, 32.613190, 54.456490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.121700, 32.894299, 54.184563>,  <29.071383, 33.062965, 54.021404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.121700, 32.894299, 54.184563>,  <29.205563, 32.613190, 54.456490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121700, 32.894299, 54.184563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213409, -0.645620, -0.733234,
		-0.954202, -0.298806, -0.014620,
		-0.209656, 0.702773, -0.679820,
		29.058804, 33.105129, 53.980618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764366, 32.291992, 53.788742>,  <29.205563, 32.613190, 54.456490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764366, 32.291992, 53.788742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.947365, 32.632370, 53.685520>,  <29.057163, 32.836597, 53.623589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.947365, 32.632370, 53.685520>,  <28.764366, 32.291992, 53.788742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947365, 32.632370, 53.685520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316793, -0.427135, -0.846875,
		-0.830867, 0.305693, -0.464986,
		0.457496, 0.850945, -0.258051,
		29.084614, 32.887653, 53.608105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476980, 32.409500, 53.129444>,  <28.764366, 32.291992, 53.788742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476980, 32.409500, 53.129444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.827511, 32.597324, 53.172451>,  <29.037830, 32.710018, 53.198257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.827511, 32.597324, 53.172451>,  <28.476980, 32.409500, 53.129444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827511, 32.597324, 53.172451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340265, -0.445395, -0.828156,
		-0.340982, 0.762322, -0.550088,
		0.876328, 0.469562, 0.107519,
		29.090410, 32.738194, 53.204708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614033, 32.768116, 52.495998>,  <28.476980, 32.409500, 53.129444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614033, 32.768116, 52.495998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.974009, 32.727680, 52.665649>,  <29.189995, 32.703419, 52.767441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.974009, 32.727680, 52.665649>,  <28.614033, 32.768116, 52.495998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974009, 32.727680, 52.665649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399965, -0.195878, -0.895355,
		0.173590, 0.975404, -0.135846,
		0.899942, -0.101091, 0.424130,
		29.243992, 32.697353, 52.792889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025791, 32.955864, 51.978352>,  <28.614033, 32.768116, 52.495998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025791, 32.955864, 51.978352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.259939, 32.738693, 52.219208>,  <29.400427, 32.608391, 52.363724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.259939, 32.738693, 52.219208>,  <29.025791, 32.955864, 51.978352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259939, 32.738693, 52.219208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492349, -0.352023, -0.796035,
		0.644155, 0.762439, 0.061244,
		0.585369, -0.542924, 0.602143,
		29.435551, 32.575817, 52.399849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731131, 33.059608, 51.644604>,  <29.025791, 32.955864, 51.978352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731131, 33.059608, 51.644604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.710653, 32.735855, 51.878624>,  <29.698368, 32.541603, 52.019035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.710653, 32.735855, 51.878624>,  <29.731131, 33.059608, 51.644604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710653, 32.735855, 51.878624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602911, -0.492065, -0.627989,
		0.796165, 0.320584, 0.513174,
		-0.051191, -0.809381, 0.585048,
		29.695295, 32.493042, 52.054138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386580, 32.860275, 51.594219>,  <29.731131, 33.059608, 51.644604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386580, 32.860275, 51.594219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.187288, 32.536854, 51.719444>,  <30.067715, 32.342800, 51.794579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.187288, 32.536854, 51.719444>,  <30.386580, 32.860275, 51.594219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187288, 32.536854, 51.719444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494884, -0.561665, -0.663040,
		0.711940, -0.175415, 0.679978,
		-0.498227, -0.808556, 0.313061,
		30.037821, 32.294289, 51.813362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827843, 32.411587, 51.707119>,  <30.386580, 32.860275, 51.594219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827843, 32.411587, 51.707119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.484741, 32.219002, 51.635063>,  <30.278879, 32.103451, 51.591827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.484741, 32.219002, 51.635063>,  <30.827843, 32.411587, 51.707119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484741, 32.219002, 51.635063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450694, -0.535791, -0.714005,
		0.247247, -0.693631, 0.676569,
		-0.857755, -0.481461, -0.180143,
		30.227415, 32.074562, 51.581020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083992, 31.693007, 51.592869>,  <30.827843, 32.411587, 51.707119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083992, 31.693007, 51.592869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.718239, 31.675760, 51.431850>,  <30.498787, 31.665413, 51.335239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.718239, 31.675760, 51.431850>,  <31.083992, 31.693007, 51.592869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718239, 31.675760, 51.431850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330147, -0.654906, -0.679781,
		-0.234324, -0.754480, 0.613068,
		-0.914383, -0.043114, -0.402549,
		30.443924, 31.662827, 51.311085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868149, 30.961737, 51.718327>,  <31.083992, 31.693007, 51.592869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868149, 30.961737, 51.718327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.714878, 31.174068, 51.415962>,  <30.622915, 31.301468, 51.234543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.714878, 31.174068, 51.415962>,  <30.868149, 30.961737, 51.718327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714878, 31.174068, 51.415962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417882, -0.630204, -0.654384,
		-0.823742, -0.566625, 0.019656,
		-0.383177, 0.530829, -0.755907,
		30.599924, 31.333317, 51.189190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657597, 30.502775, 51.219940>,  <30.868149, 30.961737, 51.718327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657597, 30.502775, 51.219940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.638256, 30.835691, 50.999050>,  <30.626652, 31.035440, 50.866516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.638256, 30.835691, 50.999050>,  <30.657597, 30.502775, 51.219940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638256, 30.835691, 50.999050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469432, -0.469074, -0.748066,
		-0.881644, -0.295405, -0.368022,
		-0.048353, 0.832289, -0.552229,
		30.623751, 31.085379, 50.833382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503437, 30.329079, 50.536850>,  <30.657597, 30.502775, 51.219940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503437, 30.329079, 50.536850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.607687, 30.704845, 50.447792>,  <30.670237, 30.930305, 50.394356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.607687, 30.704845, 50.447792>,  <30.503437, 30.329079, 50.536850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607687, 30.704845, 50.447792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402615, -0.315361, -0.859330,
		-0.877483, 0.134321, -0.460414,
		0.260623, 0.939418, -0.222644,
		30.685873, 30.986671, 50.381001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324034, 30.373034, 49.784306>,  <30.503437, 30.329079, 50.536850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324034, 30.373034, 49.784306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.592262, 30.660995, 49.855942>,  <30.753199, 30.833773, 49.898922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.592262, 30.660995, 49.855942>,  <30.324034, 30.373034, 49.784306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592262, 30.660995, 49.855942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507717, -0.269347, -0.818338,
		-0.540889, 0.639678, -0.546124,
		0.670570, 0.719906, 0.179089,
		30.793432, 30.876966, 49.909668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.979939, 37.622295, 54.216839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.221428, 37.930340, 54.299248>,  <28.366322, 38.115166, 54.348694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.221428, 37.930340, 54.299248>,  <27.979939, 37.622295, 54.216839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221428, 37.930340, 54.299248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432212, 0.099048, 0.896316,
		0.669860, -0.630169, 0.392650,
		0.603721, 0.770115, 0.206018,
		28.402544, 38.161373, 54.361053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412849, 37.451069, 54.879780>,  <27.979939, 37.622295, 54.216839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412849, 37.451069, 54.879780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.363070, 37.842037, 54.811470>,  <28.333200, 38.076618, 54.770485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.363070, 37.842037, 54.811470>,  <28.412849, 37.451069, 54.879780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363070, 37.842037, 54.811470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552560, 0.074679, 0.830121,
		0.824129, 0.197671, 0.530789,
		-0.124452, 0.977420, -0.170770,
		28.325733, 38.135262, 54.760239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399515, 37.730503, 55.571945>,  <28.412849, 37.451069, 54.879780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399515, 37.730503, 55.571945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.236429, 38.007713, 55.334126>,  <28.138578, 38.174038, 55.191433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.236429, 38.007713, 55.334126>,  <28.399515, 37.730503, 55.571945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236429, 38.007713, 55.334126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778337, 0.076699, 0.623145,
		0.477454, 0.716825, 0.508133,
		-0.407712, 0.693022, -0.594551,
		28.114115, 38.215618, 55.155762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274698, 38.330807, 56.005413>,  <28.399515, 37.730503, 55.571945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274698, 38.330807, 56.005413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.009483, 38.350243, 55.706612>,  <27.850355, 38.361904, 55.527328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.009483, 38.350243, 55.706612>,  <28.274698, 38.330807, 56.005413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009483, 38.350243, 55.706612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745488, 0.047834, 0.664800,
		0.068037, 0.997673, 0.004509,
		-0.663037, 0.048593, -0.747008,
		27.810572, 38.364819, 55.482510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949320, 38.885513, 56.167000>,  <28.274698, 38.330807, 56.005413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949320, 38.885513, 56.167000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.718010, 38.685070, 55.909477>,  <27.579224, 38.564804, 55.754963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.718010, 38.685070, 55.909477>,  <27.949320, 38.885513, 56.167000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718010, 38.685070, 55.909477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799021, 0.188449, 0.571009,
		-0.164809, 0.844619, -0.509368,
		-0.578276, -0.501104, -0.643811,
		27.544527, 38.534740, 55.716335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409386, 39.419144, 55.919029>,  <27.949320, 38.885513, 56.167000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409386, 39.419144, 55.919029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.278091, 39.041389, 55.910980>,  <27.199316, 38.814739, 55.906151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.278091, 39.041389, 55.910980>,  <27.409386, 39.419144, 55.919029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278091, 39.041389, 55.910980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807649, 0.269538, 0.524455,
		-0.489863, 0.188392, -0.851201,
		-0.328234, -0.944382, -0.020118,
		27.179621, 38.758076, 55.904945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631126, 39.524006, 55.917042>,  <27.409386, 39.419144, 55.919029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631126, 39.524006, 55.917042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.656178, 39.126076, 55.949020>,  <26.671207, 38.887318, 55.968208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.656178, 39.126076, 55.949020>,  <26.631126, 39.524006, 55.917042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656178, 39.126076, 55.949020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944527, -0.033202, 0.326750,
		-0.322407, -0.095978, -0.941723,
		0.062628, -0.994829, 0.079949,
		26.674965, 38.827625, 55.973003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028345, 39.330570, 55.672867>,  <26.631126, 39.524006, 55.917042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028345, 39.330570, 55.672867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.147627, 39.006214, 55.874275>,  <26.219196, 38.811600, 55.995121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.147627, 39.006214, 55.874275>,  <26.028345, 39.330570, 55.672867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147627, 39.006214, 55.874275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919883, -0.103365, 0.378325,
		-0.254734, -0.575997, -0.776748,
		0.298203, -0.810890, 0.503520,
		26.237087, 38.762947, 56.025330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.474079, 38.856728, 55.606277>,  <26.028345, 39.330570, 55.672867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.474079, 38.856728, 55.606277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.688395, 38.713642, 55.912212>,  <25.816984, 38.627792, 56.095772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.688395, 38.713642, 55.912212>,  <25.474079, 38.856728, 55.606277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688395, 38.713642, 55.912212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843699, -0.191152, 0.501630,
		-0.033237, -0.914060, -0.404214,
		0.535787, -0.357708, 0.764839,
		25.849131, 38.606331, 56.141663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.241873, 38.223930, 55.777637>,  <25.474079, 38.856728, 55.606277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.241873, 38.223930, 55.777637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.421938, 38.370663, 56.103287>,  <25.529978, 38.458702, 56.298676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.421938, 38.370663, 56.103287>,  <25.241873, 38.223930, 55.777637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.421938, 38.370663, 56.103287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858111, -0.074458, 0.508037,
		0.246981, -0.927304, 0.281262,
		0.450163, 0.366829, 0.814119,
		25.556986, 38.480713, 56.347523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.913116, 37.908737, 56.382984>,  <25.241873, 38.223930, 55.777637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.913116, 37.908737, 56.382984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.064690, 38.240471, 56.547237>,  <25.155634, 38.439510, 56.645790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.064690, 38.240471, 56.547237>,  <24.913116, 37.908737, 56.382984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.064690, 38.240471, 56.547237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811665, 0.084692, 0.577951,
		0.444534, -0.552303, 0.705231,
		0.378931, 0.829331, 0.410637,
		25.178370, 38.489269, 56.670429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.093878, 37.941093, 57.063385>,  <24.913116, 37.908737, 56.382984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.093878, 37.941093, 57.063385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.993425, 38.322159, 56.994846>,  <24.933155, 38.550800, 56.953724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.993425, 38.322159, 56.994846>,  <25.093878, 37.941093, 57.063385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.993425, 38.322159, 56.994846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676602, -0.046179, 0.734900,
		0.692203, 0.300486, 0.656174,
		-0.251129, 0.952668, -0.171344,
		24.918087, 38.607960, 56.943443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.569935, 37.424179, 57.312916>,  <25.093878, 37.941093, 57.063385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.569935, 37.424179, 57.312916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.330830, 37.547394, 57.016865>,  <24.187366, 37.621323, 56.839233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.330830, 37.547394, 57.016865>,  <24.569935, 37.424179, 57.312916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.330830, 37.547394, 57.016865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773779, 0.019728, 0.633148,
		0.209635, 0.951169, 0.226562,
		-0.597761, 0.308039, -0.740131,
		24.151501, 37.639805, 56.794827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.543478, 36.670399, 57.124744>,  <24.569935, 37.424179, 57.312916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.543478, 36.670399, 57.124744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.809433, 36.500034, 57.370190>,  <24.969006, 36.397816, 57.517456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.809433, 36.500034, 57.370190>,  <24.543478, 36.670399, 57.124744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.809433, 36.500034, 57.370190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582891, -0.217847, -0.782803,
		0.467082, 0.878145, 0.103419,
		0.664885, -0.425915, 0.613616,
		25.008898, 36.372261, 57.554276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.196682, 36.899982, 56.937996>,  <24.543478, 36.670399, 57.124744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.196682, 36.899982, 56.937996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.265179, 36.561264, 57.139435>,  <25.306276, 36.358032, 57.260300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.265179, 36.561264, 57.139435>,  <25.196682, 36.899982, 56.937996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.265179, 36.561264, 57.139435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757413, -0.213746, -0.616959,
		0.630080, 0.487085, 0.604771,
		0.171244, -0.846795, 0.503601,
		25.316551, 36.307224, 57.290516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944029, 36.877880, 57.234318>,  <25.196682, 36.899982, 56.937996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944029, 36.877880, 57.234318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.819736, 36.502144, 57.176239>,  <25.745161, 36.276703, 57.141392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.819736, 36.502144, 57.176239>,  <25.944029, 36.877880, 57.234318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.819736, 36.502144, 57.176239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819433, -0.187331, -0.541698,
		0.481640, -0.287302, 0.827938,
		-0.310729, -0.939342, -0.145199,
		25.726517, 36.220341, 57.132679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.514313, 36.395035, 57.468929>,  <25.944029, 36.877880, 57.234318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.514313, 36.395035, 57.468929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.272930, 36.201622, 57.215305>,  <26.128101, 36.085575, 57.063129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.272930, 36.201622, 57.215305>,  <26.514313, 36.395035, 57.468929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272930, 36.201622, 57.215305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795613, -0.418245, -0.438258,
		-0.053283, -0.768939, 0.637097,
		-0.603457, -0.483532, -0.634064,
		26.091892, 36.056564, 57.025085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.803755, 35.701832, 57.340427>,  <26.514313, 36.395035, 57.468929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.803755, 35.701832, 57.340427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.563770, 35.787327, 57.032047>,  <26.419781, 35.838623, 56.847019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.563770, 35.787327, 57.032047>,  <26.803755, 35.701832, 57.340427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563770, 35.787327, 57.032047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652033, -0.427751, -0.626004,
		-0.463575, -0.878263, 0.117270,
		-0.599959, 0.213736, -0.770951,
		26.383783, 35.851448, 56.800762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804371, 35.114483, 56.968285>,  <26.803755, 35.701832, 57.340427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804371, 35.114483, 56.968285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.661222, 35.360424, 56.687176>,  <26.575333, 35.507988, 56.518513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.661222, 35.360424, 56.687176>,  <26.804371, 35.114483, 56.968285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.661222, 35.360424, 56.687176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572398, -0.450180, -0.685346,
		-0.737760, -0.647528, -0.190834,
		-0.357871, 0.614854, -0.702768,
		26.553862, 35.544880, 56.476345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002087, 34.742065, 56.318165>,  <26.804371, 35.114483, 56.968285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002087, 34.742065, 56.318165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.857527, 35.086239, 56.174477>,  <26.770790, 35.292744, 56.088264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.857527, 35.086239, 56.174477>,  <27.002087, 34.742065, 56.318165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857527, 35.086239, 56.174477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467707, -0.165995, -0.868156,
		-0.806623, -0.481760, -0.342443,
		-0.361399, 0.860438, -0.359218,
		26.749107, 35.344372, 56.066711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663450, 34.553253, 55.769657>,  <27.002087, 34.742065, 56.318165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663450, 34.553253, 55.769657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.796297, 34.928345, 55.728935>,  <26.876005, 35.153400, 55.704502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.796297, 34.928345, 55.728935>,  <26.663450, 34.553253, 55.769657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796297, 34.928345, 55.728935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408276, -0.240213, -0.880686,
		-0.850299, 0.250926, -0.462631,
		0.332117, 0.937728, -0.101805,
		26.895933, 35.209663, 55.698395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515442, 34.698318, 55.100838>,  <26.663450, 34.553253, 55.769657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515442, 34.698318, 55.100838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.797882, 34.966949, 55.190643>,  <26.967346, 35.128128, 55.244526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.797882, 34.966949, 55.190643>,  <26.515442, 34.698318, 55.100838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797882, 34.966949, 55.190643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457960, -0.191276, -0.868151,
		-0.540086, 0.715819, -0.442616,
		0.706101, 0.671577, 0.224511,
		27.009712, 35.168423, 55.257996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660889, 35.110371, 54.472214>,  <26.515442, 34.698318, 55.100838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.660889, 35.110371, 54.472214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.985359, 35.149754, 54.702793>,  <27.180042, 35.173382, 54.841141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.985359, 35.149754, 54.702793>,  <26.660889, 35.110371, 54.472214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985359, 35.149754, 54.702793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564900, -0.386873, -0.728846,
		0.151255, 0.916862, -0.369440,
		0.811178, 0.098455, 0.576452,
		27.228712, 35.179291, 54.875729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131378, 35.156372, 54.059311>,  <26.660889, 35.110371, 54.472214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131378, 35.156372, 54.059311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.334461, 35.042244, 54.384476>,  <27.456310, 34.973766, 54.579575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.334461, 35.042244, 54.384476>,  <27.131378, 35.156372, 54.059311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.334461, 35.042244, 54.384476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555402, -0.612924, -0.562007,
		0.658605, 0.736828, -0.152719,
		0.507708, -0.285321, 0.812911,
		27.486774, 34.956646, 54.628349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870552, 35.139168, 53.923466>,  <27.131378, 35.156372, 54.059311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870552, 35.139168, 53.923466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.865755, 34.914547, 54.254410>,  <27.862877, 34.779774, 54.452976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.865755, 34.914547, 54.254410>,  <27.870552, 35.139168, 53.923466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865755, 34.914547, 54.254410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760011, -0.542812, -0.357406,
		0.649800, 0.624514, 0.433293,
		-0.011992, -0.561549, 0.827356,
		27.862158, 34.746082, 54.502617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588921, 35.010029, 54.144958>,  <27.870552, 35.139168, 53.923466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588921, 35.010029, 54.144958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.385443, 34.706360, 54.307384>,  <28.263355, 34.524158, 54.404842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.385443, 34.706360, 54.307384>,  <28.588921, 35.010029, 54.144958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385443, 34.706360, 54.307384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716766, -0.634726, -0.288739,
		0.476944, 0.144176, 0.867028,
		-0.508696, -0.759168, 0.406069,
		28.232834, 34.478611, 54.429207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084938, 34.635597, 54.570839>,  <28.588921, 35.010029, 54.144958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084938, 34.635597, 54.570839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.802984, 34.357662, 54.513786>,  <28.633812, 34.190903, 54.479557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.802984, 34.357662, 54.513786>,  <29.084938, 34.635597, 54.570839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802984, 34.357662, 54.513786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706492, -0.669780, -0.228610,
		0.063317, -0.261909, 0.963013,
		-0.704883, -0.694837, -0.142628,
		28.591520, 34.149212, 54.470997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207235, 34.098568, 55.038551>,  <29.084938, 34.635597, 54.570839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207235, 34.098568, 55.038551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.997986, 33.929592, 54.742474>,  <28.872437, 33.828209, 54.564827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.997986, 33.929592, 54.742474>,  <29.207235, 34.098568, 55.038551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997986, 33.929592, 54.742474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738046, -0.658857, -0.145587,
		-0.426181, -0.622458, 0.656441,
		-0.523123, -0.422438, -0.740195,
		28.841049, 33.802860, 54.520416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547640, 33.572239, 55.492012>,  <29.207235, 34.098568, 55.038551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547640, 33.572239, 55.492012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.829193, 33.848705, 55.557529>,  <29.998125, 34.014587, 55.596840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.829193, 33.848705, 55.557529>,  <29.547640, 33.572239, 55.492012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829193, 33.848705, 55.557529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570650, 0.412933, 0.709820,
		0.422988, -0.593084, 0.685078,
		0.703874, 0.691186, 0.163778,
		30.040359, 34.056057, 55.606667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568155, 33.690853, 56.186863>,  <29.547640, 33.572239, 55.492012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568155, 33.690853, 56.186863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.756367, 34.025520, 56.074734>,  <29.869293, 34.226322, 56.007458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.756367, 34.025520, 56.074734>,  <29.568155, 33.690853, 56.186863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756367, 34.025520, 56.074734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496858, 0.513760, 0.699416,
		0.729201, -0.189814, 0.657446,
		0.470529, 0.836672, -0.280324,
		29.897526, 34.276524, 55.990635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801716, 34.012764, 56.835789>,  <29.568155, 33.690853, 56.186863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801716, 34.012764, 56.835789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.785082, 34.289116, 56.547077>,  <29.775103, 34.454926, 56.373852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.785082, 34.289116, 56.547077>,  <29.801716, 34.012764, 56.835789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785082, 34.289116, 56.547077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287396, 0.683599, 0.670892,
		0.956909, 0.235334, 0.170128,
		-0.041584, 0.690877, -0.721776,
		29.772606, 34.496380, 56.330544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139267, 34.571934, 57.137424>,  <29.801716, 34.012764, 56.835789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139267, 34.571934, 57.137424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.915304, 34.728603, 56.845371>,  <29.780926, 34.822605, 56.670139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.915304, 34.728603, 56.845371>,  <30.139267, 34.571934, 57.137424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915304, 34.728603, 56.845371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404916, 0.639466, 0.653549,
		0.722873, 0.661570, -0.199448,
		-0.559909, 0.391673, -0.730133,
		29.747332, 34.846104, 56.626331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311344, 35.224323, 57.213051>,  <30.139267, 34.571934, 57.137424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311344, 35.224323, 57.213051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.961401, 35.223106, 57.019302>,  <29.751434, 35.222378, 56.903053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.961401, 35.223106, 57.019302>,  <30.311344, 35.224323, 57.213051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961401, 35.223106, 57.019302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364068, 0.663715, 0.653404,
		0.319494, 0.747979, -0.581765,
		-0.874859, -0.003043, -0.484368,
		29.698944, 35.222195, 56.873993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095133, 35.910629, 57.201088>,  <30.311344, 35.224323, 57.213051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095133, 35.910629, 57.201088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.762524, 35.695755, 57.144527>,  <29.562958, 35.566830, 57.110592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.762524, 35.695755, 57.144527>,  <30.095133, 35.910629, 57.201088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762524, 35.695755, 57.144527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433746, 0.468872, 0.769431,
		-0.347031, 0.701133, -0.622882,
		-0.831525, -0.537189, -0.141400,
		29.513065, 35.534599, 57.102108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583384, 36.358913, 57.303696>,  <30.095133, 35.910629, 57.201088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583384, 36.358913, 57.303696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.403376, 36.003452, 57.338985>,  <29.295372, 35.790176, 57.360157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.403376, 36.003452, 57.338985>,  <29.583384, 36.358913, 57.303696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403376, 36.003452, 57.338985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541215, 0.349980, 0.764592,
		-0.710331, 0.296334, -0.638448,
		-0.450018, -0.888651, 0.088221,
		29.268370, 35.736858, 57.365452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503256, 37.013714, 56.943798>,  <29.583384, 36.358913, 57.303696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503256, 37.013714, 56.943798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.761581, 37.218754, 57.170132>,  <29.916576, 37.341778, 57.305931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.761581, 37.218754, 57.170132>,  <29.503256, 37.013714, 56.943798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761581, 37.218754, 57.170132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747559, -0.273906, -0.605087,
		-0.155183, 0.813766, -0.560092,
		0.645812, 0.512601, 0.565833,
		29.955324, 37.372536, 57.339882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887859, 37.444267, 56.443077>,  <29.503256, 37.013714, 56.943798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887859, 37.444267, 56.443077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.104399, 37.432384, 56.779186>,  <30.234322, 37.425255, 56.980850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.104399, 37.432384, 56.779186>,  <29.887859, 37.444267, 56.443077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104399, 37.432384, 56.779186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840450, 0.047868, -0.539770,
		-0.024189, 0.998412, 0.050877,
		0.541348, -0.029703, 0.840273,
		30.266804, 37.423473, 57.031269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415678, 37.902077, 56.384003>,  <29.887859, 37.444267, 56.443077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415678, 37.902077, 56.384003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.506605, 37.630096, 56.662857>,  <30.561161, 37.466908, 56.830170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.506605, 37.630096, 56.662857>,  <30.415678, 37.902077, 56.384003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506605, 37.630096, 56.662857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880577, -0.162159, -0.445296,
		0.415826, 0.715102, 0.561887,
		0.227317, -0.679951, 0.697132,
		30.574800, 37.426109, 56.871998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087044, 38.095482, 56.601315>,  <30.415678, 37.902077, 56.384003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087044, 38.095482, 56.601315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.044592, 37.702297, 56.661354>,  <31.019121, 37.466389, 56.697380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.044592, 37.702297, 56.661354>,  <31.087044, 38.095482, 56.601315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044592, 37.702297, 56.661354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874074, -0.164191, -0.457205,
		0.474059, 0.082678, 0.876603,
		-0.106129, -0.982958, 0.150102,
		31.012753, 37.407410, 56.706387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818636, 37.921017, 56.830143>,  <31.087044, 38.095482, 56.601315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818636, 37.921017, 56.830143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.623747, 37.591545, 56.714092>,  <31.506813, 37.393864, 56.644463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.623747, 37.591545, 56.714092>,  <31.818636, 37.921017, 56.830143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623747, 37.591545, 56.714092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829024, -0.331839, -0.450114,
		0.274472, -0.459829, 0.844525,
		-0.487222, -0.823675, -0.290129,
		31.477581, 37.344444, 56.627052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277691, 37.399429, 57.124916>,  <31.818636, 37.921017, 56.830143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277691, 37.399429, 57.124916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.031170, 37.249283, 56.848000>,  <31.883257, 37.159195, 56.681850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.031170, 37.249283, 56.848000>,  <32.277691, 37.399429, 57.124916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031170, 37.249283, 56.848000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783224, -0.383712, -0.489208,
		-0.082011, -0.843722, 0.530478,
		-0.616307, -0.375363, -0.692292,
		31.846277, 37.136673, 56.640312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490513, 36.732277, 57.101799>,  <32.277691, 37.399429, 57.124916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490513, 36.732277, 57.101799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.285095, 36.761581, 56.759827>,  <32.161846, 36.779163, 56.554646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.285095, 36.761581, 56.759827>,  <32.490513, 36.732277, 57.101799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285095, 36.761581, 56.759827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735708, -0.475166, -0.482650,
		-0.441595, -0.876840, 0.190118,
		-0.513545, 0.073264, -0.854929,
		32.131031, 36.783562, 56.503349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<26.800646, 42.428787, 57.610611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690027, 42.044914, 57.590511>,  <26.623655, 41.814590, 57.578453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690027, 42.044914, 57.590511>,  <26.800646, 42.428787, 57.610611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690027, 42.044914, 57.590511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578976, -0.124652, -0.805760,
		0.767013, -0.251922, 0.590107,
		-0.276546, -0.959686, -0.050247,
		26.607063, 41.757008, 57.575436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363670, 41.868984, 57.663456>,  <26.800646, 42.428787, 57.610611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363670, 41.868984, 57.663456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.050114, 41.721214, 57.463840>,  <26.861979, 41.632553, 57.344070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.050114, 41.721214, 57.463840>,  <27.363670, 41.868984, 57.663456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050114, 41.721214, 57.463840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607903, -0.293073, -0.737945,
		0.126357, -0.881837, 0.454310,
		-0.783893, -0.369421, -0.499040,
		26.814945, 41.610390, 57.314129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509983, 41.241634, 57.369873>,  <27.363670, 41.868984, 57.663456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509983, 41.241634, 57.369873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190397, 41.341888, 57.151207>,  <26.998646, 41.402039, 57.020008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190397, 41.341888, 57.151207>,  <27.509983, 41.241634, 57.369873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190397, 41.341888, 57.151207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464217, -0.320850, -0.825565,
		-0.382312, -0.913366, 0.139999,
		-0.798962, 0.250634, -0.546665,
		26.950708, 41.417080, 56.987209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455381, 40.739414, 56.916069>,  <27.509983, 41.241634, 57.369873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.455381, 40.739414, 56.916069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232590, 41.011566, 56.725552>,  <27.098915, 41.174858, 56.611240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232590, 41.011566, 56.725552>,  <27.455381, 40.739414, 56.916069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232590, 41.011566, 56.725552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378608, -0.302418, -0.874756,
		-0.739209, -0.667548, -0.089158,
		-0.556979, 0.680384, -0.476289,
		27.065496, 41.215683, 56.582664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149879, 40.428864, 56.330799>,  <27.455381, 40.739414, 56.916069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149879, 40.428864, 56.330799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144297, 40.818798, 56.241798>,  <27.140947, 41.052757, 56.188396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144297, 40.818798, 56.241798>,  <27.149879, 40.428864, 56.330799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144297, 40.818798, 56.241798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434199, -0.194542, -0.879559,
		-0.900709, -0.108886, -0.420556,
		-0.013956, 0.974832, -0.222504,
		27.140110, 41.111248, 56.175049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785141, 40.502056, 55.591805>,  <27.149879, 40.428864, 56.330799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785141, 40.502056, 55.591805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979225, 40.843067, 55.669540>,  <27.095676, 41.047672, 55.716183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979225, 40.843067, 55.669540>,  <26.785141, 40.502056, 55.591805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979225, 40.843067, 55.669540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429077, -0.038489, -0.902448,
		-0.761880, 0.521265, -0.384475,
		0.485213, 0.852526, 0.194339,
		27.124788, 41.098824, 55.727840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666626, 41.035812, 55.016670>,  <26.785141, 40.502056, 55.591805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666626, 41.035812, 55.016670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001474, 41.161259, 55.195946>,  <27.202383, 41.236526, 55.303509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001474, 41.161259, 55.195946>,  <26.666626, 41.035812, 55.016670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001474, 41.161259, 55.195946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388470, 0.236005, -0.890726,
		-0.385122, 0.919753, 0.075734,
		0.837121, 0.313618, 0.448187,
		27.252611, 41.255344, 55.330402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853855, 41.616707, 54.668312>,  <26.666626, 41.035812, 55.016670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853855, 41.616707, 54.668312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208384, 41.539833, 54.836838>,  <27.421101, 41.493710, 54.937954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208384, 41.539833, 54.836838>,  <26.853855, 41.616707, 54.668312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208384, 41.539833, 54.836838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447974, 0.125408, -0.885207,
		0.117285, 0.973313, 0.197244,
		0.886320, -0.192182, 0.421311,
		27.474279, 41.482178, 54.963230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154036, 42.110527, 54.369164>,  <26.853855, 41.616707, 54.668312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154036, 42.110527, 54.369164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406433, 41.834164, 54.510300>,  <27.557871, 41.668346, 54.594982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406433, 41.834164, 54.510300>,  <27.154036, 42.110527, 54.369164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406433, 41.834164, 54.510300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531862, 0.054158, -0.845097,
		0.564773, 0.720914, 0.401640,
		0.630994, -0.690905, 0.352840,
		27.595732, 41.626892, 54.616150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777176, 42.358051, 54.130264>,  <27.154036, 42.110527, 54.369164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777176, 42.358051, 54.130264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883883, 41.985126, 54.227932>,  <27.947906, 41.761372, 54.286533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883883, 41.985126, 54.227932>,  <27.777176, 42.358051, 54.130264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883883, 41.985126, 54.227932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571351, -0.051043, -0.819117,
		0.776140, 0.358023, 0.519064,
		0.266768, -0.932317, 0.244173,
		27.963913, 41.705433, 54.301186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612797, 42.348080, 54.140633>,  <27.777176, 42.358051, 54.130264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612797, 42.348080, 54.140633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437851, 41.992813, 54.084232>,  <28.332884, 41.779655, 54.050392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437851, 41.992813, 54.084232>,  <28.612797, 42.348080, 54.140633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437851, 41.992813, 54.084232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496347, -0.107663, -0.861422,
		0.749902, -0.446740, 0.487925,
		-0.437363, -0.888162, -0.141001,
		28.306643, 41.726364, 54.041931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138987, 41.973064, 53.771694>,  <28.612797, 42.348080, 54.140633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138987, 41.973064, 53.771694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808769, 41.755898, 53.710083>,  <28.610640, 41.625599, 53.673119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808769, 41.755898, 53.710083>,  <29.138987, 41.973064, 53.771694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808769, 41.755898, 53.710083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383789, -0.340013, -0.858543,
		0.413744, -0.767878, 0.489060,
		-0.825543, -0.542913, -0.154025,
		28.561106, 41.593025, 53.663876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603264, 41.757240, 54.163647>,  <29.138987, 41.973064, 53.771694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603264, 41.757240, 54.163647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930147, 41.545597, 54.255051>,  <30.126278, 41.418610, 54.309895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930147, 41.545597, 54.255051>,  <29.603264, 41.757240, 54.163647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930147, 41.545597, 54.255051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206711, 0.101026, 0.973172,
		-0.537999, -0.842519, -0.026813,
		0.817207, -0.529108, 0.228510,
		30.175310, 41.386864, 54.323605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464064, 41.191986, 54.611237>,  <29.603264, 41.757240, 54.163647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464064, 41.191986, 54.611237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842806, 41.297115, 54.685417>,  <30.070051, 41.360191, 54.729923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842806, 41.297115, 54.685417>,  <29.464064, 41.191986, 54.611237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842806, 41.297115, 54.685417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173928, -0.066650, 0.982500,
		0.270583, -0.962540, -0.017396,
		0.946855, 0.262822, 0.185447,
		30.126862, 41.375961, 54.741051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671762, 40.783520, 55.146046>,  <29.464064, 41.191986, 54.611237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671762, 40.783520, 55.146046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910528, 41.104393, 55.140526>,  <30.053787, 41.296917, 55.137215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910528, 41.104393, 55.140526>,  <29.671762, 40.783520, 55.146046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910528, 41.104393, 55.140526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086334, 0.081324, 0.992941,
		0.797646, -0.591510, 0.117799,
		0.596915, 0.802186, -0.013800,
		30.089603, 41.345047, 55.136387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029911, 40.711086, 55.667099>,  <29.671762, 40.783520, 55.146046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029911, 40.711086, 55.667099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108885, 41.099037, 55.610039>,  <30.156269, 41.331810, 55.575802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108885, 41.099037, 55.610039>,  <30.029911, 40.711086, 55.667099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108885, 41.099037, 55.610039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035029, 0.138445, 0.989750,
		0.979690, -0.200408, -0.006641,
		0.197434, 0.969881, -0.142653,
		30.168116, 41.390003, 55.567242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625429, 40.883446, 56.074646>,  <30.029911, 40.711086, 55.667099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625429, 40.883446, 56.074646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417675, 41.215332, 55.992855>,  <30.293022, 41.414463, 55.943779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417675, 41.215332, 55.992855>,  <30.625429, 40.883446, 56.074646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417675, 41.215332, 55.992855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240001, 0.088024, 0.966774,
		0.820145, 0.551204, 0.153414,
		-0.519385, 0.829714, -0.204482,
		30.261860, 41.464245, 55.931511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885019, 41.339134, 56.574409>,  <30.625429, 40.883446, 56.074646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885019, 41.339134, 56.574409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544909, 41.513042, 56.455746>,  <30.340841, 41.617386, 56.384548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544909, 41.513042, 56.455746>,  <30.885019, 41.339134, 56.574409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544909, 41.513042, 56.455746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168259, 0.309522, 0.935887,
		0.498714, 0.845680, -0.190026,
		-0.850279, 0.434766, -0.296656,
		30.289825, 41.643471, 56.366749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808800, 42.028465, 57.015793>,  <30.885019, 41.339134, 56.574409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808800, 42.028465, 57.015793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446198, 41.928082, 56.879990>,  <30.228636, 41.867851, 56.798508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446198, 41.928082, 56.879990>,  <30.808800, 42.028465, 57.015793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446198, 41.928082, 56.879990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398492, 0.242953, 0.884408,
		-0.139468, 0.937012, -0.320245,
		-0.906506, -0.250962, -0.339508,
		30.174246, 41.852795, 56.778137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366936, 42.517986, 57.300533>,  <30.808800, 42.028465, 57.015793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366936, 42.517986, 57.300533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123640, 42.223568, 57.181683>,  <29.977663, 42.046917, 57.110374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123640, 42.223568, 57.181683>,  <30.366936, 42.517986, 57.300533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123640, 42.223568, 57.181683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444723, 0.005952, 0.895648,
		-0.657470, 0.676905, -0.330957,
		-0.608239, -0.736046, -0.297122,
		29.941168, 42.002754, 57.092545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733402, 42.747131, 57.573166>,  <30.366936, 42.517986, 57.300533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733402, 42.747131, 57.573166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678082, 42.359097, 57.493366>,  <29.644890, 42.126274, 57.445484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678082, 42.359097, 57.493366>,  <29.733402, 42.747131, 57.573166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678082, 42.359097, 57.493366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528687, -0.098023, 0.843138,
		-0.837474, 0.222082, -0.499316,
		-0.138301, -0.970088, -0.199504,
		29.636591, 42.068069, 57.433514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066851, 42.712330, 57.729843>,  <29.733402, 42.747131, 57.573166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066851, 42.712330, 57.729843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235970, 42.349846, 57.727554>,  <29.337440, 42.132355, 57.726181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235970, 42.349846, 57.727554>,  <29.066851, 42.712330, 57.729843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235970, 42.349846, 57.727554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509612, -0.242976, 0.825384,
		-0.749359, -0.346052, -0.564543,
		0.422796, -0.906207, -0.005725,
		29.362808, 42.077984, 57.725838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.520271, 42.205563, 57.801952>,  <29.066851, 42.712330, 57.729843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.520271, 42.205563, 57.801952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.850138, 42.029964, 57.944618>,  <29.048058, 41.924606, 58.030216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.850138, 42.029964, 57.944618>,  <28.520271, 42.205563, 57.801952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850138, 42.029964, 57.944618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486725, -0.229548, 0.842856,
		-0.288145, -0.868668, -0.402974,
		0.824664, -0.439003, 0.356659,
		29.097538, 41.898266, 58.051617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233686, 41.641289, 58.152081>,  <28.520271, 42.205563, 57.801952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233686, 41.641289, 58.152081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.604315, 41.647381, 58.302406>,  <28.826693, 41.651035, 58.392601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.604315, 41.647381, 58.302406>,  <28.233686, 41.641289, 58.152081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604315, 41.647381, 58.302406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359235, -0.260200, 0.896240,
		0.111434, -0.965435, -0.235623,
		0.926570, 0.015228, 0.375813,
		28.882286, 41.651951, 58.415150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559496, 40.884621, 58.404385>,  <28.233686, 41.641289, 58.152081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559496, 40.884621, 58.404385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763992, 41.164108, 58.604557>,  <28.886690, 41.331802, 58.724659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763992, 41.164108, 58.604557>,  <28.559496, 40.884621, 58.404385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763992, 41.164108, 58.604557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188778, -0.476757, 0.858525,
		0.838449, -0.533382, -0.111835,
		0.511240, 0.698718, 0.500427,
		28.917364, 41.373722, 58.754684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041386, 40.530258, 58.755455>,  <28.559496, 40.884621, 58.404385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041386, 40.530258, 58.755455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030798, 40.872574, 58.962116>,  <29.024445, 41.077965, 59.086113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030798, 40.872574, 58.962116>,  <29.041386, 40.530258, 58.755455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030798, 40.872574, 58.962116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108161, -0.516248, 0.849582,
		0.993781, -0.033393, 0.106228,
		-0.026470, 0.855788, 0.516649,
		29.022858, 41.129311, 59.117111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031622, 40.218666, 58.028961>,  <29.041386, 40.530258, 58.755455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031622, 40.218666, 58.028961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861570, 39.943668, 58.264458>,  <28.759541, 39.778671, 58.405754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861570, 39.943668, 58.264458>,  <29.031622, 40.218666, 58.028961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861570, 39.943668, 58.264458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654381, -0.682834, -0.324844,
		0.625341, 0.247162, 0.740175,
		-0.425128, -0.687495, 0.588742,
		28.734032, 39.737419, 58.441082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568058, 39.803883, 58.215622>,  <29.031622, 40.218666, 58.028961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568058, 39.803883, 58.215622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274199, 39.568043, 58.349884>,  <29.097883, 39.426537, 58.430439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274199, 39.568043, 58.349884>,  <29.568058, 39.803883, 58.215622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274199, 39.568043, 58.349884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543119, -0.807581, -0.229858,
		0.406591, 0.013434, 0.913512,
		-0.734647, -0.589603, 0.335651,
		29.053804, 39.391163, 58.450581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848614, 39.289280, 58.594402>,  <29.568058, 39.803883, 58.215622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848614, 39.289280, 58.594402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491074, 39.141518, 58.492764>,  <29.276548, 39.052860, 58.431782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491074, 39.141518, 58.492764>,  <29.848614, 39.289280, 58.594402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491074, 39.141518, 58.492764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428587, -0.870422, -0.242236,
		-0.131687, -0.325426, 0.936353,
		-0.893852, -0.369409, -0.254097,
		29.222918, 39.030693, 58.416534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903429, 38.700146, 58.857948>,  <29.848614, 39.289280, 58.594402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903429, 38.700146, 58.857948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614069, 38.665119, 58.584007>,  <29.440453, 38.644104, 58.419643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614069, 38.665119, 58.584007>,  <29.903429, 38.700146, 58.857948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614069, 38.665119, 58.584007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373801, -0.883645, -0.281858,
		-0.580488, -0.459895, 0.671960,
		-0.723399, -0.087564, -0.684855,
		29.397049, 38.638851, 58.378551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620348, 38.026871, 58.974987>,  <29.903429, 38.700146, 58.857948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620348, 38.026871, 58.974987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510941, 38.126930, 58.603477>,  <29.445295, 38.186966, 58.380573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510941, 38.126930, 58.603477>,  <29.620348, 38.026871, 58.974987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510941, 38.126930, 58.603477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278604, -0.903596, -0.325413,
		-0.920635, -0.347765, 0.177457,
		-0.273517, 0.250147, -0.928771,
		29.428885, 38.201973, 58.324848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266685, 37.380569, 58.587467>,  <29.620348, 38.026871, 58.974987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266685, 37.380569, 58.587467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427931, 37.629219, 58.318817>,  <29.524677, 37.778408, 58.157627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427931, 37.629219, 58.318817>,  <29.266685, 37.380569, 58.587467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427931, 37.629219, 58.318817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341048, -0.783074, -0.520078,
		-0.849228, -0.019407, -0.527670,
		0.403111, 0.621626, -0.671627,
		29.548864, 37.815708, 58.117329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162170, 36.981583, 57.816467>,  <29.266685, 37.380569, 58.587467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162170, 36.981583, 57.816467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458002, 37.250546, 57.804573>,  <29.635502, 37.411922, 57.797436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458002, 37.250546, 57.804573>,  <29.162170, 36.981583, 57.816467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458002, 37.250546, 57.804573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549687, -0.628909, -0.549834,
		-0.388415, 0.390302, -0.834744,
		0.739580, 0.672412, -0.029734,
		29.679876, 37.452271, 57.795654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653992, 36.556660, 57.473324>,  <29.162170, 36.981583, 57.816467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653992, 36.556660, 57.473324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737106, 36.182690, 57.588383>,  <28.786974, 35.958309, 57.657417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737106, 36.182690, 57.588383>,  <28.653992, 36.556660, 57.473324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737106, 36.182690, 57.588383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659744, 0.083160, 0.746875,
		-0.722194, -0.344960, -0.599532,
		0.207785, -0.934926, 0.287643,
		28.799442, 35.902210, 57.674675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041668, 36.259113, 57.571651>,  <28.653992, 36.556660, 57.473324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041668, 36.259113, 57.571651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268013, 35.994831, 57.768940>,  <28.403820, 35.836262, 57.887314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268013, 35.994831, 57.768940>,  <28.041668, 36.259113, 57.571651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268013, 35.994831, 57.768940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757776, -0.181011, 0.626906,
		-0.324925, -0.728490, -0.603097,
		0.565861, -0.660710, 0.493217,
		28.437771, 35.796619, 57.916904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659470, 35.772617, 57.735760>,  <28.041668, 36.259113, 57.571651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659470, 35.772617, 57.735760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952604, 35.733032, 58.005028>,  <28.128485, 35.709282, 58.166588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952604, 35.733032, 58.005028>,  <27.659470, 35.772617, 57.735760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952604, 35.733032, 58.005028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671870, 0.050944, 0.738915,
		-0.107422, -0.993786, -0.029158,
		0.732837, -0.098966, 0.673168,
		28.172455, 35.703342, 58.206978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382383, 35.274597, 58.140606>,  <27.659470, 35.772617, 57.735760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382383, 35.274597, 58.140606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693556, 35.438736, 58.330948>,  <27.880260, 35.537220, 58.445152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693556, 35.438736, 58.330948>,  <27.382383, 35.274597, 58.140606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693556, 35.438736, 58.330948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519247, -0.006645, 0.854598,
		0.353841, -0.911907, 0.207900,
		0.777932, 0.410344, 0.475856,
		27.926935, 35.561840, 58.473705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442814, 34.822815, 58.670536>,  <27.382383, 35.274597, 58.140606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442814, 34.822815, 58.670536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586641, 35.180012, 58.778820>,  <27.672937, 35.394329, 58.843792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586641, 35.180012, 58.778820>,  <27.442814, 34.822815, 58.670536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586641, 35.180012, 58.778820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595959, -0.003466, 0.803007,
		0.718014, -0.450067, 0.530938,
		0.359567, 0.892988, 0.270711,
		27.694511, 35.447906, 58.860035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484585, 34.785805, 59.381207>,  <27.442814, 34.822815, 58.670536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484585, 34.785805, 59.381207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485619, 35.176655, 59.296154>,  <27.486238, 35.411167, 59.245125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485619, 35.176655, 59.296154>,  <27.484585, 34.785805, 59.381207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485619, 35.176655, 59.296154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516617, 0.183360, 0.836352,
		0.856212, 0.107686, 0.505276,
		0.002584, 0.977130, -0.212627,
		27.486393, 35.469795, 59.232365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637373, 35.052181, 59.999645>,  <27.484585, 34.785805, 59.381207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637373, 35.052181, 59.999645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480408, 35.351063, 59.785091>,  <27.386229, 35.530392, 59.656361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480408, 35.351063, 59.785091>,  <27.637373, 35.052181, 59.999645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480408, 35.351063, 59.785091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633319, 0.203406, 0.746682,
		0.667024, 0.632707, 0.393398,
		-0.392411, 0.747200, -0.536381,
		27.362684, 35.575222, 59.624176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411444, 35.382244, 60.486084>,  <27.637373, 35.052181, 59.999645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411444, 35.382244, 60.486084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227619, 35.547062, 60.171371>,  <27.117325, 35.645954, 59.982544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227619, 35.547062, 60.171371>,  <27.411444, 35.382244, 60.486084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227619, 35.547062, 60.171371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881370, -0.102372, 0.461201,
		0.109492, 0.905394, 0.410211,
		-0.459562, 0.412046, -0.786779,
		27.089750, 35.670677, 59.935337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042109, 36.012501, 60.668591>,  <27.411444, 35.382244, 60.486084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042109, 36.012501, 60.668591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859695, 35.824162, 60.366508>,  <26.750248, 35.711159, 60.185257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859695, 35.824162, 60.366508>,  <27.042109, 36.012501, 60.668591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859695, 35.824162, 60.366508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864406, 0.032440, 0.501747,
		-0.211746, 0.881619, -0.421795,
		-0.456032, -0.470845, -0.755208,
		26.722885, 35.682907, 60.139946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.437611, 36.373081, 48.965919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.777561, 36.350033, 49.175449>,  <37.981533, 36.336205, 49.301167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.777561, 36.350033, 49.175449>,  <37.437611, 36.373081, 48.965919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777561, 36.350033, 49.175449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459085, -0.407102, -0.789626,
		0.258743, 0.911564, -0.319536,
		0.849878, -0.057616, 0.523820,
		38.032524, 36.332748, 49.332596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925625, 35.870918, 48.668255>,  <37.437611, 36.373081, 48.965919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925625, 35.870918, 48.668255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.813198, 35.959946, 48.294846>,  <36.745743, 36.013363, 48.070801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.813198, 35.959946, 48.294846>,  <36.925625, 35.870918, 48.668255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813198, 35.959946, 48.294846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958079, -0.008752, 0.286371,
		0.055567, 0.974878, 0.215697,
		-0.281065, 0.222568, -0.933523,
		36.728878, 36.026714, 48.014790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350780, 36.287418, 48.768776>,  <36.925625, 35.870918, 48.668255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350780, 36.287418, 48.768776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.306900, 36.194347, 48.382236>,  <36.280571, 36.138504, 48.150314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.306900, 36.194347, 48.382236>,  <36.350780, 36.287418, 48.768776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306900, 36.194347, 48.382236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992839, -0.020608, 0.117670,
		-0.047294, 0.972335, -0.228753,
		-0.109700, -0.232680, -0.966347,
		36.273991, 36.124542, 48.092331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734886, 36.644001, 48.479412>,  <36.350780, 36.287418, 48.768776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734886, 36.644001, 48.479412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.796967, 36.359501, 48.205173>,  <35.834217, 36.188801, 48.040630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.796967, 36.359501, 48.205173>,  <35.734886, 36.644001, 48.479412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796967, 36.359501, 48.205173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978316, -0.207008, -0.006717,
		-0.137146, 0.671770, -0.727953,
		0.155205, -0.711247, -0.685593,
		35.843529, 36.146126, 47.999496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140957, 36.731270, 47.970272>,  <35.734886, 36.644001, 48.479412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140957, 36.731270, 47.970272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.281555, 36.358376, 47.935917>,  <35.365913, 36.134640, 47.915302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.281555, 36.358376, 47.935917>,  <35.140957, 36.731270, 47.970272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281555, 36.358376, 47.935917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915659, -0.361448, 0.175849,
		-0.194978, 0.016833, -0.980663,
		0.351499, -0.932240, -0.085888,
		35.387005, 36.078705, 47.910149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663284, 36.393448, 47.524033>,  <35.140957, 36.731270, 47.970272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663284, 36.393448, 47.524033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.843464, 36.118469, 47.751896>,  <34.951572, 35.953484, 47.888615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.843464, 36.118469, 47.751896>,  <34.663284, 36.393448, 47.524033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843464, 36.118469, 47.751896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884022, -0.432694, 0.176864,
		0.124903, -0.583260, -0.802625,
		0.450449, -0.687447, 0.569659,
		34.978600, 35.912235, 47.922794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282112, 35.705612, 47.361515>,  <34.663284, 36.393448, 47.524033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282112, 35.705612, 47.361515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.453228, 35.646721, 47.718239>,  <34.555897, 35.611385, 47.932274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.453228, 35.646721, 47.718239>,  <34.282112, 35.705612, 47.361515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453228, 35.646721, 47.718239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843222, -0.420347, 0.335090,
		0.325534, -0.895339, -0.303965,
		0.427790, -0.147226, 0.891807,
		34.581566, 35.602554, 47.985783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001415, 35.051147, 47.596661>,  <34.282112, 35.705612, 47.361515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001415, 35.051147, 47.596661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146362, 35.191307, 47.942123>,  <34.233330, 35.275402, 48.149403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146362, 35.191307, 47.942123>,  <34.001415, 35.051147, 47.596661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146362, 35.191307, 47.942123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691175, -0.520627, 0.501223,
		0.625275, -0.778566, 0.053532,
		0.362365, 0.350402, 0.863661,
		34.255074, 35.296429, 48.201221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162682, 34.484322, 48.016205>,  <34.001415, 35.051147, 47.596661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162682, 34.484322, 48.016205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.081043, 34.811378, 48.231541>,  <34.032063, 35.007614, 48.360741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.081043, 34.811378, 48.231541>,  <34.162682, 34.484322, 48.016205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081043, 34.811378, 48.231541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815721, -0.446075, 0.368260,
		0.541244, -0.363973, 0.758010,
		-0.204093, 0.817643, 0.538336,
		34.019817, 35.056671, 48.393040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026020, 34.219280, 48.634579>,  <34.162682, 34.484322, 48.016205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026020, 34.219280, 48.634579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.880970, 34.591957, 48.643147>,  <33.793941, 34.815563, 48.648285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.880970, 34.591957, 48.643147>,  <34.026020, 34.219280, 48.634579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880970, 34.591957, 48.643147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888723, -0.352634, 0.292952,
		0.280492, 0.087198, 0.955887,
		-0.362624, 0.931689, 0.021416,
		33.772182, 34.871464, 48.649570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611713, 34.184532, 49.194729>,  <34.026020, 34.219280, 48.634579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611713, 34.184532, 49.194729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.489925, 34.534199, 49.043400>,  <33.416851, 34.743999, 48.952602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.489925, 34.534199, 49.043400>,  <33.611713, 34.184532, 49.194729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489925, 34.534199, 49.043400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946082, -0.231430, 0.226648,
		0.110575, 0.426928, 0.897500,
		-0.304471, 0.874170, -0.378318,
		33.398582, 34.796452, 48.929905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262077, 34.554226, 49.740112>,  <33.611713, 34.184532, 49.194729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262077, 34.554226, 49.740112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.132275, 34.708317, 49.394558>,  <33.054394, 34.800770, 49.187225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.132275, 34.708317, 49.394558>,  <33.262077, 34.554226, 49.740112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132275, 34.708317, 49.394558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945547, -0.156450, 0.285421,
		-0.025202, 0.909463, 0.415019,
		-0.324510, 0.385227, -0.863883,
		33.034924, 34.823883, 49.135391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543968, 34.850330, 49.798973>,  <33.262077, 34.554226, 49.740112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543968, 34.850330, 49.798973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.577789, 34.767529, 49.409103>,  <32.598083, 34.717846, 49.175179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.577789, 34.767529, 49.409103>,  <32.543968, 34.850330, 49.798973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577789, 34.767529, 49.409103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967099, -0.252593, -0.030253,
		-0.239935, 0.945170, -0.221553,
		0.084557, -0.207005, -0.974679,
		32.603157, 34.705425, 49.116699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084396, 35.227997, 49.422871>,  <32.543968, 34.850330, 49.798973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084396, 35.227997, 49.422871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.159710, 34.893463, 49.216923>,  <32.204899, 34.692741, 49.093353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.159710, 34.893463, 49.216923>,  <32.084396, 35.227997, 49.422871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159710, 34.893463, 49.216923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981278, -0.138559, -0.133774,
		0.040541, 0.530414, -0.846769,
		0.188283, -0.836339, -0.514866,
		32.216194, 34.642563, 49.062462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807491, 35.257202, 48.817707>,  <32.084396, 35.227997, 49.422871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807491, 35.257202, 48.817707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.833990, 34.862942, 48.879818>,  <31.849890, 34.626385, 48.917084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.833990, 34.862942, 48.879818>,  <31.807491, 35.257202, 48.817707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833990, 34.862942, 48.879818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992048, -0.081751, -0.095695,
		0.107016, -0.147706, -0.983225,
		0.066245, -0.985647, 0.155280,
		31.853863, 34.567249, 48.926403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390141, 34.900970, 48.355431>,  <31.807491, 35.257202, 48.817707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390141, 34.900970, 48.355431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.423027, 34.660160, 48.673122>,  <31.442759, 34.515675, 48.863739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.423027, 34.660160, 48.673122>,  <31.390141, 34.900970, 48.355431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423027, 34.660160, 48.673122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996362, -0.031729, 0.079092,
		-0.022415, -0.797848, -0.602442,
		0.082218, -0.602023, 0.794234,
		31.447693, 34.479553, 48.911392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829485, 34.377094, 48.216473>,  <31.390141, 34.900970, 48.355431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829485, 34.377094, 48.216473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.932735, 34.370525, 48.602859>,  <30.994686, 34.366585, 48.834694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.932735, 34.370525, 48.602859>,  <30.829485, 34.377094, 48.216473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932735, 34.370525, 48.602859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963391, -0.079348, 0.256088,
		0.072443, -0.996712, -0.036299,
		0.258126, -0.016419, 0.965972,
		31.010174, 34.365601, 48.892651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397537, 33.761402, 48.547256>,  <30.829485, 34.377094, 48.216473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397537, 33.761402, 48.547256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.515848, 33.967793, 48.868824>,  <30.586834, 34.091629, 49.061764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.515848, 33.967793, 48.868824>,  <30.397537, 33.761402, 48.547256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515848, 33.967793, 48.868824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914579, -0.090010, 0.394264,
		0.275792, -0.851859, 0.445280,
		0.295778, 0.515979, 0.803916,
		30.604582, 34.122585, 49.110001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186409, 33.352482, 49.068180>,  <30.397537, 33.761402, 48.547256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186409, 33.352482, 49.068180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.233454, 33.724686, 49.206924>,  <30.261681, 33.948009, 49.290169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.233454, 33.724686, 49.206924>,  <30.186409, 33.352482, 49.068180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233454, 33.724686, 49.206924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859772, -0.079377, 0.504471,
		0.496951, -0.357550, 0.790695,
		0.117611, 0.930514, 0.346858,
		30.268738, 34.003841, 49.310982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997564, 33.320965, 49.739651>,  <30.186409, 33.352482, 49.068180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997564, 33.320965, 49.739651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.963053, 33.713100, 49.668667>,  <29.942345, 33.948383, 49.626076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.963053, 33.713100, 49.668667>,  <29.997564, 33.320965, 49.739651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963053, 33.713100, 49.668667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871492, 0.012047, 0.490261,
		0.482760, 0.196957, 0.853318,
		-0.086280, 0.980338, -0.177463,
		29.937168, 34.007202, 49.615429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985352, 33.697144, 50.396248>,  <29.997564, 33.320965, 49.739651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985352, 33.697144, 50.396248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.810719, 33.936348, 50.127392>,  <29.705938, 34.079872, 49.966080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.810719, 33.936348, 50.127392>,  <29.985352, 33.697144, 50.396248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810719, 33.936348, 50.127392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761843, 0.151637, 0.629763,
		0.478529, 0.787009, 0.389392,
		-0.436583, 0.598015, -0.672141,
		29.679743, 34.115753, 49.925751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834515, 34.301868, 50.747131>,  <29.985352, 33.697144, 50.396248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834515, 34.301868, 50.747131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.590240, 34.306221, 50.430412>,  <29.443676, 34.308834, 50.240379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.590240, 34.306221, 50.430412>,  <29.834515, 34.301868, 50.747131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590240, 34.306221, 50.430412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754331, 0.296240, 0.585856,
		0.240938, 0.955052, -0.172701,
		-0.610684, 0.010881, -0.791800,
		29.407036, 34.309486, 50.192871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378992, 34.802597, 50.857121>,  <29.834515, 34.301868, 50.747131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378992, 34.802597, 50.857121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.190994, 34.591576, 50.574055>,  <29.078196, 34.464962, 50.404213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.190994, 34.591576, 50.574055>,  <29.378992, 34.802597, 50.857121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190994, 34.591576, 50.574055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882001, 0.249509, 0.399775,
		-0.034332, 0.812055, -0.582570,
		-0.469996, -0.527552, -0.707667,
		29.049995, 34.433311, 50.361755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898108, 35.271130, 50.472710>,  <29.378992, 34.802597, 50.857121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898108, 35.271130, 50.472710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.771030, 34.901081, 50.389557>,  <28.694784, 34.679050, 50.339664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.771030, 34.901081, 50.389557>,  <28.898108, 35.271130, 50.472710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771030, 34.901081, 50.389557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935386, 0.269868, 0.228524,
		-0.155313, 0.267051, -0.951084,
		-0.317695, -0.925124, -0.207882,
		28.675722, 34.623543, 50.327194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309269, 35.368519, 49.998158>,  <28.898108, 35.271130, 50.472710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309269, 35.368519, 49.998158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.279819, 35.005482, 50.163494>,  <28.262150, 34.787659, 50.262695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.279819, 35.005482, 50.163494>,  <28.309269, 35.368519, 49.998158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279819, 35.005482, 50.163494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950579, 0.189220, 0.246163,
		-0.301629, -0.374794, -0.876670,
		-0.073623, -0.907593, 0.413345,
		28.257732, 34.733204, 50.287498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692928, 35.131721, 49.788868>,  <28.309269, 35.368519, 49.998158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692928, 35.131721, 49.788868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.803797, 34.915234, 50.106426>,  <27.870317, 34.785343, 50.296959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.803797, 34.915234, 50.106426>,  <27.692928, 35.131721, 49.788868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803797, 34.915234, 50.106426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898156, 0.147569, 0.414172,
		-0.341310, -0.827833, -0.445195,
		0.277169, -0.541216, 0.793890,
		27.886948, 34.752869, 50.344593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227634, 34.689102, 49.838825>,  <27.692928, 35.131721, 49.788868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227634, 34.689102, 49.838825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.415852, 34.662621, 50.190781>,  <27.528782, 34.646732, 50.401955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.415852, 34.662621, 50.190781>,  <27.227634, 34.689102, 49.838825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415852, 34.662621, 50.190781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882375, -0.033153, 0.469377,
		-0.001893, -0.997257, -0.073996,
		0.470543, -0.066181, 0.879892,
		27.557014, 34.642757, 50.454746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886549, 34.156891, 50.130356>,  <27.227634, 34.689102, 49.838825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886549, 34.156891, 50.130356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.058207, 34.370506, 50.421734>,  <27.161201, 34.498676, 50.596561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.058207, 34.370506, 50.421734>,  <26.886549, 34.156891, 50.130356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058207, 34.370506, 50.421734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898977, 0.174300, 0.401821,
		0.087621, -0.827296, 0.554891,
		0.429143, 0.534043, 0.728447,
		27.186949, 34.530720, 50.640266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607134, 33.934025, 50.714386>,  <26.886549, 34.156891, 50.130356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607134, 33.934025, 50.714386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.758221, 34.292114, 50.808964>,  <26.848873, 34.506969, 50.865711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.758221, 34.292114, 50.808964>,  <26.607134, 33.934025, 50.714386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.758221, 34.292114, 50.808964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812416, 0.197920, 0.548459,
		0.444198, -0.399250, 0.802052,
		0.377715, 0.895224, 0.236441,
		26.871534, 34.560680, 50.879898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518618, 34.062050, 51.482750>,  <26.607134, 33.934025, 50.714386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518618, 34.062050, 51.482750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.553139, 34.433922, 51.339504>,  <26.573851, 34.657043, 51.253555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.553139, 34.433922, 51.339504>,  <26.518618, 34.062050, 51.482750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553139, 34.433922, 51.339504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842986, 0.259719, 0.471084,
		0.530967, 0.261234, 0.806121,
		0.086302, 0.929679, -0.358119,
		26.579029, 34.712826, 51.232067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298939, 34.551788, 52.029156>,  <26.518618, 34.062050, 51.482750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298939, 34.551788, 52.029156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.273458, 34.776955, 51.699532>,  <26.258171, 34.912052, 51.501759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.273458, 34.776955, 51.699532>,  <26.298939, 34.551788, 52.029156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273458, 34.776955, 51.699532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875854, 0.364264, 0.316531,
		0.478354, 0.741918, 0.469825,
		-0.063699, 0.562912, -0.824059,
		26.254349, 34.945827, 51.452312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146067, 35.297688, 52.314362>,  <26.298939, 34.551788, 52.029156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146067, 35.297688, 52.314362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.018148, 35.265114, 51.936768>,  <25.941399, 35.245571, 51.710213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.018148, 35.265114, 51.936768>,  <26.146067, 35.297688, 52.314362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018148, 35.265114, 51.936768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858952, 0.445435, 0.252564,
		0.399916, 0.891603, -0.212393,
		-0.319794, -0.081431, -0.943981,
		25.922211, 35.240685, 51.653572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.825281, 35.896862, 52.208927>,  <26.146067, 35.297688, 52.314362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.825281, 35.896862, 52.208927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.675261, 35.653034, 51.929565>,  <25.585249, 35.506737, 51.761948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.675261, 35.653034, 51.929565>,  <25.825281, 35.896862, 52.208927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.675261, 35.653034, 51.929565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896359, 0.430583, 0.105539,
		0.236385, 0.665600, -0.707883,
		-0.375049, -0.609570, -0.698400,
		25.562746, 35.470161, 51.720047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.448439, 36.318775, 51.819515>,  <25.825281, 35.896862, 52.208927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.448439, 36.318775, 51.819515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.294775, 35.966782, 51.707767>,  <25.202578, 35.755585, 51.640720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.294775, 35.966782, 51.707767>,  <25.448439, 36.318775, 51.819515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.294775, 35.966782, 51.707767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904545, 0.419351, -0.077085,
		0.184986, 0.223088, -0.957085,
		-0.384158, -0.879986, -0.279368,
		25.179527, 35.702785, 51.623959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.797333, 36.574142, 51.541168>,  <25.448439, 36.318775, 51.819515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.797333, 36.574142, 51.541168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.714315, 36.186974, 51.597801>,  <24.664505, 35.954670, 51.631783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.714315, 36.186974, 51.597801>,  <24.797333, 36.574142, 51.541168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.714315, 36.186974, 51.597801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970683, 0.185833, -0.152449,
		0.121248, -0.169075, -0.978117,
		-0.207542, -0.967926, 0.141586,
		24.652054, 35.896595, 51.640278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<36.509914, 32.993179, 47.885986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.213081, 32.841274, 47.665043>,  <36.034981, 32.750134, 47.532478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.213081, 32.841274, 47.665043>,  <36.509914, 32.993179, 47.885986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213081, 32.841274, 47.665043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621783, 0.082158, 0.778868,
		-0.250403, 0.921429, -0.297097,
		-0.742081, -0.379761, -0.552357,
		35.990456, 32.727345, 47.499336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878979, 33.455585, 47.849445>,  <36.509914, 32.993179, 47.885986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878979, 33.455585, 47.849445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.742313, 33.093937, 47.746815>,  <35.660316, 32.876949, 47.685238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.742313, 33.093937, 47.746815>,  <35.878979, 33.455585, 47.849445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742313, 33.093937, 47.746815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722890, 0.078353, 0.686506,
		-0.600581, 0.420029, -0.680351,
		-0.341660, -0.904122, -0.256577,
		35.639816, 32.822701, 47.669842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199471, 33.499393, 47.957676>,  <35.878979, 33.455585, 47.849445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199471, 33.499393, 47.957676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.227898, 33.101513, 47.927967>,  <35.244953, 32.862785, 47.910141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.227898, 33.101513, 47.927967>,  <35.199471, 33.499393, 47.957676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227898, 33.101513, 47.927967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679234, -0.102792, 0.726687,
		-0.730473, -0.001194, -0.682941,
		0.071069, -0.994702, -0.074276,
		35.249218, 32.803101, 47.905685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591358, 33.405075, 48.070858>,  <35.199471, 33.499393, 47.957676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591358, 33.405075, 48.070858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.794579, 33.074577, 48.168190>,  <34.916512, 32.876278, 48.226589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.794579, 33.074577, 48.168190>,  <34.591358, 33.405075, 48.070858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794579, 33.074577, 48.168190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559948, -0.102170, 0.822204,
		-0.654478, -0.553974, -0.514560,
		0.508052, -0.826241, 0.243329,
		34.946995, 32.826706, 48.241188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146255, 33.026585, 48.449432>,  <34.591358, 33.405075, 48.070858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146255, 33.026585, 48.449432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.466434, 32.808865, 48.549843>,  <34.658543, 32.678230, 48.610088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.466434, 32.808865, 48.549843>,  <34.146255, 33.026585, 48.449432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466434, 32.808865, 48.549843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338967, -0.065659, 0.938504,
		-0.494348, -0.836315, -0.237058,
		0.800451, -0.544303, 0.251025,
		34.706570, 32.645573, 48.625149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906109, 32.374992, 48.775909>,  <34.146255, 33.026585, 48.449432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906109, 32.374992, 48.775909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.280380, 32.457932, 48.890110>,  <34.504944, 32.507694, 48.958630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.280380, 32.457932, 48.890110>,  <33.906109, 32.374992, 48.775909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280380, 32.457932, 48.890110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287497, -0.021116, 0.957549,
		0.204577, -0.978039, 0.039855,
		0.935678, 0.207351, 0.285504,
		34.561085, 32.520138, 48.975761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094376, 31.914936, 49.239761>,  <33.906109, 32.374992, 48.775909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094376, 31.914936, 49.239761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.304874, 32.243675, 49.327061>,  <34.431175, 32.440918, 49.379440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.304874, 32.243675, 49.327061>,  <34.094376, 31.914936, 49.239761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304874, 32.243675, 49.327061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238443, -0.103744, 0.965599,
		0.816218, -0.560182, 0.141369,
		0.526245, 0.821848, 0.218249,
		34.462749, 32.490231, 49.392536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477692, 31.801649, 49.834999>,  <34.094376, 31.914936, 49.239761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477692, 31.801649, 49.834999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.525848, 32.198723, 49.831337>,  <34.554741, 32.436966, 49.829140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.525848, 32.198723, 49.831337>,  <34.477692, 31.801649, 49.834999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525848, 32.198723, 49.831337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195021, 0.032693, 0.980254,
		0.973383, -0.116225, 0.197530,
		0.120388, 0.992685, -0.009157,
		34.561966, 32.496529, 49.828590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801601, 31.958830, 50.454784>,  <34.477692, 31.801649, 49.834999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801601, 31.958830, 50.454784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.676262, 32.321777, 50.342716>,  <34.601059, 32.539547, 50.275475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.676262, 32.321777, 50.342716>,  <34.801601, 31.958830, 50.454784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676262, 32.321777, 50.342716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332138, 0.171679, 0.927475,
		0.889660, 0.383681, 0.247575,
		-0.313351, 0.907367, -0.280172,
		34.582256, 32.593987, 50.258663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071354, 32.443737, 50.930851>,  <34.801601, 31.958830, 50.454784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071354, 32.443737, 50.930851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.782360, 32.663517, 50.762989>,  <34.608963, 32.795387, 50.662270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.782360, 32.663517, 50.762989>,  <35.071354, 32.443737, 50.930851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782360, 32.663517, 50.762989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231639, 0.379533, 0.895711,
		0.651426, 0.744348, -0.146933,
		-0.722487, 0.549454, -0.419658,
		34.565613, 32.828354, 50.637093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123512, 33.176781, 51.261383>,  <35.071354, 32.443737, 50.930851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123512, 33.176781, 51.261383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.755173, 33.127964, 51.113251>,  <34.534168, 33.098675, 51.024372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.755173, 33.127964, 51.113251>,  <35.123512, 33.176781, 51.261383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755173, 33.127964, 51.113251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384899, 0.436455, 0.813240,
		0.062386, 0.891411, -0.448881,
		-0.920848, -0.122039, -0.370332,
		34.478920, 33.091351, 51.002151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780167, 33.816441, 51.304100>,  <35.123512, 33.176781, 51.261383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780167, 33.816441, 51.304100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.506676, 33.525238, 51.284004>,  <34.342579, 33.350517, 51.271946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.506676, 33.525238, 51.284004>,  <34.780167, 33.816441, 51.304100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506676, 33.525238, 51.284004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490886, 0.407906, 0.769834,
		-0.539947, 0.551022, -0.636264,
		-0.683731, -0.728002, -0.050241,
		34.301556, 33.306839, 51.268932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716991, 34.525196, 51.501030>,  <34.780167, 33.816441, 51.304100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716991, 34.525196, 51.501030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.055927, 34.585190, 51.704800>,  <35.259289, 34.621185, 51.827061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.055927, 34.585190, 51.704800>,  <34.716991, 34.525196, 51.501030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055927, 34.585190, 51.704800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520291, -0.042359, -0.852938,
		-0.106347, 0.987781, -0.113927,
		0.847341, 0.149982, 0.509429,
		35.310131, 34.630184, 51.857628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015442, 35.038021, 51.118504>,  <34.716991, 34.525196, 51.501030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015442, 35.038021, 51.118504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.298351, 34.854153, 51.333340>,  <35.468098, 34.743832, 51.462242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.298351, 34.854153, 51.333340>,  <35.015442, 35.038021, 51.118504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298351, 34.854153, 51.333340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611278, 0.016032, -0.791253,
		0.355102, 0.887947, 0.292323,
		0.707277, -0.459666, 0.537090,
		35.510536, 34.716251, 51.494465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617672, 35.455208, 51.003017>,  <35.015442, 35.038021, 51.118504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617672, 35.455208, 51.003017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732319, 35.094307, 51.131882>,  <35.801109, 34.877766, 51.209202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732319, 35.094307, 51.131882>,  <35.617672, 35.455208, 51.003017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732319, 35.094307, 51.131882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649018, -0.064491, -0.758034,
		0.704715, 0.426357, 0.567094,
		0.286621, -0.902253, 0.322161,
		35.818306, 34.823631, 51.228531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265556, 35.590237, 50.829395>,  <35.617672, 35.455208, 51.003017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265556, 35.590237, 50.829395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287609, 35.195477, 50.890049>,  <36.300842, 34.958622, 50.926441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287609, 35.195477, 50.890049>,  <36.265556, 35.590237, 50.829395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287609, 35.195477, 50.890049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872166, -0.026336, -0.488500,
		0.486093, 0.159185, 0.859287,
		0.055132, -0.986897, 0.151637,
		36.304150, 34.899406, 50.935539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935814, 35.403576, 51.133640>,  <36.265556, 35.590237, 50.829395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935814, 35.403576, 51.133640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.780048, 35.108761, 50.912685>,  <36.686588, 34.931870, 50.780113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.780048, 35.108761, 50.912685>,  <36.935814, 35.403576, 51.133640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780048, 35.108761, 50.912685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864863, -0.086307, -0.494533,
		0.316816, -0.670315, 0.671048,
		-0.389409, -0.737041, -0.552387,
		36.663227, 34.887650, 50.746971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534233, 34.975876, 51.087402>,  <36.935814, 35.403576, 51.133640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534233, 34.975876, 51.087402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.285088, 34.884724, 50.788040>,  <37.135601, 34.830032, 50.608425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.285088, 34.884724, 50.788040>,  <37.534233, 34.975876, 51.087402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285088, 34.884724, 50.788040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766051, 0.016463, -0.642569,
		0.158751, -0.973549, 0.164315,
		-0.622868, -0.227882, -0.748402,
		37.098228, 34.816360, 50.563519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953480, 34.541862, 50.669254>,  <37.534233, 34.975876, 51.087402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953480, 34.541862, 50.669254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.640083, 34.633259, 50.438103>,  <37.452045, 34.688095, 50.299412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.640083, 34.633259, 50.438103>,  <37.953480, 34.541862, 50.669254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640083, 34.633259, 50.438103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605148, 0.069211, -0.793099,
		-0.141218, -0.971083, -0.192495,
		-0.783488, 0.228488, -0.577875,
		37.405037, 34.701805, 50.264740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025951, 34.260998, 49.943565>,  <37.953480, 34.541862, 50.669254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025951, 34.260998, 49.943565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717911, 34.495495, 49.842953>,  <37.533089, 34.636192, 49.782585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717911, 34.495495, 49.842953>,  <38.025951, 34.260998, 49.943565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717911, 34.495495, 49.842953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404841, 0.144409, -0.902912,
		-0.493006, -0.797158, -0.348546,
		-0.770097, 0.586246, -0.251528,
		37.486881, 34.671368, 49.767494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923866, 34.070278, 49.298603>,  <38.025951, 34.260998, 49.943565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923866, 34.070278, 49.298603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.781971, 34.442776, 49.331921>,  <37.696835, 34.666275, 49.351913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.781971, 34.442776, 49.331921>,  <37.923866, 34.070278, 49.298603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781971, 34.442776, 49.331921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472473, 0.255428, -0.843520,
		-0.806803, -0.259871, -0.530599,
		-0.354736, 0.931248, 0.083298,
		37.675549, 34.722149, 49.356911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748581, 34.293774, 48.600922>,  <37.923866, 34.070278, 49.298603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748581, 34.293774, 48.600922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809116, 34.616341, 48.829582>,  <37.845440, 34.809879, 48.966778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809116, 34.616341, 48.829582>,  <37.748581, 34.293774, 48.600922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809116, 34.616341, 48.829582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601436, 0.383826, -0.700680,
		-0.784456, 0.449855, -0.426919,
		0.151341, 0.806417, 0.571654,
		37.854519, 34.858265, 49.001080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658680, 34.780865, 48.157921>,  <37.748581, 34.293774, 48.600922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658680, 34.780865, 48.157921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.859470, 34.946419, 48.461689>,  <37.979946, 35.045750, 48.643948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.859470, 34.946419, 48.461689>,  <37.658680, 34.780865, 48.157921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859470, 34.946419, 48.461689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521509, 0.555628, -0.647538,
		-0.689962, 0.721093, 0.063067,
		0.501977, 0.413887, 0.759419,
		38.010063, 35.070583, 48.689514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704948, 35.493553, 48.037113>,  <37.658680, 34.780865, 48.157921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704948, 35.493553, 48.037113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007919, 35.420624, 48.287891>,  <38.189701, 35.376865, 48.438358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007919, 35.420624, 48.287891>,  <37.704948, 35.493553, 48.037113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007919, 35.420624, 48.287891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623320, 0.487739, -0.611214,
		-0.194347, 0.853738, 0.483073,
		0.757430, -0.182321, 0.626943,
		38.235149, 35.365929, 48.475975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135925, 36.118832, 48.008331>,  <37.704948, 35.493553, 48.037113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135925, 36.118832, 48.008331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366482, 35.832870, 48.166660>,  <38.504818, 35.661293, 48.261658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366482, 35.832870, 48.166660>,  <38.135925, 36.118832, 48.008331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366482, 35.832870, 48.166660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776998, 0.329466, -0.536401,
		0.253066, 0.616734, 0.745384,
		0.576395, -0.714907, 0.395825,
		38.539402, 35.618397, 48.285408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743729, 36.270710, 48.505474>,  <38.135925, 36.118832, 48.008331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743729, 36.270710, 48.505474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.835041, 35.982071, 48.244038>,  <38.889828, 35.808887, 48.087173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.835041, 35.982071, 48.244038>,  <38.743729, 36.270710, 48.505474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835041, 35.982071, 48.244038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518576, 0.658285, -0.545655,
		0.823995, -0.214376, 0.524477,
		0.228279, -0.721598, -0.653594,
		38.903526, 35.765591, 48.047958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486946, 36.901936, 48.455227>,  <38.743729, 36.270710, 48.505474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486946, 36.901936, 48.455227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.089317, 36.923546, 48.417496>,  <37.850739, 36.936512, 48.394855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.089317, 36.923546, 48.417496>,  <38.486946, 36.901936, 48.455227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089317, 36.923546, 48.417496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059636, 0.454477, 0.888760,
		0.090884, 0.889119, -0.448563,
		-0.994074, 0.054023, -0.094328,
		37.791096, 36.939754, 48.389198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350658, 37.554897, 48.656246>,  <38.486946, 36.901936, 48.455227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350658, 37.554897, 48.656246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.049911, 37.303093, 48.734646>,  <37.869465, 37.152012, 48.781685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.049911, 37.303093, 48.734646>,  <38.350658, 37.554897, 48.656246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049911, 37.303093, 48.734646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161997, 0.464548, 0.870604,
		-0.639104, 0.622827, -0.451256,
		-0.751867, -0.629509, 0.195999,
		37.824352, 37.114239, 48.793446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592625, 37.823376, 48.684914>,  <38.350658, 37.554897, 48.656246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592625, 37.823376, 48.684914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.641068, 37.510906, 48.929893>,  <37.670132, 37.323425, 49.076881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.641068, 37.510906, 48.929893>,  <37.592625, 37.823376, 48.684914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641068, 37.510906, 48.929893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081341, 0.607106, 0.790447,
		-0.989302, -0.145543, 0.009980,
		0.121103, -0.781178, 0.612449,
		37.677399, 37.276554, 49.113628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393787, 37.649918, 48.016022>,  <37.592625, 37.823376, 48.684914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393787, 37.649918, 48.016022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.057533, 37.804039, 47.863770>,  <36.855782, 37.896511, 47.772419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.057533, 37.804039, 47.863770>,  <37.393787, 37.649918, 48.016022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057533, 37.804039, 47.863770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212592, 0.411636, 0.886205,
		0.498135, 0.825893, -0.264124,
		-0.840634, 0.385299, -0.380629,
		36.805344, 37.919628, 47.749580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433678, 38.332302, 48.172890>,  <37.393787, 37.649918, 48.016022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433678, 38.332302, 48.172890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.049919, 38.229641, 48.126083>,  <36.819664, 38.168045, 48.098000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.049919, 38.229641, 48.126083>,  <37.433678, 38.332302, 48.172890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049919, 38.229641, 48.126083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245021, 0.552784, 0.796489,
		-0.139734, 0.792819, -0.593222,
		-0.959395, -0.256649, -0.117015,
		36.762100, 38.152645, 48.090981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011894, 39.015659, 48.387653>,  <37.433678, 38.332302, 48.172890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011894, 39.015659, 48.387653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.742592, 38.720913, 48.412159>,  <36.581009, 38.544064, 48.426861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.742592, 38.720913, 48.412159>,  <37.011894, 39.015659, 48.387653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742592, 38.720913, 48.412159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388842, 0.423306, 0.818299,
		-0.628909, 0.527105, -0.571519,
		-0.673257, -0.736866, 0.061260,
		36.540615, 38.499851, 48.430538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438023, 39.281605, 48.574116>,  <37.011894, 39.015659, 48.387653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438023, 39.281605, 48.574116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.310707, 38.910995, 48.654354>,  <36.234318, 38.688629, 48.702499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.310707, 38.910995, 48.654354>,  <36.438023, 39.281605, 48.574116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310707, 38.910995, 48.654354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603112, 0.361167, 0.711206,
		-0.731401, 0.105385, -0.673755,
		-0.318289, -0.926527, 0.200599,
		36.215221, 38.633038, 48.714535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694859, 39.350883, 48.676037>,  <36.438023, 39.281605, 48.574116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694859, 39.350883, 48.676037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.840565, 39.035938, 48.874981>,  <35.927990, 38.846970, 48.994347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.840565, 39.035938, 48.874981>,  <35.694859, 39.350883, 48.676037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840565, 39.035938, 48.874981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621298, 0.192379, 0.759591,
		-0.693756, -0.585704, -0.419110,
		0.364267, -0.787364, 0.497361,
		35.949844, 38.799728, 49.024189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200260, 39.074982, 48.923050>,  <35.694859, 39.350883, 48.676037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200260, 39.074982, 48.923050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446701, 38.882378, 49.172390>,  <35.594566, 38.766815, 49.321995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446701, 38.882378, 49.172390>,  <35.200260, 39.074982, 48.923050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446701, 38.882378, 49.172390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570931, 0.272212, 0.774557,
		-0.542641, -0.833096, -0.107200,
		0.616099, -0.481510, 0.623354,
		35.631531, 38.737926, 49.359398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764641, 38.715054, 49.346569>,  <35.200260, 39.074982, 48.923050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764641, 38.715054, 49.346569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.123699, 38.774796, 49.512424>,  <35.339134, 38.810642, 49.611938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.123699, 38.774796, 49.512424>,  <34.764641, 38.715054, 49.346569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123699, 38.774796, 49.512424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438761, 0.214339, 0.872667,
		0.041464, -0.965273, 0.257932,
		0.897647, 0.149355, 0.414637,
		35.392994, 38.819603, 49.636814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757282, 38.216244, 49.943382>,  <34.764641, 38.715054, 49.346569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757282, 38.216244, 49.943382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.037788, 38.495296, 50.002098>,  <35.206093, 38.662727, 50.037327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.037788, 38.495296, 50.002098>,  <34.757282, 38.216244, 49.943382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037788, 38.495296, 50.002098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326843, 0.131631, 0.935867,
		0.633565, -0.704265, 0.320322,
		0.701262, 0.697628, 0.146787,
		35.248169, 38.704586, 50.046135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049286, 37.958202, 50.567871>,  <34.757282, 38.216244, 49.943382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049286, 37.958202, 50.567871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.113884, 38.348061, 50.505913>,  <35.152641, 38.581974, 50.468739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.113884, 38.348061, 50.505913>,  <35.049286, 37.958202, 50.567871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113884, 38.348061, 50.505913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334589, 0.201734, 0.920518,
		0.928423, -0.096832, 0.358683,
		0.161494, 0.974642, -0.154896,
		35.162331, 38.640453, 50.459442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245216, 38.219315, 51.194866>,  <35.049286, 37.958202, 50.567871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245216, 38.219315, 51.194866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.103710, 38.543930, 51.008854>,  <35.018806, 38.738701, 50.897247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.103710, 38.543930, 51.008854>,  <35.245216, 38.219315, 51.194866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103710, 38.543930, 51.008854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438320, 0.295371, 0.848900,
		0.826272, 0.504144, 0.251222,
		-0.353764, 0.811538, -0.465034,
		34.997581, 38.787392, 50.869343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924526, 38.600254, 51.696030>,  <35.245216, 38.219315, 51.194866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924526, 38.600254, 51.696030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.799091, 38.805210, 51.376251>,  <34.723831, 38.928185, 51.184383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.799091, 38.805210, 51.376251>,  <34.924526, 38.600254, 51.696030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799091, 38.805210, 51.376251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592025, 0.552742, 0.586500,
		0.742406, 0.657214, 0.130014,
		-0.313592, 0.512392, -0.799446,
		34.705013, 38.958927, 51.136417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909916, 39.290054, 51.958706>,  <34.924526, 38.600254, 51.696030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909916, 39.290054, 51.958706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.676849, 39.289619, 51.633621>,  <34.537010, 39.289360, 51.438572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.676849, 39.289619, 51.633621>,  <34.909916, 39.290054, 51.958706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676849, 39.289619, 51.633621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694026, 0.520994, 0.496884,
		0.422875, 0.853560, -0.304323,
		-0.582671, -0.001088, -0.812708,
		34.502048, 39.289291, 51.389809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677170, 39.982567, 51.898571>,  <34.909916, 39.290054, 51.958706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677170, 39.982567, 51.898571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.432072, 39.774303, 51.660763>,  <34.285011, 39.649345, 51.518078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.432072, 39.774303, 51.660763>,  <34.677170, 39.982567, 51.898571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432072, 39.774303, 51.660763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789215, 0.364150, 0.494503,
		-0.040974, 0.772210, -0.634044,
		-0.612748, -0.520659, -0.594520,
		34.248249, 39.618107, 51.482407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103420, 40.406246, 51.639385>,  <34.677170, 39.982567, 51.898571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103420, 40.406246, 51.639385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960777, 40.034397, 51.602230>,  <33.875191, 39.811287, 51.579937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960777, 40.034397, 51.602230>,  <34.103420, 40.406246, 51.639385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960777, 40.034397, 51.602230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897293, 0.313109, 0.311172,
		-0.260190, 0.194312, -0.945803,
		-0.356604, -0.929627, -0.092887,
		33.853798, 39.755508, 51.574364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527817, 40.452457, 51.131519>,  <34.103420, 40.406246, 51.639385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527817, 40.452457, 51.131519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.514931, 40.140118, 51.381073>,  <33.507198, 39.952713, 51.530804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.514931, 40.140118, 51.381073>,  <33.527817, 40.452457, 51.131519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514931, 40.140118, 51.381073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879614, 0.318548, 0.353280,
		-0.474597, -0.537397, -0.697110,
		-0.032211, -0.780853, 0.623884,
		33.505268, 39.905861, 51.568237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818356, 40.070232, 51.024414>,  <33.527817, 40.452457, 51.131519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818356, 40.070232, 51.024414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.996723, 40.000420, 51.375572>,  <33.103745, 39.958534, 51.586266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.996723, 40.000420, 51.375572>,  <32.818356, 40.070232, 51.024414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996723, 40.000420, 51.375572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838375, 0.262081, 0.477955,
		-0.313495, -0.949133, -0.029452,
		0.445924, -0.174528, 0.877891,
		33.130501, 39.948063, 51.638939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246181, 39.963299, 51.390793>,  <32.818356, 40.070232, 51.024414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246181, 39.963299, 51.390793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.497868, 39.958374, 51.701649>,  <32.648880, 39.955418, 51.888161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.497868, 39.958374, 51.701649>,  <32.246181, 39.963299, 51.390793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497868, 39.958374, 51.701649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733945, 0.319626, 0.599303,
		-0.255772, -0.947464, 0.192076,
		0.629211, -0.012312, 0.777137,
		32.686630, 39.954681, 51.934792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965851, 39.557507, 51.910065>,  <32.246181, 39.963299, 51.390793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965851, 39.557507, 51.910065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.222980, 39.811699, 52.081150>,  <32.377258, 39.964214, 52.183804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.222980, 39.811699, 52.081150>,  <31.965851, 39.557507, 51.910065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222980, 39.811699, 52.081150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712752, 0.291629, 0.637917,
		0.280637, -0.714935, 0.640399,
		0.642828, 0.635468, 0.427729,
		32.415829, 40.002342, 52.209465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855637, 39.476303, 52.598515>,  <31.965851, 39.557507, 51.910065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855637, 39.476303, 52.598515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.051582, 39.824234, 52.575062>,  <32.169151, 40.032993, 52.560989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.051582, 39.824234, 52.575062>,  <31.855637, 39.476303, 52.598515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051582, 39.824234, 52.575062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471341, 0.320827, 0.821527,
		0.733396, -0.374800, 0.567146,
		0.489864, 0.869824, -0.058635,
		32.198540, 40.085182, 52.557472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936153, 39.586918, 53.289101>,  <31.855637, 39.476303, 52.598515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936153, 39.586918, 53.289101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.978867, 39.934124, 53.095135>,  <32.004494, 40.142448, 52.978756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.978867, 39.934124, 53.095135>,  <31.936153, 39.586918, 53.289101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978867, 39.934124, 53.095135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383271, 0.485951, 0.785465,
		0.917443, 0.101982, 0.384575,
		0.106781, 0.868016, -0.484919,
		32.010902, 40.194530, 52.949657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165543, 40.109104, 53.820889>,  <31.936153, 39.586918, 53.289101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165543, 40.109104, 53.820889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.017307, 40.327965, 53.520676>,  <31.928368, 40.459282, 53.340549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.017307, 40.327965, 53.520676>,  <32.165543, 40.109104, 53.820889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017307, 40.327965, 53.520676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362810, 0.658585, 0.659268,
		0.855006, 0.516614, -0.045549,
		-0.370585, 0.547152, -0.750527,
		31.906132, 40.492111, 53.295517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180588, 40.787575, 54.056438>,  <32.165543, 40.109104, 53.820889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180588, 40.787575, 54.056438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.931356, 40.803429, 53.743977>,  <31.781818, 40.812943, 53.556499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.931356, 40.803429, 53.743977>,  <32.180588, 40.787575, 54.056438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931356, 40.803429, 53.743977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548644, 0.689658, 0.472611,
		0.557464, 0.723049, -0.407963,
		-0.623076, 0.039638, -0.781156,
		31.744434, 40.815319, 53.509628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016613, 41.549435, 53.874973>,  <32.180588, 40.787575, 54.056438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016613, 41.549435, 53.874973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.718056, 41.314342, 53.750095>,  <31.538919, 41.173286, 53.675167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.718056, 41.314342, 53.750095>,  <32.016613, 41.549435, 53.874973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718056, 41.314342, 53.750095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663807, 0.690933, 0.286307,
		0.047434, 0.420935, -0.905850,
		-0.746398, -0.587729, -0.312194,
		31.494137, 41.138023, 53.656437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587999, 42.064125, 53.637386>,  <32.016613, 41.549435, 53.874973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587999, 42.064125, 53.637386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.375452, 41.729828, 53.692776>,  <31.247923, 41.529247, 53.726009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.375452, 41.729828, 53.692776>,  <31.587999, 42.064125, 53.637386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375452, 41.729828, 53.692776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771272, 0.544885, 0.328998,
		-0.350410, 0.068020, -0.934123,
		-0.531368, -0.835747, 0.138471,
		31.216042, 41.479103, 53.734318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876598, 42.210453, 53.391804>,  <31.587999, 42.064125, 53.637386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876598, 42.210453, 53.391804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.869894, 41.896473, 53.639538>,  <30.865871, 41.708084, 53.788177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.869894, 41.896473, 53.639538>,  <30.876598, 42.210453, 53.391804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869894, 41.896473, 53.639538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837461, 0.349421, 0.420195,
		-0.546240, -0.511625, -0.663221,
		-0.016761, -0.784949, 0.619334,
		30.864866, 41.660988, 53.825336>
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
