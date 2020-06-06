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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.224731, 32.172791, 23.112593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412231, 32.310062, 23.438168>,  <42.524731, 32.392426, 23.633512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412231, 32.310062, 23.438168>,  <42.224731, 32.172791, 23.112593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412231, 32.310062, 23.438168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656796, 0.480743, -0.580952,
		-0.590668, 0.806915, -0.000051,
		0.468754, 0.343183, 0.813938,
		42.552856, 32.413017, 23.682348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883415, 31.905807, 22.441198>,  <42.224731, 32.172791, 23.112593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883415, 31.905807, 22.441198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726761, 32.183910, 22.682274>,  <41.632767, 32.350773, 22.826920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726761, 32.183910, 22.682274>,  <41.883415, 31.905807, 22.441198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726761, 32.183910, 22.682274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908054, -0.397777, -0.131195,
		0.148521, -0.598655, 0.787117,
		-0.391638, 0.695259, 0.602690,
		41.609268, 32.392487, 22.863081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352512, 31.587378, 22.850376>,  <41.883415, 31.905807, 22.441198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352512, 31.587378, 22.850376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273365, 31.962349, 22.964973>,  <41.225876, 32.187332, 23.033731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273365, 31.962349, 22.964973>,  <41.352512, 31.587378, 22.850376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273365, 31.962349, 22.964973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976957, -0.212456, 0.020442,
		0.080031, -0.275847, 0.957864,
		-0.197865, 0.937428, 0.286494,
		41.214005, 32.243576, 23.050922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230423, 32.236134, 22.561544>,  <41.352512, 31.587378, 22.850376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230423, 32.236134, 22.561544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406483, 32.576496, 22.676239>,  <41.512119, 32.780716, 22.745056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406483, 32.576496, 22.676239>,  <41.230423, 32.236134, 22.561544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406483, 32.576496, 22.676239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551269, -0.508146, 0.661733,
		0.708779, -0.133194, -0.692742,
		0.440153, 0.850909, 0.286737,
		41.538528, 32.831768, 22.762260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674023, 32.780582, 22.576138>,  <41.230423, 32.236134, 22.561544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674023, 32.780582, 22.576138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302578, 32.801022, 22.723148>,  <40.079712, 32.813286, 22.811354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302578, 32.801022, 22.723148>,  <40.674023, 32.780582, 22.576138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302578, 32.801022, 22.723148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190777, -0.783796, 0.590989,
		0.318261, 0.618913, 0.718092,
		-0.928609, 0.051093, 0.367526,
		40.023994, 32.816349, 22.833406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614456, 32.859070, 23.258749>,  <40.674023, 32.780582, 22.576138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614456, 32.859070, 23.258749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272594, 32.667450, 23.178673>,  <40.067478, 32.552479, 23.130627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272594, 32.667450, 23.178673>,  <40.614456, 32.859070, 23.258749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272594, 32.667450, 23.178673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024000, -0.421617, 0.906456,
		-0.518643, 0.769902, 0.371834,
		-0.854654, -0.479052, -0.200192,
		40.016197, 32.523735, 23.118616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211685, 32.917389, 23.808931>,  <40.614456, 32.859070, 23.258749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211685, 32.917389, 23.808931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024567, 32.604050, 23.645210>,  <39.912296, 32.416046, 23.546978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024567, 32.604050, 23.645210>,  <40.211685, 32.917389, 23.808931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024567, 32.604050, 23.645210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000373, -0.462925, 0.886397,
		-0.883836, 0.414806, 0.216262,
		-0.467797, -0.783350, -0.409304,
		39.884228, 32.369045, 23.522419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689758, 32.728382, 24.231668>,  <40.211685, 32.917389, 23.808931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689758, 32.728382, 24.231668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765247, 32.392170, 24.028534>,  <39.810539, 32.190445, 23.906652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765247, 32.392170, 24.028534>,  <39.689758, 32.728382, 24.231668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765247, 32.392170, 24.028534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177387, -0.537802, 0.824199,
		-0.965877, -0.065461, -0.250594,
		0.188722, -0.840526, -0.507838,
		39.821865, 32.140011, 23.876183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228470, 32.242607, 24.572659>,  <39.689758, 32.728382, 24.231668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228470, 32.242607, 24.572659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496830, 32.026241, 24.369759>,  <39.657845, 31.896421, 24.248018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496830, 32.026241, 24.369759>,  <39.228470, 32.242607, 24.572659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496830, 32.026241, 24.369759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114162, -0.600546, 0.791398,
		-0.732708, -0.588857, -0.341154,
		0.670899, -0.540916, -0.507250,
		39.698101, 31.863966, 24.217583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002506, 31.527925, 24.669952>,  <39.228470, 32.242607, 24.572659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002506, 31.527925, 24.669952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390926, 31.532085, 24.574493>,  <39.623978, 31.534582, 24.517218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390926, 31.532085, 24.574493>,  <39.002506, 31.527925, 24.669952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390926, 31.532085, 24.574493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212213, -0.496209, 0.841869,
		-0.109660, -0.868141, -0.484052,
		0.971051, 0.010403, -0.238645,
		39.682243, 31.535206, 24.502899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157707, 30.937569, 24.934011>,  <39.002506, 31.527925, 24.669952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157707, 30.937569, 24.934011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493118, 31.151669, 24.893246>,  <39.694363, 31.280128, 24.868786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493118, 31.151669, 24.893246>,  <39.157707, 30.937569, 24.934011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493118, 31.151669, 24.893246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299312, -0.296199, 0.907017,
		0.455292, -0.791059, -0.408576,
		0.838523, 0.535249, -0.101916,
		39.744675, 31.312243, 24.862671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639690, 30.517433, 25.185503>,  <39.157707, 30.937569, 24.934011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639690, 30.517433, 25.185503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802200, 30.882740, 25.197411>,  <39.899708, 31.101925, 25.204556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802200, 30.882740, 25.197411>,  <39.639690, 30.517433, 25.185503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802200, 30.882740, 25.197411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333441, -0.178510, 0.925717,
		0.850740, -0.366168, -0.377044,
		0.406273, 0.913266, 0.029770,
		39.924084, 31.156719, 25.206341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365547, 30.395920, 25.455559>,  <39.639690, 30.517433, 25.185503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365547, 30.395920, 25.455559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250595, 30.771809, 25.529675>,  <40.181625, 30.997343, 25.574144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250595, 30.771809, 25.529675>,  <40.365547, 30.395920, 25.455559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250595, 30.771809, 25.529675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281599, -0.102007, 0.954095,
		0.915486, 0.326365, -0.235311,
		-0.287380, 0.939724, 0.185290,
		40.164383, 31.053726, 25.585262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910984, 30.648438, 25.829370>,  <40.365547, 30.395920, 25.455559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910984, 30.648438, 25.829370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621651, 30.919479, 25.882511>,  <40.448051, 31.082104, 25.914394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621651, 30.919479, 25.882511>,  <40.910984, 30.648438, 25.829370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621651, 30.919479, 25.882511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153723, -0.029546, 0.987672,
		0.673174, 0.734835, -0.082792,
		-0.723330, 0.677602, 0.132850,
		40.404652, 31.122761, 25.922367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183754, 31.192480, 26.157763>,  <40.910984, 30.648438, 25.829370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183754, 31.192480, 26.157763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792217, 31.222054, 26.234077>,  <40.557297, 31.239798, 26.279865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792217, 31.222054, 26.234077>,  <41.183754, 31.192480, 26.157763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792217, 31.222054, 26.234077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194878, 0.052707, 0.979410,
		0.062358, 0.995869, -0.066000,
		-0.978843, 0.073936, 0.190786,
		40.498566, 31.244234, 26.291313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168552, 31.626993, 26.638723>,  <41.183754, 31.192480, 26.157763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168552, 31.626993, 26.638723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806442, 31.465172, 26.690594>,  <40.589176, 31.368078, 26.721716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806442, 31.465172, 26.690594>,  <41.168552, 31.626993, 26.638723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806442, 31.465172, 26.690594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138992, 0.006398, 0.990273,
		-0.401448, 0.914492, 0.050437,
		-0.905274, -0.404554, 0.129675,
		40.534859, 31.343805, 26.729496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946182, 31.927185, 27.205482>,  <41.168552, 31.626993, 26.638723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946182, 31.927185, 27.205482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706440, 31.607632, 27.185223>,  <40.562595, 31.415899, 27.173067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706440, 31.607632, 27.185223>,  <40.946182, 31.927185, 27.205482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706440, 31.607632, 27.185223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096371, -0.134823, 0.986172,
		-0.794664, 0.586183, 0.157796,
		-0.599352, -0.798882, -0.050648,
		40.526634, 31.367968, 27.170029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491032, 32.034611, 27.727839>,  <40.946182, 31.927185, 27.205482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491032, 32.034611, 27.727839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470619, 31.642273, 27.652637>,  <40.458374, 31.406872, 27.607517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470619, 31.642273, 27.652637>,  <40.491032, 32.034611, 27.727839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470619, 31.642273, 27.652637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142573, -0.193476, 0.970690,
		-0.988468, 0.022728, 0.149715,
		-0.051028, -0.980842, -0.188005,
		40.455311, 31.348021, 27.596235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133041, 31.837006, 28.247248>,  <40.491032, 32.034611, 27.727839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133041, 31.837006, 28.247248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286663, 31.481895, 28.145771>,  <40.378834, 31.268829, 28.084885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286663, 31.481895, 28.145771>,  <40.133041, 31.837006, 28.247248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286663, 31.481895, 28.145771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069196, -0.246317, 0.966716,
		-0.920715, -0.388823, -0.033168,
		0.384051, -0.887775, -0.253693,
		40.401878, 31.215563, 28.069664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932529, 31.441608, 28.776777>,  <40.133041, 31.837006, 28.247248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932529, 31.441608, 28.776777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189548, 31.193172, 28.597275>,  <40.343758, 31.044111, 28.489574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189548, 31.193172, 28.597275>,  <39.932529, 31.441608, 28.776777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189548, 31.193172, 28.597275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132181, -0.487029, 0.863325,
		-0.754760, -0.614043, -0.230842,
		0.642546, -0.621091, -0.448755,
		40.382313, 31.006845, 28.462648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704865, 30.844793, 28.993256>,  <39.932529, 31.441608, 28.776777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704865, 30.844793, 28.993256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091499, 30.818413, 28.894173>,  <40.323479, 30.802584, 28.834723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091499, 30.818413, 28.894173>,  <39.704865, 30.844793, 28.993256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091499, 30.818413, 28.894173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191938, -0.454304, 0.869924,
		-0.169909, -0.888402, -0.426465,
		0.966587, -0.065953, -0.247709,
		40.381477, 30.798626, 28.819860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928528, 30.150457, 29.142164>,  <39.704865, 30.844793, 28.993256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928528, 30.150457, 29.142164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269207, 30.360069, 29.142731>,  <40.473614, 30.485836, 29.143070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269207, 30.360069, 29.142731>,  <39.928528, 30.150457, 29.142164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269207, 30.360069, 29.142731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256126, -0.418634, 0.871289,
		0.457175, -0.741713, -0.490768,
		0.851698, 0.524030, 0.001417,
		40.524715, 30.517279, 29.143156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370502, 29.586336, 29.343618>,  <39.928528, 30.150457, 29.142164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370502, 29.586336, 29.343618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553551, 29.937054, 29.402702>,  <40.663380, 30.147484, 29.438152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553551, 29.937054, 29.402702>,  <40.370502, 29.586336, 29.343618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553551, 29.937054, 29.402702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235687, -0.279799, 0.930679,
		0.857342, -0.391085, -0.334690,
		0.457621, 0.876792, 0.147710,
		40.690838, 30.200092, 29.447016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085831, 29.410521, 29.559383>,  <40.370502, 29.586336, 29.343618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085831, 29.410521, 29.559383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003849, 29.777145, 29.696732>,  <40.954659, 29.997120, 29.779140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003849, 29.777145, 29.696732>,  <41.085831, 29.410521, 29.559383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003849, 29.777145, 29.696732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024666, -0.345872, 0.937957,
		0.978460, 0.200709, 0.048280,
		-0.204955, 0.916564, 0.343373,
		40.942364, 30.052114, 29.799744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452202, 29.500742, 30.096859>,  <41.085831, 29.410521, 29.559383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452202, 29.500742, 30.096859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210400, 29.809048, 30.177353>,  <41.065319, 29.994030, 30.225649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210400, 29.809048, 30.177353>,  <41.452202, 29.500742, 30.096859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210400, 29.809048, 30.177353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032619, -0.228453, 0.973008,
		0.795931, 0.594755, 0.112960,
		-0.604508, 0.770763, 0.201233,
		41.029049, 30.040277, 30.237722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748753, 29.871111, 30.707039>,  <41.452202, 29.500742, 30.096859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748753, 29.871111, 30.707039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358509, 29.957371, 30.690678>,  <41.124363, 30.009127, 30.680861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358509, 29.957371, 30.690678>,  <41.748753, 29.871111, 30.707039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358509, 29.957371, 30.690678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100048, -0.271032, 0.957357,
		0.195368, 0.938103, 0.285998,
		-0.975613, 0.215650, -0.040904,
		41.065826, 30.022066, 30.678406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552288, 30.469498, 31.242046>,  <41.748753, 29.871111, 30.707039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552288, 30.469498, 31.242046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252430, 30.221317, 31.149902>,  <41.072514, 30.072409, 31.094616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252430, 30.221317, 31.149902>,  <41.552288, 30.469498, 31.242046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252430, 30.221317, 31.149902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129568, -0.203742, 0.970413,
		-0.649028, 0.757317, 0.072345,
		-0.749650, -0.620451, -0.230359,
		41.027534, 30.035181, 31.080795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206047, 30.429981, 31.817793>,  <41.552288, 30.469498, 31.242046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206047, 30.429981, 31.817793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016060, 30.149254, 31.605431>,  <40.902069, 29.980818, 31.478014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016060, 30.149254, 31.605431>,  <41.206047, 30.429981, 31.817793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016060, 30.149254, 31.605431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189526, -0.507561, 0.840513,
		-0.859352, 0.499836, 0.108062,
		-0.474967, -0.701816, -0.530906,
		40.873569, 29.938709, 31.446159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429920, 30.220764, 32.060726>,  <41.206047, 30.429981, 31.817793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429920, 30.220764, 32.060726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625397, 29.922569, 31.879433>,  <40.742683, 29.743652, 31.770655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625397, 29.922569, 31.879433>,  <40.429920, 30.220764, 32.060726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625397, 29.922569, 31.879433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351976, -0.643808, 0.679429,
		-0.798305, -0.172505, -0.577019,
		0.488695, -0.745488, -0.453238,
		40.772007, 29.698923, 31.743462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991722, 29.610636, 32.019650>,  <40.429920, 30.220764, 32.060726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991722, 29.610636, 32.019650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385891, 29.545959, 32.040798>,  <40.622391, 29.507153, 32.053490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385891, 29.545959, 32.040798>,  <39.991722, 29.610636, 32.019650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385891, 29.545959, 32.040798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131710, -0.528436, 0.838694,
		-0.107669, -0.833433, -0.542030,
		0.985424, -0.161692, 0.052876,
		40.681519, 29.497452, 32.056660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225880, 28.860498, 32.073898>,  <39.991722, 29.610636, 32.019650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225880, 28.860498, 32.073898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479088, 29.107067, 32.261219>,  <40.631012, 29.255009, 32.373611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479088, 29.107067, 32.261219>,  <40.225880, 28.860498, 32.073898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479088, 29.107067, 32.261219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028763, -0.623251, 0.781493,
		0.773602, -0.481230, -0.412260,
		0.633019, 0.616422, 0.468307,
		40.668995, 29.291994, 32.401711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514996, 28.737003, 32.234642>,  <40.225880, 28.860498, 32.073898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514996, 28.737003, 32.234642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126335, 28.824226, 32.271168>,  <38.893139, 28.876560, 32.293083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126335, 28.824226, 32.271168>,  <39.514996, 28.737003, 32.234642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126335, 28.824226, 32.271168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048172, 0.195518, -0.979516,
		-0.231444, -0.956151, -0.179472,
		-0.971655, 0.218057, 0.091311,
		38.834839, 28.889643, 32.298561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052902, 28.406311, 31.773108>,  <39.514996, 28.737003, 32.234642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052902, 28.406311, 31.773108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832493, 28.732067, 31.845924>,  <38.700249, 28.927521, 31.889614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832493, 28.732067, 31.845924>,  <39.052902, 28.406311, 31.773108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832493, 28.732067, 31.845924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121943, 0.137225, -0.983005,
		-0.825531, -0.563859, 0.023695,
		-0.551024, 0.814391, 0.182042,
		38.667187, 28.976385, 31.900537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806347, 28.499388, 31.109325>,  <39.052902, 28.406311, 31.773108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806347, 28.499388, 31.109325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666080, 28.802101, 31.329983>,  <38.581921, 28.983730, 31.462378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666080, 28.802101, 31.329983>,  <38.806347, 28.499388, 31.109325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666080, 28.802101, 31.329983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377510, 0.424838, -0.822799,
		-0.857041, -0.496778, 0.136718,
		-0.350666, 0.756785, 0.551643,
		38.560883, 29.029137, 31.495476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028843, 28.536621, 31.171526>,  <38.806347, 28.499388, 31.109325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028843, 28.536621, 31.171526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222092, 28.886772, 31.164539>,  <38.338043, 29.096863, 31.160347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222092, 28.886772, 31.164539>,  <38.028843, 28.536621, 31.171526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222092, 28.886772, 31.164539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569010, 0.298751, -0.766143,
		-0.665446, 0.380082, 0.642433,
		0.483125, 0.875377, -0.017468,
		38.367027, 29.149385, 31.159300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513840, 29.042473, 31.044043>,  <38.028843, 28.536621, 31.171526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513840, 29.042473, 31.044043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858063, 29.225777, 30.955101>,  <38.064594, 29.335760, 30.901735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858063, 29.225777, 30.955101>,  <37.513840, 29.042473, 31.044043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858063, 29.225777, 30.955101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377239, 0.280082, -0.882748,
		-0.342251, 0.843535, 0.413900,
		0.860555, 0.458261, -0.222356,
		38.116230, 29.363255, 30.888393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435719, 29.772728, 30.844454>,  <37.513840, 29.042473, 31.044043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435719, 29.772728, 30.844454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774879, 29.623619, 30.693665>,  <37.978374, 29.534153, 30.603191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774879, 29.623619, 30.693665>,  <37.435719, 29.772728, 30.844454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774879, 29.623619, 30.693665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206937, 0.421943, -0.882690,
		0.488103, 0.826441, 0.280625,
		0.847899, -0.372772, -0.376973,
		38.029247, 29.511787, 30.580572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687164, 30.289137, 30.488375>,  <37.435719, 29.772728, 30.844454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687164, 30.289137, 30.488375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868725, 29.964909, 30.340347>,  <37.977661, 29.770372, 30.251532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868725, 29.964909, 30.340347>,  <37.687164, 30.289137, 30.488375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868725, 29.964909, 30.340347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158588, 0.335197, -0.928705,
		0.876827, 0.480227, 0.023599,
		0.453900, -0.810571, -0.370068,
		38.004894, 29.721737, 30.229326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238148, 30.569025, 29.982695>,  <37.687164, 30.289137, 30.488375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238148, 30.569025, 29.982695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141575, 30.188389, 29.906605>,  <38.083630, 29.960007, 29.860950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141575, 30.188389, 29.906605>,  <38.238148, 30.569025, 29.982695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141575, 30.188389, 29.906605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058198, 0.209870, -0.975996,
		0.968671, -0.224565, -0.106050,
		-0.241431, -0.951591, -0.190226,
		38.069145, 29.902912, 29.849537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612675, 30.444426, 29.281832>,  <38.238148, 30.569025, 29.982695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612675, 30.444426, 29.281832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335213, 30.156651, 29.295959>,  <38.168736, 29.983986, 29.304436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335213, 30.156651, 29.295959>,  <38.612675, 30.444426, 29.281832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335213, 30.156651, 29.295959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182356, 0.127960, -0.974870,
		0.696841, -0.682666, -0.219954,
		-0.693656, -0.719440, 0.035320,
		38.127117, 29.940819, 29.306555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676411, 30.080505, 28.638720>,  <38.612675, 30.444426, 29.281832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676411, 30.080505, 28.638720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309738, 29.973915, 28.757843>,  <38.089737, 29.909960, 28.829317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309738, 29.973915, 28.757843>,  <38.676411, 30.080505, 28.638720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309738, 29.973915, 28.757843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354709, 0.199295, -0.913490,
		0.184070, -0.943013, -0.277210,
		-0.916679, -0.266475, 0.297811,
		38.034737, 29.893972, 28.847185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523018, 29.658237, 28.102774>,  <38.676411, 30.080505, 28.638720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523018, 29.658237, 28.102774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187641, 29.769737, 28.290096>,  <37.986416, 29.836637, 28.402491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187641, 29.769737, 28.290096>,  <38.523018, 29.658237, 28.102774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187641, 29.769737, 28.290096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420143, 0.216708, -0.881202,
		-0.347119, -0.935594, -0.064583,
		-0.838444, 0.278748, 0.468307,
		37.936108, 29.853361, 28.430588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015858, 29.334812, 27.665867>,  <38.523018, 29.658237, 28.102774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015858, 29.334812, 27.665867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835529, 29.626831, 27.871307>,  <37.727333, 29.802042, 27.994572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835529, 29.626831, 27.871307>,  <38.015858, 29.334812, 27.665867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835529, 29.626831, 27.871307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397780, 0.350785, -0.847774,
		-0.799080, -0.586498, 0.132256,
		-0.450824, 0.730048, 0.513602,
		37.700283, 29.845846, 28.025389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276596, 29.341423, 27.522942>,  <38.015858, 29.334812, 27.665867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276596, 29.341423, 27.522942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406212, 29.709164, 27.612198>,  <37.483982, 29.929808, 27.665752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406212, 29.709164, 27.612198>,  <37.276596, 29.341423, 27.522942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406212, 29.709164, 27.612198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512943, 0.368925, -0.775103,
		-0.794913, 0.136708, 0.591121,
		0.324042, 0.919351, 0.223140,
		37.503426, 29.984968, 27.679140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801609, 29.754278, 27.145100>,  <37.276596, 29.341423, 27.522942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801609, 29.754278, 27.145100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088703, 30.010101, 27.255238>,  <37.260960, 30.163595, 27.321321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088703, 30.010101, 27.255238>,  <36.801609, 29.754278, 27.145100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088703, 30.010101, 27.255238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241942, 0.599857, -0.762651,
		-0.652929, 0.480765, 0.585276,
		0.717738, 0.639560, 0.275347,
		37.304024, 30.201969, 27.337841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425720, 30.470688, 27.143978>,  <36.801609, 29.754278, 27.145100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425720, 30.470688, 27.143978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824116, 30.473087, 27.108257>,  <37.063152, 30.474527, 27.086824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824116, 30.473087, 27.108257>,  <36.425720, 30.470688, 27.143978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824116, 30.473087, 27.108257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074529, 0.608060, -0.790385,
		0.049559, 0.793868, 0.606067,
		0.995987, 0.005999, -0.089301,
		37.122913, 30.474888, 27.081467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629021, 31.261391, 27.014597>,  <36.425720, 30.470688, 27.143978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629021, 31.261391, 27.014597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963776, 31.064823, 26.918159>,  <37.164627, 30.946882, 26.860298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963776, 31.064823, 26.918159>,  <36.629021, 31.261391, 27.014597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963776, 31.064823, 26.918159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099900, 0.570179, -0.815424,
		0.538181, 0.658333, 0.526269,
		0.836888, -0.491420, -0.241092,
		37.214844, 30.917397, 26.845831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133675, 31.755833, 26.795458>,  <36.629021, 31.261391, 27.014597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133675, 31.755833, 26.795458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308643, 31.429943, 26.643204>,  <37.413624, 31.234409, 26.551851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308643, 31.429943, 26.643204>,  <37.133675, 31.755833, 26.795458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308643, 31.429943, 26.643204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052554, 0.445716, -0.893630,
		0.897718, 0.370892, 0.237784,
		0.437425, -0.814724, -0.380636,
		37.439869, 31.185526, 26.529013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680313, 31.931765, 26.379555>,  <37.133675, 31.755833, 26.795458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680313, 31.931765, 26.379555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607288, 31.560089, 26.251003>,  <37.563473, 31.337084, 26.173872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607288, 31.560089, 26.251003>,  <37.680313, 31.931765, 26.379555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607288, 31.560089, 26.251003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132492, 0.300639, -0.944490,
		0.974227, -0.215004, 0.068226,
		-0.182558, -0.929187, -0.321377,
		37.552521, 31.281332, 26.154591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211895, 31.774406, 25.924448>,  <37.680313, 31.931765, 26.379555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211895, 31.774406, 25.924448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891560, 31.550098, 25.840363>,  <37.699356, 31.415514, 25.789911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891560, 31.550098, 25.840363>,  <38.211895, 31.774406, 25.924448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891560, 31.550098, 25.840363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091418, 0.232431, -0.968307,
		0.591858, -0.794678, -0.134876,
		-0.800841, -0.560770, -0.210214,
		37.651306, 31.381868, 25.777298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365810, 31.458500, 25.304670>,  <38.211895, 31.774406, 25.924448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365810, 31.458500, 25.304670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967415, 31.432892, 25.329670>,  <37.728378, 31.417526, 25.344669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967415, 31.432892, 25.329670>,  <38.365810, 31.458500, 25.304670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967415, 31.432892, 25.329670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067574, 0.080442, -0.994466,
		0.058629, -0.994702, -0.084445,
		-0.995990, -0.064011, 0.062500,
		37.668617, 31.413687, 25.348419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170033, 30.891785, 24.957443>,  <38.365810, 31.458500, 25.304670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170033, 30.891785, 24.957443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840332, 31.118027, 24.946827>,  <37.642513, 31.253771, 24.940456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840332, 31.118027, 24.946827>,  <38.170033, 30.891785, 24.957443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840332, 31.118027, 24.946827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100307, 0.099723, -0.989946,
		-0.557271, -0.818625, -0.138931,
		-0.824250, 0.565604, -0.026541,
		37.593056, 31.287708, 24.938864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785183, 30.762981, 24.320930>,  <38.170033, 30.891785, 24.957443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785183, 30.762981, 24.320930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606991, 31.110306, 24.408188>,  <37.500076, 31.318701, 24.460543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606991, 31.110306, 24.408188>,  <37.785183, 30.762981, 24.320930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606991, 31.110306, 24.408188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083684, 0.202205, -0.975761,
		-0.891374, -0.452933, -0.017414,
		-0.445476, 0.868311, 0.218144,
		37.473347, 31.370800, 24.473631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263870, 30.794531, 23.825659>,  <37.785183, 30.762981, 24.320930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263870, 30.794531, 23.825659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311401, 31.166809, 23.964039>,  <37.339920, 31.390177, 24.047068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311401, 31.166809, 23.964039>,  <37.263870, 30.794531, 23.825659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311401, 31.166809, 23.964039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040569, 0.352678, -0.934865,
		-0.992086, 0.097054, 0.079666,
		0.118829, 0.930698, 0.345950,
		37.347050, 31.446018, 24.067823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616024, 31.105534, 23.663996>,  <37.263870, 30.794531, 23.825659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616024, 31.105534, 23.663996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876934, 31.402603, 23.724632>,  <37.033478, 31.580845, 23.761015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876934, 31.402603, 23.724632>,  <36.616024, 31.105534, 23.663996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876934, 31.402603, 23.724632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075904, 0.262987, -0.961809,
		-0.754176, 0.615854, 0.227911,
		0.652271, 0.742672, 0.151592,
		37.072617, 31.625404, 23.770109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299549, 31.634018, 23.260429>,  <36.616024, 31.105534, 23.663996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299549, 31.634018, 23.260429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673439, 31.765411, 23.314674>,  <36.897774, 31.844248, 23.347221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673439, 31.765411, 23.314674>,  <36.299549, 31.634018, 23.260429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673439, 31.765411, 23.314674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019886, 0.429355, -0.902917,
		-0.354821, 0.841280, 0.407861,
		0.934723, 0.328485, 0.135615,
		36.953857, 31.863956, 23.355358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285610, 32.350620, 23.016039>,  <36.299549, 31.634018, 23.260429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285610, 32.350620, 23.016039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667492, 32.232502, 23.001350>,  <36.896622, 32.161633, 22.992538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667492, 32.232502, 23.001350>,  <36.285610, 32.350620, 23.016039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667492, 32.232502, 23.001350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075598, 0.360038, -0.929870,
		0.287806, 0.884971, 0.366052,
		0.954700, -0.295295, -0.036719,
		36.953903, 32.143913, 22.990335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650276, 32.939960, 22.792412>,  <36.285610, 32.350620, 23.016039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650276, 32.939960, 22.792412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813004, 32.589947, 22.687485>,  <36.910641, 32.379936, 22.624529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813004, 32.589947, 22.687485>,  <36.650276, 32.939960, 22.792412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813004, 32.589947, 22.687485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085630, 0.322415, -0.942717,
		0.909488, 0.361050, 0.206093,
		0.406816, -0.875038, -0.262316,
		36.935047, 32.327435, 22.608789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085114, 33.253437, 22.421797>,  <36.650276, 32.939960, 22.792412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085114, 33.253437, 22.421797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815182, 33.260391, 22.126690>,  <35.653221, 33.264565, 21.949625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815182, 33.260391, 22.126690>,  <36.085114, 33.253437, 22.421797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815182, 33.260391, 22.126690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718251, -0.245048, 0.651204,
		-0.169465, 0.969355, 0.177856,
		-0.674831, 0.017389, -0.737768,
		35.612732, 33.265610, 21.905359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491020, 33.642586, 22.662748>,  <36.085114, 33.253437, 22.421797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491020, 33.642586, 22.662748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383904, 33.395245, 22.367199>,  <35.319633, 33.246841, 22.189869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383904, 33.395245, 22.367199>,  <35.491020, 33.642586, 22.662748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383904, 33.395245, 22.367199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843913, -0.219472, 0.489534,
		-0.464864, 0.754637, -0.463060,
		-0.267792, -0.618349, -0.738872,
		35.303566, 33.209740, 22.145536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770702, 33.600887, 22.726826>,  <35.491020, 33.642586, 22.662748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770702, 33.600887, 22.726826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852077, 33.302788, 22.472828>,  <34.900902, 33.123928, 22.320429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852077, 33.302788, 22.472828>,  <34.770702, 33.600887, 22.726826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852077, 33.302788, 22.472828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843280, -0.462907, 0.273123,
		-0.497488, 0.479915, -0.722626,
		0.203433, -0.745251, -0.634993,
		34.913109, 33.079212, 22.282330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397568, 33.288097, 23.285055>,  <34.770702, 33.600887, 22.726826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397568, 33.288097, 23.285055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290230, 33.567406, 23.019600>,  <34.225826, 33.734989, 22.860327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290230, 33.567406, 23.019600>,  <34.397568, 33.288097, 23.285055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290230, 33.567406, 23.019600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955754, 0.106788, -0.274101,
		-0.120527, -0.707825, -0.696029,
		-0.268343, 0.698269, -0.663636,
		34.209728, 33.776886, 22.820509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255409, 32.664452, 22.885084>,  <34.397568, 33.288097, 23.285055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255409, 32.664452, 22.885084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573238, 32.467857, 23.027691>,  <34.763935, 32.349899, 23.113255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573238, 32.467857, 23.027691>,  <34.255409, 32.664452, 22.885084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573238, 32.467857, 23.027691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583749, -0.779882, 0.225877,
		0.167027, -0.387592, -0.906573,
		0.794568, -0.491484, 0.356518,
		34.811607, 32.320412, 23.134645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226273, 31.952435, 22.592707>,  <34.255409, 32.664452, 22.885084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226273, 31.952435, 22.592707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416225, 31.980042, 22.943642>,  <34.530197, 31.996607, 23.154203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416225, 31.980042, 22.943642>,  <34.226273, 31.952435, 22.592707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416225, 31.980042, 22.943642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688450, -0.591864, 0.419205,
		0.548197, -0.803077, -0.233552,
		0.474885, 0.069019, 0.877337,
		34.558693, 32.000748, 23.206842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170986, 31.326685, 22.821552>,  <34.226273, 31.952435, 22.592707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170986, 31.326685, 22.821552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231804, 31.570072, 23.133102>,  <34.268295, 31.716105, 23.320034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231804, 31.570072, 23.133102>,  <34.170986, 31.326685, 22.821552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231804, 31.570072, 23.133102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639584, -0.540230, 0.546886,
		0.753535, -0.581309, 0.307027,
		0.152044, 0.608467, 0.778878,
		34.277416, 31.752613, 23.366766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366928, 30.883965, 23.346590>,  <34.170986, 31.326685, 22.821552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366928, 30.883965, 23.346590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227119, 31.208839, 23.533432>,  <34.143234, 31.403765, 23.645538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227119, 31.208839, 23.533432>,  <34.366928, 30.883965, 23.346590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227119, 31.208839, 23.533432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421637, -0.581567, 0.695703,
		0.836693, 0.046215, 0.545718,
		-0.349523, 0.812185, 0.467107,
		34.122261, 31.452496, 23.673565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618908, 30.954422, 24.182970>,  <34.366928, 30.883965, 23.346590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618908, 30.954422, 24.182970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274914, 31.144836, 24.109413>,  <34.068516, 31.259085, 24.065279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274914, 31.144836, 24.109413>,  <34.618908, 30.954422, 24.182970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274914, 31.144836, 24.109413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429912, -0.481656, 0.763664,
		0.274957, 0.735798, 0.618870,
		-0.859985, 0.476034, -0.183894,
		34.016918, 31.287647, 24.054245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298435, 31.032946, 24.854311>,  <34.618908, 30.954422, 24.182970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298435, 31.032946, 24.854311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999756, 31.107841, 24.599003>,  <33.820549, 31.152779, 24.445818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999756, 31.107841, 24.599003>,  <34.298435, 31.032946, 24.854311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999756, 31.107841, 24.599003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660786, -0.318753, 0.679528,
		-0.076217, 0.929160, 0.361735,
		-0.746695, 0.187238, -0.638270,
		33.775749, 31.164013, 24.407522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854645, 31.371855, 25.258827>,  <34.298435, 31.032946, 24.854311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854645, 31.371855, 25.258827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635113, 31.209652, 24.966431>,  <33.503391, 31.112329, 24.790993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635113, 31.209652, 24.966431>,  <33.854645, 31.371855, 25.258827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635113, 31.209652, 24.966431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664408, -0.319063, 0.675841,
		-0.507290, 0.856599, -0.094310,
		-0.548834, -0.405508, -0.730989,
		33.470463, 31.087999, 24.747133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151394, 31.517870, 25.448193>,  <33.854645, 31.371855, 25.258827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151394, 31.517870, 25.448193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111324, 31.247246, 25.156376>,  <33.087280, 31.084871, 24.981287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111324, 31.247246, 25.156376>,  <33.151394, 31.517870, 25.448193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111324, 31.247246, 25.156376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654173, -0.507680, 0.560642,
		-0.749682, 0.533409, -0.391730,
		-0.100178, -0.676562, -0.729540,
		33.081272, 31.044277, 24.937513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318993, 31.379568, 25.264835>,  <33.151394, 31.517870, 25.448193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318993, 31.379568, 25.264835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559879, 31.073654, 25.173241>,  <32.704411, 30.890106, 25.118284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559879, 31.073654, 25.173241>,  <32.318993, 31.379568, 25.264835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559879, 31.073654, 25.173241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631106, -0.631732, 0.450133,
		-0.488912, -0.126565, -0.863102,
		0.602220, -0.764785, -0.228986,
		32.740547, 30.844219, 25.104544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810978, 30.873522, 25.079544>,  <32.318993, 31.379568, 25.264835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810978, 30.873522, 25.079544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149418, 30.671516, 25.147751>,  <32.352482, 30.550314, 25.188675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149418, 30.671516, 25.147751>,  <31.810978, 30.873522, 25.079544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149418, 30.671516, 25.147751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531638, -0.776502, 0.338238,
		-0.038408, -0.376836, -0.925483,
		0.846100, -0.505013, 0.170517,
		32.403248, 30.520012, 25.198906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666775, 30.264647, 24.939329>,  <31.810978, 30.873522, 25.079544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666775, 30.264647, 24.939329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997625, 30.213604, 25.158264>,  <32.196136, 30.182978, 25.289625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997625, 30.213604, 25.158264>,  <31.666775, 30.264647, 24.939329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997625, 30.213604, 25.158264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416760, -0.792643, 0.445004,
		0.377057, -0.596183, -0.708797,
		0.827127, -0.127606, 0.547337,
		32.245762, 30.175322, 25.322466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564077, 29.505371, 25.113424>,  <31.666775, 30.264647, 24.939329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564077, 29.505371, 25.113424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837980, 29.614849, 25.383595>,  <32.002323, 29.680536, 25.545696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837980, 29.614849, 25.383595>,  <31.564077, 29.505371, 25.113424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837980, 29.614849, 25.383595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378054, -0.658935, 0.650292,
		0.623042, -0.700640, -0.347740,
		0.684758, 0.273695, 0.675424,
		32.043407, 29.696957, 25.586222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919168, 28.906452, 25.435825>,  <31.564077, 29.505371, 25.113424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919168, 28.906452, 25.435825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990107, 29.168034, 25.730007>,  <32.032669, 29.324982, 25.906517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990107, 29.168034, 25.730007>,  <31.919168, 28.906452, 25.435825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990107, 29.168034, 25.730007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231084, -0.698737, 0.677028,
		0.956634, -0.290020, 0.027200,
		0.177346, 0.653954, 0.735455,
		32.043312, 29.364220, 25.950644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343533, 28.600882, 25.970566>,  <31.919168, 28.906452, 25.435825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343533, 28.600882, 25.970566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164177, 28.916080, 26.139328>,  <32.056564, 29.105200, 26.240585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164177, 28.916080, 26.139328>,  <32.343533, 28.600882, 25.970566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164177, 28.916080, 26.139328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231031, -0.558148, 0.796929,
		0.863465, 0.259862, 0.432320,
		-0.448389, 0.787999, 0.421905,
		32.029659, 29.152481, 26.265900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556816, 28.580017, 26.679401>,  <32.343533, 28.600882, 25.970566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556816, 28.580017, 26.679401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216446, 28.789940, 26.670494>,  <32.012222, 28.915894, 26.665150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216446, 28.789940, 26.670494>,  <32.556816, 28.580017, 26.679401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216446, 28.789940, 26.670494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303467, -0.456555, 0.836340,
		0.428751, 0.718424, 0.547759,
		-0.850929, 0.524809, -0.022270,
		31.961166, 28.947382, 26.663813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558273, 28.664152, 27.331310>,  <32.556816, 28.580017, 26.679401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558273, 28.664152, 27.331310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196552, 28.755096, 27.186787>,  <31.979519, 28.809664, 27.100073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196552, 28.755096, 27.186787>,  <32.558273, 28.664152, 27.331310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196552, 28.755096, 27.186787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420909, -0.333660, 0.843509,
		0.071227, 0.914865, 0.397428,
		-0.904302, 0.227361, -0.361309,
		31.925262, 28.823305, 27.078394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305256, 29.237022, 27.657366>,  <32.558273, 28.664152, 27.331310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305256, 29.237022, 27.657366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989847, 29.036373, 27.515041>,  <31.800600, 28.915983, 27.429647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989847, 29.036373, 27.515041>,  <32.305256, 29.237022, 27.657366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989847, 29.036373, 27.515041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331652, -0.140379, 0.932899,
		-0.517912, 0.853620, -0.055672,
		-0.788526, -0.501623, -0.355809,
		31.753290, 28.885885, 27.408298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757627, 29.477688, 28.001968>,  <32.305256, 29.237022, 27.657366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757627, 29.477688, 28.001968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649212, 29.120258, 27.858822>,  <31.584162, 28.905802, 27.772934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649212, 29.120258, 27.858822>,  <31.757627, 29.477688, 28.001968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649212, 29.120258, 27.858822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438666, -0.216264, 0.872240,
		-0.856802, 0.393396, -0.333363,
		-0.271041, -0.893571, -0.357865,
		31.567900, 28.852186, 27.751463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109243, 29.405220, 28.248102>,  <31.757627, 29.477688, 28.001968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109243, 29.405220, 28.248102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212429, 29.034439, 28.139137>,  <31.274342, 28.811970, 28.073757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212429, 29.034439, 28.139137>,  <31.109243, 29.405220, 28.248102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212429, 29.034439, 28.139137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357896, -0.353581, 0.864229,
		-0.897421, -0.125445, -0.422965,
		0.257965, -0.926954, -0.272414,
		31.289818, 28.756353, 28.057413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629059, 28.967283, 28.546288>,  <31.109243, 29.405220, 28.248102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629059, 28.967283, 28.546288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914539, 28.695610, 28.477768>,  <31.085827, 28.532606, 28.436657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914539, 28.695610, 28.477768>,  <30.629059, 28.967283, 28.546288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914539, 28.695610, 28.477768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273506, -0.495358, 0.824509,
		-0.644846, -0.541601, -0.539297,
		0.713701, -0.679183, -0.171298,
		31.128649, 28.491856, 28.426378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366394, 28.251362, 28.447344>,  <30.629059, 28.967283, 28.546288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366394, 28.251362, 28.447344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745853, 28.206036, 28.565479>,  <30.973530, 28.178841, 28.636360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745853, 28.206036, 28.565479>,  <30.366394, 28.251362, 28.447344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745853, 28.206036, 28.565479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306612, -0.559011, 0.770386,
		0.077802, -0.821381, -0.565049,
		0.948649, -0.113314, 0.295337,
		31.030449, 28.172041, 28.654081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491154, 27.527163, 28.675562>,  <30.366394, 28.251362, 28.447344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491154, 27.527163, 28.675562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805040, 27.709217, 28.843884>,  <30.993372, 27.818449, 28.944876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805040, 27.709217, 28.843884>,  <30.491154, 27.527163, 28.675562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805040, 27.709217, 28.843884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032594, -0.647635, 0.761253,
		0.618999, -0.611083, -0.493374,
		0.784715, 0.455134, 0.420803,
		31.040455, 27.845757, 28.970125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897581, 27.027790, 28.794943>,  <30.491154, 27.527163, 28.675562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897581, 27.027790, 28.794943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053175, 27.293411, 29.050358>,  <31.146530, 27.452784, 29.203606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053175, 27.293411, 29.050358>,  <30.897581, 27.027790, 28.794943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053175, 27.293411, 29.050358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172685, -0.628279, 0.758581,
		0.904916, -0.405340, -0.129718,
		0.388982, 0.664052, 0.638536,
		31.169870, 27.492626, 29.241919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403847, 26.672745, 29.176195>,  <30.897581, 27.027790, 28.794943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403847, 26.672745, 29.176195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318897, 26.990166, 29.404289>,  <31.267927, 27.180618, 29.541145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318897, 26.990166, 29.404289>,  <31.403847, 26.672745, 29.176195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318897, 26.990166, 29.404289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063916, -0.593579, 0.802234,
		0.975096, 0.133925, 0.176780,
		-0.212372, 0.793554, 0.570237,
		31.255186, 27.228231, 29.575359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736309, 26.585871, 29.813820>,  <31.403847, 26.672745, 29.176195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736309, 26.585871, 29.813820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469332, 26.870079, 29.902973>,  <31.309145, 27.040604, 29.956465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469332, 26.870079, 29.902973>,  <31.736309, 26.585871, 29.813820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469332, 26.870079, 29.902973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011903, -0.309449, 0.950841,
		0.744564, 0.631981, 0.214997,
		-0.667445, 0.710521, 0.222883,
		31.269098, 27.083235, 29.969837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035835, 26.898020, 30.448250>,  <31.736309, 26.585871, 29.813820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035835, 26.898020, 30.448250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643021, 26.972683, 30.437157>,  <31.407333, 27.017481, 30.430500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643021, 26.972683, 30.437157>,  <32.035835, 26.898020, 30.448250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643021, 26.972683, 30.437157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114111, -0.470328, 0.875083,
		0.150298, 0.862525, 0.483177,
		-0.982033, 0.186659, -0.027735,
		31.348412, 27.028681, 30.428837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834272, 27.108143, 31.111353>,  <32.035835, 26.898020, 30.448250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834272, 27.108143, 31.111353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483526, 27.012470, 30.944550>,  <31.273079, 26.955067, 30.844467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483526, 27.012470, 30.944550>,  <31.834272, 27.108143, 31.111353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483526, 27.012470, 30.944550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324194, -0.346303, 0.880325,
		-0.354968, 0.907120, 0.226121,
		-0.876867, -0.239180, -0.417010,
		31.220467, 26.940716, 30.819447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239229, 27.344999, 31.706160>,  <31.834272, 27.108143, 31.111353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239229, 27.344999, 31.706160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121181, 27.077068, 31.433620>,  <31.050352, 26.916309, 31.270096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121181, 27.077068, 31.433620>,  <31.239229, 27.344999, 31.706160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121181, 27.077068, 31.433620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445386, -0.534451, 0.718327,
		-0.845302, 0.515457, -0.140603,
		-0.295121, -0.669826, -0.681349,
		31.032646, 26.876120, 31.229216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533327, 27.206400, 31.888205>,  <31.239229, 27.344999, 31.706160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533327, 27.206400, 31.888205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649569, 26.893669, 31.667553>,  <30.719315, 26.706030, 31.535162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649569, 26.893669, 31.667553>,  <30.533327, 27.206400, 31.888205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649569, 26.893669, 31.667553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347006, -0.623373, 0.700709,
		-0.891704, -0.012211, -0.452454,
		0.290604, -0.781829, -0.551627,
		30.736750, 26.659121, 31.502066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062286, 26.764595, 32.108555>,  <30.533327, 27.206400, 31.888205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062286, 26.764595, 32.108555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352917, 26.555168, 31.930580>,  <30.527294, 26.429512, 31.823795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352917, 26.555168, 31.930580>,  <30.062286, 26.764595, 32.108555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352917, 26.555168, 31.930580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125683, -0.737916, 0.663087,
		-0.675495, -0.425862, -0.601954,
		0.726575, -0.523567, -0.444935,
		30.570890, 26.398098, 31.797100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802126, 26.028530, 32.048607>,  <30.062286, 26.764595, 32.108555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802126, 26.028530, 32.048607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197792, 25.987331, 32.006756>,  <30.435192, 25.962612, 31.981646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197792, 25.987331, 32.006756>,  <29.802126, 26.028530, 32.048607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197792, 25.987331, 32.006756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032806, -0.849680, 0.526278,
		-0.143102, -0.517143, -0.843852,
		0.989164, -0.102995, -0.104625,
		30.494541, 25.956432, 31.975368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961662, 25.390366, 31.734905>,  <29.802126, 26.028530, 32.048607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961662, 25.390366, 31.734905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267546, 25.513538, 31.961319>,  <30.451077, 25.587442, 32.097168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267546, 25.513538, 31.961319>,  <29.961662, 25.390366, 31.734905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267546, 25.513538, 31.961319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036603, -0.856248, 0.515266,
		0.643334, -0.414747, -0.643511,
		0.764710, 0.307934, 0.566035,
		30.496960, 25.605919, 32.131130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317293, 24.683441, 31.916023>,  <29.961662, 25.390366, 31.734905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317293, 24.683441, 31.916023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472767, 24.970661, 32.146961>,  <30.566051, 25.142994, 32.285522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472767, 24.970661, 32.146961>,  <30.317293, 24.683441, 31.916023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472767, 24.970661, 32.146961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226352, -0.681828, 0.695612,
		0.893135, -0.139689, -0.427547,
		0.388683, 0.718051, 0.577345,
		30.589373, 25.186077, 32.320164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011957, 24.428789, 32.129475>,  <30.317293, 24.683441, 31.916023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011957, 24.428789, 32.129475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884584, 24.682468, 32.411293>,  <30.808161, 24.834677, 32.580383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884584, 24.682468, 32.411293>,  <31.011957, 24.428789, 32.129475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884584, 24.682468, 32.411293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236073, -0.666768, 0.706888,
		0.918079, 0.391423, 0.062604,
		-0.318434, 0.634200, 0.704550,
		30.789055, 24.872728, 32.622658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466463, 24.332420, 32.688259>,  <31.011957, 24.428789, 32.129475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466463, 24.332420, 32.688259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164423, 24.530552, 32.860062>,  <30.983198, 24.649431, 32.963142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164423, 24.530552, 32.860062>,  <31.466463, 24.332420, 32.688259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164423, 24.530552, 32.860062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074483, -0.715692, 0.694434,
		0.651364, 0.492377, 0.577313,
		-0.755101, 0.495329, 0.429502,
		30.937893, 24.679150, 32.988911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658009, 24.254528, 33.377888>,  <31.466463, 24.332420, 32.688259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658009, 24.254528, 33.377888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263718, 24.321617, 33.372143>,  <31.027143, 24.361870, 33.368694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263718, 24.321617, 33.372143>,  <31.658009, 24.254528, 33.377888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263718, 24.321617, 33.372143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139316, -0.764911, 0.628890,
		0.094491, 0.621916, 0.777362,
		-0.985730, 0.167723, -0.014365,
		30.967999, 24.371935, 33.367832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387188, 24.301649, 34.087574>,  <31.658009, 24.254528, 33.377888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387188, 24.301649, 34.087574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040056, 24.220501, 33.906151>,  <30.831778, 24.171812, 33.797295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040056, 24.220501, 33.906151>,  <31.387188, 24.301649, 34.087574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040056, 24.220501, 33.906151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271783, -0.570352, 0.775134,
		-0.415942, 0.795953, 0.439831,
		-0.867829, -0.202872, -0.453560,
		30.779707, 24.159639, 33.770084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875212, 24.434978, 34.550133>,  <31.387188, 24.301649, 34.087574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875212, 24.434978, 34.550133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751539, 24.157192, 34.290249>,  <30.677336, 23.990520, 34.134319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751539, 24.157192, 34.290249>,  <30.875212, 24.434978, 34.550133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751539, 24.157192, 34.290249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283476, -0.584827, 0.760013,
		-0.907771, 0.419159, -0.016047,
		-0.309182, -0.694466, -0.649710,
		30.658785, 23.948853, 34.095337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326859, 24.292768, 34.882614>,  <30.875212, 24.434978, 34.550133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326859, 24.292768, 34.882614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369797, 23.973053, 34.646103>,  <30.395559, 23.781223, 34.504196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369797, 23.973053, 34.646103>,  <30.326859, 24.292768, 34.882614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369797, 23.973053, 34.646103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303634, -0.592659, 0.746030,
		-0.946722, 0.099448, -0.306312,
		0.107347, -0.799291, -0.591279,
		30.402000, 23.733265, 34.468719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671780, 23.881859, 34.971298>,  <30.326859, 24.292768, 34.882614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671780, 23.881859, 34.971298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982403, 23.663277, 34.845860>,  <30.168777, 23.532127, 34.770596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982403, 23.663277, 34.845860>,  <29.671780, 23.881859, 34.971298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982403, 23.663277, 34.845860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194169, -0.681077, 0.705997,
		-0.599376, -0.487360, -0.635003,
		0.776561, -0.546456, -0.313591,
		30.215370, 23.499340, 34.751781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479733, 23.144024, 34.965847>,  <29.671780, 23.881859, 34.971298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479733, 23.144024, 34.965847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879562, 23.134293, 34.959362>,  <30.119459, 23.128454, 34.955471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879562, 23.134293, 34.959362>,  <29.479733, 23.144024, 34.965847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879562, 23.134293, 34.959362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011336, -0.833663, 0.552158,
		-0.026946, -0.551738, -0.833582,
		0.999573, -0.024328, -0.016210,
		30.179434, 23.126995, 34.954498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622919, 22.463427, 35.110825>,  <29.479733, 23.144024, 34.965847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622919, 22.463427, 35.110825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985567, 22.628666, 35.145218>,  <30.203156, 22.727810, 35.165855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985567, 22.628666, 35.145218>,  <29.622919, 22.463427, 35.110825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985567, 22.628666, 35.145218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325476, -0.814338, 0.480541,
		0.268533, -0.407681, -0.872746,
		0.906618, 0.413099, 0.085986,
		30.257553, 22.752596, 35.171013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090618, 21.967381, 35.107742>,  <29.622919, 22.463427, 35.110825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090618, 21.967381, 35.107742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294327, 22.250027, 35.304245>,  <30.416552, 22.419615, 35.422146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294327, 22.250027, 35.304245>,  <30.090618, 21.967381, 35.107742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294327, 22.250027, 35.304245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389488, -0.698265, 0.600603,
		0.767425, -0.114531, -0.630826,
		0.509271, 0.706617, 0.491258,
		30.447107, 22.462011, 35.451622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850494, 21.701202, 35.302727>,  <30.090618, 21.967381, 35.107742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850494, 21.701202, 35.302727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771118, 22.012707, 35.540768>,  <30.723494, 22.199610, 35.683594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771118, 22.012707, 35.540768>,  <30.850494, 21.701202, 35.302727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771118, 22.012707, 35.540768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279376, -0.537049, 0.795945,
		0.939453, 0.324205, -0.110996,
		-0.198438, 0.778762, 0.595107,
		30.711586, 22.246336, 35.719299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505558, 21.870188, 35.760090>,  <30.850494, 21.701202, 35.302727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505558, 21.870188, 35.760090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170242, 22.003597, 35.932617>,  <30.969053, 22.083643, 36.036133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170242, 22.003597, 35.932617>,  <31.505558, 21.870188, 35.760090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170242, 22.003597, 35.932617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217342, -0.521099, 0.825359,
		0.500038, 0.785632, 0.364342,
		-0.838287, 0.333524, 0.431320,
		30.918756, 22.103655, 36.062012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686708, 22.046066, 36.495148>,  <31.505558, 21.870188, 35.760090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686708, 22.046066, 36.495148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298931, 21.953987, 36.461235>,  <31.066265, 21.898739, 36.440887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298931, 21.953987, 36.461235>,  <31.686708, 22.046066, 36.495148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298931, 21.953987, 36.461235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029936, -0.454017, 0.890490,
		-0.243481, 0.860742, 0.447035,
		-0.969444, -0.230200, -0.084777,
		31.008099, 21.884928, 36.435802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144806, 22.316647, 37.043880>,  <31.686708, 22.046066, 36.495148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144806, 22.316647, 37.043880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032745, 21.966560, 36.886139>,  <30.965509, 21.756510, 36.791492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032745, 21.966560, 36.886139>,  <31.144806, 22.316647, 37.043880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032745, 21.966560, 36.886139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069194, -0.391326, 0.917647,
		-0.957459, 0.284366, 0.049070,
		-0.280150, -0.875214, -0.394355,
		30.948700, 21.703997, 36.767834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539001, 22.023476, 37.375919>,  <31.144806, 22.316647, 37.043880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539001, 22.023476, 37.375919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742401, 21.725952, 37.202400>,  <30.864441, 21.547438, 37.098289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742401, 21.725952, 37.202400>,  <30.539001, 22.023476, 37.375919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742401, 21.725952, 37.202400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104359, -0.446841, 0.888506,
		-0.854715, -0.497074, -0.149595,
		0.508498, -0.743808, -0.433796,
		30.894951, 21.502810, 37.072262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326395, 21.407587, 37.658497>,  <30.539001, 22.023476, 37.375919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326395, 21.407587, 37.658497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684555, 21.303493, 37.513977>,  <30.899450, 21.241037, 37.427265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684555, 21.303493, 37.513977>,  <30.326395, 21.407587, 37.658497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684555, 21.303493, 37.513977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180673, -0.529282, 0.828986,
		-0.406957, -0.807552, -0.426903,
		0.895401, -0.260232, -0.361298,
		30.953175, 21.225424, 37.405586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779593, 22.019390, 37.473419>,  <30.326395, 21.407587, 37.658497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779593, 22.019390, 37.473419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639023, 22.113400, 37.835915>,  <29.554682, 22.169806, 38.053410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639023, 22.113400, 37.835915>,  <29.779593, 22.019390, 37.473419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639023, 22.113400, 37.835915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891766, -0.210694, 0.400453,
		0.285055, 0.948879, -0.135545,
		-0.351423, 0.235025, 0.906237,
		29.533596, 22.183907, 38.107784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519247, 22.515291, 37.107323>,  <29.779593, 22.019390, 37.473419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519247, 22.515291, 37.107323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.255217, 22.766991, 36.943203>,  <29.096798, 22.918011, 36.844730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.255217, 22.766991, 36.943203>,  <29.519247, 22.515291, 37.107323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255217, 22.766991, 36.943203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238599, -0.342292, -0.908794,
		-0.712300, -0.697770, 0.075800,
		-0.660076, 0.629248, -0.410302,
		29.057194, 22.955765, 36.820114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466820, 23.318186, 37.178295>,  <29.519247, 22.515291, 37.107323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466820, 23.318186, 37.178295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294607, 23.463688, 37.508705>,  <29.191278, 23.550989, 37.706951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294607, 23.463688, 37.508705>,  <29.466820, 23.318186, 37.178295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294607, 23.463688, 37.508705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261507, 0.926209, -0.271573,
		-0.863861, 0.099091, -0.493888,
		-0.430533, 0.363756, 0.826029,
		29.165447, 23.572815, 37.756516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869572, 23.874168, 37.055424>,  <29.466820, 23.318186, 37.178295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869572, 23.874168, 37.055424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077806, 23.922234, 37.393547>,  <29.202747, 23.951073, 37.596420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077806, 23.922234, 37.393547>,  <28.869572, 23.874168, 37.055424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077806, 23.922234, 37.393547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199844, 0.945396, -0.257465,
		-0.830092, 0.302963, 0.468145,
		0.520585, 0.120164, 0.845312,
		29.233982, 23.958282, 37.647141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674755, 24.493557, 37.321308>,  <28.869572, 23.874168, 37.055424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674755, 24.493557, 37.321308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049677, 24.386044, 37.410046>,  <29.274630, 24.321535, 37.463287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049677, 24.386044, 37.410046>,  <28.674755, 24.493557, 37.321308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049677, 24.386044, 37.410046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336581, 0.863257, -0.376166,
		-0.090397, 0.427249, 0.899603,
		0.937305, -0.268785, 0.221840,
		29.330868, 24.305408, 37.476597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045454, 24.958178, 37.719986>,  <28.674755, 24.493557, 37.321308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045454, 24.958178, 37.719986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304930, 24.751499, 37.496475>,  <29.460615, 24.627493, 37.362370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304930, 24.751499, 37.496475>,  <29.045454, 24.958178, 37.719986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304930, 24.751499, 37.496475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455584, 0.851765, -0.258726,
		0.609627, -0.086735, 0.787929,
		0.648690, -0.516695, -0.558774,
		29.499537, 24.596491, 37.328842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704836, 25.109945, 37.893551>,  <29.045454, 24.958178, 37.719986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704836, 25.109945, 37.893551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771885, 24.987301, 37.518768>,  <29.812115, 24.913715, 37.293900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771885, 24.987301, 37.518768>,  <29.704836, 25.109945, 37.893551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771885, 24.987301, 37.518768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638880, 0.757612, -0.133623,
		0.750822, -0.576207, 0.322881,
		0.167624, -0.306609, -0.936959,
		29.822172, 24.895319, 37.237682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358278, 25.239460, 37.703255>,  <29.704836, 25.109945, 37.893551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358278, 25.239460, 37.703255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224920, 25.194035, 37.328884>,  <30.144905, 25.166780, 37.104263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224920, 25.194035, 37.328884>,  <30.358278, 25.239460, 37.703255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224920, 25.194035, 37.328884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523146, 0.803581, -0.283859,
		0.784326, -0.584261, -0.208498,
		-0.333393, -0.113563, -0.935923,
		30.124903, 25.159966, 37.048107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915936, 25.510498, 37.276211>,  <30.358278, 25.239460, 37.703255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915936, 25.510498, 37.276211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585642, 25.510994, 37.050591>,  <30.387465, 25.511292, 36.915218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585642, 25.510994, 37.050591>,  <30.915936, 25.510498, 37.276211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585642, 25.510994, 37.050591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323772, 0.819892, -0.472175,
		0.461878, -0.572517, -0.677417,
		-0.825737, 0.001242, -0.564055,
		30.337921, 25.511366, 36.881374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200697, 25.650581, 36.580532>,  <30.915936, 25.510498, 37.276211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200697, 25.650581, 36.580532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812332, 25.745609, 36.568581>,  <30.579313, 25.802626, 36.561409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812332, 25.745609, 36.568581>,  <31.200697, 25.650581, 36.580532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812332, 25.745609, 36.568581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223101, 0.852285, -0.473114,
		-0.086931, -0.466017, -0.880495,
		-0.970911, 0.237568, -0.029879,
		30.521059, 25.816879, 36.559616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051416, 25.933889, 35.915428>,  <31.200697, 25.650581, 36.580532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051416, 25.933889, 35.915428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754505, 26.056568, 36.153744>,  <30.576359, 26.130175, 36.296734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754505, 26.056568, 36.153744>,  <31.051416, 25.933889, 35.915428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754505, 26.056568, 36.153744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033730, 0.870882, -0.490333,
		-0.669242, -0.384059, -0.636092,
		-0.742278, 0.306696, 0.595786,
		30.531822, 26.148577, 36.332478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551371, 26.119133, 35.458263>,  <31.051416, 25.933889, 35.915428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551371, 26.119133, 35.458263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507975, 26.343014, 35.786888>,  <30.481937, 26.477343, 35.984062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507975, 26.343014, 35.786888>,  <30.551371, 26.119133, 35.458263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507975, 26.343014, 35.786888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055598, 0.828562, -0.557129,
		-0.992542, -0.014764, -0.121008,
		-0.108488, 0.559702, 0.821562,
		30.475428, 26.510923, 36.033356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149166, 26.742111, 35.248333>,  <30.551371, 26.119133, 35.458263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149166, 26.742111, 35.248333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288689, 26.848770, 35.607719>,  <30.372402, 26.912766, 35.823349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288689, 26.848770, 35.607719>,  <30.149166, 26.742111, 35.248333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288689, 26.848770, 35.607719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383102, 0.834350, -0.396350,
		-0.855318, 0.482451, 0.188871,
		0.348804, 0.266649, 0.898462,
		30.393330, 26.928764, 35.877258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800129, 27.419493, 35.328239>,  <30.149166, 26.742111, 35.248333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800129, 27.419493, 35.328239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118956, 27.393581, 35.568401>,  <30.310251, 27.378035, 35.712498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118956, 27.393581, 35.568401>,  <29.800129, 27.419493, 35.328239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118956, 27.393581, 35.568401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335852, 0.873838, -0.351583,
		-0.501882, 0.481883, 0.718264,
		0.797068, -0.064777, 0.600405,
		30.358076, 27.374147, 35.748524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867254, 28.086630, 35.315834>,  <29.800129, 27.419493, 35.328239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867254, 28.086630, 35.315834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193375, 27.962975, 35.511677>,  <30.389048, 27.888783, 35.629181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193375, 27.962975, 35.511677>,  <29.867254, 28.086630, 35.315834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193375, 27.962975, 35.511677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518552, 0.766058, -0.379815,
		-0.257653, 0.563551, 0.784873,
		0.815303, -0.309137, 0.489607,
		30.437965, 27.870234, 35.658558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117046, 28.713364, 35.682461>,  <29.867254, 28.086630, 35.315834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117046, 28.713364, 35.682461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402573, 28.439888, 35.621746>,  <30.573889, 28.275803, 35.585316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402573, 28.439888, 35.621746>,  <30.117046, 28.713364, 35.682461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402573, 28.439888, 35.621746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550620, 0.681809, -0.481616,
		0.432767, 0.260205, 0.863137,
		0.713814, -0.683688, -0.151790,
		30.616716, 28.234781, 35.576210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626265, 29.013863, 35.916096>,  <30.117046, 28.713364, 35.682461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626265, 29.013863, 35.916096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762543, 28.738377, 35.660095>,  <30.844309, 28.573086, 35.506496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762543, 28.738377, 35.660095>,  <30.626265, 29.013863, 35.916096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762543, 28.738377, 35.660095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398143, 0.722361, -0.565400,
		0.851709, -0.062182, 0.520312,
		0.340695, -0.688715, -0.639999,
		30.864752, 28.531763, 35.468094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306921, 29.157169, 35.884663>,  <30.626265, 29.013863, 35.916096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306921, 29.157169, 35.884663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219908, 28.945278, 35.556744>,  <31.167700, 28.818144, 35.359993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219908, 28.945278, 35.556744>,  <31.306921, 29.157169, 35.884663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219908, 28.945278, 35.556744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308977, 0.759344, -0.572652,
		0.925858, -0.377869, -0.001510,
		-0.217534, -0.529727, -0.819797,
		31.154648, 28.786360, 35.310806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802189, 29.201841, 35.285606>,  <31.306921, 29.157169, 35.884663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802189, 29.201841, 35.285606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511078, 29.041576, 35.062965>,  <31.336411, 28.945417, 34.929379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511078, 29.041576, 35.062965>,  <31.802189, 29.201841, 35.285606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511078, 29.041576, 35.062965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400684, 0.410265, -0.819228,
		0.556587, -0.819240, -0.138045,
		-0.727779, -0.400660, -0.556605,
		31.292744, 28.921379, 34.895985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161343, 28.892746, 34.725796>,  <31.802189, 29.201841, 35.285606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161343, 28.892746, 34.725796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783453, 28.954803, 34.610260>,  <31.556719, 28.992037, 34.540939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783453, 28.954803, 34.610260>,  <32.161343, 28.892746, 34.725796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783453, 28.954803, 34.610260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320793, 0.255385, -0.912069,
		-0.067736, -0.954311, -0.291036,
		-0.944724, 0.155142, -0.288838,
		31.500036, 29.001347, 34.523609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134262, 28.554638, 34.111454>,  <32.161343, 28.892746, 34.725796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134262, 28.554638, 34.111454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830015, 28.813801, 34.127804>,  <31.647467, 28.969299, 34.137615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830015, 28.813801, 34.127804>,  <32.134262, 28.554638, 34.111454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830015, 28.813801, 34.127804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224815, 0.321948, -0.919678,
		-0.609028, -0.690336, -0.390540,
		-0.760620, 0.647909, 0.040878,
		31.601830, 29.008173, 34.140068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803761, 28.526426, 33.400921>,  <32.134262, 28.554638, 34.111454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803761, 28.526426, 33.400921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688141, 28.875439, 33.558472>,  <31.618769, 29.084846, 33.653004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688141, 28.875439, 33.558472>,  <31.803761, 28.526426, 33.400921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688141, 28.875439, 33.558472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151039, 0.447854, -0.881257,
		-0.945324, -0.195235, -0.261237,
		-0.289048, 0.872531, 0.393879,
		31.601427, 29.137197, 33.676636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352072, 28.803732, 32.846867>,  <31.803761, 28.526426, 33.400921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352072, 28.803732, 32.846867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461903, 29.103710, 33.087597>,  <31.527802, 29.283697, 33.232033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461903, 29.103710, 33.087597>,  <31.352072, 28.803732, 32.846867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461903, 29.103710, 33.087597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269970, 0.540579, -0.796800,
		-0.922889, 0.381256, -0.054032,
		0.274577, 0.749945, 0.601822,
		31.544275, 29.328693, 33.268143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097633, 29.486532, 32.490479>,  <31.352072, 28.803732, 32.846867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097633, 29.486532, 32.490479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394798, 29.573994, 32.743546>,  <31.573097, 29.626471, 32.895386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394798, 29.573994, 32.743546>,  <31.097633, 29.486532, 32.490479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394798, 29.573994, 32.743546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434927, 0.560786, -0.704526,
		-0.508840, 0.798567, 0.321516,
		0.742913, 0.218655, 0.632669,
		31.617672, 29.639589, 32.933346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191357, 30.113756, 32.504871>,  <31.097633, 29.486532, 32.490479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191357, 30.113756, 32.504871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554897, 29.991535, 32.618450>,  <31.773022, 29.918203, 32.686600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554897, 29.991535, 32.618450>,  <31.191357, 30.113756, 32.504871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554897, 29.991535, 32.618450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408382, 0.513203, -0.754882,
		0.084932, 0.802035, 0.591207,
		0.908851, -0.305552, 0.283949,
		31.827553, 29.899870, 32.703636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684818, 30.739662, 32.528004>,  <31.191357, 30.113756, 32.504871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684818, 30.739662, 32.528004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924025, 30.419460, 32.512150>,  <32.067551, 30.227339, 32.502640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924025, 30.419460, 32.512150>,  <31.684818, 30.739662, 32.528004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924025, 30.419460, 32.512150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556969, 0.450624, -0.697656,
		0.576334, 0.395138, 0.715336,
		0.598017, -0.800503, -0.039630,
		32.103432, 30.179310, 32.500259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338356, 31.037292, 32.447010>,  <31.684818, 30.739662, 32.528004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338356, 31.037292, 32.447010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387428, 30.654510, 32.341797>,  <32.416874, 30.424841, 32.278667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387428, 30.654510, 32.341797>,  <32.338356, 31.037292, 32.447010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387428, 30.654510, 32.341797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444278, 0.289953, -0.847670,
		0.887449, -0.012863, 0.460727,
		0.122685, -0.956954, -0.263033,
		32.424232, 30.367424, 32.262886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021702, 31.012011, 32.193336>,  <32.338356, 31.037292, 32.447010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021702, 31.012011, 32.193336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809631, 30.713020, 32.033241>,  <32.682388, 30.533627, 31.937183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809631, 30.713020, 32.033241>,  <33.021702, 31.012011, 32.193336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809631, 30.713020, 32.033241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284690, 0.287708, -0.914427,
		0.798664, -0.598753, 0.060263,
		-0.530178, -0.747475, -0.400241,
		32.650578, 30.488777, 31.913170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500957, 30.809460, 31.724241>,  <33.021702, 31.012011, 32.193336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500957, 30.809460, 31.724241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137871, 30.679287, 31.618298>,  <32.920021, 30.601183, 31.554731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137871, 30.679287, 31.618298>,  <33.500957, 30.809460, 31.724241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137871, 30.679287, 31.618298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202343, 0.213478, -0.955764,
		0.367578, -0.921152, -0.127928,
		-0.907713, -0.325432, -0.264858,
		32.865555, 30.581657, 31.538839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597866, 30.383533, 31.072306>,  <33.500957, 30.809460, 31.724241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597866, 30.383533, 31.072306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206440, 30.461063, 31.100166>,  <32.971584, 30.507582, 31.116882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206440, 30.461063, 31.100166>,  <33.597866, 30.383533, 31.072306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206440, 30.461063, 31.100166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043552, 0.135812, -0.989777,
		-0.201301, -0.971590, -0.124459,
		-0.978561, 0.193823, 0.069653,
		32.912872, 30.519211, 31.121063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255165, 29.797119, 30.705284>,  <33.597866, 30.383533, 31.072306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255165, 29.797119, 30.705284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042110, 30.135483, 30.716167>,  <32.914276, 30.338501, 30.722698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042110, 30.135483, 30.716167>,  <33.255165, 29.797119, 30.705284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042110, 30.135483, 30.716167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036820, 0.055279, -0.997792,
		-0.845544, -0.530457, -0.060590,
		-0.532635, 0.845907, 0.027209,
		32.882320, 30.389256, 30.724331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839447, 29.746094, 30.122154>,  <33.255165, 29.797119, 30.705284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839447, 29.746094, 30.122154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822521, 30.134342, 30.216896>,  <32.812366, 30.367292, 30.273741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822521, 30.134342, 30.216896>,  <32.839447, 29.746094, 30.122154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822521, 30.134342, 30.216896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022266, 0.237926, -0.971028,
		-0.998857, -0.035812, -0.031679,
		-0.042312, 0.970623, 0.236856,
		32.809826, 30.425529, 30.287952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475266, 29.891422, 29.558571>,  <32.839447, 29.746094, 30.122154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475266, 29.891422, 29.558571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596088, 30.237179, 29.719360>,  <32.668583, 30.444633, 29.815834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596088, 30.237179, 29.719360>,  <32.475266, 29.891422, 29.558571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596088, 30.237179, 29.719360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095840, 0.391999, -0.914960,
		-0.948459, 0.314898, 0.035564,
		0.302060, 0.864393, 0.401975,
		32.686707, 30.496496, 29.839952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171192, 30.447203, 29.213852>,  <32.475266, 29.891422, 29.558571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171192, 30.447203, 29.213852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506390, 30.591026, 29.378036>,  <32.707508, 30.677320, 29.476547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506390, 30.591026, 29.378036>,  <32.171192, 30.447203, 29.213852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506390, 30.591026, 29.378036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316360, 0.292758, -0.902335,
		-0.444609, 0.886008, 0.131580,
		0.837997, 0.359559, 0.410460,
		32.757790, 30.698895, 29.501175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183636, 31.127951, 29.029381>,  <32.171192, 30.447203, 29.213852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183636, 31.127951, 29.029381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564194, 31.063648, 29.134449>,  <32.792530, 31.025066, 29.197491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564194, 31.063648, 29.134449>,  <32.183636, 31.127951, 29.029381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564194, 31.063648, 29.134449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305656, 0.388796, -0.869145,
		0.037596, 0.907191, 0.419036,
		0.951399, -0.160757, 0.262671,
		32.849613, 31.015421, 29.213251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548111, 31.821745, 29.014118>,  <32.183636, 31.127951, 29.029381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548111, 31.821745, 29.014118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829845, 31.539230, 28.985641>,  <32.998886, 31.369722, 28.968555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829845, 31.539230, 28.985641>,  <32.548111, 31.821745, 29.014118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829845, 31.539230, 28.985641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308583, 0.394953, -0.865326,
		0.639283, 0.587515, 0.496128,
		0.704339, -0.706285, -0.071189,
		33.041145, 31.327345, 28.964285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148422, 32.171246, 28.921585>,  <32.548111, 31.821745, 29.014118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148422, 32.171246, 28.921585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235737, 31.800598, 28.799129>,  <33.288128, 31.578209, 28.725657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235737, 31.800598, 28.799129>,  <33.148422, 32.171246, 28.921585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235737, 31.800598, 28.799129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430158, 0.372949, -0.822115,
		0.875964, 0.047772, 0.480005,
		0.218291, -0.926621, -0.306141,
		33.301224, 31.522612, 28.707287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872772, 32.162521, 28.773708>,  <33.148422, 32.171246, 28.921585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872772, 32.162521, 28.773708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719246, 31.852467, 28.572968>,  <33.627132, 31.666435, 28.452522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719246, 31.852467, 28.572968>,  <33.872772, 32.162521, 28.773708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719246, 31.852467, 28.572968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566012, 0.231925, -0.791101,
		0.729601, -0.587690, 0.349719,
		-0.383814, -0.775133, -0.501852,
		33.604103, 31.619926, 28.422411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402733, 32.001976, 28.367519>,  <33.872772, 32.162521, 28.773708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402733, 32.001976, 28.367519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096771, 31.816982, 28.188171>,  <33.913197, 31.705986, 28.080563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096771, 31.816982, 28.188171>,  <34.402733, 32.001976, 28.367519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096771, 31.816982, 28.188171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458503, 0.097999, -0.883273,
		0.452438, -0.881196, 0.137090,
		-0.764901, -0.462483, -0.448370,
		33.867302, 31.678238, 28.053661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639313, 31.626787, 27.835995>,  <34.402733, 32.001976, 28.367519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639313, 31.626787, 27.835995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270100, 31.692974, 27.697067>,  <34.048573, 31.732685, 27.613710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270100, 31.692974, 27.697067>,  <34.639313, 31.626787, 27.835995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270100, 31.692974, 27.697067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377118, 0.210592, -0.901905,
		-0.076093, -0.963469, -0.256784,
		-0.923034, 0.165467, -0.347316,
		33.993191, 31.742615, 27.592873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616520, 31.417126, 27.149090>,  <34.639313, 31.626787, 27.835995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616520, 31.417126, 27.149090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317150, 31.680607, 27.179985>,  <34.137527, 31.838696, 27.198523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317150, 31.680607, 27.179985>,  <34.616520, 31.417126, 27.149090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317150, 31.680607, 27.179985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249562, 0.387611, -0.887399,
		-0.614471, -0.644878, -0.454486,
		-0.748428, 0.658703, 0.077239,
		34.092621, 31.878218, 27.203157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344681, 31.474535, 26.545565>,  <34.616520, 31.417126, 27.149090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344681, 31.474535, 26.545565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174255, 31.804825, 26.693428>,  <34.071999, 32.002998, 26.782146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174255, 31.804825, 26.693428>,  <34.344681, 31.474535, 26.545565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174255, 31.804825, 26.693428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009341, 0.412595, -0.910866,
		-0.904645, -0.384633, -0.183505,
		-0.426063, 0.825725, 0.369659,
		34.046436, 32.052544, 26.804325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804909, 31.660536, 26.058640>,  <34.344681, 31.474535, 26.545565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804909, 31.660536, 26.058640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906620, 31.986832, 26.266453>,  <33.967648, 32.182610, 26.391140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906620, 31.986832, 26.266453>,  <33.804909, 31.660536, 26.058640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906620, 31.986832, 26.266453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097282, 0.556039, -0.825444,
		-0.962225, 0.159353, 0.220746,
		0.254280, 0.815738, 0.519532,
		33.982903, 32.231552, 26.422312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365570, 32.127434, 25.737698>,  <33.804909, 31.660536, 26.058640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365570, 32.127434, 25.737698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637531, 32.338383, 25.941505>,  <33.800709, 32.464954, 26.063789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637531, 32.338383, 25.941505>,  <33.365570, 32.127434, 25.737698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637531, 32.338383, 25.941505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101415, 0.620525, -0.777601,
		-0.726256, 0.580365, 0.368413,
		0.679903, 0.527375, 0.509518,
		33.841503, 32.496593, 26.094360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117615, 32.810223, 25.716606>,  <33.365570, 32.127434, 25.737698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117615, 32.810223, 25.716606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505699, 32.839333, 25.809036>,  <33.738548, 32.856800, 25.864494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505699, 32.839333, 25.809036>,  <33.117615, 32.810223, 25.716606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505699, 32.839333, 25.809036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084062, 0.793423, -0.602838,
		-0.227212, 0.604304, 0.763670,
		0.970210, 0.072777, 0.231074,
		33.796761, 32.861164, 25.878359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359558, 32.556709, 25.511003>,  <33.117615, 32.810223, 25.716606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359558, 32.556709, 25.511003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018536, 32.660789, 25.329700>,  <31.813921, 32.723236, 25.220919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018536, 32.660789, 25.329700>,  <32.359558, 32.556709, 25.511003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018536, 32.660789, 25.329700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476063, -0.028763, 0.878940,
		0.215662, 0.965126, 0.148394,
		-0.852557, 0.260199, -0.453258,
		31.762768, 32.738850, 25.193724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071590, 33.156166, 25.792040>,  <32.359558, 32.556709, 25.511003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071590, 33.156166, 25.792040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747301, 32.997963, 25.619389>,  <31.552727, 32.903042, 25.515799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747301, 32.997963, 25.619389>,  <32.071590, 33.156166, 25.792040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747301, 32.997963, 25.619389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497807, 0.077741, 0.863797,
		-0.308080, 0.915168, -0.259911,
		-0.810725, -0.395504, -0.431627,
		31.504084, 32.879311, 25.489901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561226, 33.447727, 26.177469>,  <32.071590, 33.156166, 25.792040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561226, 33.447727, 26.177469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366615, 33.143898, 26.004803>,  <31.249849, 32.961601, 25.901203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366615, 33.143898, 26.004803>,  <31.561226, 33.447727, 26.177469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366615, 33.143898, 26.004803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288569, -0.326641, 0.900019,
		-0.824632, 0.562449, -0.060270,
		-0.486528, -0.759576, -0.431664,
		31.220657, 32.916023, 25.875303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872881, 33.574215, 26.285532>,  <31.561226, 33.447727, 26.177469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872881, 33.574215, 26.285532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923819, 33.182438, 26.222950>,  <30.954382, 32.947372, 26.185400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923819, 33.182438, 26.222950>,  <30.872881, 33.574215, 26.285532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923819, 33.182438, 26.222950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524706, -0.200382, 0.827364,
		-0.841705, -0.023267, -0.539436,
		0.127344, -0.979441, -0.156454,
		30.962021, 32.888607, 26.176014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267712, 33.103630, 26.432585>,  <30.872881, 33.574215, 26.285532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267712, 33.103630, 26.432585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553104, 32.824684, 26.459782>,  <30.724340, 32.657314, 26.476101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553104, 32.824684, 26.459782>,  <30.267712, 33.103630, 26.432585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553104, 32.824684, 26.459782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412556, -0.339677, 0.845232,
		-0.566342, -0.631108, -0.530056,
		0.713481, -0.697368, 0.067994,
		30.767149, 32.615475, 26.480181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899395, 32.542263, 26.612791>,  <30.267712, 33.103630, 26.432585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899395, 32.542263, 26.612791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281704, 32.458622, 26.695522>,  <30.511089, 32.408436, 26.745161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281704, 32.458622, 26.695522>,  <29.899395, 32.542263, 26.612791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281704, 32.458622, 26.695522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289098, -0.538619, 0.791399,
		-0.054082, -0.816190, -0.575247,
		0.955771, -0.209103, 0.206829,
		30.568436, 32.395889, 26.757570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947353, 31.774389, 26.656437>,  <29.899395, 32.542263, 26.612791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947353, 31.774389, 26.656437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246279, 31.946735, 26.858772>,  <30.425634, 32.050144, 26.980173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246279, 31.946735, 26.858772>,  <29.947353, 31.774389, 26.656437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246279, 31.946735, 26.858772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350558, -0.391046, 0.850995,
		0.564472, -0.813287, -0.141191,
		0.747316, 0.430867, 0.505839,
		30.470474, 32.075996, 27.010525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180151, 31.200468, 27.109564>,  <29.947353, 31.774389, 26.656437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180151, 31.200468, 27.109564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318346, 31.541389, 27.266644>,  <30.401264, 31.745943, 27.360891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318346, 31.541389, 27.266644>,  <30.180151, 31.200468, 27.109564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318346, 31.541389, 27.266644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147217, -0.364061, 0.919667,
		0.926803, -0.375547, -0.000305,
		0.345489, 0.852305, 0.392700,
		30.421993, 31.797081, 27.384453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641670, 31.022497, 27.625158>,  <30.180151, 31.200468, 27.109564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641670, 31.022497, 27.625158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498842, 31.386036, 27.711411>,  <30.413145, 31.604160, 27.763163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498842, 31.386036, 27.711411>,  <30.641670, 31.022497, 27.625158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498842, 31.386036, 27.711411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229864, -0.309245, 0.922784,
		0.905353, 0.279933, 0.319333,
		-0.357070, 0.908848, 0.215630,
		30.391722, 31.658689, 27.776100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770287, 31.045359, 28.288340>,  <30.641670, 31.022497, 27.625158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770287, 31.045359, 28.288340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534897, 31.368759, 28.290302>,  <30.393663, 31.562799, 28.291479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534897, 31.368759, 28.290302>,  <30.770287, 31.045359, 28.288340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534897, 31.368759, 28.290302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214442, -0.161929, 0.963220,
		0.779559, 0.565779, 0.268668,
		-0.588475, 0.808501, 0.004906,
		30.358355, 31.611309, 28.291775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932749, 31.428133, 28.895248>,  <30.770287, 31.045359, 28.288340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932749, 31.428133, 28.895248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559904, 31.538990, 28.801987>,  <30.336197, 31.605505, 28.746029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559904, 31.538990, 28.801987>,  <30.932749, 31.428133, 28.895248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559904, 31.538990, 28.801987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260611, -0.066209, 0.963171,
		0.251501, 0.958544, 0.133941,
		-0.932110, 0.277145, -0.233155,
		30.280272, 31.622133, 28.732040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801928, 31.823114, 29.410526>,  <30.932749, 31.428133, 28.895248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801928, 31.823114, 29.410526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426115, 31.780571, 29.280315>,  <30.200628, 31.755045, 29.202188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426115, 31.780571, 29.280315>,  <30.801928, 31.823114, 29.410526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426115, 31.780571, 29.280315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329489, 0.021583, 0.943913,
		-0.093369, 0.994093, -0.055323,
		-0.939531, -0.106361, -0.325528,
		30.144257, 31.748663, 29.182657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300713, 32.360466, 29.736464>,  <30.801928, 31.823114, 29.410526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300713, 32.360466, 29.736464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090332, 32.049618, 29.598213>,  <29.964104, 31.863108, 29.515263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090332, 32.049618, 29.598213>,  <30.300713, 32.360466, 29.736464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090332, 32.049618, 29.598213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341237, -0.179424, 0.922694,
		-0.779060, 0.603231, -0.170815,
		-0.525949, -0.777122, -0.345627,
		29.932547, 31.816481, 29.494526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722559, 32.390553, 30.135824>,  <30.300713, 32.360466, 29.736464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722559, 32.390553, 30.135824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688122, 32.030190, 29.965672>,  <29.667459, 31.813971, 29.863579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688122, 32.030190, 29.965672>,  <29.722559, 32.390553, 30.135824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688122, 32.030190, 29.965672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431021, -0.351263, 0.831165,
		-0.898226, 0.254905, -0.358070,
		-0.086092, -0.900909, -0.425383,
		29.662294, 31.759916, 29.838057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033905, 32.126812, 30.384287>,  <29.722559, 32.390553, 30.135824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033905, 32.126812, 30.384287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284937, 31.832058, 30.283768>,  <29.435556, 31.655207, 30.223457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284937, 31.832058, 30.283768>,  <29.033905, 32.126812, 30.384287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284937, 31.832058, 30.283768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215702, -0.474705, 0.853304,
		-0.748077, -0.481309, -0.456861,
		0.627577, -0.736883, -0.251297,
		29.473209, 31.610992, 30.208380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621290, 31.573721, 30.411583>,  <29.033905, 32.126812, 30.384287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621290, 31.573721, 30.411583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998070, 31.443787, 30.445564>,  <29.224136, 31.365826, 30.465954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998070, 31.443787, 30.445564>,  <28.621290, 31.573721, 30.411583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998070, 31.443787, 30.445564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246815, -0.498346, 0.831104,
		-0.227637, -0.803824, -0.549590,
		0.941947, -0.324837, 0.084954,
		29.280653, 31.346334, 30.471050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622421, 30.843859, 30.643457>,  <28.621290, 31.573721, 30.411583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622421, 30.843859, 30.643457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993700, 30.958691, 30.738148>,  <29.216467, 31.027590, 30.794962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993700, 30.958691, 30.738148>,  <28.622421, 30.843859, 30.643457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993700, 30.958691, 30.738148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004429, -0.627631, 0.778499,
		0.372065, -0.723648, -0.581293,
		0.928196, 0.287078, 0.236724,
		29.272160, 31.044813, 30.809164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935169, 30.181322, 30.827841>,  <28.622421, 30.843859, 30.643457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935169, 30.181322, 30.827841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188890, 30.457539, 30.966873>,  <29.341124, 30.623268, 31.050293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188890, 30.457539, 30.966873>,  <28.935169, 30.181322, 30.827841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188890, 30.457539, 30.966873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074251, -0.393106, 0.916490,
		0.769512, -0.607139, -0.198074,
		0.634301, 0.690543, 0.347580,
		29.379181, 30.664701, 31.071148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476574, 29.888971, 31.020805>,  <28.935169, 30.181322, 30.827841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476574, 29.888971, 31.020805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464624, 30.217979, 31.247986>,  <29.457455, 30.415384, 31.384295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464624, 30.217979, 31.247986>,  <29.476574, 29.888971, 31.020805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464624, 30.217979, 31.247986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016163, -0.567734, 0.823054,
		0.999423, 0.033768, 0.003667,
		-0.029875, 0.822519, 0.567952,
		29.455662, 30.464735, 31.418371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745781, 29.659704, 31.583778>,  <29.476574, 29.888971, 31.020805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745781, 29.659704, 31.583778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551714, 29.980343, 31.723522>,  <29.435274, 30.172726, 31.807369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551714, 29.980343, 31.723522>,  <29.745781, 29.659704, 31.583778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551714, 29.980343, 31.723522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171278, -0.478912, 0.860992,
		0.857482, 0.357889, 0.369649,
		-0.485169, 0.801597, 0.349360,
		29.406162, 30.220821, 31.828331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045225, 29.782314, 32.247898>,  <29.745781, 29.659704, 31.583778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045225, 29.782314, 32.247898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696505, 29.978088, 32.239700>,  <29.487272, 30.095552, 32.234783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696505, 29.978088, 32.239700>,  <30.045225, 29.782314, 32.247898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696505, 29.978088, 32.239700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231859, -0.375418, 0.897387,
		0.431517, 0.787093, 0.440769,
		-0.871800, 0.489434, -0.020496,
		29.434965, 30.124918, 32.233551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944576, 30.032331, 33.000774>,  <30.045225, 29.782314, 32.247898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944576, 30.032331, 33.000774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615942, 29.997505, 32.775414>,  <29.418762, 29.976610, 32.640198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615942, 29.997505, 32.775414>,  <29.944576, 30.032331, 33.000774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615942, 29.997505, 32.775414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463604, -0.473097, 0.749166,
		-0.331769, 0.876697, 0.348326,
		-0.821584, -0.087065, -0.563399,
		29.369467, 29.971386, 32.606392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479366, 30.268875, 33.399399>,  <29.944576, 30.032331, 33.000774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479366, 30.268875, 33.399399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215044, 30.109413, 33.145027>,  <29.056450, 30.013737, 32.992405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215044, 30.109413, 33.145027>,  <29.479366, 30.268875, 33.399399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215044, 30.109413, 33.145027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286483, -0.649165, 0.704636,
		-0.693732, 0.647811, 0.314764,
		-0.660805, -0.398654, -0.635933,
		29.016802, 29.989817, 32.954247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836399, 30.354393, 33.651566>,  <29.479366, 30.268875, 33.399399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836399, 30.354393, 33.651566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838800, 30.036148, 33.409256>,  <28.840242, 29.845201, 33.263870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838800, 30.036148, 33.409256>,  <28.836399, 30.354393, 33.651566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838800, 30.036148, 33.409256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440526, -0.545940, 0.712661,
		-0.897720, 0.262581, -0.353766,
		0.006004, -0.795613, -0.605775,
		28.840601, 29.797464, 33.227524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249302, 30.039165, 33.881195>,  <28.836399, 30.354393, 33.651566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249302, 30.039165, 33.881195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463564, 29.751225, 33.704613>,  <28.592121, 29.578459, 33.598663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463564, 29.751225, 33.704613>,  <28.249302, 30.039165, 33.881195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463564, 29.751225, 33.704613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404270, -0.677587, 0.614363,
		-0.741377, -0.150619, -0.653968,
		0.535655, -0.719854, -0.441457,
		28.624260, 29.535269, 33.572174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808458, 29.467245, 33.742729>,  <28.249302, 30.039165, 33.881195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808458, 29.467245, 33.742729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172659, 29.303196, 33.721622>,  <28.391180, 29.204765, 33.708958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172659, 29.303196, 33.721622>,  <27.808458, 29.467245, 33.742729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172659, 29.303196, 33.721622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313358, -0.767604, 0.559099,
		-0.269802, -0.492527, -0.827420,
		0.910502, -0.410124, -0.052764,
		28.445810, 29.180159, 33.705791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676476, 28.824883, 33.636871>,  <27.808458, 29.467245, 33.742729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676476, 28.824883, 33.636871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059175, 28.826950, 33.753220>,  <28.288795, 28.828190, 33.823029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059175, 28.826950, 33.753220>,  <27.676476, 28.824883, 33.636871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059175, 28.826950, 33.753220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160851, -0.823715, 0.543709,
		0.242406, -0.566980, -0.787257,
		0.956747, 0.005167, 0.290873,
		28.346199, 28.828501, 33.840481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857876, 28.107109, 33.531837>,  <27.676476, 28.824883, 33.636871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857876, 28.107109, 33.531837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098034, 28.291965, 33.792896>,  <28.242128, 28.402880, 33.949532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098034, 28.291965, 33.792896>,  <27.857876, 28.107109, 33.531837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098034, 28.291965, 33.792896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060027, -0.787769, 0.613039,
		0.797447, -0.407242, -0.445232,
		0.600396, 0.462141, 0.652650,
		28.278152, 28.430607, 33.988689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453239, 27.700392, 33.650017>,  <27.857876, 28.107109, 33.531837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453239, 27.700392, 33.650017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439793, 27.896847, 33.998192>,  <28.431725, 28.014719, 34.207096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439793, 27.896847, 33.998192>,  <28.453239, 27.700392, 33.650017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439793, 27.896847, 33.998192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133317, -0.860939, 0.490927,
		0.990503, 0.132547, -0.036536,
		-0.033615, 0.491136, 0.870434,
		28.429708, 28.044188, 34.259323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954773, 27.377798, 33.981148>,  <28.453239, 27.700392, 33.650017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954773, 27.377798, 33.981148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714764, 27.565510, 34.240299>,  <28.570759, 27.678137, 34.395790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714764, 27.565510, 34.240299>,  <28.954773, 27.377798, 33.981148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714764, 27.565510, 34.240299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061610, -0.834572, 0.547443,
		0.797607, 0.288562, 0.529674,
		-0.600023, 0.469277, 0.647882,
		28.534758, 27.706293, 34.434666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167757, 27.229742, 34.605701>,  <28.954773, 27.377798, 33.981148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167757, 27.229742, 34.605701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791904, 27.345432, 34.678844>,  <28.566393, 27.414846, 34.722733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791904, 27.345432, 34.678844>,  <29.167757, 27.229742, 34.605701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791904, 27.345432, 34.678844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098600, -0.740585, 0.664689,
		0.327669, 0.606534, 0.724396,
		-0.939633, 0.289223, 0.182862,
		28.510014, 27.432199, 34.733704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065998, 27.197100, 35.281937>,  <29.167757, 27.229742, 34.605701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065998, 27.197100, 35.281937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678955, 27.193279, 35.181026>,  <28.446730, 27.190987, 35.120480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678955, 27.193279, 35.181026>,  <29.065998, 27.197100, 35.281937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678955, 27.193279, 35.181026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162658, -0.740628, 0.651930,
		-0.193069, 0.671847, 0.715084,
		-0.967609, -0.009553, -0.252274,
		28.388672, 27.190413, 35.105343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600565, 27.256794, 35.974098>,  <29.065998, 27.197100, 35.281937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600565, 27.256794, 35.974098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388882, 27.115383, 35.665565>,  <28.261871, 27.030537, 35.480446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388882, 27.115383, 35.665565>,  <28.600565, 27.256794, 35.974098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388882, 27.115383, 35.665565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399142, -0.698476, 0.593983,
		-0.748749, 0.622212, 0.228531,
		-0.529207, -0.353528, -0.771335,
		28.230120, 27.009325, 35.434166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834669, 27.182415, 36.193027>,  <28.600565, 27.256794, 35.974098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834669, 27.182415, 36.193027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909510, 26.940563, 35.883339>,  <27.954414, 26.795452, 35.697525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909510, 26.940563, 35.883339>,  <27.834669, 27.182415, 36.193027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909510, 26.940563, 35.883339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508976, -0.733767, 0.450034,
		-0.840200, 0.309856, -0.445031,
		0.187103, -0.604629, -0.774220,
		27.965641, 26.759174, 35.651073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218855, 26.843353, 36.011898>,  <27.834669, 27.182415, 36.193027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218855, 26.843353, 36.011898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488724, 26.587215, 35.865051>,  <27.650644, 26.433533, 35.776943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488724, 26.587215, 35.865051>,  <27.218855, 26.843353, 36.011898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488724, 26.587215, 35.865051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551497, -0.767890, 0.325878,
		-0.490581, -0.017396, -0.871222,
		0.674671, -0.640346, -0.367118,
		27.691126, 26.395111, 35.754917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839874, 26.325798, 35.795574>,  <27.218855, 26.843353, 36.011898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839874, 26.325798, 35.795574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189754, 26.132099, 35.787498>,  <27.399683, 26.015881, 35.782654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189754, 26.132099, 35.787498>,  <26.839874, 26.325798, 35.795574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189754, 26.132099, 35.787498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446362, -0.821097, 0.355752,
		-0.188845, -0.302166, -0.934362,
		0.874699, -0.484246, -0.020185,
		27.452164, 25.986826, 35.781445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703772, 25.632769, 35.497776>,  <26.839874, 26.325798, 35.795574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703772, 25.632769, 35.497776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053514, 25.604855, 35.689873>,  <27.263361, 25.588106, 35.805130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053514, 25.604855, 35.689873>,  <26.703772, 25.632769, 35.497776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053514, 25.604855, 35.689873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254044, -0.908993, 0.330444,
		0.413476, -0.410929, -0.812512,
		0.874356, -0.069783, 0.480241,
		27.315821, 25.583920, 35.833946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982531, 25.049803, 35.256508>,  <26.703772, 25.632769, 35.497776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982531, 25.049803, 35.256508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134384, 25.142448, 35.614777>,  <27.225496, 25.198036, 35.829739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134384, 25.142448, 35.614777>,  <26.982531, 25.049803, 35.256508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134384, 25.142448, 35.614777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205410, -0.922885, 0.325714,
		0.902046, -0.307632, -0.302780,
		0.379632, 0.231615, 0.895675,
		27.248274, 25.211933, 35.883480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506212, 24.567924, 35.672691>,  <26.982531, 25.049803, 35.256508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506212, 24.567924, 35.672691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263586, 24.274162, 35.550888>,  <26.118011, 24.097904, 35.477806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263586, 24.274162, 35.550888>,  <26.506212, 24.567924, 35.672691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.263586, 24.274162, 35.550888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436880, 0.012105, -0.899438,
		0.664240, -0.678601, 0.313506,
		-0.606564, -0.734408, -0.304508,
		26.081617, 24.053841, 35.459538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.973356, 24.137657, 35.284496>,  <26.506212, 24.567924, 35.672691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.973356, 24.137657, 35.284496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592710, 24.051258, 35.197067>,  <26.364323, 23.999418, 35.144611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592710, 24.051258, 35.197067>,  <26.973356, 24.137657, 35.284496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592710, 24.051258, 35.197067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272559, -0.264794, -0.924984,
		0.141917, -0.939803, 0.310854,
		-0.951615, -0.215997, -0.218573,
		26.307226, 23.986460, 35.131496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916582, 23.481068, 34.776772>,  <26.973356, 24.137657, 35.284496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916582, 23.481068, 34.776772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584166, 23.696636, 34.721733>,  <26.384716, 23.825977, 34.688709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584166, 23.696636, 34.721733>,  <26.916582, 23.481068, 34.776772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584166, 23.696636, 34.721733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222869, 0.095982, -0.970112,
		-0.509606, -0.836871, -0.199874,
		-0.831042, 0.538920, -0.137599,
		26.334852, 23.858313, 34.680454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729971, 23.358065, 34.046104>,  <26.916582, 23.481068, 34.776772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729971, 23.358065, 34.046104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533926, 23.694626, 34.137169>,  <26.416300, 23.896563, 34.191807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533926, 23.694626, 34.137169>,  <26.729971, 23.358065, 34.046104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533926, 23.694626, 34.137169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151928, 0.339639, -0.928204,
		-0.858316, -0.420337, -0.294295,
		-0.490113, 0.841405, 0.227657,
		26.386892, 23.947048, 34.205467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237633, 23.494158, 33.519367>,  <26.729971, 23.358065, 34.046104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237633, 23.494158, 33.519367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283640, 23.837326, 33.719666>,  <26.311245, 24.043226, 33.839844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283640, 23.837326, 33.719666>,  <26.237633, 23.494158, 33.519367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283640, 23.837326, 33.719666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017941, 0.502212, -0.864559,
		-0.993201, 0.108424, 0.042372,
		0.115018, 0.857921, 0.500743,
		26.318146, 24.094702, 33.869888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758341, 23.921803, 33.246231>,  <26.237633, 23.494158, 33.519367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758341, 23.921803, 33.246231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042505, 24.133133, 33.432217>,  <26.213003, 24.259932, 33.543808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042505, 24.133133, 33.432217>,  <25.758341, 23.921803, 33.246231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.042505, 24.133133, 33.432217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279389, 0.394662, -0.875319,
		-0.645955, 0.751742, 0.132764,
		0.710411, 0.528324, 0.464963,
		26.255629, 24.291630, 33.571705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.546331, 24.614983, 33.056568>,  <25.758341, 23.921803, 33.246231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.546331, 24.614983, 33.056568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930214, 24.663181, 33.158112>,  <26.160543, 24.692101, 33.219036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930214, 24.663181, 33.158112>,  <25.546331, 24.614983, 33.056568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930214, 24.663181, 33.158112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145212, 0.560757, -0.815147,
		-0.240576, 0.819165, 0.520664,
		0.959706, 0.120498, 0.253858,
		26.218126, 24.699331, 33.234268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712873, 25.310438, 32.816204>,  <25.546331, 24.614983, 33.056568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.712873, 25.310438, 32.816204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073328, 25.164829, 32.910389>,  <26.289600, 25.077463, 32.966900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073328, 25.164829, 32.910389>,  <25.712873, 25.310438, 32.816204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073328, 25.164829, 32.910389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422589, 0.616266, -0.664556,
		0.096807, 0.698358, 0.709171,
		0.901137, -0.364022, 0.235459,
		26.343670, 25.055622, 32.981026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161861, 25.935005, 32.936394>,  <25.712873, 25.310438, 32.816204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161861, 25.935005, 32.936394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400658, 25.622528, 32.863354>,  <26.543936, 25.435041, 32.819530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400658, 25.622528, 32.863354>,  <26.161861, 25.935005, 32.936394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400658, 25.622528, 32.863354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544351, 0.561642, -0.623088,
		0.589309, 0.272577, 0.760537,
		0.596989, -0.781191, -0.182603,
		26.579754, 25.388170, 32.808571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791147, 26.175694, 33.055916>,  <26.161861, 25.935005, 32.936394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791147, 26.175694, 33.055916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815556, 25.856632, 32.815907>,  <26.830200, 25.665195, 32.671902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815556, 25.856632, 32.815907>,  <26.791147, 26.175694, 33.055916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815556, 25.856632, 32.815907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535212, 0.533563, -0.654873,
		0.842511, -0.281179, 0.459471,
		0.061020, -0.797652, -0.600023,
		26.833862, 25.617336, 32.635899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428923, 26.368435, 32.613796>,  <26.791147, 26.175694, 33.055916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428923, 26.368435, 32.613796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262867, 26.068653, 32.407505>,  <27.163233, 25.888784, 32.283730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262867, 26.068653, 32.407505>,  <27.428923, 26.368435, 32.613796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262867, 26.068653, 32.407505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319766, 0.410508, -0.853951,
		0.851710, -0.519420, 0.069232,
		-0.415139, -0.749457, -0.515727,
		27.138325, 25.843817, 32.252789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846821, 26.162952, 32.103809>,  <27.428923, 26.368435, 32.613796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.846821, 26.162952, 32.103809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503149, 26.009262, 31.968643>,  <27.296946, 25.917048, 31.887545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503149, 26.009262, 31.968643>,  <27.846821, 26.162952, 32.103809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503149, 26.009262, 31.968643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157761, 0.429306, -0.889274,
		0.486752, -0.817353, -0.308233,
		-0.859177, -0.384228, -0.337912,
		27.245396, 25.893993, 31.867270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075373, 25.969812, 31.416348>,  <27.846821, 26.162952, 32.103809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075373, 25.969812, 31.416348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681677, 26.016434, 31.469551>,  <27.445459, 26.044407, 31.501472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681677, 26.016434, 31.469551>,  <28.075373, 25.969812, 31.416348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.681677, 26.016434, 31.469551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051343, 0.531382, -0.845575,
		-0.169234, -0.839076, -0.517022,
		-0.984237, 0.116555, 0.133009,
		27.386406, 26.051399, 31.509453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736912, 25.808199, 30.718332>,  <28.075373, 25.969812, 31.416348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736912, 25.808199, 30.718332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507799, 26.028481, 30.961197>,  <27.370331, 26.160650, 31.106915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507799, 26.028481, 30.961197>,  <27.736912, 25.808199, 30.718332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507799, 26.028481, 30.961197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047134, 0.761606, -0.646323,
		-0.818350, -0.341586, -0.462192,
		-0.572784, 0.550704, 0.607161,
		27.335964, 26.193691, 31.143345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261568, 26.111778, 30.247765>,  <27.736912, 25.808199, 30.718332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261568, 26.111778, 30.247765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251808, 26.332378, 30.581291>,  <27.245953, 26.464739, 30.781408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251808, 26.332378, 30.581291>,  <27.261568, 26.111778, 30.247765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251808, 26.332378, 30.581291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203740, 0.819305, -0.535938,
		-0.978721, 0.156805, -0.132354,
		-0.024401, 0.551499, 0.833819,
		27.244488, 26.497828, 30.831436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029291, 26.761646, 30.048721>,  <27.261568, 26.111778, 30.247765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029291, 26.761646, 30.048721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185106, 26.845383, 30.407482>,  <27.278595, 26.895624, 30.622740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185106, 26.845383, 30.407482>,  <27.029291, 26.761646, 30.048721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185106, 26.845383, 30.407482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237314, 0.918130, -0.317363,
		-0.889911, 0.336473, 0.307968,
		0.389539, 0.209340, 0.896904,
		27.301968, 26.908184, 30.676554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760818, 27.413624, 30.297718>,  <27.029291, 26.761646, 30.048721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760818, 27.413624, 30.297718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.109869, 27.347267, 30.481457>,  <27.319300, 27.307453, 30.591700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.109869, 27.347267, 30.481457>,  <26.760818, 27.413624, 30.297718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.109869, 27.347267, 30.481457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304735, 0.919940, -0.246671,
		-0.381651, 0.355231, 0.853319,
		0.872628, -0.165894, 0.459347,
		27.371658, 27.297499, 30.619261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885029, 28.018005, 30.726585>,  <26.760818, 27.413624, 30.297718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885029, 28.018005, 30.726585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238049, 27.841885, 30.660564>,  <27.449860, 27.736212, 30.620953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238049, 27.841885, 30.660564>,  <26.885029, 28.018005, 30.726585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238049, 27.841885, 30.660564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402097, 0.888638, -0.220544,
		0.243778, 0.128273, 0.961311,
		0.882547, -0.440304, -0.165052,
		27.502813, 27.709793, 30.611050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334467, 28.536924, 30.886251>,  <26.885029, 28.018005, 30.726585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334467, 28.536924, 30.886251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566832, 28.283806, 30.681465>,  <27.706251, 28.131935, 30.558594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566832, 28.283806, 30.681465>,  <27.334467, 28.536924, 30.886251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566832, 28.283806, 30.681465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455114, 0.773984, -0.440249,
		0.674841, 0.022744, 0.737613,
		0.580914, -0.632796, -0.511965,
		27.741106, 28.093967, 30.527876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968405, 28.813602, 30.919519>,  <27.334467, 28.536924, 30.886251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968405, 28.813602, 30.919519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025309, 28.566601, 30.610081>,  <28.059450, 28.418400, 30.424417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025309, 28.566601, 30.610081>,  <27.968405, 28.813602, 30.919519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025309, 28.566601, 30.610081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364688, 0.759264, -0.538999,
		0.920198, -0.205444, 0.333208,
		0.142259, -0.617503, -0.773597,
		28.067986, 28.381350, 30.378002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651182, 28.983067, 30.590561>,  <27.968405, 28.813602, 30.919519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651182, 28.983067, 30.590561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420664, 28.796509, 30.322124>,  <28.282352, 28.684574, 30.161062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420664, 28.796509, 30.322124>,  <28.651182, 28.983067, 30.590561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420664, 28.796509, 30.322124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165904, 0.737300, -0.654878,
		0.800226, -0.488738, -0.347525,
		-0.576294, -0.466394, -0.671090,
		28.247776, 28.656591, 30.120798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077065, 28.909248, 30.013247>,  <28.651182, 28.983067, 30.590561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077065, 28.909248, 30.013247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700739, 28.891533, 29.878841>,  <28.474943, 28.880903, 29.798199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700739, 28.891533, 29.878841>,  <29.077065, 28.909248, 30.013247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700739, 28.891533, 29.878841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193691, 0.743308, -0.640294,
		0.278119, -0.667482, -0.690738,
		-0.940815, -0.044288, -0.336014,
		28.418495, 28.878246, 29.778038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111595, 29.197697, 29.418865>,  <29.077065, 28.909248, 30.013247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111595, 29.197697, 29.418865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712904, 29.176537, 29.394417>,  <28.473690, 29.163841, 29.379747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712904, 29.176537, 29.394417>,  <29.111595, 29.197697, 29.418865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712904, 29.176537, 29.394417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011974, 0.651179, -0.758830,
		0.079941, -0.757079, -0.648415,
		-0.996728, -0.052898, -0.061121,
		28.413885, 29.160667, 29.376080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914541, 29.133316, 28.714479>,  <29.111595, 29.197697, 29.418865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914541, 29.133316, 28.714479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589325, 29.290535, 28.886284>,  <28.394196, 29.384867, 28.989367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589325, 29.290535, 28.886284>,  <28.914541, 29.133316, 28.714479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589325, 29.290535, 28.886284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168644, 0.547113, -0.819894,
		-0.557247, -0.739042, -0.378540,
		-0.813040, 0.393046, 0.429512,
		28.345413, 29.408449, 29.015137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329300, 29.016516, 28.202740>,  <28.914541, 29.133316, 28.714479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329300, 29.016516, 28.202740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253199, 29.310642, 28.462929>,  <28.207537, 29.487118, 28.619043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253199, 29.310642, 28.462929>,  <28.329300, 29.016516, 28.202740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253199, 29.310642, 28.462929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227807, 0.611424, -0.757802,
		-0.954938, -0.292358, 0.051183,
		-0.190255, 0.735314, 0.650474,
		28.196121, 29.531237, 28.658072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618488, 29.167263, 28.081951>,  <28.329300, 29.016516, 28.202740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618488, 29.167263, 28.081951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.768150, 29.480305, 28.280964>,  <27.857948, 29.668129, 28.400372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.768150, 29.480305, 28.280964>,  <27.618488, 29.167263, 28.081951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768150, 29.480305, 28.280964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367523, 0.617707, -0.695244,
		-0.851430, 0.077275, 0.518744,
		0.374157, 0.782603, 0.497534,
		27.880398, 29.715086, 28.430223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088615, 29.728512, 28.046768>,  <27.618488, 29.167263, 28.081951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088615, 29.728512, 28.046768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440556, 29.908203, 28.108810>,  <27.651720, 30.016018, 28.146036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440556, 29.908203, 28.108810>,  <27.088615, 29.728512, 28.046768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440556, 29.908203, 28.108810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305234, 0.784307, -0.540088,
		-0.364272, 0.427854, 0.827192,
		0.879851, 0.449226, 0.155105,
		27.704512, 30.042971, 28.155342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946470, 30.446939, 28.245384>,  <27.088615, 29.728512, 28.046768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946470, 30.446939, 28.245384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316010, 30.431171, 28.093098>,  <27.537733, 30.421711, 28.001726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316010, 30.431171, 28.093098>,  <26.946470, 30.446939, 28.245384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316010, 30.431171, 28.093098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302877, 0.532875, -0.790133,
		0.234022, 0.845275, 0.480357,
		0.923850, -0.039420, -0.380719,
		27.593164, 30.419346, 27.978882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.115335, 31.085434, 28.126940>,  <26.946470, 30.446939, 28.245384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.115335, 31.085434, 28.126940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361233, 30.881958, 27.885834>,  <27.508770, 30.759872, 27.741169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361233, 30.881958, 27.885834>,  <27.115335, 31.085434, 28.126940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361233, 30.881958, 27.885834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237446, 0.609413, -0.756462,
		0.752138, 0.608153, 0.253846,
		0.614742, -0.508690, -0.602766,
		27.545656, 30.729351, 27.705004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577366, 31.567667, 27.733526>,  <27.115335, 31.085434, 28.126940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577366, 31.567667, 27.733526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527641, 31.225086, 27.533112>,  <27.497807, 31.019537, 27.412863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527641, 31.225086, 27.533112>,  <27.577366, 31.567667, 27.733526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527641, 31.225086, 27.533112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239475, 0.515921, -0.822483,
		0.962912, 0.017743, -0.269233,
		-0.124310, -0.856453, -0.501035,
		27.490349, 30.968151, 27.382801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836117, 31.722490, 27.132248>,  <27.577366, 31.567667, 27.733526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836117, 31.722490, 27.132248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620098, 31.397099, 27.045902>,  <27.490486, 31.201862, 26.994095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620098, 31.397099, 27.045902>,  <27.836117, 31.722490, 27.132248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620098, 31.397099, 27.045902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265604, 0.408102, -0.873446,
		0.798625, -0.414369, -0.436458,
		-0.540048, -0.813481, -0.215863,
		27.458084, 31.153053, 26.981144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760908, 31.781391, 26.433506>,  <27.836117, 31.722490, 27.132248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760908, 31.781391, 26.433506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511810, 31.484138, 26.531441>,  <27.362352, 31.305786, 26.590200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511810, 31.484138, 26.531441>,  <27.760908, 31.781391, 26.433506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511810, 31.484138, 26.531441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594263, 0.245677, -0.765829,
		0.508964, -0.622409, -0.594611,
		-0.622742, -0.743134, 0.244834,
		27.324987, 31.261198, 26.604891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772671, 31.402851, 25.816376>,  <27.760908, 31.781391, 26.433506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772671, 31.402851, 25.816376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442015, 31.293007, 26.012848>,  <27.243622, 31.227100, 26.130732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442015, 31.293007, 26.012848>,  <27.772671, 31.402851, 25.816376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442015, 31.293007, 26.012848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546964, 0.186907, -0.816025,
		0.132284, -0.943215, -0.304707,
		-0.826639, -0.274610, 0.491180,
		27.194023, 31.210625, 26.160202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342319, 31.002180, 25.320566>,  <27.772671, 31.402851, 25.816376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342319, 31.002180, 25.320566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096380, 31.136864, 25.605827>,  <26.948816, 31.217674, 25.776983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096380, 31.136864, 25.605827>,  <27.342319, 31.002180, 25.320566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096380, 31.136864, 25.605827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634028, 0.326732, -0.700895,
		-0.469009, -0.883104, 0.012593,
		-0.614848, 0.336711, 0.713153,
		26.911926, 31.237877, 25.819773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751564, 30.741127, 25.011553>,  <27.342319, 31.002180, 25.320566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751564, 30.741127, 25.011553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652971, 31.014797, 25.286114>,  <26.593815, 31.178999, 25.450850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652971, 31.014797, 25.286114>,  <26.751564, 30.741127, 25.011553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652971, 31.014797, 25.286114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506456, 0.512917, -0.693122,
		-0.826285, -0.518476, 0.220080,
		-0.246484, 0.684178, 0.686401,
		26.579025, 31.220051, 25.492035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073236, 30.826784, 25.039690>,  <26.751564, 30.741127, 25.011553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073236, 30.826784, 25.039690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165915, 31.167431, 25.227760>,  <26.221521, 31.371819, 25.340603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165915, 31.167431, 25.227760>,  <26.073236, 30.826784, 25.039690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165915, 31.167431, 25.227760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641365, 0.497132, -0.584389,
		-0.731415, -0.166155, 0.661381,
		0.231694, 0.851617, 0.470175,
		26.235422, 31.422916, 25.368813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419857, 31.096151, 25.260473>,  <26.073236, 30.826784, 25.039690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419857, 31.096151, 25.260473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688358, 31.392483, 25.250736>,  <25.849459, 31.570282, 25.244894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688358, 31.392483, 25.250736>,  <25.419857, 31.096151, 25.260473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688358, 31.392483, 25.250736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559099, 0.484482, -0.672818,
		-0.486651, 0.465240, 0.739407,
		0.671252, 0.740830, -0.024342,
		25.889734, 31.614731, 25.243433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.985359, 31.624359, 25.401903>,  <25.419857, 31.096151, 25.260473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.985359, 31.624359, 25.401903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302500, 31.818081, 25.253937>,  <25.492785, 31.934313, 25.165157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302500, 31.818081, 25.253937>,  <24.985359, 31.624359, 25.401903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302500, 31.818081, 25.253937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609203, 0.613791, -0.502128,
		-0.016130, 0.623467, 0.781684,
		0.792850, 0.484303, -0.369917,
		25.540356, 31.963371, 25.142962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896467, 32.322865, 25.506094>,  <24.985359, 31.624359, 25.401903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.896467, 32.322865, 25.506094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144680, 32.274590, 25.196159>,  <25.293608, 32.245625, 25.010199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144680, 32.274590, 25.196159>,  <24.896467, 32.322865, 25.506094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.144680, 32.274590, 25.196159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658328, 0.456697, -0.598357,
		0.426079, 0.881399, 0.203945,
		0.620532, -0.120685, -0.774839,
		25.330839, 32.238384, 24.963707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.886782, 32.966549, 25.271807>,  <24.896467, 32.322865, 25.506094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.886782, 32.966549, 25.271807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013306, 32.720551, 24.982883>,  <25.089220, 32.572952, 24.809530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013306, 32.720551, 24.982883>,  <24.886782, 32.966549, 25.271807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013306, 32.720551, 24.982883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652511, 0.411636, -0.636227,
		0.688605, 0.672558, -0.271088,
		0.316311, -0.614997, -0.722306,
		25.108198, 32.536053, 24.766191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.343691, 33.427662, 25.093296>,  <24.886782, 32.966549, 25.271807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.343691, 33.427662, 25.093296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.001667, 33.237904, 25.009563>,  <23.796453, 33.124046, 24.959324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.001667, 33.237904, 25.009563>,  <24.343691, 33.427662, 25.093296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.001667, 33.237904, 25.009563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091086, 0.260005, -0.961301,
		0.510467, -0.841037, -0.179109,
		-0.855060, -0.474398, -0.209331,
		23.745150, 33.095585, 24.946764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.415613, 33.079533, 24.498808>,  <24.343691, 33.427662, 25.093296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.415613, 33.079533, 24.498808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.019318, 33.129429, 24.520267>,  <23.781540, 33.159367, 24.533144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.019318, 33.129429, 24.520267>,  <24.415613, 33.079533, 24.498808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.019318, 33.129429, 24.520267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019491, 0.260374, -0.965311,
		-0.134380, -0.957416, -0.255531,
		-0.990738, 0.124738, 0.053650,
		23.722095, 33.166851, 24.536362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.230976, 33.112885, 23.836102>,  <24.415613, 33.079533, 24.498808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.230976, 33.112885, 23.836102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.888166, 33.242100, 23.996677>,  <23.682480, 33.319630, 24.093023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.888166, 33.242100, 23.996677>,  <24.230976, 33.112885, 23.836102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.888166, 33.242100, 23.996677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277535, 0.367029, -0.887842,
		-0.434144, -0.872318, -0.224900,
		-0.857026, 0.323034, 0.401442,
		23.631058, 33.339008, 24.117109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.656477, 32.725353, 23.523645>,  <24.230976, 33.112885, 23.836102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.656477, 32.725353, 23.523645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.639351, 33.113518, 23.618694>,  <23.629074, 33.346416, 23.675724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.639351, 33.113518, 23.618694>,  <23.656477, 32.725353, 23.523645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.639351, 33.113518, 23.618694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023585, 0.238754, -0.970794,
		-0.998805, -0.035962, -0.033110,
		-0.042817, 0.970414, 0.237620,
		23.626505, 33.404640, 23.689980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.006657, 33.169544, 23.276920>,  <23.656477, 32.725353, 23.523645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.006657, 33.169544, 23.276920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.373287, 33.327293, 23.303322>,  <23.593266, 33.421944, 23.319162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.373287, 33.327293, 23.303322>,  <23.006657, 33.169544, 23.276920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.373287, 33.327293, 23.303322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003700, 0.156692, -0.987641,
		-0.399838, 0.905494, 0.142161,
		0.916578, 0.394370, 0.066001,
		23.648260, 33.445606, 23.323122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.258608, 33.590759, 23.299059>,  <23.006657, 33.169544, 23.276920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.258608, 33.590759, 23.299059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.933470, 33.589783, 23.066071>,  <21.738386, 33.589199, 22.926277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.933470, 33.589783, 23.066071>,  <22.258608, 33.590759, 23.299059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.933470, 33.589783, 23.066071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182768, -0.950556, -0.251075,
		-0.553060, -0.310543, 0.773103,
		-0.812847, -0.002439, -0.582472,
		21.689615, 33.589050, 22.891329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.573442, 34.158569, 23.392239>,  <22.258608, 33.590759, 23.299059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.573442, 34.158569, 23.392239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.327906, 34.267857, 23.095982>,  <22.180584, 34.333431, 22.918228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.327906, 34.267857, 23.095982>,  <22.573442, 34.158569, 23.392239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.327906, 34.267857, 23.095982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785624, 0.119411, -0.607071,
		-0.077425, -0.954511, -0.287949,
		-0.613840, 0.273222, -0.740641,
		22.143753, 34.349823, 22.873789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.746916, 33.797859, 22.807491>,  <22.573442, 34.158569, 23.392239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.746916, 33.797859, 22.807491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.613659, 34.171139, 22.753586>,  <22.533705, 34.395107, 22.721243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.613659, 34.171139, 22.753586>,  <22.746916, 33.797859, 22.807491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.613659, 34.171139, 22.753586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891048, 0.264863, -0.368620,
		-0.308301, -0.242883, -0.919760,
		-0.333142, 0.933196, -0.134763,
		22.513716, 34.451099, 22.713158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.962370, 34.005665, 22.202044>,  <22.746916, 33.797859, 22.807491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.962370, 34.005665, 22.202044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.883516, 34.359810, 22.370457>,  <22.836205, 34.572296, 22.471504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.883516, 34.359810, 22.370457>,  <22.962370, 34.005665, 22.202044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.883516, 34.359810, 22.370457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698763, 0.428123, -0.573097,
		-0.687653, 0.181225, -0.703058,
		-0.197136, 0.885363, 0.421033,
		22.824375, 34.625420, 22.496767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.905872, 34.523079, 21.677011>,  <22.962370, 34.005665, 22.202044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.905872, 34.523079, 21.677011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.988646, 34.708977, 22.021381>,  <23.038309, 34.820515, 22.228003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.988646, 34.708977, 22.021381>,  <22.905872, 34.523079, 21.677011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.988646, 34.708977, 22.021381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767300, 0.468852, -0.437526,
		-0.606984, 0.751125, -0.259579,
		0.206933, 0.464747, 0.860924,
		23.050726, 34.848400, 22.279659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.755100, 35.300426, 21.646072>,  <22.905872, 34.523079, 21.677011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.755100, 35.300426, 21.646072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.021538, 35.243248, 21.938889>,  <23.181400, 35.208942, 22.114578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.021538, 35.243248, 21.938889>,  <22.755100, 35.300426, 21.646072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.021538, 35.243248, 21.938889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627930, 0.637131, -0.446954,
		-0.402517, 0.757385, 0.514148,
		0.666096, -0.142942, 0.732041,
		23.221367, 35.200367, 22.158501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.250931, 35.833054, 21.518593>,  <22.755100, 35.300426, 21.646072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.250931, 35.833054, 21.518593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.439631, 35.629356, 21.806515>,  <23.552851, 35.507137, 21.979269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.439631, 35.629356, 21.806515>,  <23.250931, 35.833054, 21.518593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.439631, 35.629356, 21.806515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881462, 0.292588, -0.370697,
		-0.021831, 0.809359, 0.586909,
		0.471749, -0.509245, 0.719807,
		23.581156, 35.476582, 22.022457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.803413, 36.282204, 21.713907>,  <23.250931, 35.833054, 21.518593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.803413, 36.282204, 21.713907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.914930, 35.905792, 21.790585>,  <23.981840, 35.679947, 21.836592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.914930, 35.905792, 21.790585>,  <23.803413, 36.282204, 21.713907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.914930, 35.905792, 21.790585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903096, 0.189005, -0.385609,
		0.326636, 0.280624, 0.902529,
		0.278794, -0.941025, 0.191694,
		23.998568, 35.623486, 21.848093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.437092, 36.390022, 22.035820>,  <23.803413, 36.282204, 21.713907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.437092, 36.390022, 22.035820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.419626, 36.011318, 21.908230>,  <24.409147, 35.784096, 21.831676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.419626, 36.011318, 21.908230>,  <24.437092, 36.390022, 22.035820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.419626, 36.011318, 21.908230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972440, 0.032919, -0.230819,
		0.229030, -0.320262, 0.919226,
		-0.043663, -0.946757, -0.318975,
		24.406527, 35.727291, 21.812538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.981127, 36.102921, 22.347408>,  <24.437092, 36.390022, 22.035820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.981127, 36.102921, 22.347408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924616, 35.874161, 22.024181>,  <24.890709, 35.736904, 21.830244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924616, 35.874161, 22.024181>,  <24.981127, 36.102921, 22.347408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.924616, 35.874161, 22.024181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948172, 0.156511, -0.276540,
		0.284623, -0.805258, 0.520144,
		-0.141278, -0.571895, -0.808069,
		24.882233, 35.702591, 21.781761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.702187, 35.814480, 22.177572>,  <24.981127, 36.102921, 22.347408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.702187, 35.814480, 22.177572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483160, 35.716217, 21.857616>,  <25.351744, 35.657257, 21.665644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483160, 35.716217, 21.857616>,  <25.702187, 35.814480, 22.177572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483160, 35.716217, 21.857616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818506, 0.041344, -0.573008,
		0.173837, -0.968474, 0.178437,
		-0.547566, -0.245661, -0.799889,
		25.318890, 35.642517, 21.617649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.212465, 35.448517, 21.790234>,  <25.702187, 35.814480, 22.177572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.212465, 35.448517, 21.790234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935461, 35.534721, 21.514847>,  <25.769258, 35.586445, 21.349615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935461, 35.534721, 21.514847>,  <26.212465, 35.448517, 21.790234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935461, 35.534721, 21.514847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685752, -0.099662, -0.720980,
		-0.223991, -0.971403, -0.078768,
		-0.692512, 0.215508, -0.688465,
		25.727707, 35.599373, 21.308308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252625, 34.900997, 21.277571>,  <26.212465, 35.448517, 21.790234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252625, 34.900997, 21.277571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089153, 35.227005, 21.113270>,  <25.991070, 35.422611, 21.014688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089153, 35.227005, 21.113270>,  <26.252625, 34.900997, 21.277571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089153, 35.227005, 21.113270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714315, 0.005495, -0.699803,
		-0.568098, -0.579402, -0.584430,
		-0.408678, 0.815023, -0.410754,
		25.966549, 35.471512, 20.990044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.195185, 34.745518, 20.552792>,  <26.252625, 34.900997, 21.277571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.195185, 34.745518, 20.552792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168999, 35.143417, 20.584278>,  <26.153286, 35.382156, 20.603170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168999, 35.143417, 20.584278>,  <26.195185, 34.745518, 20.552792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168999, 35.143417, 20.584278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689613, 0.102119, -0.716942,
		-0.721213, 0.007349, -0.692675,
		-0.065466, 0.994745, 0.078717,
		26.149359, 35.441841, 20.607893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983057, 35.041328, 19.938776>,  <26.195185, 34.745518, 20.552792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983057, 35.041328, 19.938776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172350, 35.336525, 20.131199>,  <26.285927, 35.513641, 20.246653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172350, 35.336525, 20.131199>,  <25.983057, 35.041328, 19.938776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172350, 35.336525, 20.131199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645978, 0.080580, -0.759091,
		-0.598967, 0.669981, -0.438593,
		0.473234, 0.737992, 0.481058,
		26.314320, 35.557922, 20.275517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.997780, 35.568695, 19.409376>,  <25.983057, 35.041328, 19.938776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.997780, 35.568695, 19.409376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283676, 35.670639, 19.669895>,  <26.455214, 35.731804, 19.826206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283676, 35.670639, 19.669895>,  <25.997780, 35.568695, 19.409376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283676, 35.670639, 19.669895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657126, 0.074089, -0.750131,
		-0.239433, 0.964135, -0.114520,
		0.714743, 0.254860, 0.651298,
		26.498098, 35.747097, 19.865284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215742, 36.318760, 19.229912>,  <25.997780, 35.568695, 19.409376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215742, 36.318760, 19.229912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513018, 36.157181, 19.443264>,  <26.691383, 36.060234, 19.571276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513018, 36.157181, 19.443264>,  <26.215742, 36.318760, 19.229912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513018, 36.157181, 19.443264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622641, 0.125736, -0.772340,
		0.244921, 0.906099, 0.344961,
		0.743191, -0.403949, 0.533379,
		26.735975, 36.035995, 19.603277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797581, 36.774044, 19.056593>,  <26.215742, 36.318760, 19.229912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797581, 36.774044, 19.056593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942524, 36.426353, 19.191135>,  <27.029490, 36.217739, 19.271862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942524, 36.426353, 19.191135>,  <26.797581, 36.774044, 19.056593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942524, 36.426353, 19.191135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595390, -0.061776, -0.801058,
		0.717082, 0.490534, 0.495146,
		0.362358, -0.869229, 0.336358,
		27.051231, 36.165585, 19.292042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517553, 36.848293, 19.179504>,  <26.797581, 36.774044, 19.056593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517553, 36.848293, 19.179504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471275, 36.451656, 19.156319>,  <27.443508, 36.213673, 19.142408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471275, 36.451656, 19.156319>,  <27.517553, 36.848293, 19.179504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471275, 36.451656, 19.156319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566454, -0.017930, -0.823898,
		0.815932, -0.128152, 0.563766,
		-0.115693, -0.991592, -0.057963,
		27.436567, 36.154179, 19.138929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135878, 36.585892, 19.001764>,  <27.517553, 36.848293, 19.179504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135878, 36.585892, 19.001764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921194, 36.257832, 18.922466>,  <27.792383, 36.060997, 18.874887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921194, 36.257832, 18.922466>,  <28.135878, 36.585892, 19.001764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921194, 36.257832, 18.922466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515425, -0.132657, -0.846605,
		0.668043, -0.556560, 0.493923,
		-0.536709, -0.820148, -0.198244,
		27.760181, 36.011787, 18.862993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640478, 36.147758, 18.629354>,  <28.135878, 36.585892, 19.001764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640478, 36.147758, 18.629354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270384, 36.007858, 18.570553>,  <28.048326, 35.923920, 18.535271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270384, 36.007858, 18.570553>,  <28.640478, 36.147758, 18.629354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270384, 36.007858, 18.570553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197127, -0.112119, -0.973946,
		0.324156, -0.930110, 0.172682,
		-0.925237, -0.349751, -0.147005,
		27.992813, 35.902935, 18.526451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641224, 35.485790, 18.222805>,  <28.640478, 36.147758, 18.629354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641224, 35.485790, 18.222805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306198, 35.697067, 18.166946>,  <28.105183, 35.823833, 18.133430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306198, 35.697067, 18.166946>,  <28.641224, 35.485790, 18.222805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306198, 35.697067, 18.166946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158754, -0.009284, -0.987275,
		-0.522764, -0.849076, -0.076076,
		-0.837565, 0.528188, -0.139647,
		28.054928, 35.855522, 18.125051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200445, 35.081913, 17.749168>,  <28.641224, 35.485790, 18.222805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200445, 35.081913, 17.749168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111782, 35.471771, 17.736881>,  <28.058584, 35.705685, 17.729509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111782, 35.471771, 17.736881>,  <28.200445, 35.081913, 17.749168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111782, 35.471771, 17.736881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024826, -0.025849, -0.999358,
		-0.974809, -0.222276, -0.018467,
		-0.221656, 0.974641, -0.030716,
		28.045284, 35.764164, 17.727667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653822, 35.156246, 17.277878>,  <28.200445, 35.081913, 17.749168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653822, 35.156246, 17.277878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837889, 35.510811, 17.297981>,  <27.948328, 35.723549, 17.310043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837889, 35.510811, 17.297981>,  <27.653822, 35.156246, 17.277878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837889, 35.510811, 17.297981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008318, 0.052302, -0.998597,
		-0.887794, 0.459938, 0.016694,
		0.460165, 0.886410, 0.050259,
		27.975939, 35.776733, 17.313059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259066, 35.741653, 16.995296>,  <27.653822, 35.156246, 17.277878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259066, 35.741653, 16.995296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652670, 35.795029, 16.948109>,  <27.888832, 35.827053, 16.919796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652670, 35.795029, 16.948109>,  <27.259066, 35.741653, 16.995296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652670, 35.795029, 16.948109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127925, 0.068649, -0.989405,
		-0.123924, 0.988677, 0.084622,
		0.984011, 0.133437, -0.117970,
		27.947874, 35.835060, 16.912718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402597, 36.431080, 16.687876>,  <27.259066, 35.741653, 16.995296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402597, 36.431080, 16.687876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662237, 36.144455, 16.585728>,  <27.818022, 35.972481, 16.524439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662237, 36.144455, 16.585728>,  <27.402597, 36.431080, 16.687876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662237, 36.144455, 16.585728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186804, 0.175277, -0.966635,
		0.737410, 0.675146, -0.020084,
		0.649100, -0.716558, -0.255371,
		27.856968, 35.929489, 16.509117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972406, 36.743034, 16.209030>,  <27.402597, 36.431080, 16.687876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972406, 36.743034, 16.209030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856394, 36.365078, 16.148289>,  <27.786787, 36.138302, 16.111845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856394, 36.365078, 16.148289>,  <27.972406, 36.743034, 16.209030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856394, 36.365078, 16.148289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163848, 0.205355, -0.964875,
		0.942887, -0.254964, -0.214378,
		-0.290032, -0.944893, -0.151851,
		27.769384, 36.081612, 16.102734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458702, 37.282242, 16.180647>,  <27.972406, 36.743034, 16.209030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458702, 37.282242, 16.180647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719780, 37.576836, 16.251732>,  <27.876427, 37.753590, 16.294384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719780, 37.576836, 16.251732>,  <27.458702, 37.282242, 16.180647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719780, 37.576836, 16.251732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345105, -0.080197, -0.935131,
		-0.674456, 0.671686, -0.306508,
		0.652696, 0.736482, 0.177713,
		27.915588, 37.797779, 16.305046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.535347, 37.665478, 15.498471>,  <27.458702, 37.282242, 16.180647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.535347, 37.665478, 15.498471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835424, 37.797920, 15.727410>,  <28.015471, 37.877384, 15.864774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835424, 37.797920, 15.727410>,  <27.535347, 37.665478, 15.498471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835424, 37.797920, 15.727410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552037, 0.162829, -0.817767,
		-0.363961, 0.929439, -0.060629,
		0.750192, 0.331104, 0.572348,
		28.060482, 37.897251, 15.899115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345304, 38.399914, 15.823254>,  <27.535347, 37.665478, 15.498471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345304, 38.399914, 15.823254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271559, 38.792866, 15.810969>,  <27.227312, 39.028637, 15.803598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271559, 38.792866, 15.810969>,  <27.345304, 38.399914, 15.823254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271559, 38.792866, 15.810969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683182, -0.105624, 0.722569,
		0.706593, 0.154196, 0.690616,
		-0.184363, 0.982378, -0.030711,
		27.216249, 39.087578, 15.801756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591873, 38.712833, 16.350670>,  <27.345304, 38.399914, 15.823254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591873, 38.712833, 16.350670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258312, 38.885490, 16.213097>,  <27.058176, 38.989086, 16.130552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258312, 38.885490, 16.213097>,  <27.591873, 38.712833, 16.350670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258312, 38.885490, 16.213097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493167, -0.303006, 0.815459,
		0.247772, 0.849631, 0.465549,
		-0.833903, 0.431642, -0.343934,
		27.008141, 39.014984, 16.109917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313929, 39.315239, 16.905350>,  <27.591873, 38.712833, 16.350670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313929, 39.315239, 16.905350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063606, 39.108257, 16.671902>,  <26.913412, 38.984070, 16.531834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063606, 39.108257, 16.671902>,  <27.313929, 39.315239, 16.905350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063606, 39.108257, 16.671902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521082, -0.279409, 0.806476,
		-0.580380, 0.808811, -0.094779,
		-0.625805, -0.517451, -0.583620,
		26.875864, 38.953022, 16.496815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644094, 39.608532, 16.822626>,  <27.313929, 39.315239, 16.905350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644094, 39.608532, 16.822626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586586, 39.213562, 16.796345>,  <26.552082, 38.976578, 16.780577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586586, 39.213562, 16.796345>,  <26.644094, 39.608532, 16.822626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586586, 39.213562, 16.796345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589384, 0.032103, 0.807215,
		-0.794957, 0.154778, -0.586589,
		-0.143770, -0.987428, -0.065703,
		26.543455, 38.917336, 16.776634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024811, 39.559620, 17.002281>,  <26.644094, 39.608532, 16.822626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024811, 39.559620, 17.002281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169504, 39.191662, 17.062859>,  <26.256319, 38.970886, 17.099205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169504, 39.191662, 17.062859>,  <26.024811, 39.559620, 17.002281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.169504, 39.191662, 17.062859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788517, -0.215220, 0.576126,
		-0.497384, -0.327819, -0.803208,
		0.361731, -0.919899, 0.151444,
		26.278025, 38.915691, 17.108292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429312, 39.105473, 16.982708>,  <26.024811, 39.559620, 17.002281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429312, 39.105473, 16.982708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688803, 38.882751, 17.190216>,  <25.844498, 38.749119, 17.314720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688803, 38.882751, 17.190216>,  <25.429312, 39.105473, 16.982708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688803, 38.882751, 17.190216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728693, -0.257905, 0.634423,
		-0.219455, -0.789592, -0.573048,
		0.648727, -0.556803, 0.518771,
		25.883421, 38.715710, 17.345848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.149307, 38.568226, 17.097876>,  <25.429312, 39.105473, 16.982708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.149307, 38.568226, 17.097876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.421165, 38.555622, 17.391022>,  <25.584280, 38.548061, 17.566910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.421165, 38.555622, 17.391022>,  <25.149307, 38.568226, 17.097876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.421165, 38.555622, 17.391022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699659, -0.327981, 0.634749,
		0.220369, -0.944159, -0.244953,
		0.679643, -0.031504, 0.732866,
		25.625059, 38.546169, 17.610882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.826744, 38.106869, 17.503193>,  <25.149307, 38.568226, 17.097876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.826744, 38.106869, 17.503193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105125, 38.258762, 17.746979>,  <25.272154, 38.349899, 17.893251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105125, 38.258762, 17.746979>,  <24.826744, 38.106869, 17.503193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.105125, 38.258762, 17.746979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587155, -0.187685, 0.787415,
		0.413399, -0.905855, 0.092345,
		0.695952, 0.379738, 0.609466,
		25.313911, 38.372684, 17.929819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.792856, 37.620766, 18.147581>,  <24.826744, 38.106869, 17.503193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.792856, 37.620766, 18.147581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965206, 37.969852, 18.239414>,  <25.068617, 38.179306, 18.294514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965206, 37.969852, 18.239414>,  <24.792856, 37.620766, 18.147581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.965206, 37.969852, 18.239414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494534, 0.015549, 0.869019,
		0.754840, -0.487975, 0.438289,
		0.430875, 0.872719, 0.229583,
		25.094469, 38.231667, 18.308289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.961145, 37.541904, 18.822369>,  <24.792856, 37.620766, 18.147581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.961145, 37.541904, 18.822369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945387, 37.936665, 18.759796>,  <24.935932, 38.173523, 18.722252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945387, 37.936665, 18.759796>,  <24.961145, 37.541904, 18.822369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.945387, 37.936665, 18.759796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524487, 0.112831, 0.843909,
		0.850507, 0.115293, 0.513172,
		-0.039395, 0.986903, -0.156433,
		24.933569, 38.232735, 18.712866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202015, 37.832226, 19.384363>,  <24.961145, 37.541904, 18.822369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.202015, 37.832226, 19.384363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.985500, 38.119156, 19.208885>,  <24.855591, 38.291313, 19.103598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.985500, 38.119156, 19.208885>,  <25.202015, 37.832226, 19.384363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985500, 38.119156, 19.208885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397530, 0.241427, 0.885259,
		0.740930, 0.653574, 0.154476,
		-0.541287, 0.717324, -0.438696,
		24.823114, 38.334354, 19.077276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.933769, 38.179668, 19.975973>,  <25.202015, 37.832226, 19.384363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.933769, 38.179668, 19.975973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.699821, 38.334156, 19.690662>,  <24.559452, 38.426849, 19.519476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.699821, 38.334156, 19.690662>,  <24.933769, 38.179668, 19.975973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.699821, 38.334156, 19.690662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775204, -0.007355, 0.631668,
		0.238717, 0.922377, 0.303701,
		-0.584870, 0.386220, -0.713275,
		24.524361, 38.450024, 19.476681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.737558, 38.826683, 20.247309>,  <24.933769, 38.179668, 19.975973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.737558, 38.826683, 20.247309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.461599, 38.711380, 19.981693>,  <24.296024, 38.642197, 19.822325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.461599, 38.711380, 19.981693>,  <24.737558, 38.826683, 20.247309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.461599, 38.711380, 19.981693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691791, -0.007663, 0.722058,
		-0.213230, 0.957521, -0.194130,
		-0.689898, -0.288262, -0.664038,
		24.254629, 38.624901, 19.782482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.030806, 39.103516, 20.492697>,  <24.737558, 38.826683, 20.247309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.030806, 39.103516, 20.492697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.887613, 38.864315, 20.205853>,  <23.801699, 38.720795, 20.033747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.887613, 38.864315, 20.205853>,  <24.030806, 39.103516, 20.492697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.887613, 38.864315, 20.205853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812996, -0.178101, 0.554362,
		-0.459226, 0.781458, -0.422415,
		-0.357978, -0.598000, -0.717111,
		23.780220, 38.684914, 19.990719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.355541, 39.335217, 20.235012>,  <24.030806, 39.103516, 20.492697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.355541, 39.335217, 20.235012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.385284, 38.939808, 20.182419>,  <23.403131, 38.702560, 20.150864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.385284, 38.939808, 20.182419>,  <23.355541, 39.335217, 20.235012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.385284, 38.939808, 20.182419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798136, -0.138041, 0.586450,
		-0.597871, 0.061332, -0.799243,
		0.074360, -0.988526, -0.131482,
		23.407593, 38.643250, 20.142975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.734966, 39.099720, 20.206715>,  <23.355541, 39.335217, 20.235012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.734966, 39.099720, 20.206715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.939972, 38.765400, 20.285473>,  <23.062975, 38.564808, 20.332727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.939972, 38.765400, 20.285473>,  <22.734966, 39.099720, 20.206715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.939972, 38.765400, 20.285473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710576, -0.284082, 0.643723,
		-0.482089, -0.469826, -0.739495,
		0.512515, -0.835799, 0.196894,
		23.093727, 38.514660, 20.344542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.233961, 38.494160, 20.145094>,  <22.734966, 39.099720, 20.206715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.233961, 38.494160, 20.145094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.547047, 38.377941, 20.365253>,  <22.734898, 38.308208, 20.497349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.547047, 38.377941, 20.365253>,  <22.233961, 38.494160, 20.145094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.547047, 38.377941, 20.365253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620006, -0.441209, 0.648789,
		0.054336, -0.849067, -0.525483,
		0.782713, -0.290550, 0.550401,
		22.781860, 38.290775, 20.530375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.102745, 37.740456, 20.283958>,  <22.233961, 38.494160, 20.145094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.102745, 37.740456, 20.283958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.356974, 37.900547, 20.548038>,  <22.509510, 37.996601, 20.706488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.356974, 37.900547, 20.548038>,  <22.102745, 37.740456, 20.283958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.356974, 37.900547, 20.548038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437041, -0.518415, 0.735012,
		0.636432, -0.755687, -0.154573,
		0.635571, 0.400230, 0.660201,
		22.547646, 38.020615, 20.746099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.048782, 37.195045, 20.739447>,  <22.102745, 37.740456, 20.283958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.048782, 37.195045, 20.739447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.199268, 37.509998, 20.934788>,  <22.289560, 37.698971, 21.051992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.199268, 37.509998, 20.934788>,  <22.048782, 37.195045, 20.739447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.199268, 37.509998, 20.934788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411737, -0.330098, 0.849416,
		0.830022, -0.520634, 0.200008,
		0.376213, 0.787385, 0.488353,
		22.312132, 37.746212, 21.081293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.584171, 36.946980, 21.205368>,  <22.048782, 37.195045, 20.739447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.584171, 36.946980, 21.205368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.389166, 37.281109, 21.307007>,  <22.272161, 37.481586, 21.367990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.389166, 37.281109, 21.307007>,  <22.584171, 36.946980, 21.205368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.389166, 37.281109, 21.307007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341296, -0.450185, 0.825137,
		0.803646, 0.315545, 0.504564,
		-0.487514, 0.835323, 0.254095,
		22.242912, 37.531708, 21.383236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.710674, 36.992718, 21.943382>,  <22.584171, 36.946980, 21.205368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.710674, 36.992718, 21.943382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.407505, 37.248882, 21.893703>,  <22.225603, 37.402580, 21.863895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.407505, 37.248882, 21.893703>,  <22.710674, 36.992718, 21.943382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.407505, 37.248882, 21.893703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391750, -0.294591, 0.871635,
		0.521618, 0.709287, 0.474159,
		-0.757922, 0.640413, -0.124199,
		22.180128, 37.441006, 21.856443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.634827, 37.205555, 22.632170>,  <22.710674, 36.992718, 21.943382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.634827, 37.205555, 22.632170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.302502, 37.328518, 22.446590>,  <22.103106, 37.402294, 22.335243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.302502, 37.328518, 22.446590>,  <22.634827, 37.205555, 22.632170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.302502, 37.328518, 22.446590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519915, -0.131237, 0.844077,
		0.198588, 0.942485, 0.268859,
		-0.830814, 0.307407, -0.463950,
		22.053257, 37.420742, 22.307405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.253960, 37.781693, 23.068062>,  <22.634827, 37.205555, 22.632170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.253960, 37.781693, 23.068062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.989956, 37.618767, 22.815559>,  <21.831554, 37.521011, 22.664057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.989956, 37.618767, 22.815559>,  <22.253960, 37.781693, 23.068062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.989956, 37.618767, 22.815559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572463, -0.271457, 0.773691,
		-0.486494, 0.872013, -0.054008,
		-0.660007, -0.407313, -0.631258,
		21.791954, 37.496574, 22.626183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.760635, 37.835743, 23.524595>,  <22.253960, 37.781693, 23.068062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.760635, 37.835743, 23.524595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.659863, 37.592392, 23.223557>,  <21.599400, 37.446381, 23.042933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.659863, 37.592392, 23.223557>,  <21.760635, 37.835743, 23.524595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.659863, 37.592392, 23.223557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451800, -0.613788, 0.647411,
		-0.855808, 0.503127, -0.120234,
		-0.251932, -0.608381, -0.752597,
		21.584284, 37.409878, 22.997778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.008371, 37.792976, 23.475590>,  <21.760635, 37.835743, 23.524595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.008371, 37.792976, 23.475590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.162828, 37.463547, 23.309402>,  <21.255503, 37.265888, 23.209690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.162828, 37.463547, 23.309402>,  <21.008371, 37.792976, 23.475590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.162828, 37.463547, 23.309402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451352, -0.561493, 0.693547,
		-0.804472, -0.080287, -0.588540,
		0.386144, -0.823577, -0.415468,
		21.278671, 37.216473, 23.184763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.429064, 37.264790, 23.421223>,  <21.008371, 37.792976, 23.475590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.429064, 37.264790, 23.421223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.794884, 37.103424, 23.432896>,  <21.014376, 37.006603, 23.439899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.794884, 37.103424, 23.432896>,  <20.429064, 37.264790, 23.421223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.794884, 37.103424, 23.432896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228711, -0.456282, 0.859941,
		-0.333599, -0.793134, -0.509559,
		0.914551, -0.403417, 0.029183,
		21.069248, 36.982399, 23.441650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.744101, 37.379387, 23.398153>,  <20.429064, 37.264790, 23.421223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.744101, 37.379387, 23.398153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.769913, 37.031902, 23.201714>,  <19.785400, 36.823410, 23.083849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.769913, 37.031902, 23.201714>,  <19.744101, 37.379387, 23.398153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.769913, 37.031902, 23.201714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993080, -0.104291, 0.053990,
		-0.098119, 0.484216, -0.869430,
		0.064531, -0.868711, -0.491098,
		19.789272, 36.771290, 23.054384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.308443, 37.399734, 22.751875>,  <19.744101, 37.379387, 23.398153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.308443, 37.399734, 22.751875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.341719, 37.015240, 22.857021>,  <19.361683, 36.784542, 22.920109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.341719, 37.015240, 22.857021>,  <19.308443, 37.399734, 22.751875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.341719, 37.015240, 22.857021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996071, -0.072162, 0.051338,
		-0.030379, -0.266106, -0.963465,
		0.083187, -0.961239, 0.262868,
		19.366674, 36.726868, 22.935881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.695206, 37.129452, 23.126091>,  <19.308443, 37.399734, 22.751875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.695206, 37.129452, 23.126091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.886461, 36.780430, 23.086018>,  <19.001215, 36.571018, 23.061974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.886461, 36.780430, 23.086018>,  <18.695206, 37.129452, 23.126091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.886461, 36.780430, 23.086018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810906, -0.482391, 0.331255,
		-0.337365, -0.077147, -0.938207,
		0.478139, -0.872552, -0.100183,
		19.029903, 36.518665, 23.055962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.367105, 37.666588, 22.697538>,  <18.695206, 37.129452, 23.126091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.367105, 37.666588, 22.697538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.164263, 37.584358, 23.032341>,  <18.042557, 37.535019, 23.233223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.164263, 37.584358, 23.032341>,  <18.367105, 37.666588, 22.697538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.164263, 37.584358, 23.032341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852483, -0.262681, 0.451963,
		0.126953, 0.942728, 0.308458,
		-0.507105, -0.205577, 0.837008,
		18.012131, 37.522686, 23.283443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.666576, 24.559021, 27.710838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.972710, 24.673244, 27.941566>,  <29.156389, 24.741777, 28.080004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.972710, 24.673244, 27.941566>,  <28.666576, 24.559021, 27.710838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972710, 24.673244, 27.941566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040235, 0.915666, -0.399920,
		-0.642375, 0.282864, 0.712280,
		0.765333, 0.285558, 0.576820,
		29.202311, 24.758911, 28.114613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525597, 25.219408, 27.902006>,  <28.666576, 24.559021, 27.710838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525597, 25.219408, 27.902006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.922907, 25.180691, 27.927429>,  <29.161293, 25.157461, 27.942684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.922907, 25.180691, 27.927429>,  <28.525597, 25.219408, 27.902006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922907, 25.180691, 27.927429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114933, 0.890910, -0.439398,
		-0.014096, 0.443747, 0.896041,
		0.993273, -0.096791, 0.063560,
		29.220888, 25.151653, 27.946497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788969, 25.889380, 28.120327>,  <28.525597, 25.219408, 27.902006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788969, 25.889380, 28.120327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.088566, 25.698452, 27.936512>,  <29.268324, 25.583895, 27.826223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.088566, 25.698452, 27.936512>,  <28.788969, 25.889380, 28.120327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088566, 25.698452, 27.936512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212669, 0.830052, -0.515545,
		0.627520, 0.288410, 0.723214,
		0.748993, -0.477319, -0.459538,
		29.313263, 25.555256, 27.798651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217958, 26.353264, 28.063358>,  <28.788969, 25.889380, 28.120327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217958, 26.353264, 28.063358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.421671, 26.116386, 27.813580>,  <29.543898, 25.974260, 27.663712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.421671, 26.116386, 27.813580>,  <29.217958, 26.353264, 28.063358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421671, 26.116386, 27.813580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255303, 0.796897, -0.547519,
		0.821860, 0.119418, 0.557034,
		0.509282, -0.592196, -0.624449,
		29.574455, 25.938728, 27.626245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895084, 26.700163, 27.852114>,  <29.217958, 26.353264, 28.063358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895084, 26.700163, 27.852114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.847128, 26.428028, 27.562904>,  <29.818354, 26.264748, 27.389378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.847128, 26.428028, 27.562904>,  <29.895084, 26.700163, 27.852114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847128, 26.428028, 27.562904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358399, 0.649507, -0.670590,
		0.925838, -0.339529, 0.165962,
		-0.119891, -0.680338, -0.723025,
		29.811161, 26.223927, 27.345997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520161, 26.694082, 27.448387>,  <29.895084, 26.700163, 27.852114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520161, 26.694082, 27.448387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.240257, 26.528427, 27.215553>,  <30.072315, 26.429033, 27.075853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.240257, 26.528427, 27.215553>,  <30.520161, 26.694082, 27.448387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240257, 26.528427, 27.215553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253017, 0.618319, -0.744086,
		0.668073, -0.667958, -0.327888,
		-0.699757, -0.414142, -0.582087,
		30.030329, 26.404184, 27.040928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886028, 26.459570, 26.796597>,  <30.520161, 26.694082, 27.448387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886028, 26.459570, 26.796597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.497915, 26.504475, 26.710857>,  <30.265047, 26.531418, 26.659414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.497915, 26.504475, 26.710857>,  <30.886028, 26.459570, 26.796597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497915, 26.504475, 26.710857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241658, 0.494217, -0.835075,
		0.012185, -0.862059, -0.506661,
		-0.970285, 0.112263, -0.214346,
		30.206829, 26.538153, 26.646553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819323, 26.490814, 26.053211>,  <30.886028, 26.459570, 26.796597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819323, 26.490814, 26.053211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.481693, 26.658180, 26.187355>,  <30.279116, 26.758600, 26.267841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.481693, 26.658180, 26.187355>,  <30.819323, 26.490814, 26.053211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481693, 26.658180, 26.187355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183001, 0.812632, -0.553299,
		-0.504032, -0.405655, -0.762493,
		-0.844075, 0.418417, 0.335358,
		30.228470, 26.783705, 26.287962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342442, 26.794998, 25.386623>,  <30.819323, 26.490814, 26.053211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342442, 26.794998, 25.386623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.185146, 26.985199, 25.701397>,  <30.090769, 27.099319, 25.890261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.185146, 26.985199, 25.701397>,  <30.342442, 26.794998, 25.386623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185146, 26.985199, 25.701397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050914, 0.843311, -0.535009,
		-0.918027, -0.250451, -0.307411,
		-0.393236, 0.475501, 0.786933,
		30.067175, 27.127850, 25.937477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829334, 27.189379, 25.025650>,  <30.342442, 26.794998, 25.386623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829334, 27.189379, 25.025650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.883749, 27.318409, 25.400337>,  <29.916399, 27.395826, 25.625149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.883749, 27.318409, 25.400337>,  <29.829334, 27.189379, 25.025650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883749, 27.318409, 25.400337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201380, 0.934771, -0.292659,
		-0.970021, -0.148823, 0.192125,
		0.136038, 0.322576, 0.936717,
		29.924561, 27.415182, 25.681353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180305, 27.374411, 25.259298>,  <29.829334, 27.189379, 25.025650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180305, 27.374411, 25.259298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.411318, 27.617168, 25.477707>,  <29.549925, 27.762823, 25.608751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.411318, 27.617168, 25.477707>,  <29.180305, 27.374411, 25.259298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411318, 27.617168, 25.477707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321504, 0.783872, -0.531205,
		-0.750394, 0.131240, 0.647830,
		0.577532, 0.606894, 0.546019,
		29.584578, 27.799236, 25.641512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700314, 27.956656, 25.635065>,  <29.180305, 27.374411, 25.259298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700314, 27.956656, 25.635065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.078823, 28.081768, 25.602253>,  <29.305929, 28.156836, 25.582565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.078823, 28.081768, 25.602253>,  <28.700314, 27.956656, 25.635065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078823, 28.081768, 25.602253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318355, 0.856693, -0.405865,
		-0.056671, 0.410176, 0.910244,
		0.946276, 0.312782, -0.082032,
		29.362705, 28.175602, 25.577642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583712, 28.633055, 25.773645>,  <28.700314, 27.956656, 25.635065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583712, 28.633055, 25.773645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.942060, 28.634171, 25.595924>,  <29.157070, 28.634840, 25.489292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.942060, 28.634171, 25.595924>,  <28.583712, 28.633055, 25.773645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942060, 28.634171, 25.595924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241831, 0.841945, -0.482334,
		0.372734, 0.539556, 0.754950,
		0.895872, 0.002788, -0.444302,
		29.210823, 28.635008, 25.462633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910421, 29.423578, 25.947109>,  <28.583712, 28.633055, 25.773645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910421, 29.423578, 25.947109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.032635, 29.228298, 25.620110>,  <29.105963, 29.111130, 25.423910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.032635, 29.228298, 25.620110>,  <28.910421, 29.423578, 25.947109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032635, 29.228298, 25.620110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215513, 0.800819, -0.558786,
		0.927471, 0.346911, 0.139465,
		0.305535, -0.488202, -0.817500,
		29.124296, 29.081837, 25.374859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347359, 29.805067, 25.626501>,  <28.910421, 29.423578, 25.947109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347359, 29.805067, 25.626501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.219786, 29.564201, 25.333740>,  <29.143242, 29.419682, 25.158083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.219786, 29.564201, 25.333740>,  <29.347359, 29.805067, 25.626501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219786, 29.564201, 25.333740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163838, 0.795633, -0.583202,
		0.933510, -0.066088, -0.352409,
		-0.318931, -0.602163, -0.731904,
		29.124105, 29.383553, 25.114168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565170, 30.113110, 25.067579>,  <29.347359, 29.805067, 25.626501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565170, 30.113110, 25.067579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.295494, 29.885048, 24.879795>,  <29.133688, 29.748211, 24.767124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.295494, 29.885048, 24.879795>,  <29.565170, 30.113110, 25.067579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295494, 29.885048, 24.879795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214154, 0.759248, -0.614557,
		0.706829, -0.313792, -0.633978,
		-0.674189, -0.570155, -0.469459,
		29.093237, 29.714001, 24.738956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635492, 30.242817, 24.221622>,  <29.565170, 30.113110, 25.067579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635492, 30.242817, 24.221622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.272846, 30.092003, 24.297409>,  <29.055260, 30.001514, 24.342880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.272846, 30.092003, 24.297409>,  <29.635492, 30.242817, 24.221622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272846, 30.092003, 24.297409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415339, 0.718129, -0.558376,
		0.074465, -0.584925, -0.807662,
		-0.906614, -0.377033, 0.189467,
		29.000862, 29.978893, 24.354248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234074, 30.412262, 23.567062>,  <29.635492, 30.242817, 24.221622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234074, 30.412262, 23.567062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.938293, 30.305569, 23.814308>,  <28.760824, 30.241552, 23.962656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.938293, 30.305569, 23.814308>,  <29.234074, 30.412262, 23.567062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938293, 30.305569, 23.814308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645534, 0.541486, -0.538590,
		-0.191041, -0.797275, -0.572587,
		-0.739452, -0.266732, 0.618114,
		28.716457, 30.225550, 23.999743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794527, 29.895792, 23.186474>,  <29.234074, 30.412262, 23.567062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794527, 29.895792, 23.186474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.610140, 30.073280, 23.493881>,  <28.499508, 30.179773, 23.678326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.610140, 30.073280, 23.493881>,  <28.794527, 29.895792, 23.186474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610140, 30.073280, 23.493881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624240, 0.453399, -0.636203,
		-0.630742, -0.773008, 0.067986,
		-0.460965, 0.443719, 0.768521,
		28.471849, 30.206396, 23.724438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019423, 29.758282, 23.072035>,  <28.794527, 29.895792, 23.186474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019423, 29.758282, 23.072035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.051146, 30.068851, 23.322117>,  <28.070179, 30.255194, 23.472166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.051146, 30.068851, 23.322117>,  <28.019423, 29.758282, 23.072035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051146, 30.068851, 23.322117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613440, 0.532374, -0.583325,
		-0.785749, -0.337262, 0.518510,
		0.079308, 0.776422, 0.625203,
		28.074938, 30.301779, 23.509678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374844, 30.007734, 23.223764>,  <28.019423, 29.758282, 23.072035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374844, 30.007734, 23.223764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.647528, 30.299465, 23.246910>,  <27.811138, 30.474504, 23.260798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.647528, 30.299465, 23.246910>,  <27.374844, 30.007734, 23.223764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647528, 30.299465, 23.246910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487022, 0.511400, -0.708011,
		-0.545965, 0.454478, 0.703827,
		0.681712, 0.729328, 0.057865,
		27.852041, 30.518263, 23.264269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044027, 30.686779, 23.309254>,  <27.374844, 30.007734, 23.223764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044027, 30.686779, 23.309254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.391373, 30.760201, 23.124969>,  <27.599779, 30.804255, 23.014399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.391373, 30.760201, 23.124969>,  <27.044027, 30.686779, 23.309254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391373, 30.760201, 23.124969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439209, 0.716058, -0.542547,
		0.230306, 0.673475, 0.702417,
		0.868363, 0.183556, -0.460709,
		27.651882, 30.815268, 22.986757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.270403, 30.674585, 23.122972>,  <27.044027, 30.686779, 23.309254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.270403, 30.674585, 23.122972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.872526, 30.714378, 23.112438>,  <25.633801, 30.738255, 23.106117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.872526, 30.714378, 23.112438>,  <26.270403, 30.674585, 23.122972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872526, 30.714378, 23.112438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100325, -0.880419, 0.463461,
		0.022922, 0.463643, 0.885726,
		-0.994691, 0.099484, -0.026334,
		25.574120, 30.744223, 23.104538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.052837, 30.540182, 23.800846>,  <26.270403, 30.674585, 23.122972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.052837, 30.540182, 23.800846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.750547, 30.463451, 23.550381>,  <25.569174, 30.417414, 23.400101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.750547, 30.463451, 23.550381>,  <26.052837, 30.540182, 23.800846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.750547, 30.463451, 23.550381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137350, -0.888448, 0.437944,
		-0.640323, 0.416969, 0.645076,
		-0.755726, -0.191825, -0.626165,
		25.523830, 30.405905, 23.362532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.560207, 30.430996, 24.225418>,  <26.052837, 30.540182, 23.800846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.560207, 30.430996, 24.225418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.445620, 30.249275, 23.888004>,  <25.376867, 30.140244, 23.685556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.445620, 30.249275, 23.888004>,  <25.560207, 30.430996, 24.225418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.445620, 30.249275, 23.888004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275630, -0.804133, 0.526687,
		-0.917586, 0.383382, 0.105141,
		-0.286470, -0.454300, -0.843532,
		25.359678, 30.112986, 23.634945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.077604, 29.934263, 24.407934>,  <25.560207, 30.430996, 24.225418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.077604, 29.934263, 24.407934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.188635, 29.825581, 24.039341>,  <25.255253, 29.760370, 23.818186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.188635, 29.825581, 24.039341>,  <25.077604, 29.934263, 24.407934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.188635, 29.825581, 24.039341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118687, -0.961523, 0.247763,
		-0.953344, 0.040594, -0.299145,
		0.277577, -0.271708, -0.921480,
		25.271908, 29.744068, 23.762897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.601103, 29.438765, 24.316395>,  <25.077604, 29.934263, 24.407934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.601103, 29.438765, 24.316395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.878590, 29.366264, 24.037567>,  <25.045082, 29.322765, 23.870270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.878590, 29.366264, 24.037567>,  <24.601103, 29.438765, 24.316395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.878590, 29.366264, 24.037567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010936, -0.965057, 0.261813,
		-0.720166, -0.189247, -0.667493,
		0.693716, -0.181249, -0.697071,
		25.086704, 29.311890, 23.828445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.387817, 28.768084, 24.083920>,  <24.601103, 29.438765, 24.316395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.387817, 28.768084, 24.083920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.772934, 28.827454, 23.993587>,  <25.004005, 28.863075, 23.939388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.772934, 28.827454, 23.993587>,  <24.387817, 28.768084, 24.083920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.772934, 28.827454, 23.993587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217668, -0.921182, 0.322558,
		-0.160153, -0.359712, -0.919216,
		0.962794, 0.148425, -0.225828,
		25.061771, 28.871981, 23.925838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.560436, 28.136635, 23.687534>,  <24.387817, 28.768084, 24.083920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.560436, 28.136635, 23.687534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.909006, 28.295334, 23.802921>,  <25.118147, 28.390554, 23.872154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.909006, 28.295334, 23.802921>,  <24.560436, 28.136635, 23.687534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909006, 28.295334, 23.802921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334951, -0.910899, 0.240978,
		0.358373, -0.113371, -0.926669,
		0.871422, 0.396749, 0.288468,
		25.170433, 28.414358, 23.889462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151218, 27.787613, 23.254938>,  <24.560436, 28.136635, 23.687534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151218, 27.787613, 23.254938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.301161, 27.942326, 23.591957>,  <25.391127, 28.035152, 23.794168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.301161, 27.942326, 23.591957>,  <25.151218, 27.787613, 23.254938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.301161, 27.942326, 23.591957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474261, -0.860899, 0.184201,
		0.796592, 0.330537, -0.506148,
		0.374857, 0.386780, 0.842546,
		25.413618, 28.058359, 23.844721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779844, 27.385509, 23.434063>,  <25.151218, 27.787613, 23.254938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779844, 27.385509, 23.434063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.698025, 27.572781, 23.777916>,  <25.648933, 27.685143, 23.984228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.698025, 27.572781, 23.777916>,  <25.779844, 27.385509, 23.434063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.698025, 27.572781, 23.777916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260544, -0.820481, 0.508850,
		0.943544, 0.328058, 0.045848,
		-0.204550, 0.468177, 0.859633,
		25.636660, 27.713234, 24.035807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463648, 27.505369, 23.792336>,  <25.779844, 27.385509, 23.434063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463648, 27.505369, 23.792336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.174486, 27.502663, 24.068703>,  <26.000990, 27.501040, 24.234524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.174486, 27.502663, 24.068703>,  <26.463648, 27.505369, 23.792336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174486, 27.502663, 24.068703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476670, -0.728776, 0.491601,
		0.500198, 0.684719, 0.530058,
		-0.722902, -0.006765, 0.690917,
		25.957615, 27.500633, 24.275978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808582, 27.467558, 24.512917>,  <26.463648, 27.505369, 23.792336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808582, 27.467558, 24.512917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.425943, 27.355335, 24.544434>,  <26.196360, 27.288002, 24.563343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.425943, 27.355335, 24.544434>,  <26.808582, 27.467558, 24.512917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425943, 27.355335, 24.544434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275972, -0.785342, 0.554146,
		-0.093591, 0.551839, 0.828682,
		-0.956598, -0.280556, 0.078792,
		26.138964, 27.271168, 24.568071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793865, 27.335543, 25.162342>,  <26.808582, 27.467558, 24.512917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793865, 27.335543, 25.162342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.462414, 27.159344, 25.024162>,  <26.263542, 27.053625, 24.941254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.462414, 27.159344, 25.024162>,  <26.793865, 27.335543, 25.162342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462414, 27.159344, 25.024162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151616, -0.770632, 0.618982,
		-0.538875, 0.460531, 0.705354,
		-0.828629, -0.440497, -0.345451,
		26.213825, 27.027195, 24.920527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.440924, 27.344414, 25.783381>,  <26.793865, 27.335543, 25.162342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.440924, 27.344414, 25.783381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.268078, 27.086369, 25.531315>,  <26.164371, 26.931541, 25.380075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.268078, 27.086369, 25.531315>,  <26.440924, 27.344414, 25.783381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.268078, 27.086369, 25.531315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026877, -0.689248, 0.724027,
		-0.901419, 0.329798, 0.280494,
		-0.432113, -0.645112, -0.630166,
		26.138445, 26.892836, 25.342266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.832455, 27.160549, 25.969774>,  <26.440924, 27.344414, 25.783381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.832455, 27.160549, 25.969774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.955564, 26.845501, 25.756260>,  <26.029430, 26.656471, 25.628151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.955564, 26.845501, 25.756260>,  <25.832455, 27.160549, 25.969774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.955564, 26.845501, 25.756260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048985, -0.573391, 0.817816,
		-0.950198, -0.225554, -0.215056,
		0.307773, -0.787622, -0.533787,
		26.047897, 26.609215, 25.596125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.461187, 26.631996, 26.194462>,  <25.832455, 27.160549, 25.969774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.461187, 26.631996, 26.194462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.782541, 26.454670, 26.035442>,  <25.975353, 26.348274, 25.940031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.782541, 26.454670, 26.035442>,  <25.461187, 26.631996, 26.194462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782541, 26.454670, 26.035442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029071, -0.637635, 0.769790,
		-0.594749, -0.629995, -0.499380,
		0.803386, -0.443314, -0.397548,
		26.023558, 26.321676, 25.916178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.353670, 25.988956, 26.413893>,  <25.461187, 26.631996, 26.194462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.353670, 25.988956, 26.413893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.733616, 25.995846, 26.289021>,  <25.961584, 25.999979, 26.214096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.733616, 25.995846, 26.289021>,  <25.353670, 25.988956, 26.413893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.733616, 25.995846, 26.289021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195531, -0.811855, 0.550145,
		-0.243971, -0.583605, -0.774521,
		0.949866, 0.017224, -0.312182,
		26.018576, 26.001013, 26.195366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490911, 25.326506, 26.158634>,  <25.353670, 25.988956, 26.413893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490911, 25.326506, 26.158634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.843636, 25.483982, 26.262497>,  <26.055269, 25.578468, 26.324814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.843636, 25.483982, 26.262497>,  <25.490911, 25.326506, 26.158634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.843636, 25.483982, 26.262497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296995, -0.891260, 0.342708,
		0.366343, -0.225086, -0.902845,
		0.881809, 0.393689, 0.259657,
		26.108179, 25.602089, 26.340395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996838, 24.765043, 26.138187>,  <25.490911, 25.326506, 26.158634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996838, 24.765043, 26.138187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.174719, 25.057697, 26.344856>,  <26.281446, 25.233290, 26.468857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.174719, 25.057697, 26.344856>,  <25.996838, 24.765043, 26.138187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174719, 25.057697, 26.344856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297634, -0.664777, 0.685191,
		0.844781, -0.150927, -0.513387,
		0.444701, 0.731637, 0.516670,
		26.308128, 25.277189, 26.499857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<26.695587, 24.513712, 26.379080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.586714, 24.814220, 26.619583>,  <26.521391, 24.994526, 26.763885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.586714, 24.814220, 26.619583>,  <26.695587, 24.513712, 26.379080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586714, 24.814220, 26.619583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294800, -0.529696, 0.795308,
		0.915975, 0.393719, -0.077301,
		-0.272182, 0.751270, 0.601257,
		26.505060, 25.039602, 26.799961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207817, 24.520439, 26.857651>,  <26.695587, 24.513712, 26.379080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207817, 24.520439, 26.857651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.939653, 24.742569, 27.054493>,  <26.778755, 24.875847, 27.172598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.939653, 24.742569, 27.054493>,  <27.207817, 24.520439, 26.857651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939653, 24.742569, 27.054493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221241, -0.483449, 0.846953,
		0.708241, 0.676679, 0.201248,
		-0.670408, 0.555323, 0.492108,
		26.738531, 24.909166, 27.202126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575720, 24.768970, 27.443861>,  <27.207817, 24.520439, 26.857651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575720, 24.768970, 27.443861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.188166, 24.819435, 27.529037>,  <26.955633, 24.849714, 27.580143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.188166, 24.819435, 27.529037>,  <27.575720, 24.768970, 27.443861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188166, 24.819435, 27.529037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162218, -0.326114, 0.931308,
		0.186941, 0.936874, 0.295501,
		-0.968885, 0.126164, 0.212942,
		26.897501, 24.857285, 27.592920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530766, 24.972895, 28.166779>,  <27.575720, 24.768970, 27.443861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530766, 24.972895, 28.166779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.160723, 24.835140, 28.102810>,  <26.938698, 24.752487, 28.064428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.160723, 24.835140, 28.102810>,  <27.530766, 24.972895, 28.166779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160723, 24.835140, 28.102810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018358, -0.461250, 0.887080,
		-0.379262, 0.817708, 0.433028,
		-0.925107, -0.344385, -0.159923,
		26.883190, 24.731825, 28.054832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170883, 25.121246, 28.831514>,  <27.530766, 24.972895, 28.166779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170883, 25.121246, 28.831514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.994049, 24.819935, 28.636730>,  <26.887949, 24.639147, 28.519859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.994049, 24.819935, 28.636730>,  <27.170883, 25.121246, 28.831514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994049, 24.819935, 28.636730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082321, -0.574675, 0.814231,
		-0.893187, 0.319873, 0.316066,
		-0.442086, -0.753280, -0.486960,
		26.861423, 24.593950, 28.490643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.514215, 24.997618, 29.288801>,  <27.170883, 25.121246, 28.831514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.514215, 24.997618, 29.288801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.559763, 24.673138, 29.059372>,  <26.587091, 24.478449, 28.921715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.559763, 24.673138, 29.059372>,  <26.514215, 24.997618, 29.288801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559763, 24.673138, 29.059372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089906, -0.583373, 0.807213,
		-0.989419, -0.040350, -0.139361,
		0.113870, -0.811202, -0.573572,
		26.593924, 24.429777, 28.887300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.932686, 24.570763, 29.463209>,  <26.514215, 24.997618, 29.288801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.932686, 24.570763, 29.463209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.198978, 24.320820, 29.300064>,  <26.358755, 24.170855, 29.202177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.198978, 24.320820, 29.300064>,  <25.932686, 24.570763, 29.463209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198978, 24.320820, 29.300064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120397, -0.629380, 0.767714,
		-0.736413, -0.461987, -0.494230,
		0.665732, -0.624859, -0.407861,
		26.398699, 24.133362, 29.177706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571760, 23.915228, 29.358072>,  <25.932686, 24.570763, 29.463209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.571760, 23.915228, 29.358072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.967148, 23.854866, 29.353069>,  <26.204380, 23.818649, 29.350067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.967148, 23.854866, 29.353069>,  <25.571760, 23.915228, 29.358072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.967148, 23.854866, 29.353069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084655, -0.619221, 0.780641,
		-0.125547, -0.770581, -0.624855,
		0.988469, -0.150904, -0.012508,
		26.263689, 23.809595, 29.349318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657305, 23.127375, 29.251181>,  <25.571760, 23.915228, 29.358072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657305, 23.127375, 29.251181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.005627, 23.257767, 29.398388>,  <26.214621, 23.336002, 29.486712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.005627, 23.257767, 29.398388>,  <25.657305, 23.127375, 29.251181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.005627, 23.257767, 29.398388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133400, -0.563812, 0.815059,
		0.473186, -0.758850, -0.447484,
		0.870804, 0.325980, 0.368018,
		26.266869, 23.355560, 29.508793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016497, 22.588541, 29.390608>,  <25.657305, 23.127375, 29.251181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016497, 22.588541, 29.390608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.191072, 22.865387, 29.620564>,  <26.295818, 23.031494, 29.758537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.191072, 22.865387, 29.620564>,  <26.016497, 22.588541, 29.390608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191072, 22.865387, 29.620564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134000, -0.681829, 0.719134,
		0.889699, -0.236823, -0.390320,
		0.436439, 0.692116, 0.574888,
		26.322004, 23.073021, 29.793030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363342, 22.293205, 29.837931>,  <26.016497, 22.588541, 29.390608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363342, 22.293205, 29.837931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.446062, 22.617199, 30.057442>,  <26.495695, 22.811596, 30.189148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.446062, 22.617199, 30.057442>,  <26.363342, 22.293205, 29.837931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.446062, 22.617199, 30.057442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127998, -0.578479, 0.805592,
		0.969974, -0.096355, -0.223306,
		0.206801, 0.809986, 0.548777,
		26.508102, 22.860195, 30.222075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975185, 22.209209, 30.189247>,  <26.363342, 22.293205, 29.837931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975185, 22.209209, 30.189247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.759720, 22.467762, 30.405407>,  <26.630440, 22.622894, 30.535103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.759720, 22.467762, 30.405407>,  <26.975185, 22.209209, 30.189247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759720, 22.467762, 30.405407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169425, -0.545199, 0.821007,
		0.825310, 0.533804, 0.184166,
		-0.538664, 0.646383, 0.540398,
		26.598120, 22.661676, 30.567526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265739, 22.168821, 30.758728>,  <26.975185, 22.209209, 30.189247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265739, 22.168821, 30.758728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.903994, 22.321121, 30.835835>,  <26.686947, 22.412500, 30.882097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.903994, 22.321121, 30.835835>,  <27.265739, 22.168821, 30.758728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903994, 22.321121, 30.835835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024052, -0.496444, 0.867736,
		0.426085, 0.780112, 0.458123,
		-0.904364, 0.380748, 0.192764,
		26.632685, 22.435345, 30.893663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353628, 22.423649, 31.467640>,  <27.265739, 22.168821, 30.758728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353628, 22.423649, 31.467640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.959332, 22.383228, 31.413822>,  <26.722754, 22.358976, 31.381531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.959332, 22.383228, 31.413822>,  <27.353628, 22.423649, 31.467640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959332, 22.383228, 31.413822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046162, -0.606517, 0.793729,
		-0.161809, 0.788623, 0.593204,
		-0.985742, -0.101049, -0.134544,
		26.663609, 22.352913, 31.373459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057390, 22.699011, 32.123066>,  <27.353628, 22.423649, 31.467640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057390, 22.699011, 32.123066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.782238, 22.478073, 31.934711>,  <26.617146, 22.345510, 31.821699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.782238, 22.478073, 31.934711>,  <27.057390, 22.699011, 32.123066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782238, 22.478073, 31.934711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326330, -0.344142, 0.880383,
		-0.648327, 0.759264, 0.056483,
		-0.687881, -0.552344, -0.470888,
		26.575874, 22.312370, 31.793446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462200, 22.790506, 32.478874>,  <27.057390, 22.699011, 32.123066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462200, 22.790506, 32.478874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.381535, 22.448643, 32.287506>,  <26.333136, 22.243525, 32.172684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.381535, 22.448643, 32.287506>,  <26.462200, 22.790506, 32.478874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381535, 22.448643, 32.287506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500357, -0.330018, 0.800457,
		-0.842007, 0.400805, -0.361082,
		-0.201663, -0.854660, -0.478423,
		26.321035, 22.192245, 32.143978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791847, 22.598791, 32.769264>,  <26.462200, 22.790506, 32.478874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791847, 22.598791, 32.769264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.903898, 22.256969, 32.594326>,  <25.971128, 22.051876, 32.489365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.903898, 22.256969, 32.594326>,  <25.791847, 22.598791, 32.769264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.903898, 22.256969, 32.594326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537903, -0.517073, 0.665804,
		-0.795104, 0.048740, -0.604512,
		0.280126, -0.854552, -0.437344,
		25.987936, 22.000605, 32.463123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.179514, 22.179308, 32.844444>,  <25.791847, 22.598791, 32.769264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.179514, 22.179308, 32.844444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.490860, 21.938763, 32.772320>,  <25.677668, 21.794436, 32.729046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.490860, 21.938763, 32.772320>,  <25.179514, 22.179308, 32.844444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.490860, 21.938763, 32.772320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305661, -0.613863, 0.727835,
		-0.548377, -0.511409, -0.661623,
		0.778367, -0.601360, -0.180310,
		25.724369, 21.758354, 32.718227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.966825, 21.525299, 33.076080>,  <25.179514, 22.179308, 32.844444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.966825, 21.525299, 33.076080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.366549, 21.518692, 33.062759>,  <25.606382, 21.514727, 33.054768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.366549, 21.518692, 33.062759>,  <24.966825, 21.525299, 33.076080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.366549, 21.518692, 33.062759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015842, -0.621198, 0.783493,
		-0.033631, -0.783480, -0.620507,
		0.999309, -0.016519, -0.033303,
		25.666342, 21.513737, 33.052769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.248545, 20.827860, 33.228390>,  <24.966825, 21.525299, 33.076080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.248545, 20.827860, 33.228390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.565353, 21.055851, 33.315868>,  <25.755438, 21.192646, 33.368355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.565353, 21.055851, 33.315868>,  <25.248545, 20.827860, 33.228390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.565353, 21.055851, 33.315868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204838, -0.585574, 0.784311,
		0.575105, -0.576392, -0.580540,
		0.792020, 0.569979, 0.218700,
		25.802959, 21.226845, 33.381477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704014, 20.400166, 33.482983>,  <25.248545, 20.827860, 33.228390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704014, 20.400166, 33.482983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.841362, 20.751915, 33.614922>,  <25.923771, 20.962965, 33.694084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.841362, 20.751915, 33.614922>,  <25.704014, 20.400166, 33.482983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841362, 20.751915, 33.614922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397746, -0.454301, 0.797125,
		0.850821, -0.142513, -0.505760,
		0.343368, 0.879375, 0.329845,
		25.944372, 21.015728, 33.713875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.315628, 20.205645, 33.732655>,  <25.704014, 20.400166, 33.482983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.315628, 20.205645, 33.732655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.208641, 20.548920, 33.907917>,  <26.144449, 20.754885, 34.013073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.208641, 20.548920, 33.907917>,  <26.315628, 20.205645, 33.732655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208641, 20.548920, 33.907917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261650, -0.372948, 0.890196,
		0.927363, 0.352740, -0.124793,
		-0.267466, 0.858186, 0.438153,
		26.128401, 20.806376, 34.039364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851667, 20.515938, 34.162128>,  <26.315628, 20.205645, 33.732655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851667, 20.515938, 34.162128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.472643, 20.573311, 34.276356>,  <26.245228, 20.607735, 34.344894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.472643, 20.573311, 34.276356>,  <26.851667, 20.515938, 34.162128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472643, 20.573311, 34.276356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200476, -0.429106, 0.880726,
		0.248864, 0.891794, 0.377850,
		-0.947563, 0.143431, 0.285572,
		26.188374, 20.616341, 34.362026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883556, 20.781408, 34.811523>,  <26.851667, 20.515938, 34.162128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883556, 20.781408, 34.811523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.536119, 20.585690, 34.780197>,  <26.327658, 20.468258, 34.761402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.536119, 20.585690, 34.780197>,  <26.883556, 20.781408, 34.811523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536119, 20.585690, 34.780197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195698, -0.483930, 0.852944,
		-0.455244, 0.725535, 0.516093,
		-0.868594, -0.489296, -0.078320,
		26.275541, 20.438900, 34.756702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503113, 20.803452, 35.001511>,  <26.883556, 20.781408, 34.811523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503113, 20.803452, 35.001511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.893934, 20.727318, 35.039757>,  <28.128428, 20.681639, 35.062702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.893934, 20.727318, 35.039757>,  <27.503113, 20.803452, 35.001511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893934, 20.727318, 35.039757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212937, 0.883702, -0.416809,
		-0.005161, 0.427603, 0.903952,
		0.977052, -0.190333, 0.095614,
		28.187050, 20.670218, 35.068439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731966, 21.440493, 35.077057>,  <27.503113, 20.803452, 35.001511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731966, 21.440493, 35.077057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.069647, 21.245926, 34.986965>,  <28.272255, 21.129187, 34.932911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.069647, 21.245926, 34.986965>,  <27.731966, 21.440493, 35.077057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.069647, 21.245926, 34.986965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293115, 0.770694, -0.565786,
		0.448786, 0.411619, 0.793196,
		0.844200, -0.486415, -0.225225,
		28.322906, 21.100002, 34.919399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290228, 21.896282, 35.066536>,  <27.731966, 21.440493, 35.077057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290228, 21.896282, 35.066536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.437817, 21.603127, 34.837894>,  <28.526371, 21.427233, 34.700710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.437817, 21.603127, 34.837894>,  <28.290228, 21.896282, 35.066536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437817, 21.603127, 34.837894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316534, 0.677321, -0.664110,
		0.873879, 0.064107, 0.481898,
		0.368974, -0.732889, -0.571605,
		28.548510, 21.383261, 34.666412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891487, 22.170580, 34.767883>,  <28.290228, 21.896282, 35.066536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891487, 22.170580, 34.767883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.797192, 21.866936, 34.525173>,  <28.740614, 21.684750, 34.379547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.797192, 21.866936, 34.525173>,  <28.891487, 22.170580, 34.767883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797192, 21.866936, 34.525173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360556, 0.511493, -0.779984,
		0.902456, -0.402651, 0.153123,
		-0.235740, -0.759110, -0.606778,
		28.726469, 21.639202, 34.343140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458382, 22.150505, 34.317242>,  <28.891487, 22.170580, 34.767883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458382, 22.150505, 34.317242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.158270, 21.943958, 34.152103>,  <28.978203, 21.820030, 34.053020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.158270, 21.943958, 34.152103>,  <29.458382, 22.150505, 34.317242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158270, 21.943958, 34.152103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168317, 0.454697, -0.874597,
		0.639334, -0.725683, -0.254237,
		-0.750281, -0.516367, -0.412848,
		28.933186, 21.789049, 34.028248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703058, 21.874695, 33.642460>,  <29.458382, 22.150505, 34.317242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703058, 21.874695, 33.642460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.304024, 21.898949, 33.655998>,  <29.064604, 21.913502, 33.664124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.304024, 21.898949, 33.655998>,  <29.703058, 21.874695, 33.642460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304024, 21.898949, 33.655998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008587, 0.375961, -0.926596,
		-0.068911, -0.924649, -0.374533,
		-0.997586, 0.060637, 0.033848,
		29.004747, 21.917139, 33.666153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557138, 21.705204, 32.900867>,  <29.703058, 21.874695, 33.642460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557138, 21.705204, 32.900867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.204805, 21.842403, 33.031399>,  <28.993406, 21.924723, 33.109718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.204805, 21.842403, 33.031399>,  <29.557138, 21.705204, 32.900867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204805, 21.842403, 33.031399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104909, 0.530733, -0.841021,
		-0.461662, -0.775032, -0.431501,
		-0.880830, 0.342999, 0.326327,
		28.940556, 21.945303, 33.129295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992300, 21.604702, 32.328251>,  <29.557138, 21.705204, 32.900867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992300, 21.604702, 32.328251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.908497, 21.921860, 32.557137>,  <28.858215, 22.112154, 32.694466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.908497, 21.921860, 32.557137>,  <28.992300, 21.604702, 32.328251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908497, 21.921860, 32.557137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185612, 0.542311, -0.819419,
		-0.960029, -0.277884, 0.033552,
		-0.209507, 0.792893, 0.572212,
		28.845644, 22.159727, 32.728802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354694, 21.842760, 32.124920>,  <28.992300, 21.604702, 32.328251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354694, 21.842760, 32.124920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.527782, 22.144615, 32.322212>,  <28.631636, 22.325727, 32.440586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.527782, 22.144615, 32.322212>,  <28.354694, 21.842760, 32.124920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527782, 22.144615, 32.322212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047630, 0.565477, -0.823387,
		-0.900270, 0.332802, 0.280635,
		0.432718, 0.754638, 0.493231,
		28.657598, 22.371006, 32.470181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053751, 22.373056, 31.789257>,  <28.354694, 21.842760, 32.124920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053751, 22.373056, 31.789257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.354393, 22.535637, 31.997059>,  <28.534779, 22.633184, 32.121738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.354393, 22.535637, 31.997059>,  <28.053751, 22.373056, 31.789257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354393, 22.535637, 31.997059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107147, 0.701898, -0.704172,
		-0.650850, 0.584924, 0.484002,
		0.751607, 0.406451, 0.519504,
		28.579876, 22.657572, 32.152908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847687, 23.052420, 31.961758>,  <28.053751, 22.373056, 31.789257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847687, 23.052420, 31.961758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.247425, 23.061932, 31.950882>,  <28.487268, 23.067638, 31.944357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.247425, 23.061932, 31.950882>,  <27.847687, 23.052420, 31.961758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247425, 23.061932, 31.950882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035160, 0.812779, -0.581510,
		0.008273, 0.582087, 0.813085,
		0.999347, 0.023778, -0.027191,
		28.547230, 23.069065, 31.942724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103334, 23.732277, 31.843822>,  <27.847687, 23.052420, 31.961758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103334, 23.732277, 31.843822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.414663, 23.520256, 31.709206>,  <28.601460, 23.393044, 31.628435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.414663, 23.520256, 31.709206>,  <28.103334, 23.732277, 31.843822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414663, 23.520256, 31.709206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028551, 0.565334, -0.824368,
		0.627218, 0.632013, 0.455145,
		0.778320, -0.530053, -0.336543,
		28.648159, 23.361240, 31.608242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627352, 24.198574, 31.510729>,  <28.103334, 23.732277, 31.843822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627352, 24.198574, 31.510729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.749693, 23.845074, 31.369061>,  <28.823097, 23.632973, 31.284060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.749693, 23.845074, 31.369061>,  <28.627352, 24.198574, 31.510729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749693, 23.845074, 31.369061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239749, 0.431500, -0.869672,
		0.921398, 0.181082, 0.343854,
		0.305855, -0.883752, -0.354169,
		28.841450, 23.579948, 31.262810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182512, 24.291973, 31.211662>,  <28.627352, 24.198574, 31.510729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182512, 24.291973, 31.211662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.075357, 23.954891, 31.024864>,  <29.011065, 23.752642, 30.912785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.075357, 23.954891, 31.024864>,  <29.182512, 24.291973, 31.211662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075357, 23.954891, 31.024864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177069, 0.433391, -0.883639,
		0.947039, -0.319407, 0.033116,
		-0.267888, -0.842705, -0.466995,
		28.994991, 23.702080, 30.884766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441767, 24.368660, 30.573523>,  <29.182512, 24.291973, 31.211662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441767, 24.368660, 30.573523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.230785, 24.040184, 30.486397>,  <29.104197, 23.843100, 30.434122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.230785, 24.040184, 30.486397>,  <29.441767, 24.368660, 30.573523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230785, 24.040184, 30.486397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046890, 0.284126, -0.957640,
		0.848290, -0.494896, -0.188369,
		-0.527452, -0.821189, -0.217815,
		29.072550, 23.793827, 30.421053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885599, 23.962255, 30.188559>,  <29.441767, 24.368660, 30.573523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885599, 23.962255, 30.188559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.516106, 23.842396, 30.093124>,  <29.294409, 23.770479, 30.035864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.516106, 23.842396, 30.093124>,  <29.885599, 23.962255, 30.188559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516106, 23.842396, 30.093124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216269, 0.106072, -0.970555,
		0.316137, -0.948133, -0.033177,
		-0.923735, -0.299653, -0.238585,
		29.238985, 23.752501, 30.021549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011320, 23.636829, 29.450359>,  <29.885599, 23.962255, 30.188559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011320, 23.636829, 29.450359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.617704, 23.704456, 29.472580>,  <29.381535, 23.745033, 29.485912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.617704, 23.704456, 29.472580>,  <30.011320, 23.636829, 29.450359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617704, 23.704456, 29.472580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005466, 0.340725, -0.940147,
		-0.177876, -0.924837, -0.336210,
		-0.984038, 0.169067, 0.055552,
		29.322493, 23.755177, 29.489246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773460, 23.419998, 28.778135>,  <30.011320, 23.636829, 29.450359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773460, 23.419998, 28.778135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.505007, 23.688808, 28.903328>,  <29.343935, 23.850094, 28.978443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.505007, 23.688808, 28.903328>,  <29.773460, 23.419998, 28.778135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505007, 23.688808, 28.903328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031988, 0.448047, -0.893437,
		-0.740645, -0.589605, -0.322197,
		-0.671134, 0.672027, 0.312984,
		29.303667, 23.890417, 28.997223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397034, 23.535709, 28.213633>,  <29.773460, 23.419998, 28.778135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397034, 23.535709, 28.213633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.327808, 23.843201, 28.459919>,  <29.286272, 24.027697, 28.607691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.327808, 23.843201, 28.459919>,  <29.397034, 23.535709, 28.213633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327808, 23.843201, 28.459919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112111, 0.636460, -0.763119,
		-0.978509, -0.063041, -0.196332,
		-0.173065, 0.768730, 0.615714,
		29.275888, 24.073820, 28.644632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051311, 23.946829, 27.816011>,  <29.397034, 23.535709, 28.213633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051311, 23.946829, 27.816011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.201565, 24.173370, 28.109444>,  <29.291718, 24.309296, 28.285503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.201565, 24.173370, 28.109444>,  <29.051311, 23.946829, 27.816011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201565, 24.173370, 28.109444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161343, 0.739497, -0.653539,
		-0.912616, 0.363849, 0.186402,
		0.375633, 0.566355, 0.733581,
		29.314255, 24.343277, 28.329517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<27.422237, 36.944534, 17.630726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.604998, 36.588806, 17.638260>,  <27.714653, 36.375370, 17.642780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.604998, 36.588806, 17.638260>,  <27.422237, 36.944534, 17.630726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604998, 36.588806, 17.638260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400391, -0.186709, 0.897121,
		-0.794310, -0.417436, -0.441383,
		0.456901, -0.889318, 0.018833,
		27.742067, 36.322010, 17.643909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916965, 36.430630, 17.871742>,  <27.422237, 36.944534, 17.630726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916965, 36.430630, 17.871742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.268185, 36.251644, 17.939640>,  <27.478916, 36.144253, 17.980379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.268185, 36.251644, 17.939640>,  <26.916965, 36.430630, 17.871742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268185, 36.251644, 17.939640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338805, -0.330680, 0.880830,
		-0.338052, -0.830897, -0.441963,
		0.878028, -0.447506, 0.169725,
		27.531599, 36.117405, 17.990564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895300, 35.682072, 17.931225>,  <26.916965, 36.430630, 17.871742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895300, 35.682072, 17.931225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.225676, 35.762867, 18.141758>,  <27.423901, 35.811344, 18.268078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.225676, 35.762867, 18.141758>,  <26.895300, 35.682072, 17.931225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225676, 35.762867, 18.141758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450851, -0.323850, 0.831778,
		0.338465, -0.924294, -0.176412,
		0.825939, 0.201992, 0.526331,
		27.473457, 35.823463, 18.299658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129160, 35.072655, 18.357857>,  <26.895300, 35.682072, 17.931225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129160, 35.072655, 18.357857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.302561, 35.396553, 18.516041>,  <27.406601, 35.590893, 18.610952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.302561, 35.396553, 18.516041>,  <27.129160, 35.072655, 18.357857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302561, 35.396553, 18.516041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286071, -0.292484, 0.912478,
		0.854540, -0.508693, 0.104852,
		0.433503, 0.809744, 0.395462,
		27.432611, 35.639477, 18.634680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433561, 34.904461, 18.968754>,  <27.129160, 35.072655, 18.357857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433561, 34.904461, 18.968754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.409752, 35.301613, 19.010014>,  <27.395466, 35.539906, 19.034769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.409752, 35.301613, 19.010014>,  <27.433561, 34.904461, 18.968754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409752, 35.301613, 19.010014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301261, -0.116382, 0.946413,
		0.951682, 0.025260, 0.306044,
		-0.059524, 0.992883, 0.103149,
		27.391895, 35.599480, 19.040958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747238, 35.161961, 19.717800>,  <27.433561, 34.904461, 18.968754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747238, 35.161961, 19.717800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.543077, 35.485470, 19.600922>,  <27.420582, 35.679573, 19.530794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.543077, 35.485470, 19.600922>,  <27.747238, 35.161961, 19.717800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543077, 35.485470, 19.600922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441759, 0.044928, 0.896009,
		0.737793, 0.586405, 0.334350,
		-0.510402, 0.808771, -0.292197,
		27.389957, 35.728100, 19.513262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744976, 35.562431, 20.231627>,  <27.747238, 35.161961, 19.717800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744976, 35.562431, 20.231627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.424892, 35.705853, 20.039333>,  <27.232841, 35.791904, 19.923958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.424892, 35.705853, 20.039333>,  <27.744976, 35.562431, 20.231627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424892, 35.705853, 20.039333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481197, 0.094547, 0.871499,
		0.357929, 0.928710, 0.096876,
		-0.800211, 0.358551, -0.480733,
		27.184830, 35.813419, 19.895113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464052, 36.031193, 20.647860>,  <27.744976, 35.562431, 20.231627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464052, 36.031193, 20.647860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.151022, 35.956902, 20.410175>,  <26.963203, 35.912327, 20.267565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.151022, 35.956902, 20.410175>,  <27.464052, 36.031193, 20.647860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151022, 35.956902, 20.410175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612373, 0.057698, 0.788461,
		-0.112151, 0.980907, -0.158885,
		-0.782574, -0.185724, -0.594209,
		26.916250, 35.901184, 20.231913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952209, 36.514389, 20.830421>,  <27.464052, 36.031193, 20.647860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952209, 36.514389, 20.830421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.772503, 36.200298, 20.659969>,  <26.664679, 36.011845, 20.557699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.772503, 36.200298, 20.659969>,  <26.952209, 36.514389, 20.830421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772503, 36.200298, 20.659969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605940, -0.082685, 0.791201,
		-0.656504, 0.613668, -0.438651,
		-0.449265, -0.785223, -0.426129,
		26.637724, 35.964733, 20.532131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179022, 36.722351, 20.832611>,  <26.952209, 36.514389, 20.830421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.179022, 36.722351, 20.832611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.164711, 36.328892, 20.761997>,  <26.156124, 36.092815, 20.719629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.164711, 36.328892, 20.761997>,  <26.179022, 36.722351, 20.832611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164711, 36.328892, 20.761997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907370, -0.042057, 0.418224,
		-0.418808, 0.175144, -0.891025,
		-0.035776, -0.983644, -0.176534,
		26.153978, 36.033798, 20.709038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463432, 36.653938, 20.692852>,  <26.179022, 36.722351, 20.832611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463432, 36.653938, 20.692852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.622845, 36.294258, 20.765083>,  <25.718493, 36.078449, 20.808422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.622845, 36.294258, 20.765083>,  <25.463432, 36.653938, 20.692852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.622845, 36.294258, 20.765083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876855, -0.315843, 0.362450,
		-0.268881, -0.302789, -0.914342,
		0.398534, -0.899201, 0.180578,
		25.742405, 36.024498, 20.819256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.038080, 36.141670, 20.400311>,  <25.463432, 36.653938, 20.692852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.038080, 36.141670, 20.400311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.226046, 35.953011, 20.698769>,  <25.338825, 35.839813, 20.877844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.226046, 35.953011, 20.698769>,  <25.038080, 36.141670, 20.400311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.226046, 35.953011, 20.698769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835970, -0.509206, 0.204608,
		0.283437, -0.719901, -0.633565,
		0.469913, -0.471648, 0.746143,
		25.367020, 35.811516, 20.922611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.781048, 35.468361, 20.440332>,  <25.038080, 36.141670, 20.400311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.781048, 35.468361, 20.440332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.943565, 35.517460, 20.802517>,  <25.041077, 35.546917, 21.019827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.943565, 35.517460, 20.802517>,  <24.781048, 35.468361, 20.440332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.943565, 35.517460, 20.802517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785510, -0.459314, 0.414734,
		0.466798, -0.879752, -0.090199,
		0.406293, 0.122745, 0.905461,
		25.065453, 35.554283, 21.074156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.600842, 34.868172, 20.813356>,  <24.781048, 35.468361, 20.440332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.600842, 34.868172, 20.813356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.695263, 35.121895, 21.107822>,  <24.751915, 35.274128, 21.284502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.695263, 35.121895, 21.107822>,  <24.600842, 34.868172, 20.813356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.695263, 35.121895, 21.107822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836739, -0.252535, 0.485895,
		0.494112, -0.730675, 0.471135,
		0.236053, 0.634304, 0.736164,
		24.766079, 35.312187, 21.328672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.322504, 34.512428, 21.426664>,  <24.600842, 34.868172, 20.813356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.322504, 34.512428, 21.426664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.382811, 34.886856, 21.553818>,  <24.418995, 35.111511, 21.630110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.382811, 34.886856, 21.553818>,  <24.322504, 34.512428, 21.426664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.382811, 34.886856, 21.553818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711526, -0.120485, 0.692253,
		0.686295, -0.330548, 0.647871,
		0.150764, 0.936067, 0.317882,
		24.428040, 35.167675, 21.649183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.420797, 34.406815, 22.076920>,  <24.322504, 34.512428, 21.426664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.420797, 34.406815, 22.076920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.278889, 34.775276, 22.012909>,  <24.193743, 34.996353, 21.974503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.278889, 34.775276, 22.012909>,  <24.420797, 34.406815, 22.076920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.278889, 34.775276, 22.012909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765798, -0.188107, 0.614955,
		0.536368, 0.340715, 0.772155,
		-0.354772, 0.921157, -0.160024,
		24.172457, 35.051624, 21.964901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.391335, 34.741734, 22.647167>,  <24.420797, 34.406815, 22.076920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.391335, 34.741734, 22.647167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.120985, 34.964474, 22.454041>,  <23.958775, 35.098118, 22.338163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.120985, 34.964474, 22.454041>,  <24.391335, 34.741734, 22.647167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.120985, 34.964474, 22.454041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669105, -0.188927, 0.718753,
		0.309019, 0.808843, 0.500280,
		-0.675875, 0.556848, -0.482819,
		23.918222, 35.131527, 22.309195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.000677, 35.194172, 23.259359>,  <24.391335, 34.741734, 22.647167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.000677, 35.194172, 23.259359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.775402, 35.175713, 22.929344>,  <23.640236, 35.164639, 22.731335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.775402, 35.175713, 22.929344>,  <24.000677, 35.194172, 23.259359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.775402, 35.175713, 22.929344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803074, -0.204626, 0.559642,
		-0.194650, 0.977752, 0.078184,
		-0.563190, -0.046146, -0.825038,
		23.606445, 35.161869, 22.681833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.277277, 35.376701, 23.457830>,  <24.000677, 35.194172, 23.259359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.277277, 35.376701, 23.457830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.193829, 35.227886, 23.096043>,  <23.143759, 35.138596, 22.878969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.193829, 35.227886, 23.096043>,  <23.277277, 35.376701, 23.457830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.193829, 35.227886, 23.096043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909350, -0.266582, 0.319401,
		-0.359945, 0.889112, -0.282699,
		-0.208620, -0.372039, -0.904469,
		23.131243, 35.116276, 22.824701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.595804, 35.532467, 23.340591>,  <23.277277, 35.376701, 23.457830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.595804, 35.532467, 23.340591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.672102, 35.251850, 23.065941>,  <22.717880, 35.083481, 22.901152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.672102, 35.251850, 23.065941>,  <22.595804, 35.532467, 23.340591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.672102, 35.251850, 23.065941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883900, -0.427010, 0.190743,
		-0.427010, 0.570525, -0.701544,
		-0.190743, 0.701544, 0.686625,
		22.729324, 35.041386, 22.859953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.011402, 35.562496, 22.795891>,  <22.595804, 35.532467, 23.340591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.011402, 35.562496, 22.795891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.198627, 35.210411, 22.827221>,  <22.310963, 34.999161, 22.846020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.198627, 35.210411, 22.827221>,  <22.011402, 35.562496, 22.795891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.198627, 35.210411, 22.827221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850841, -0.424945, 0.309018,
		-0.238719, -0.211282, -0.947826,
		0.468063, -0.880217, 0.078325,
		22.339046, 34.946346, 22.850718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.588791, 36.150726, 22.543365>,  <22.011402, 35.562496, 22.795891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.588791, 36.150726, 22.543365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.508934, 36.485390, 22.747379>,  <21.461020, 36.686188, 22.869787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.508934, 36.485390, 22.747379>,  <21.588791, 36.150726, 22.543365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.508934, 36.485390, 22.747379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003397, 0.519921, -0.854207,
		-0.979863, -0.172270, -0.100957,
		-0.199644, 0.836663, 0.510037,
		21.449041, 36.736389, 22.900391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.105427, 36.542698, 22.192404>,  <21.588791, 36.150726, 22.543365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.105427, 36.542698, 22.192404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.280825, 36.819744, 22.421490>,  <21.386065, 36.985973, 22.558941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.280825, 36.819744, 22.421490>,  <21.105427, 36.542698, 22.192404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.280825, 36.819744, 22.421490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171722, 0.560940, -0.809851,
		-0.882175, 0.453465, 0.127033,
		0.438496, 0.692616, 0.572717,
		21.412374, 37.027531, 22.593306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.809452, 37.170895, 21.883045>,  <21.105427, 36.542698, 22.192404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.809452, 37.170895, 21.883045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.136059, 37.246586, 22.101215>,  <21.332024, 37.292000, 22.232119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.136059, 37.246586, 22.101215>,  <20.809452, 37.170895, 21.883045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.136059, 37.246586, 22.101215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343217, 0.600570, -0.722162,
		-0.464218, 0.776859, 0.425432,
		0.816519, 0.189225, 0.545427,
		21.381014, 37.303352, 22.264843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.022669, 37.750053, 21.584549>,  <20.809452, 37.170895, 21.883045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.022669, 37.750053, 21.584549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.331524, 37.689129, 21.831322>,  <21.516836, 37.652573, 21.979385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.331524, 37.689129, 21.831322>,  <21.022669, 37.750053, 21.584549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.331524, 37.689129, 21.831322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592106, 0.524888, -0.611477,
		-0.230682, 0.837432, 0.495473,
		0.772138, -0.152316, 0.616930,
		21.563166, 37.643433, 22.016401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.356182, 38.457279, 21.675999>,  <21.022669, 37.750053, 21.584549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.356182, 38.457279, 21.675999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.599688, 38.147892, 21.746597>,  <21.745790, 37.962257, 21.788956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.599688, 38.147892, 21.746597>,  <21.356182, 38.457279, 21.675999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.599688, 38.147892, 21.746597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643771, 0.351593, -0.679663,
		0.463645, 0.527376, 0.711975,
		0.608763, -0.773471, 0.176495,
		21.782316, 37.915852, 21.799545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.016863, 38.744282, 21.765379>,  <21.356182, 38.457279, 21.675999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.016863, 38.744282, 21.765379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.127647, 38.365631, 21.699417>,  <22.194118, 38.138439, 21.659840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.127647, 38.365631, 21.699417>,  <22.016863, 38.744282, 21.765379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.127647, 38.365631, 21.699417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766230, 0.321136, -0.556565,
		0.579815, 0.027793, 0.814274,
		0.276962, -0.946625, -0.164903,
		22.210735, 38.081642, 21.649946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.840355, 38.711609, 21.781784>,  <22.016863, 38.744282, 21.765379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.840355, 38.711609, 21.781784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.687126, 38.406448, 21.573460>,  <22.595188, 38.223354, 21.448465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.687126, 38.406448, 21.573460>,  <22.840355, 38.711609, 21.781784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.687126, 38.406448, 21.573460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688657, 0.139902, -0.711463,
		0.615636, -0.631202, 0.471781,
		-0.383073, -0.762897, -0.520810,
		22.572205, 38.177578, 21.417217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.447784, 38.408203, 21.630518>,  <22.840355, 38.711609, 21.781784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.447784, 38.408203, 21.630518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.178083, 38.272552, 21.368103>,  <23.016264, 38.191162, 21.210655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.178083, 38.272552, 21.368103>,  <23.447784, 38.408203, 21.630518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.178083, 38.272552, 21.368103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668331, 0.097745, -0.737414,
		0.314197, -0.935651, 0.160741,
		-0.674251, -0.339122, -0.656036,
		22.975809, 38.170815, 21.171293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.787588, 37.836029, 21.233347>,  <23.447784, 38.408203, 21.630518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.787588, 37.836029, 21.233347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.479950, 37.992977, 21.031540>,  <23.295368, 38.087147, 20.910456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.479950, 37.992977, 21.031540>,  <23.787588, 37.836029, 21.233347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.479950, 37.992977, 21.031540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551187, 0.007572, -0.834348,
		-0.323556, -0.919775, -0.222095,
		-0.769093, 0.392374, -0.504517,
		23.249222, 38.110691, 20.880184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.937408, 37.561802, 20.599396>,  <23.787588, 37.836029, 21.233347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.937408, 37.561802, 20.599396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.650173, 37.830544, 20.526779>,  <23.477831, 37.991791, 20.483210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.650173, 37.830544, 20.526779>,  <23.937408, 37.561802, 20.599396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.650173, 37.830544, 20.526779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456321, 0.257583, -0.851717,
		-0.525470, -0.694450, -0.491550,
		-0.718090, 0.671856, -0.181540,
		23.434746, 38.032101, 20.472317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.632698, 37.358170, 19.970703>,  <23.937408, 37.561802, 20.599396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.632698, 37.358170, 19.970703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.584133, 37.745430, 20.058285>,  <23.554995, 37.977787, 20.110834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.584133, 37.745430, 20.058285>,  <23.632698, 37.358170, 19.970703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.584133, 37.745430, 20.058285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464587, 0.250361, -0.849399,
		-0.877165, -0.001404, -0.480188,
		-0.121413, 0.968152, 0.218956,
		23.547709, 38.035877, 20.123972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.463829, 37.643806, 19.337805>,  <23.632698, 37.358170, 19.970703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.463829, 37.643806, 19.337805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.606623, 37.942406, 19.562412>,  <23.692299, 38.121567, 19.697178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.606623, 37.942406, 19.562412>,  <23.463829, 37.643806, 19.337805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.606623, 37.942406, 19.562412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607070, 0.271471, -0.746840,
		-0.709950, 0.607491, -0.356265,
		0.356983, 0.746497, 0.561521,
		23.713718, 38.166355, 19.730869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.451649, 38.268311, 18.854074>,  <23.463829, 37.643806, 19.337805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.451649, 38.268311, 18.854074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.694031, 38.361965, 19.158180>,  <23.839460, 38.418159, 19.340643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.694031, 38.361965, 19.158180>,  <23.451649, 38.268311, 18.854074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.694031, 38.361965, 19.158180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654536, 0.396412, -0.643770,
		-0.452108, 0.887714, 0.086956,
		0.605954, 0.234138, 0.760262,
		23.875816, 38.432205, 19.386259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.650478, 38.931213, 18.646811>,  <23.451649, 38.268311, 18.854074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.650478, 38.931213, 18.646811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.918890, 38.801853, 18.913685>,  <24.079937, 38.724239, 19.073809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.918890, 38.801853, 18.913685>,  <23.650478, 38.931213, 18.646811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.918890, 38.801853, 18.913685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740936, 0.325427, -0.587462,
		-0.027137, 0.888545, 0.457986,
		0.671027, -0.323396, 0.667186,
		24.120197, 38.704834, 19.113840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.186348, 39.338543, 18.631403>,  <23.650478, 38.931213, 18.646811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.186348, 39.338543, 18.631403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.365488, 39.008152, 18.768337>,  <24.472971, 38.809917, 18.850498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.365488, 39.008152, 18.768337>,  <24.186348, 39.338543, 18.631403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.365488, 39.008152, 18.768337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736572, 0.123784, -0.664936,
		0.506846, 0.549945, 0.663828,
		0.447849, -0.825977, 0.342335,
		24.499844, 38.760361, 18.871038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.891647, 39.499840, 18.749771>,  <24.186348, 39.338543, 18.631403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.891647, 39.499840, 18.749771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.924744, 39.101658, 18.730930>,  <24.944601, 38.862747, 18.719625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.924744, 39.101658, 18.730930>,  <24.891647, 39.499840, 18.749771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.924744, 39.101658, 18.730930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764033, 0.093707, -0.638336,
		0.639850, 0.016829, 0.768315,
		0.082739, -0.995458, -0.047101,
		24.949566, 38.803020, 18.716801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.681816, 39.300381, 18.763117>,  <24.891647, 39.499840, 18.749771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.681816, 39.300381, 18.763117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.508797, 38.963234, 18.635071>,  <25.404985, 38.760944, 18.558243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.508797, 38.963234, 18.635071>,  <25.681816, 39.300381, 18.763117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.508797, 38.963234, 18.635071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765066, -0.155267, -0.624952,
		0.477050, -0.515231, 0.712011,
		-0.432547, -0.842869, -0.320116,
		25.379032, 38.710373, 18.539036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192549, 38.894302, 18.717020>,  <25.681816, 39.300381, 18.763117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192549, 38.894302, 18.717020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.930696, 38.720264, 18.469749>,  <25.773584, 38.615841, 18.321386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.930696, 38.720264, 18.469749>,  <26.192549, 38.894302, 18.717020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930696, 38.720264, 18.469749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740580, -0.205079, -0.639909,
		0.151649, -0.876716, 0.456477,
		-0.654633, -0.435099, -0.618178,
		25.734306, 38.589733, 18.284296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610544, 38.372723, 18.399023>,  <26.192549, 38.894302, 18.717020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610544, 38.372723, 18.399023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.291065, 38.434185, 18.166309>,  <26.099379, 38.471062, 18.026682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.291065, 38.434185, 18.166309>,  <26.610544, 38.372723, 18.399023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.291065, 38.434185, 18.166309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570371, -0.114737, -0.813334,
		-0.191732, -0.981439, 0.003995,
		-0.798697, 0.153664, -0.581783,
		26.051456, 38.480282, 17.991774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.509153, 37.838478, 17.940067>,  <26.610544, 38.372723, 18.399023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.509153, 37.838478, 17.940067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.362835, 38.168491, 17.767780>,  <26.275043, 38.366497, 17.664408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.362835, 38.168491, 17.767780>,  <26.509153, 37.838478, 17.940067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362835, 38.168491, 17.767780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602124, -0.143099, -0.785473,
		-0.709675, -0.546669, -0.444425,
		-0.365797, 0.825031, -0.430717,
		26.253096, 38.416000, 17.638565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.848804, 37.774185, 17.320656>,  <26.509153, 37.838478, 17.940067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.848804, 37.774185, 17.320656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.669029, 38.128433, 17.273853>,  <26.561165, 38.340981, 17.245771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.669029, 38.128433, 17.273853>,  <26.848804, 37.774185, 17.320656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669029, 38.128433, 17.273853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601442, 0.203142, -0.772658,
		-0.660510, -0.417634, -0.623946,
		-0.449438, 0.885616, -0.117006,
		26.534199, 38.394119, 17.238752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<25.176840, 26.367220, 24.430296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.475328, 26.579334, 24.591267>,  <25.654421, 26.706604, 24.687849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.475328, 26.579334, 24.591267>,  <25.176840, 26.367220, 24.430296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.475328, 26.579334, 24.591267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446200, 0.847056, -0.288794,
		-0.494022, 0.035942, 0.868706,
		0.746222, 0.530288, 0.402427,
		25.699196, 26.738420, 24.711994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.930805, 26.890520, 24.805962>,  <25.176840, 26.367220, 24.430296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.930805, 26.890520, 24.805962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.303349, 27.016708, 24.733242>,  <25.526875, 27.092421, 24.689610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.303349, 27.016708, 24.733242>,  <24.930805, 26.890520, 24.805962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.303349, 27.016708, 24.733242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342262, 0.928882, -0.141543,
		0.124216, 0.194050, 0.973095,
		0.931358, 0.315471, -0.181798,
		25.582756, 27.111349, 24.678703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.053204, 27.599237, 25.246365>,  <24.930805, 26.890520, 24.805962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.053204, 27.599237, 25.246365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316813, 27.570652, 24.946877>,  <25.474977, 27.553501, 24.767183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316813, 27.570652, 24.946877>,  <25.053204, 27.599237, 25.246365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.316813, 27.570652, 24.946877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142010, 0.965748, -0.217173,
		0.738594, 0.249448, 0.626302,
		0.659023, -0.071462, -0.748720,
		25.514519, 27.549213, 24.722260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.336559, 28.239279, 25.159340>,  <25.053204, 27.599237, 25.246365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.336559, 28.239279, 25.159340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441965, 28.077709, 24.808933>,  <25.505209, 27.980768, 24.598690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441965, 28.077709, 24.808933>,  <25.336559, 28.239279, 25.159340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.441965, 28.077709, 24.808933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047129, 0.901639, -0.429915,
		0.963504, 0.154574, 0.218557,
		0.263513, -0.403924, -0.876017,
		25.521019, 27.956532, 24.546127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823530, 28.651829, 24.947666>,  <25.336559, 28.239279, 25.159340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823530, 28.651829, 24.947666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731115, 28.466694, 24.605343>,  <25.675667, 28.355614, 24.399950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731115, 28.466694, 24.605343>,  <25.823530, 28.651829, 24.947666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.731115, 28.466694, 24.605343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045726, 0.873466, -0.484732,
		0.971870, -0.151123, -0.180638,
		-0.231036, -0.462837, -0.855806,
		25.661804, 28.327843, 24.348600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332064, 28.880621, 24.343597>,  <25.823530, 28.651829, 24.947666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.332064, 28.880621, 24.343597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985653, 28.748493, 24.193455>,  <25.777807, 28.669216, 24.103369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985653, 28.748493, 24.193455>,  <26.332064, 28.880621, 24.343597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985653, 28.748493, 24.193455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069736, 0.823166, -0.563502,
		0.495114, -0.461830, -0.735917,
		-0.866025, -0.330318, -0.375355,
		25.725845, 28.649397, 24.080849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307007, 29.027596, 23.637608>,  <26.332064, 28.880621, 24.343597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307007, 29.027596, 23.637608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917587, 28.959454, 23.698505>,  <25.683935, 28.918568, 23.735044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917587, 28.959454, 23.698505>,  <26.307007, 29.027596, 23.637608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917587, 28.959454, 23.698505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227608, 0.781109, -0.581432,
		-0.019870, -0.600706, -0.799223,
		-0.973550, -0.170356, 0.152246,
		25.625523, 28.908346, 23.744179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959213, 28.897058, 22.994055>,  <26.307007, 29.027596, 23.637608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959213, 28.897058, 22.994055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.689381, 29.065353, 23.236679>,  <25.527481, 29.166330, 23.382254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.689381, 29.065353, 23.236679>,  <25.959213, 28.897058, 22.994055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689381, 29.065353, 23.236679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223781, 0.666460, -0.711163,
		-0.703464, -0.615475, -0.355428,
		-0.674582, 0.420739, 0.606562,
		25.487005, 29.191576, 23.418648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.351408, 29.238592, 22.581995>,  <25.959213, 28.897058, 22.994055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.351408, 29.238592, 22.581995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.338491, 29.411457, 22.942482>,  <25.330742, 29.515177, 23.158773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.338491, 29.411457, 22.942482>,  <25.351408, 29.238592, 22.581995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.338491, 29.411457, 22.942482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353787, 0.838367, -0.414700,
		-0.934768, -0.332229, 0.125823,
		-0.032289, 0.432163, 0.901217,
		25.328804, 29.541105, 23.212847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.918770, 29.697201, 22.458864>,  <25.351408, 29.238592, 22.581995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.918770, 29.697201, 22.458864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002785, 29.815090, 22.831749>,  <25.053194, 29.885824, 23.055481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002785, 29.815090, 22.831749>,  <24.918770, 29.697201, 22.458864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.002785, 29.815090, 22.831749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066644, 0.955580, -0.287097,
		-0.975419, -0.001825, 0.220350,
		0.210038, 0.294725, 0.932213,
		25.065796, 29.903507, 23.111412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.473650, 30.242012, 22.635492>,  <24.918770, 29.697201, 22.458864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.473650, 30.242012, 22.635492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.782131, 30.298779, 22.883720>,  <24.967220, 30.332838, 23.032658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.782131, 30.298779, 22.883720>,  <24.473650, 30.242012, 22.635492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.782131, 30.298779, 22.883720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049119, 0.985193, -0.164261,
		-0.634692, 0.096197, 0.766755,
		0.771203, 0.141917, 0.620569,
		25.013493, 30.341354, 23.069891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.351950, 30.960606, 22.910748>,  <24.473650, 30.242012, 22.635492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.351950, 30.960606, 22.910748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.739651, 30.878338, 22.964790>,  <24.972271, 30.828978, 22.997217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.739651, 30.878338, 22.964790>,  <24.351950, 30.960606, 22.910748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.739651, 30.878338, 22.964790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214490, 0.975221, -0.054199,
		-0.120614, 0.081512, 0.989347,
		0.969250, -0.205668, 0.135108,
		25.030426, 30.816637, 23.005323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.602007, 31.350248, 23.504230>,  <24.351950, 30.960606, 22.910748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.602007, 31.350248, 23.504230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896736, 31.290878, 23.240395>,  <25.073574, 31.255257, 23.082092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896736, 31.290878, 23.240395>,  <24.602007, 31.350248, 23.504230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.896736, 31.290878, 23.240395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160926, 0.986067, -0.042123,
		0.656654, -0.075108, 0.750443,
		0.736823, -0.148426, -0.659591,
		25.117783, 31.246351, 23.042517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.087204, 31.647783, 23.918875>,  <24.602007, 31.350248, 23.504230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.087204, 31.647783, 23.918875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.195030, 31.296040, 23.761871>,  <25.259726, 31.084993, 23.667669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.195030, 31.296040, 23.761871>,  <25.087204, 31.647783, 23.918875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.195030, 31.296040, 23.761871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951716, 0.305441, -0.030686,
		0.146873, -0.365286, 0.919236,
		0.269563, -0.879359, -0.392509,
		25.275900, 31.032232, 23.644119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.809542, 31.974579, 23.772923>,  <25.087204, 31.647783, 23.918875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.809542, 31.974579, 23.772923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582289, 32.092316, 24.080322>,  <25.445938, 32.162956, 24.264763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582289, 32.092316, 24.080322>,  <25.809542, 31.974579, 23.772923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.582289, 32.092316, 24.080322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795328, -0.043482, 0.604618,
		0.211381, 0.954710, -0.209395,
		-0.568130, 0.294342, 0.768499,
		25.411850, 32.180618, 24.310871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326117, 32.239292, 24.077030>,  <25.809542, 31.974579, 23.772923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326117, 32.239292, 24.077030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023159, 32.229752, 24.338039>,  <25.841385, 32.224026, 24.494644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023159, 32.229752, 24.338039>,  <26.326117, 32.239292, 24.077030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023159, 32.229752, 24.338039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649927, -0.123716, 0.749860,
		0.062842, 0.992031, 0.109204,
		-0.757394, -0.023852, 0.652522,
		25.795940, 32.222595, 24.533796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.514622, 32.666584, 24.628836>,  <26.326117, 32.239292, 24.077030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.514622, 32.666584, 24.628836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.228672, 32.420238, 24.761295>,  <26.057102, 32.272430, 24.840771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.228672, 32.420238, 24.761295>,  <26.514622, 32.666584, 24.628836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228672, 32.420238, 24.761295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513537, -0.140983, 0.846406,
		-0.474587, 0.775133, 0.417055,
		-0.714876, -0.615867, 0.331151,
		26.014210, 32.235477, 24.860641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530832, 32.727646, 25.369040>,  <26.514622, 32.666584, 24.628836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530832, 32.727646, 25.369040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.336725, 32.379459, 25.336063>,  <26.220261, 32.170547, 25.316278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.336725, 32.379459, 25.336063>,  <26.530832, 32.727646, 25.369040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336725, 32.379459, 25.336063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465832, -0.337172, 0.818117,
		-0.739943, 0.358604, 0.569112,
		-0.485268, -0.870470, -0.082439,
		26.191145, 32.118317, 25.311331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611095, 32.508904, 26.016369>,  <26.530832, 32.727646, 25.369040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611095, 32.508904, 26.016369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497244, 32.183289, 25.813850>,  <26.428932, 31.987921, 25.692339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497244, 32.183289, 25.813850>,  <26.611095, 32.508904, 26.016369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497244, 32.183289, 25.813850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202623, -0.567295, 0.798198,
		-0.936980, 0.124602, 0.326410,
		-0.284628, -0.814034, -0.506296,
		26.411856, 31.939079, 25.661961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226265, 32.143238, 26.416113>,  <26.611095, 32.508904, 26.016369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226265, 32.143238, 26.416113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339186, 31.862286, 26.154743>,  <26.406939, 31.693714, 25.997921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339186, 31.862286, 26.154743>,  <26.226265, 32.143238, 26.416113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339186, 31.862286, 26.154743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205261, -0.621132, 0.756349,
		-0.937110, -0.347640, -0.031173,
		0.282300, -0.702383, -0.653425,
		26.423876, 31.651571, 25.958715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.992886, 31.556036, 26.664928>,  <26.226265, 32.143238, 26.416113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.992886, 31.556036, 26.664928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281685, 31.465130, 26.403526>,  <26.454964, 31.410585, 26.246685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281685, 31.465130, 26.403526>,  <25.992886, 31.556036, 26.664928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.281685, 31.465130, 26.403526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430325, -0.592109, 0.681342,
		-0.541791, -0.773148, -0.329704,
		0.722000, -0.227265, -0.653504,
		26.498283, 31.396950, 26.207476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098864, 30.950890, 26.834360>,  <25.992886, 31.556036, 26.664928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098864, 30.950890, 26.834360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426970, 31.027843, 26.618896>,  <26.623833, 31.074017, 26.489618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426970, 31.027843, 26.618896>,  <26.098864, 30.950890, 26.834360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426970, 31.027843, 26.618896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540174, -0.570233, 0.618908,
		-0.188093, -0.798638, -0.571662,
		0.820264, 0.192385, -0.538661,
		26.673048, 31.085560, 26.457298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431389, 30.333134, 26.745874>,  <26.098864, 30.950890, 26.834360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431389, 30.333134, 26.745874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712305, 30.616524, 26.718006>,  <26.880854, 30.786558, 26.701286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712305, 30.616524, 26.718006>,  <26.431389, 30.333134, 26.745874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712305, 30.616524, 26.718006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595246, -0.530718, 0.603341,
		0.390477, -0.465190, -0.794435,
		0.702289, 0.708475, -0.069670,
		26.922993, 30.829065, 26.697105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035065, 29.959976, 26.690277>,  <26.431389, 30.333134, 26.745874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035065, 29.959976, 26.690277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148359, 30.333408, 26.778103>,  <27.216335, 30.557467, 26.830799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148359, 30.333408, 26.778103>,  <27.035065, 29.959976, 26.690277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148359, 30.333408, 26.778103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678740, -0.356873, 0.641836,
		0.677562, -0.032761, -0.734736,
		0.283235, 0.933578, 0.219567,
		27.233330, 30.613482, 26.843973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799801, 29.901171, 26.745012>,  <27.035065, 29.959976, 26.690277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799801, 29.901171, 26.745012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696165, 30.229374, 26.948833>,  <27.633984, 30.426296, 27.071125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696165, 30.229374, 26.948833>,  <27.799801, 29.901171, 26.745012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696165, 30.229374, 26.948833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692187, -0.210200, 0.690430,
		0.673609, 0.531588, -0.513483,
		-0.259090, 0.820506, 0.509551,
		27.618439, 30.475525, 27.101698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480930, 30.193348, 27.000212>,  <27.799801, 29.901171, 26.745012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480930, 30.193348, 27.000212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194046, 30.365002, 27.219830>,  <28.021915, 30.467995, 27.351601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194046, 30.365002, 27.219830>,  <28.480930, 30.193348, 27.000212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194046, 30.365002, 27.219830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532893, -0.169943, 0.828942,
		0.449035, 0.887109, -0.106798,
		-0.717212, 0.429135, 0.549044,
		27.978882, 30.493742, 27.384542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835953, 30.404165, 27.555332>,  <28.480930, 30.193348, 27.000212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835953, 30.404165, 27.555332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456919, 30.387848, 27.682087>,  <28.229498, 30.378057, 27.758139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456919, 30.387848, 27.682087>,  <28.835953, 30.404165, 27.555332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.456919, 30.387848, 27.682087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312257, -0.328243, 0.891489,
		0.067647, 0.943712, 0.323777,
		-0.947586, -0.040796, 0.316885,
		28.172644, 30.375608, 27.777153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759945, 30.747547, 28.258978>,  <28.835953, 30.404165, 27.555332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759945, 30.747547, 28.258978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440960, 30.507862, 28.230694>,  <28.249569, 30.364052, 28.213722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440960, 30.507862, 28.230694>,  <28.759945, 30.747547, 28.258978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440960, 30.507862, 28.230694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221336, -0.399545, 0.889592,
		-0.561307, 0.693764, 0.451249,
		-0.797462, -0.599212, -0.070712,
		28.201721, 30.328098, 28.209480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054836, 31.419176, 28.629946>,  <28.759945, 30.747547, 28.258978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054836, 31.419176, 28.629946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401560, 31.504620, 28.810173>,  <29.609594, 31.555885, 28.918310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401560, 31.504620, 28.810173>,  <29.054836, 31.419176, 28.629946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401560, 31.504620, 28.810173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355388, 0.369183, -0.858722,
		-0.349772, 0.904476, 0.244098,
		0.866809, 0.213607, 0.450570,
		29.661602, 31.568703, 28.945345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106316, 32.179909, 28.452625>,  <29.054836, 31.419176, 28.629946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106316, 32.179909, 28.452625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460260, 32.010906, 28.531113>,  <29.672628, 31.909504, 28.578205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460260, 32.010906, 28.531113>,  <29.106316, 32.179909, 28.452625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460260, 32.010906, 28.531113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376856, 0.401612, -0.834678,
		0.273856, 0.812522, 0.514597,
		0.884863, -0.422511, 0.196220,
		29.725719, 31.884153, 28.589979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580809, 32.684536, 28.340754>,  <29.106316, 32.179909, 28.452625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580809, 32.684536, 28.340754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816635, 32.361862, 28.324387>,  <29.958130, 32.168259, 28.314568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816635, 32.361862, 28.324387>,  <29.580809, 32.684536, 28.340754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816635, 32.361862, 28.324387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492504, 0.399172, -0.773371,
		0.640199, 0.435800, 0.632632,
		0.589564, -0.806685, -0.040916,
		29.993504, 32.119858, 28.312111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229210, 32.945950, 28.111034>,  <29.580809, 32.684536, 28.340754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229210, 32.945950, 28.111034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323521, 32.562683, 28.046131>,  <30.380108, 32.332722, 28.007189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323521, 32.562683, 28.046131>,  <30.229210, 32.945950, 28.111034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323521, 32.562683, 28.046131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656761, 0.280169, -0.700122,
		0.716292, 0.058508, 0.695344,
		0.235776, -0.958166, -0.162257,
		30.394253, 32.275234, 27.997454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936344, 32.845181, 27.893309>,  <30.229210, 32.945950, 28.111034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936344, 32.845181, 27.893309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772715, 32.514980, 27.737770>,  <30.674536, 32.316860, 27.644447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772715, 32.514980, 27.737770>,  <30.936344, 32.845181, 27.893309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772715, 32.514980, 27.737770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513228, 0.144195, -0.846052,
		0.754489, -0.545665, 0.364685,
		-0.409076, -0.825504, -0.388844,
		30.649992, 32.267330, 27.621117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548738, 32.552654, 27.639034>,  <30.936344, 32.845181, 27.893309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548738, 32.552654, 27.639034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236551, 32.393982, 27.445744>,  <31.049238, 32.298779, 27.329769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236551, 32.393982, 27.445744>,  <31.548738, 32.552654, 27.639034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236551, 32.393982, 27.445744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422294, 0.235457, -0.875345,
		0.461016, -0.887243, -0.016249,
		-0.780469, -0.396686, -0.483227,
		31.002411, 32.274975, 27.300776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790123, 32.130230, 27.172846>,  <31.548738, 32.552654, 27.639034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790123, 32.130230, 27.172846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420376, 32.214245, 27.045452>,  <31.198528, 32.264656, 26.969017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420376, 32.214245, 27.045452>,  <31.790123, 32.130230, 27.172846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420376, 32.214245, 27.045452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345024, 0.103993, -0.932815,
		-0.162808, -0.972146, -0.168596,
		-0.924366, 0.210040, -0.318483,
		31.143066, 32.277256, 26.949907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609322, 31.673628, 26.575562>,  <31.790123, 32.130230, 27.172846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609322, 31.673628, 26.575562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387047, 32.005314, 26.551502>,  <31.253683, 32.204327, 26.537067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387047, 32.005314, 26.551502>,  <31.609322, 31.673628, 26.575562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387047, 32.005314, 26.551502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116508, 0.006036, -0.993171,
		-0.823188, -0.558899, -0.099964,
		-0.555686, 0.829214, -0.060148,
		31.220341, 32.254078, 26.533459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290821, 31.691744, 25.877977>,  <31.609322, 31.673628, 26.575562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290821, 31.691744, 25.877977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158346, 32.057270, 25.972008>,  <31.078861, 32.276585, 26.028425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158346, 32.057270, 25.972008>,  <31.290821, 31.691744, 25.877977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158346, 32.057270, 25.972008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054664, 0.267297, -0.962062,
		-0.941980, -0.305773, -0.138478,
		-0.331187, 0.913814, 0.235074,
		31.058990, 32.331413, 26.042530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735071, 31.823080, 25.411777>,  <31.290821, 31.691744, 25.877977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735071, 31.823080, 25.411777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890898, 32.164833, 25.549339>,  <30.984394, 32.369884, 25.631876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890898, 32.164833, 25.549339>,  <30.735071, 31.823080, 25.411777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890898, 32.164833, 25.549339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134237, 0.316741, -0.938965,
		-0.911162, 0.411955, 0.008703,
		0.389569, 0.854381, 0.343902,
		31.007769, 32.421146, 25.652510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474451, 32.292377, 24.944006>,  <30.735071, 31.823080, 25.411777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474451, 32.292377, 24.944006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789389, 32.458427, 25.126328>,  <30.978352, 32.558060, 25.235720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789389, 32.458427, 25.126328>,  <30.474451, 32.292377, 24.944006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789389, 32.458427, 25.126328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261170, 0.445119, -0.856539,
		-0.558460, 0.793434, 0.242043,
		0.787345, 0.415129, 0.455802,
		31.025593, 32.582966, 25.263069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414816, 32.975243, 24.843390>,  <30.474451, 32.292377, 24.944006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414816, 32.975243, 24.843390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803616, 32.886623, 24.874710>,  <31.036896, 32.833450, 24.893501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803616, 32.886623, 24.874710>,  <30.414816, 32.975243, 24.843390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803616, 32.886623, 24.874710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178110, 0.477299, -0.860501,
		0.153273, 0.850353, 0.503395,
		0.972000, -0.221552, 0.078300,
		31.095215, 32.820156, 24.898199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.289415, 30.727489, 32.266762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.635771, 30.529133, 32.240433>,  <28.843584, 30.410120, 32.224636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.635771, 30.529133, 32.240433>,  <28.289415, 30.727489, 32.266762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635771, 30.529133, 32.240433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360010, 0.709103, -0.606272,
		0.347322, 0.501265, 0.792528,
		0.865887, -0.495890, -0.065827,
		28.895536, 30.380365, 32.220684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743946, 31.250881, 32.241283>,  <28.289415, 30.727489, 32.266762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743946, 31.250881, 32.241283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.961370, 30.940578, 32.113068>,  <29.091825, 30.754396, 32.036137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.961370, 30.940578, 32.113068>,  <28.743946, 31.250881, 32.241283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961370, 30.940578, 32.113068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504408, 0.607126, -0.613980,
		0.670906, 0.172054, 0.721307,
		0.543561, -0.775755, -0.320539,
		29.124439, 30.707851, 32.016907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345675, 31.499664, 32.186481>,  <28.743946, 31.250881, 32.241283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345675, 31.499664, 32.186481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.367340, 31.174923, 31.953945>,  <29.380341, 30.980078, 31.814423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.367340, 31.174923, 31.953945>,  <29.345675, 31.499664, 32.186481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367340, 31.174923, 31.953945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451320, 0.539242, -0.711005,
		0.890717, -0.223861, 0.395613,
		0.054165, -0.811852, -0.581345,
		29.383589, 30.931368, 31.779541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934650, 31.607817, 31.754074>,  <29.345675, 31.499664, 32.186481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934650, 31.607817, 31.754074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.765314, 31.317402, 31.537315>,  <29.663712, 31.143154, 31.407259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.765314, 31.317402, 31.537315>,  <29.934650, 31.607817, 31.754074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765314, 31.317402, 31.537315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324210, 0.437123, -0.838935,
		0.845973, -0.530844, 0.050336,
		-0.423341, -0.726036, -0.541899,
		29.638311, 31.099590, 31.374746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410166, 31.490911, 31.158026>,  <29.934650, 31.607817, 31.754074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410166, 31.490911, 31.158026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.058577, 31.328278, 31.058350>,  <29.847624, 31.230698, 30.998543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.058577, 31.328278, 31.058350>,  <30.410166, 31.490911, 31.158026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058577, 31.328278, 31.058350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166598, 0.227818, -0.959346,
		0.446825, -0.884753, -0.132509,
		-0.878972, -0.406584, -0.249192,
		29.794886, 31.206303, 30.983591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521120, 31.058691, 30.574533>,  <30.410166, 31.490911, 31.158026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521120, 31.058691, 30.574533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.131008, 31.146267, 30.562580>,  <29.896940, 31.198812, 30.555408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.131008, 31.146267, 30.562580>,  <30.521120, 31.058691, 30.574533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131008, 31.146267, 30.562580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062456, 0.143397, -0.987693,
		-0.211959, -0.965144, -0.153526,
		-0.975281, 0.218939, -0.029885,
		29.838425, 31.211948, 30.553616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262882, 30.603523, 30.034607>,  <30.521120, 31.058691, 30.574533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262882, 30.603523, 30.034607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.048018, 30.938198, 30.077343>,  <29.919100, 31.139004, 30.102985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.048018, 30.938198, 30.077343>,  <30.262882, 30.603523, 30.034607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048018, 30.938198, 30.077343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159545, 0.225165, -0.961169,
		-0.828254, -0.499256, -0.254438,
		-0.537160, 0.836687, 0.106840,
		29.886869, 31.189203, 30.109394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789354, 30.553770, 29.472984>,  <30.262882, 30.603523, 30.034607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789354, 30.553770, 29.472984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.769194, 30.932426, 29.600315>,  <29.757097, 31.159620, 29.676714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.769194, 30.932426, 29.600315>,  <29.789354, 30.553770, 29.472984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769194, 30.932426, 29.600315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013506, 0.319350, -0.947541,
		-0.998638, -0.043457, -0.028881,
		-0.050400, 0.946640, 0.318328,
		29.754074, 31.216419, 29.695814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136475, 30.882854, 29.137972>,  <29.789354, 30.553770, 29.472984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136475, 30.882854, 29.137972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.397461, 31.168167, 29.240356>,  <29.554052, 31.339354, 29.301788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.397461, 31.168167, 29.240356>,  <29.136475, 30.882854, 29.137972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397461, 31.168167, 29.240356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001665, 0.336414, -0.941713,
		-0.757815, 0.614863, 0.218312,
		0.652467, 0.713281, 0.255963,
		29.593201, 31.382151, 29.317146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420862, 30.786572, 29.055656>,  <29.136475, 30.882854, 29.137972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420862, 30.786572, 29.055656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.269638, 30.474541, 28.856239>,  <28.178904, 30.287321, 28.736589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.269638, 30.474541, 28.856239>,  <28.420862, 30.786572, 29.055656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269638, 30.474541, 28.856239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136456, -0.579586, 0.803405,
		-0.915668, 0.235708, 0.325566,
		-0.378063, -0.780078, -0.498545,
		28.156219, 30.240517, 28.706676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937645, 30.462898, 29.514647>,  <28.420862, 30.786572, 29.055656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937645, 30.462898, 29.514647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.986828, 30.169811, 29.246914>,  <28.016338, 29.993959, 29.086275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.986828, 30.169811, 29.246914>,  <27.937645, 30.462898, 29.514647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986828, 30.169811, 29.246914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113788, -0.659592, 0.742961,
		-0.985867, -0.167515, 0.002273,
		0.122957, -0.732719, -0.669331,
		28.023716, 29.949995, 29.046114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388941, 30.011599, 29.600676>,  <27.937645, 30.462898, 29.514647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388941, 30.011599, 29.600676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.684402, 29.805138, 29.427250>,  <27.861679, 29.681261, 29.323195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.684402, 29.805138, 29.427250>,  <27.388941, 30.011599, 29.600676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.684402, 29.805138, 29.427250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113752, -0.729408, 0.674555,
		-0.664419, -0.448942, -0.597493,
		0.738652, -0.516153, -0.433565,
		27.905998, 29.650291, 29.297180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215345, 29.283550, 29.612715>,  <27.388941, 30.011599, 29.600676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215345, 29.283550, 29.612715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.599388, 29.231686, 29.513611>,  <27.829813, 29.200567, 29.454149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.599388, 29.231686, 29.513611>,  <27.215345, 29.283550, 29.612715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599388, 29.231686, 29.513611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023797, -0.844901, 0.534393,
		-0.278622, -0.518970, -0.808109,
		0.960106, -0.129663, -0.247758,
		27.887421, 29.192787, 29.439283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220921, 28.612762, 29.319595>,  <27.215345, 29.283550, 29.612715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220921, 28.612762, 29.319595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.579922, 28.706490, 29.469040>,  <27.795322, 28.762726, 29.558706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.579922, 28.706490, 29.469040>,  <27.220921, 28.612762, 29.319595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579922, 28.706490, 29.469040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045155, -0.891543, 0.450679,
		0.438692, -0.387615, -0.810743,
		0.897502, 0.234319, 0.373610,
		27.849173, 28.776785, 29.581123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657928, 28.020332, 29.180187>,  <27.220921, 28.612762, 29.319595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657928, 28.020332, 29.180187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.826965, 28.229774, 29.476093>,  <27.928387, 28.355440, 29.653637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.826965, 28.229774, 29.476093>,  <27.657928, 28.020332, 29.180187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826965, 28.229774, 29.476093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092072, -0.836811, 0.539695,
		0.901632, -0.159958, -0.401838,
		0.422591, 0.523604, 0.739767,
		27.953743, 28.386856, 29.698023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172560, 27.557470, 29.414228>,  <27.657928, 28.020332, 29.180187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172560, 27.557470, 29.414228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.115751, 27.816086, 29.714046>,  <28.081667, 27.971254, 29.893938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.115751, 27.816086, 29.714046>,  <28.172560, 27.557470, 29.414228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115751, 27.816086, 29.714046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097634, -0.762677, 0.639368,
		0.985037, 0.017622, 0.171440,
		-0.142020, 0.646539, 0.749545,
		28.073145, 28.010048, 29.938910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537674, 27.286293, 29.874622>,  <28.172560, 27.557470, 29.414228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537674, 27.286293, 29.874622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.290344, 27.526150, 30.077839>,  <28.141947, 27.670063, 30.199770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.290344, 27.526150, 30.077839>,  <28.537674, 27.286293, 29.874622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290344, 27.526150, 30.077839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232367, -0.757010, 0.610689,
		0.750788, 0.259550, 0.607413,
		-0.618322, 0.599641, 0.508043,
		28.104847, 27.706041, 30.230251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579206, 27.108160, 30.544586>,  <28.537674, 27.286293, 29.874622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579206, 27.108160, 30.544586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.238705, 27.313759, 30.586864>,  <28.034403, 27.437119, 30.612232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.238705, 27.313759, 30.586864>,  <28.579206, 27.108160, 30.544586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238705, 27.313759, 30.586864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336113, -0.688747, 0.642383,
		0.402982, 0.511305, 0.759060,
		-0.851254, 0.513999, 0.105696,
		27.983328, 27.467958, 30.618574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543270, 27.072533, 31.226204>,  <28.579206, 27.108160, 30.544586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543270, 27.072533, 31.226204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.194162, 27.130310, 31.039696>,  <27.984697, 27.164976, 30.927790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.194162, 27.130310, 31.039696>,  <28.543270, 27.072533, 31.226204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194162, 27.130310, 31.039696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446978, -0.620374, 0.644474,
		-0.196174, 0.770891, 0.606006,
		-0.872769, 0.144442, -0.466272,
		27.932331, 27.173643, 30.899815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006609, 27.169266, 31.760117>,  <28.543270, 27.072533, 31.226204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006609, 27.169266, 31.760117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.780172, 27.081230, 31.442348>,  <27.644310, 27.028410, 31.251688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.780172, 27.081230, 31.442348>,  <28.006609, 27.169266, 31.760117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780172, 27.081230, 31.442348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509551, -0.664118, 0.547088,
		-0.647995, 0.714499, 0.263806,
		-0.566092, -0.220088, -0.794419,
		27.610344, 27.015203, 31.204023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330826, 27.177431, 31.961010>,  <28.006609, 27.169266, 31.760117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330826, 27.177431, 31.961010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.307257, 26.964001, 31.623531>,  <27.293116, 26.835941, 31.421043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.307257, 26.964001, 31.623531>,  <27.330826, 27.177431, 31.961010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307257, 26.964001, 31.623531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516985, -0.706686, 0.483033,
		-0.853964, 0.464640, -0.234212,
		-0.058922, -0.533577, -0.843697,
		27.289579, 26.803928, 31.370422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691330, 26.998394, 31.917480>,  <27.330826, 27.177431, 31.961010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691330, 26.998394, 31.917480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.873978, 26.748486, 31.664131>,  <26.983566, 26.598541, 31.512121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.873978, 26.748486, 31.664131>,  <26.691330, 26.998394, 31.917480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873978, 26.748486, 31.664131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400580, -0.780059, 0.480670,
		-0.794376, 0.034233, -0.606460,
		0.456620, -0.624769, -0.633373,
		27.010963, 26.561054, 31.474119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246599, 26.444309, 31.769711>,  <26.691330, 26.998394, 31.917480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246599, 26.444309, 31.769711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.623194, 26.327053, 31.703171>,  <26.849152, 26.256701, 31.663246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.623194, 26.327053, 31.703171>,  <26.246599, 26.444309, 31.769711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623194, 26.327053, 31.703171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153116, -0.811659, 0.563706,
		-0.300262, -0.505252, -0.809051,
		0.941487, -0.293138, -0.166349,
		26.905640, 26.239111, 31.653267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.541964, 25.676250, 31.295486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.249849, 25.903828, 31.446739>,  <31.074581, 26.040375, 31.537491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.249849, 25.903828, 31.446739>,  <31.541964, 25.676250, 31.295486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249849, 25.903828, 31.446739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051249, 0.506334, -0.860813,
		-0.681218, -0.648018, -0.340610,
		-0.730285, 0.568945, 0.378134,
		31.030764, 26.074511, 31.560179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013340, 25.551552, 30.840658>,  <31.541964, 25.676250, 31.295486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013340, 25.551552, 30.840658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.994534, 25.906151, 31.024792>,  <30.983250, 26.118910, 31.135273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.994534, 25.906151, 31.024792>,  <31.013340, 25.551552, 30.840658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994534, 25.906151, 31.024792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043820, 0.458571, -0.887577,
		-0.997933, -0.061902, 0.017287,
		-0.047015, 0.886499, 0.460335,
		30.980429, 26.172100, 31.162891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569775, 25.974617, 30.352047>,  <31.013340, 25.551552, 30.840658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569775, 25.974617, 30.352047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.709843, 26.244827, 30.611599>,  <30.793884, 26.406954, 30.767330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.709843, 26.244827, 30.611599>,  <30.569775, 25.974617, 30.352047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709843, 26.244827, 30.611599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014133, 0.696471, -0.717446,
		-0.936579, 0.242058, 0.253431,
		0.350170, 0.675527, 0.648879,
		30.814894, 26.447485, 30.806263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163670, 26.546715, 30.219746>,  <30.569775, 25.974617, 30.352047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163670, 26.546715, 30.219746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.509026, 26.650505, 30.392826>,  <30.716240, 26.712778, 30.496674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.509026, 26.650505, 30.392826>,  <30.163670, 26.546715, 30.219746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509026, 26.650505, 30.392826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080103, 0.776247, -0.625319,
		-0.498137, 0.574555, 0.649419,
		0.863390, 0.259474, 0.432701,
		30.768044, 26.728348, 30.522636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082253, 27.224331, 30.359917>,  <30.163670, 26.546715, 30.219746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082253, 27.224331, 30.359917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.475098, 27.149677, 30.369896>,  <30.710804, 27.104885, 30.375883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.475098, 27.149677, 30.369896>,  <30.082253, 27.224331, 30.359917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475098, 27.149677, 30.369896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158514, 0.747983, -0.644511,
		0.101625, 0.636937, 0.764188,
		0.982113, -0.186633, 0.024949,
		30.769732, 27.093687, 30.377380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252329, 27.811584, 30.289068>,  <30.082253, 27.224331, 30.359917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252329, 27.811584, 30.289068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.577808, 27.604492, 30.183353>,  <30.773096, 27.480236, 30.119925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.577808, 27.604492, 30.183353>,  <30.252329, 27.811584, 30.289068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577808, 27.604492, 30.183353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268161, 0.737724, -0.619559,
		0.515736, 0.433263, 0.739121,
		0.813699, -0.517732, -0.264287,
		30.821918, 27.449173, 30.104067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868696, 28.292280, 30.230204>,  <30.252329, 27.811584, 30.289068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868696, 28.292280, 30.230204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.998814, 27.968903, 30.034000>,  <31.076885, 27.774876, 29.916279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.998814, 27.968903, 30.034000>,  <30.868696, 28.292280, 30.230204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998814, 27.968903, 30.034000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407760, 0.587940, -0.698612,
		0.853179, 0.027246, 0.520906,
		0.325296, -0.808446, -0.490508,
		31.096403, 27.726368, 29.886848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608580, 28.478323, 29.926363>,  <30.868696, 28.292280, 30.230204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608580, 28.478323, 29.926363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.475124, 28.164764, 29.716908>,  <31.395052, 27.976629, 29.591234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.475124, 28.164764, 29.716908>,  <31.608580, 28.478323, 29.926363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475124, 28.164764, 29.716908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442671, 0.360138, -0.821184,
		0.832303, -0.505776, 0.226852,
		-0.333637, -0.783895, -0.523637,
		31.375032, 27.929596, 29.559816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077274, 28.480421, 29.430370>,  <31.608580, 28.478323, 29.926363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077274, 28.480421, 29.430370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.758623, 28.277664, 29.298645>,  <31.567432, 28.156010, 29.219610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.758623, 28.277664, 29.298645>,  <32.077274, 28.480421, 29.430370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758623, 28.277664, 29.298645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157448, 0.351983, -0.922669,
		0.583609, -0.786871, -0.200589,
		-0.796625, -0.506895, -0.329312,
		31.519636, 28.125595, 29.199852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269272, 28.062183, 28.961935>,  <32.077274, 28.480421, 29.430370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269272, 28.062183, 28.961935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.886343, 28.081264, 28.847916>,  <31.656586, 28.092712, 28.779505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.886343, 28.081264, 28.847916>,  <32.269272, 28.062183, 28.961935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886343, 28.081264, 28.847916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281191, 0.381629, -0.880506,
		0.066780, -0.923084, -0.378757,
		-0.957326, 0.047703, -0.285048,
		31.599146, 28.095575, 28.762402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202911, 27.783646, 28.220144>,  <32.269272, 28.062183, 28.961935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202911, 27.783646, 28.220144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.854334, 27.974674, 28.264881>,  <31.645187, 28.089293, 28.291723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.854334, 27.974674, 28.264881>,  <32.202911, 27.783646, 28.220144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854334, 27.974674, 28.264881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027038, 0.274448, -0.961222,
		-0.489748, -0.834627, -0.252079,
		-0.871445, 0.477573, 0.111843,
		31.592901, 28.117947, 28.298433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599579, 27.574041, 27.776634>,  <32.202911, 27.783646, 28.220144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599579, 27.574041, 27.776634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518620, 27.954876, 27.868343>,  <31.470045, 28.183376, 27.923368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518620, 27.954876, 27.868343>,  <31.599579, 27.574041, 27.776634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518620, 27.954876, 27.868343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108698, 0.210831, -0.971460,
		-0.973252, -0.221542, 0.060818,
		-0.202397, 0.952087, 0.229273,
		31.457901, 28.240501, 27.937126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192720, 27.698721, 27.222034>,  <31.599579, 27.574041, 27.776634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192720, 27.698721, 27.222034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.295212, 28.048908, 27.385937>,  <31.356707, 28.259020, 27.484278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.295212, 28.048908, 27.385937>,  <31.192720, 27.698721, 27.222034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295212, 28.048908, 27.385937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027895, 0.417036, -0.908462,
		-0.966213, 0.244206, 0.082436,
		0.256230, 0.875468, 0.409757,
		31.372082, 28.311548, 27.508863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787539, 28.149584, 26.868078>,  <31.192720, 27.698721, 27.222034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787539, 28.149584, 26.868078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.084820, 28.361568, 27.031437>,  <31.263189, 28.488760, 27.129452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.084820, 28.361568, 27.031437>,  <30.787539, 28.149584, 26.868078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084820, 28.361568, 27.031437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066779, 0.548595, -0.833417,
		-0.665725, 0.646670, 0.372327,
		0.743203, 0.529963, 0.408398,
		31.307781, 28.520557, 27.153955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016590, 28.104231, 26.811211>,  <30.787539, 28.149584, 26.868078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016590, 28.104231, 26.811211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.984150, 27.906063, 26.465267>,  <29.964685, 27.787163, 26.257702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.984150, 27.906063, 26.465267>,  <30.016590, 28.104231, 26.811211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984150, 27.906063, 26.465267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160306, -0.849937, 0.501906,
		-0.983730, 0.179346, -0.010490,
		-0.081098, -0.495421, -0.864859,
		29.959820, 27.757437, 26.205809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542320, 27.665323, 26.951674>,  <30.016590, 28.104231, 26.811211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542320, 27.665323, 26.951674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.740517, 27.491581, 26.650787>,  <29.859434, 27.387337, 26.470257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.740517, 27.491581, 26.650787>,  <29.542320, 27.665323, 26.951674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740517, 27.491581, 26.650787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205091, -0.900011, 0.384601,
		-0.844053, -0.036294, -0.535030,
		0.495492, -0.434354, -0.752213,
		29.889164, 27.361275, 26.425123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156086, 27.153557, 26.881187>,  <29.542320, 27.665323, 26.951674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156086, 27.153557, 26.881187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.473774, 27.040646, 26.665955>,  <29.664387, 26.972898, 26.536814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.473774, 27.040646, 26.665955>,  <29.156086, 27.153557, 26.881187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473774, 27.040646, 26.665955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194535, -0.957057, 0.214937,
		-0.575649, -0.066031, -0.815027,
		0.794219, -0.282280, -0.538083,
		29.712040, 26.955961, 26.504530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966726, 26.641485, 26.306442>,  <29.156086, 27.153557, 26.881187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966726, 26.641485, 26.306442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.349789, 26.601086, 26.414288>,  <29.579626, 26.576845, 26.478994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.349789, 26.601086, 26.414288>,  <28.966726, 26.641485, 26.306442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349789, 26.601086, 26.414288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202636, -0.901686, 0.381971,
		0.204527, -0.420431, -0.883972,
		0.957657, -0.101001, 0.269613,
		29.637085, 26.570786, 26.495173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216036, 25.934019, 26.184597>,  <28.966726, 26.641485, 26.306442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216036, 25.934019, 26.184597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.491348, 26.063175, 26.444447>,  <29.656536, 26.140669, 26.600357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.491348, 26.063175, 26.444447>,  <29.216036, 25.934019, 26.184597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491348, 26.063175, 26.444447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015201, -0.888868, 0.457910,
		0.725287, -0.325045, -0.606881,
		0.688279, 0.322891, 0.649626,
		29.697832, 26.160042, 26.639334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703802, 25.360992, 26.368820>,  <29.216036, 25.934019, 26.184597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703802, 25.360992, 26.368820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.754993, 25.620819, 26.668602>,  <29.785707, 25.776716, 26.848471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.754993, 25.620819, 26.668602>,  <29.703802, 25.360992, 26.368820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754993, 25.620819, 26.668602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092466, -0.760193, 0.643084,
		0.987457, -0.013002, -0.157351,
		0.127978, 0.649568, 0.749456,
		29.793386, 25.815689, 26.893438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271240, 25.196798, 26.782858>,  <29.703802, 25.360992, 26.368820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271240, 25.196798, 26.782858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.038328, 25.407497, 27.030563>,  <29.898581, 25.533916, 27.179188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.038328, 25.407497, 27.030563>,  <30.271240, 25.196798, 26.782858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038328, 25.407497, 27.030563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089848, -0.715355, 0.692961,
		0.808009, 0.459137, 0.369209,
		-0.582279, 0.526745, 0.619265,
		29.863644, 25.565521, 27.216343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401045, 24.949211, 27.350050>,  <30.271240, 25.196798, 26.782858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401045, 24.949211, 27.350050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.082983, 25.140163, 27.499630>,  <29.892147, 25.254734, 27.589378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.082983, 25.140163, 27.499630>,  <30.401045, 24.949211, 27.350050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082983, 25.140163, 27.499630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059139, -0.674772, 0.735652,
		0.603519, 0.562841, 0.564779,
		-0.795153, 0.477381, 0.373952,
		29.844437, 25.283377, 27.611816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482811, 25.001913, 28.046721>,  <30.401045, 24.949211, 27.350050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482811, 25.001913, 28.046721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.086840, 25.034119, 28.000145>,  <29.849257, 25.053442, 27.972200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.086840, 25.034119, 28.000145>,  <30.482811, 25.001913, 28.046721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086840, 25.034119, 28.000145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138612, -0.718370, 0.681712,
		-0.028758, 0.690987, 0.722296,
		-0.989929, 0.080514, -0.116438,
		29.789862, 25.058273, 27.965214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320503, 25.072071, 28.761450>,  <30.482811, 25.001913, 28.046721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320503, 25.072071, 28.761450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.979105, 24.981728, 28.573608>,  <29.774265, 24.927521, 28.460903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.979105, 24.981728, 28.573608>,  <30.320503, 25.072071, 28.761450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979105, 24.981728, 28.573608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268202, -0.582257, 0.767492,
		-0.446776, 0.781002, 0.436379,
		-0.853498, -0.225859, -0.469605,
		29.723055, 24.913969, 28.432728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734171, 25.142817, 29.194569>,  <30.320503, 25.072071, 28.761450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734171, 25.142817, 29.194569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.594788, 24.869595, 28.937817>,  <29.511158, 24.705662, 28.783764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.594788, 24.869595, 28.937817>,  <29.734171, 25.142817, 29.194569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594788, 24.869595, 28.937817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397492, -0.512493, 0.761151,
		-0.848869, 0.520372, -0.092927,
		-0.348457, -0.683055, -0.641882,
		29.490250, 24.664679, 28.745253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103432, 25.071749, 29.497416>,  <29.734171, 25.142817, 29.194569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103432, 25.071749, 29.497416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.167860, 24.769791, 29.243111>,  <29.206516, 24.588615, 29.090528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.167860, 24.769791, 29.243111>,  <29.103432, 25.071749, 29.497416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167860, 24.769791, 29.243111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318204, -0.649493, 0.690584,
		-0.934239, 0.091070, -0.344823,
		0.161069, -0.754894, -0.635761,
		29.216181, 24.543322, 29.052383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501434, 24.740211, 29.536264>,  <29.103432, 25.071749, 29.497416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501434, 24.740211, 29.536264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.750174, 24.475765, 29.368347>,  <28.899418, 24.317097, 29.267597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.750174, 24.475765, 29.368347>,  <28.501434, 24.740211, 29.536264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750174, 24.475765, 29.368347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269681, -0.684031, 0.677771,
		-0.735237, -0.308262, -0.603656,
		0.621850, -0.661117, -0.419793,
		28.936729, 24.277430, 29.242409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067556, 24.066998, 29.462811>,  <28.501434, 24.740211, 29.536264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067556, 24.066998, 29.462811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.452023, 23.958809, 29.484730>,  <28.682703, 23.893896, 29.497881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.452023, 23.958809, 29.484730>,  <28.067556, 24.066998, 29.462811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452023, 23.958809, 29.484730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194530, -0.523196, 0.829713,
		-0.195746, -0.808152, -0.555494,
		0.961167, -0.270473, 0.054796,
		28.740372, 23.877666, 29.501169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605841, 23.617096, 29.260576>,  <28.067556, 24.066998, 29.462811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605841, 23.617096, 29.260576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.210884, 23.668831, 29.297089>,  <26.973911, 23.699871, 29.318996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.210884, 23.668831, 29.297089>,  <27.605841, 23.617096, 29.260576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210884, 23.668831, 29.297089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025756, 0.437679, -0.898763,
		-0.156194, -0.889781, -0.428828,
		-0.987390, 0.129337, 0.091280,
		26.914667, 23.707632, 29.324472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378777, 23.509407, 28.546999>,  <27.605841, 23.617096, 29.260576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378777, 23.509407, 28.546999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.062550, 23.668140, 28.733555>,  <26.872812, 23.763380, 28.845490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.062550, 23.668140, 28.733555>,  <27.378777, 23.509407, 28.546999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062550, 23.668140, 28.733555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249444, 0.486878, -0.837094,
		-0.559265, -0.778120, -0.285923,
		-0.790569, 0.396836, 0.466392,
		26.825378, 23.787191, 28.873472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788658, 23.386944, 28.156881>,  <27.378777, 23.509407, 28.546999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788658, 23.386944, 28.156881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.704287, 23.706738, 28.381855>,  <26.653664, 23.898613, 28.516840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.704287, 23.706738, 28.381855>,  <26.788658, 23.386944, 28.156881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704287, 23.706738, 28.381855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260660, 0.508545, -0.820633,
		-0.942107, -0.319699, 0.101127,
		-0.210928, 0.799484, 0.562436,
		26.641008, 23.946583, 28.550587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177485, 23.722982, 27.844311>,  <26.788658, 23.386944, 28.156881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177485, 23.722982, 27.844311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.379673, 23.992428, 28.059994>,  <26.500986, 24.154095, 28.189404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.379673, 23.992428, 28.059994>,  <26.177485, 23.722982, 27.844311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379673, 23.992428, 28.059994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196898, 0.698478, -0.688012,
		-0.840078, 0.241601, 0.485693,
		0.505470, 0.673616, 0.539205,
		26.531315, 24.194513, 28.221756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726116, 24.197346, 27.949526>,  <26.177485, 23.722982, 27.844311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726116, 24.197346, 27.949526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.086864, 24.368507, 27.973274>,  <26.303314, 24.471205, 27.987522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.086864, 24.368507, 27.973274>,  <25.726116, 24.197346, 27.949526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.086864, 24.368507, 27.973274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208708, 0.551902, -0.807369,
		-0.378242, 0.715753, 0.587052,
		0.901873, 0.427903, 0.059369,
		26.357426, 24.496878, 27.991085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.586386, 24.882452, 27.896395>,  <25.726116, 24.197346, 27.949526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.586386, 24.882452, 27.896395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.977259, 24.883587, 27.811440>,  <26.211782, 24.884268, 27.760466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.977259, 24.883587, 27.811440>,  <25.586386, 24.882452, 27.896395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977259, 24.883587, 27.811440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165090, 0.639303, -0.751024,
		0.133650, 0.768950, 0.625183,
		0.977181, 0.002837, -0.212388,
		26.270412, 24.884438, 27.747723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746901, 25.535019, 27.817701>,  <25.586386, 24.882452, 27.896395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.746901, 25.535019, 27.817701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.023121, 25.328373, 27.615215>,  <26.188852, 25.204386, 27.493723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.023121, 25.328373, 27.615215>,  <25.746901, 25.535019, 27.817701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023121, 25.328373, 27.615215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060451, 0.656210, -0.752153,
		0.720755, 0.550000, 0.421915,
		0.690549, -0.516613, -0.506215,
		26.230286, 25.173389, 27.463350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236134, 26.080914, 27.616898>,  <25.746901, 25.535019, 27.817701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236134, 26.080914, 27.616898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.325520, 25.768524, 27.383610>,  <26.379150, 25.581091, 27.243637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.325520, 25.768524, 27.383610>,  <26.236134, 26.080914, 27.616898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325520, 25.768524, 27.383610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039260, 0.605075, -0.795200,
		0.973921, 0.154803, 0.165874,
		0.223466, -0.780974, -0.583218,
		26.392559, 25.534231, 27.208645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790762, 26.290262, 27.176376>,  <26.236134, 26.080914, 27.616898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790762, 26.290262, 27.176376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.644808, 25.986111, 26.961460>,  <26.557236, 25.803619, 26.832510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.644808, 25.986111, 26.961460>,  <26.790762, 26.290262, 27.176376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644808, 25.986111, 26.961460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125888, 0.531488, -0.837659,
		0.922503, -0.373288, -0.098209,
		-0.364885, -0.760379, -0.537292,
		26.535343, 25.757998, 26.800272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121468, 26.354843, 26.501637>,  <26.790762, 26.290262, 27.176376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121468, 26.354843, 26.501637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.816324, 26.098930, 26.464275>,  <26.633238, 25.945381, 26.441858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.816324, 26.098930, 26.464275>,  <27.121468, 26.354843, 26.501637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816324, 26.098930, 26.464275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157222, 0.323676, -0.933014,
		0.627160, -0.697072, -0.347506,
		-0.762858, -0.639785, -0.093402,
		26.587467, 25.906996, 26.436255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304167, 25.945084, 25.919003>,  <27.121468, 26.354843, 26.501637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304167, 25.945084, 25.919003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.915386, 25.990051, 26.001633>,  <26.682117, 26.017031, 26.051210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.915386, 25.990051, 26.001633>,  <27.304167, 25.945084, 25.919003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915386, 25.990051, 26.001633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141168, 0.423656, -0.894756,
		-0.188103, -0.898820, -0.395903,
		-0.971951, 0.112418, 0.206575,
		26.623800, 26.023777, 26.063604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999918, 25.778820, 25.290594>,  <27.304167, 25.945084, 25.919003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999918, 25.778820, 25.290594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.684626, 25.923515, 25.489727>,  <26.495451, 26.010332, 25.609207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.684626, 25.923515, 25.489727>,  <26.999918, 25.778820, 25.290594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684626, 25.923515, 25.489727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248829, 0.552548, -0.795472,
		-0.562829, -0.750891, -0.345525,
		-0.788231, 0.361738, 0.497833,
		26.448156, 26.032036, 25.639076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510777, 25.691545, 24.801468>,  <26.999918, 25.778820, 25.290594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510777, 25.691545, 24.801468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.369644, 25.972992, 25.048183>,  <26.284964, 26.141861, 25.196213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.369644, 25.972992, 25.048183>,  <26.510777, 25.691545, 24.801468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369644, 25.972992, 25.048183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464414, 0.440570, -0.768256,
		-0.812299, -0.557511, 0.171323,
		-0.352832, 0.703619, 0.616791,
		26.263794, 26.184078, 25.233221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710514, 25.910467, 24.520859>,  <26.510777, 25.691545, 24.801468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710514, 25.910467, 24.520859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.853636, 26.211868, 24.741482>,  <25.939508, 26.392708, 24.873856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.853636, 26.211868, 24.741482>,  <25.710514, 25.910467, 24.520859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853636, 26.211868, 24.741482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386902, 0.657199, -0.646835,
		-0.849873, 0.018041, 0.526679,
		0.357802, 0.753501, 0.551556,
		25.960976, 26.437918, 24.906948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.856976, 30.452953, 30.535936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.241405, 30.364655, 30.602390>,  <40.472065, 30.311674, 30.642263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.241405, 30.364655, 30.602390>,  <39.856976, 30.452953, 30.535936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241405, 30.364655, 30.602390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253020, 0.461744, -0.850160,
		0.110959, 0.859105, 0.499626,
		0.961077, -0.220749, 0.166136,
		40.529728, 30.298429, 30.652231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263626, 31.034021, 30.384960>,  <39.856976, 30.452953, 30.535936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263626, 31.034021, 30.384960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.537586, 30.747707, 30.330463>,  <40.701962, 30.575918, 30.297766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.537586, 30.747707, 30.330463>,  <40.263626, 31.034021, 30.384960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537586, 30.747707, 30.330463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202818, 0.366876, -0.907891,
		0.699841, 0.594181, 0.396448,
		0.684899, -0.715787, -0.136244,
		40.743057, 30.532970, 30.289591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859570, 31.333567, 30.146900>,  <40.263626, 31.034021, 30.384960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859570, 31.333567, 30.146900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.889568, 30.949551, 30.039047>,  <40.907570, 30.719141, 29.974335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.889568, 30.949551, 30.039047>,  <40.859570, 31.333567, 30.146900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889568, 30.949551, 30.039047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087450, 0.275685, -0.957261,
		0.993342, 0.048216, 0.104632,
		0.075001, -0.960038, -0.269633,
		40.912067, 30.661539, 29.958157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315357, 31.347313, 29.730934>,  <40.859570, 31.333567, 30.146900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315357, 31.347313, 29.730934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.147305, 30.996819, 29.636532>,  <41.046471, 30.786522, 29.579889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.147305, 30.996819, 29.636532>,  <41.315357, 31.347313, 29.730934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147305, 30.996819, 29.636532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030030, 0.273357, -0.961444,
		0.906964, -0.396850, -0.141161,
		-0.420136, -0.876234, -0.236008,
		41.021263, 30.733948, 29.565729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667564, 31.047846, 29.108513>,  <41.315357, 31.347313, 29.730934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667564, 31.047846, 29.108513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.303307, 30.882908, 29.119053>,  <41.084751, 30.783945, 29.125378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.303307, 30.882908, 29.119053>,  <41.667564, 31.047846, 29.108513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303307, 30.882908, 29.119053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036816, 0.017453, -0.999170,
		0.411542, -0.910861, -0.031074,
		-0.910647, -0.412344, 0.026351,
		41.030113, 30.759205, 29.126959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648201, 30.584133, 28.520205>,  <41.667564, 31.047846, 29.108513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648201, 30.584133, 28.520205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.260090, 30.631348, 28.604702>,  <41.027222, 30.659678, 28.655399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.260090, 30.631348, 28.604702>,  <41.648201, 30.584133, 28.520205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260090, 30.631348, 28.604702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196374, 0.126009, -0.972398,
		-0.141400, -0.984981, -0.099084,
		-0.970280, 0.118040, 0.211243,
		40.969006, 30.666759, 28.668076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291927, 30.139362, 28.080017>,  <41.648201, 30.584133, 28.520205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291927, 30.139362, 28.080017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.021706, 30.414429, 28.186405>,  <40.859573, 30.579468, 28.250238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.021706, 30.414429, 28.186405>,  <41.291927, 30.139362, 28.080017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021706, 30.414429, 28.186405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294605, 0.078928, -0.952354,
		-0.675893, -0.721725, 0.149269,
		-0.675557, 0.687665, 0.265971,
		40.819038, 30.620728, 28.266197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920914, 30.108011, 27.557230>,  <41.291927, 30.139362, 28.080017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920914, 30.108011, 27.557230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.749428, 30.423695, 27.733120>,  <40.646538, 30.613104, 27.838654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.749428, 30.423695, 27.733120>,  <40.920914, 30.108011, 27.557230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749428, 30.423695, 27.733120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476840, 0.215742, -0.852103,
		-0.767352, -0.574986, 0.283834,
		-0.428712, 0.789207, 0.439726,
		40.620815, 30.660456, 27.865038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303665, 30.037781, 27.430967>,  <40.920914, 30.108011, 27.557230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303665, 30.037781, 27.430967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.364841, 30.430073, 27.479588>,  <40.401546, 30.665449, 27.508759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.364841, 30.430073, 27.479588>,  <40.303665, 30.037781, 27.430967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364841, 30.430073, 27.479588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462246, 0.179705, -0.868352,
		-0.873464, 0.076617, 0.480823,
		0.152937, 0.980732, 0.121550,
		40.410721, 30.724293, 27.516052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697273, 30.351305, 27.114592>,  <40.303665, 30.037781, 27.430967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697273, 30.351305, 27.114592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.954620, 30.657360, 27.124775>,  <40.109028, 30.840992, 27.130884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.954620, 30.657360, 27.124775>,  <39.697273, 30.351305, 27.114592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954620, 30.657360, 27.124775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359897, 0.331634, -0.872063,
		-0.675690, 0.551892, 0.488731,
		0.643364, 0.765137, 0.025457,
		40.147629, 30.886902, 27.132412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375946, 30.871048, 26.780216>,  <39.697273, 30.351305, 27.114592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375946, 30.871048, 26.780216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.748524, 31.016205, 26.769436>,  <39.972069, 31.103298, 26.762968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.748524, 31.016205, 26.769436>,  <39.375946, 30.871048, 26.780216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748524, 31.016205, 26.769436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152377, 0.321712, -0.934496,
		-0.330450, 0.874535, 0.354952,
		0.931442, 0.362890, -0.026949,
		40.027958, 31.125072, 26.761351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209000, 31.301582, 26.389437>,  <39.375946, 30.871048, 26.780216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209000, 31.301582, 26.389437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.608952, 31.302013, 26.383148>,  <39.848923, 31.302273, 26.379375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.608952, 31.302013, 26.383148>,  <39.209000, 31.301582, 26.389437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608952, 31.302013, 26.383148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015344, 0.293855, -0.955727,
		0.003589, 0.955850, 0.293835,
		0.999876, 0.001079, -0.015721,
		39.908913, 31.302338, 26.378431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406345, 31.886757, 26.118525>,  <39.209000, 31.301582, 26.389437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406345, 31.886757, 26.118525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.717667, 31.640354, 26.069897>,  <39.904461, 31.492512, 26.040720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.717667, 31.640354, 26.069897>,  <39.406345, 31.886757, 26.118525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717667, 31.640354, 26.069897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028268, 0.227794, -0.973299,
		0.627253, 0.754084, 0.194706,
		0.778302, -0.616009, -0.121568,
		39.951157, 31.455551, 26.033426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858318, 32.313129, 25.705540>,  <39.406345, 31.886757, 26.118525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858318, 32.313129, 25.705540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.974087, 31.933281, 25.657444>,  <40.043549, 31.705372, 25.628586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.974087, 31.933281, 25.657444>,  <39.858318, 32.313129, 25.705540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974087, 31.933281, 25.657444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086859, 0.099043, -0.991285,
		0.953251, 0.297348, -0.053817,
		0.289426, -0.949618, -0.120240,
		40.060913, 31.648396, 25.621372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450562, 32.372662, 25.251007>,  <39.858318, 32.313129, 25.705540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450562, 32.372662, 25.251007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.273468, 32.014000, 25.251884>,  <40.167213, 31.798803, 25.252411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.273468, 32.014000, 25.251884>,  <40.450562, 32.372662, 25.251007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273468, 32.014000, 25.251884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017961, -0.011317, -0.999775,
		0.896474, -0.442594, 0.021116,
		-0.442733, -0.896651, 0.002196,
		40.140648, 31.745005, 25.252542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815151, 32.039101, 24.782671>,  <40.450562, 32.372662, 25.251007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815151, 32.039101, 24.782671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.480549, 31.820915, 24.803555>,  <40.279785, 31.690004, 24.816084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.480549, 31.820915, 24.803555>,  <40.815151, 32.039101, 24.782671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480549, 31.820915, 24.803555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059271, -0.004649, -0.998231,
		0.544740, -0.838122, -0.028441,
		-0.836507, -0.545462, 0.052209,
		40.229595, 31.657276, 24.819218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911243, 31.571167, 24.167677>,  <40.815151, 32.039101, 24.782671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911243, 31.571167, 24.167677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.530697, 31.584965, 24.290131>,  <40.302368, 31.593243, 24.363604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.530697, 31.584965, 24.290131>,  <40.911243, 31.571167, 24.167677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530697, 31.584965, 24.290131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296079, 0.172181, -0.939516,
		-0.085119, -0.984461, -0.153594,
		-0.951363, 0.034495, 0.306134,
		40.245289, 31.595312, 24.381971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616016, 31.201290, 23.625517>,  <40.911243, 31.571167, 24.167677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616016, 31.201290, 23.625517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.332054, 31.406086, 23.818970>,  <40.161678, 31.528963, 23.935041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.332054, 31.406086, 23.818970>,  <40.616016, 31.201290, 23.625517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332054, 31.406086, 23.818970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385674, 0.291978, -0.875217,
		-0.589312, -0.807846, -0.009815,
		-0.709906, 0.511990, 0.483631,
		40.119083, 31.559683, 23.964060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987949, 31.085218, 23.149054>,  <40.616016, 31.201290, 23.625517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987949, 31.085218, 23.149054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.902943, 31.403320, 23.376179>,  <39.851940, 31.594181, 23.512453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.902943, 31.403320, 23.376179>,  <39.987949, 31.085218, 23.149054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902943, 31.403320, 23.376179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266772, 0.511793, -0.816640,
		-0.940038, -0.325022, 0.103390,
		-0.212512, 0.795254, 0.567811,
		39.839188, 31.641897, 23.546522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422699, 31.291409, 23.001358>,  <39.987949, 31.085218, 23.149054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422699, 31.291409, 23.001358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.550892, 31.630306, 23.170815>,  <39.627808, 31.833645, 23.272488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.550892, 31.630306, 23.170815>,  <39.422699, 31.291409, 23.001358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550892, 31.630306, 23.170815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191181, 0.495879, -0.847085,
		-0.927762, 0.190483, 0.320896,
		0.320481, 0.847243, 0.423641,
		39.647038, 31.884480, 23.297907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964458, 31.747780, 22.865776>,  <39.422699, 31.291409, 23.001358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964458, 31.747780, 22.865776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.291672, 31.965794, 22.939274>,  <39.487999, 32.096600, 22.983372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.291672, 31.965794, 22.939274>,  <38.964458, 31.747780, 22.865776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291672, 31.965794, 22.939274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256151, 0.631249, -0.732059,
		-0.514984, 0.551782, 0.655993,
		0.818033, 0.545033, 0.183744,
		39.537083, 32.129303, 22.994396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235901, 31.768396, 22.964897>,  <38.964458, 31.747780, 22.865776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235901, 31.768396, 22.964897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.852261, 31.881626, 22.965256>,  <37.622078, 31.949564, 22.965471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.852261, 31.881626, 22.965256>,  <38.235901, 31.768396, 22.964897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852261, 31.881626, 22.965256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020809, 0.067352, 0.997512,
		0.282309, 0.956731, -0.070487,
		-0.959098, 0.283073, 0.000895,
		37.564529, 31.966549, 22.965525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184666, 32.287010, 23.392113>,  <38.235901, 31.768396, 22.964897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184666, 32.287010, 23.392113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.811146, 32.144119, 23.400238>,  <37.587036, 32.058384, 23.405113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.811146, 32.144119, 23.400238>,  <38.184666, 32.287010, 23.392113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811146, 32.144119, 23.400238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028927, 0.131956, 0.990833,
		-0.356633, 0.924649, -0.133553,
		-0.933797, -0.357227, 0.020312,
		37.531006, 32.036949, 23.406332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919792, 32.565502, 23.926332>,  <38.184666, 32.287010, 23.392113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919792, 32.565502, 23.926332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.652855, 32.273544, 23.867119>,  <37.492695, 32.098370, 23.831591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.652855, 32.273544, 23.867119>,  <37.919792, 32.565502, 23.926332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652855, 32.273544, 23.867119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082690, -0.124923, 0.988715,
		-0.740149, 0.672049, 0.023012,
		-0.667339, -0.729893, -0.148033,
		37.452652, 32.054577, 23.822708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213062, 32.657639, 24.404463>,  <37.919792, 32.565502, 23.926332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213062, 32.657639, 24.404463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.277649, 32.278248, 24.295414>,  <37.316399, 32.050613, 24.229984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.277649, 32.278248, 24.295414>,  <37.213062, 32.657639, 24.404463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277649, 32.278248, 24.295414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121322, -0.293227, 0.948314,
		-0.979393, -0.120042, -0.162416,
		0.161463, -0.948476, -0.272621,
		37.326088, 31.993706, 24.213627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785660, 32.381405, 24.868650>,  <37.213062, 32.657639, 24.404463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785660, 32.381405, 24.868650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.022095, 32.085705, 24.739578>,  <37.163956, 31.908283, 24.662134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.022095, 32.085705, 24.739578>,  <36.785660, 32.381405, 24.868650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022095, 32.085705, 24.739578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077108, -0.450002, 0.889693,
		-0.802915, -0.501002, -0.322991,
		0.591085, -0.739253, -0.322682,
		37.199421, 31.863930, 24.642775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573811, 31.922581, 25.336388>,  <36.785660, 32.381405, 24.868650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573811, 31.922581, 25.336388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.889690, 31.733742, 25.179668>,  <37.079216, 31.620440, 25.085638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.889690, 31.733742, 25.179668>,  <36.573811, 31.922581, 25.336388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889690, 31.733742, 25.179668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048270, -0.588835, 0.806810,
		-0.611598, -0.656046, -0.442212,
		0.789695, -0.472098, -0.391797,
		37.126598, 31.592113, 25.062130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444839, 31.216442, 25.495241>,  <36.573811, 31.922581, 25.336388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444839, 31.216442, 25.495241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.833771, 31.235817, 25.403824>,  <37.067131, 31.247442, 25.348974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.833771, 31.235817, 25.403824>,  <36.444839, 31.216442, 25.495241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833771, 31.235817, 25.403824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221837, -0.498174, 0.838219,
		-0.073251, -0.865723, -0.495134,
		0.972328, 0.048439, -0.228541,
		37.125469, 31.250349, 25.335262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709488, 30.519270, 25.463943>,  <36.444839, 31.216442, 25.495241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709488, 30.519270, 25.463943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.967987, 30.805420, 25.570225>,  <37.123089, 30.977110, 25.633993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.967987, 30.805420, 25.570225>,  <36.709488, 30.519270, 25.463943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967987, 30.805420, 25.570225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133914, -0.449083, 0.883398,
		0.751284, -0.535315, -0.386019,
		0.646250, 0.715376, 0.265703,
		37.161861, 31.020033, 25.649935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201332, 30.148634, 25.674067>,  <36.709488, 30.519270, 25.463943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201332, 30.148634, 25.674067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.283485, 30.508911, 25.827202>,  <37.332779, 30.725079, 25.919083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.283485, 30.508911, 25.827202>,  <37.201332, 30.148634, 25.674067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283485, 30.508911, 25.827202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246626, -0.426186, 0.870368,
		0.947097, -0.084342, -0.309666,
		0.205384, 0.900695, 0.382839,
		37.345100, 30.779119, 25.942053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918705, 30.057991, 26.011715>,  <37.201332, 30.148634, 25.674067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918705, 30.057991, 26.011715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.727848, 30.377113, 26.159142>,  <37.613335, 30.568586, 26.247597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.727848, 30.377113, 26.159142>,  <37.918705, 30.057991, 26.011715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727848, 30.377113, 26.159142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206397, -0.305924, 0.929414,
		0.854245, 0.519534, -0.018695,
		-0.477143, 0.797806, 0.368564,
		37.584705, 30.616455, 26.269711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297314, 30.198910, 26.560608>,  <37.918705, 30.057991, 26.011715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297314, 30.198910, 26.560608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.957592, 30.400463, 26.623573>,  <37.753757, 30.521395, 26.661352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.957592, 30.400463, 26.623573>,  <38.297314, 30.198910, 26.560608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957592, 30.400463, 26.623573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046943, -0.224918, 0.973246,
		0.525808, 0.833974, 0.167371,
		-0.849307, 0.503884, 0.157413,
		37.702801, 30.551628, 26.670797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429462, 30.742941, 27.063414>,  <38.297314, 30.198910, 26.560608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429462, 30.742941, 27.063414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.036915, 30.666153, 27.066475>,  <37.801384, 30.620081, 27.068312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.036915, 30.666153, 27.066475>,  <38.429462, 30.742941, 27.063414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036915, 30.666153, 27.066475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052674, -0.230537, 0.971637,
		-0.184759, 0.953940, 0.236354,
		-0.981371, -0.191968, 0.007654,
		37.742504, 30.608562, 27.068771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182072, 31.054131, 27.687202>,  <38.429462, 30.742941, 27.063414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182072, 31.054131, 27.687202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.910583, 30.782898, 27.574394>,  <37.747688, 30.620157, 27.506710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.910583, 30.782898, 27.574394>,  <38.182072, 31.054131, 27.687202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910583, 30.782898, 27.574394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014589, -0.396391, 0.917966,
		-0.734248, 0.618932, 0.278933,
		-0.678725, -0.678084, -0.282020,
		37.706966, 30.579473, 27.489788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506054, 31.204824, 28.066408>,  <38.182072, 31.054131, 27.687202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506054, 31.204824, 28.066408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.509342, 30.822132, 27.950062>,  <37.511314, 30.592518, 27.880255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.509342, 30.822132, 27.950062>,  <37.506054, 31.204824, 28.066408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509342, 30.822132, 27.950062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074794, -0.290649, 0.953902,
		-0.997165, 0.013911, -0.073948,
		0.008223, -0.956729, -0.290866,
		37.511810, 30.535114, 27.862803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052979, 30.870937, 28.464342>,  <37.506054, 31.204824, 28.066408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052979, 30.870937, 28.464342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.246281, 30.546719, 28.331993>,  <37.362263, 30.352186, 28.252583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.246281, 30.546719, 28.331993>,  <37.052979, 30.870937, 28.464342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246281, 30.546719, 28.331993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095131, -0.424312, 0.900505,
		-0.870297, -0.403695, -0.282158,
		0.483252, -0.810549, -0.330874,
		37.391254, 30.303555, 28.232731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750393, 30.291264, 28.924576>,  <37.052979, 30.870937, 28.464342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750393, 30.291264, 28.924576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.101475, 30.172050, 28.774475>,  <37.312122, 30.100523, 28.684416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.101475, 30.172050, 28.774475>,  <36.750393, 30.291264, 28.924576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101475, 30.172050, 28.774475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251215, -0.380678, 0.889930,
		-0.408086, -0.875361, -0.259249,
		0.877700, -0.298041, -0.375253,
		37.364784, 30.082642, 28.661900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851746, 29.741545, 29.310326>,  <36.750393, 30.291264, 28.924576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851746, 29.741545, 29.310326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.221405, 29.768898, 29.159981>,  <37.443199, 29.785309, 29.069773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.221405, 29.768898, 29.159981>,  <36.851746, 29.741545, 29.310326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221405, 29.768898, 29.159981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358681, -0.494006, 0.792026,
		-0.131519, -0.866765, -0.481063,
		0.924149, 0.068382, -0.375863,
		37.498650, 29.789413, 29.047222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151337, 29.160206, 29.519005>,  <36.851746, 29.741545, 29.310326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151337, 29.160206, 29.519005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.461514, 29.396179, 29.428970>,  <37.647621, 29.537764, 29.374950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.461514, 29.396179, 29.428970>,  <37.151337, 29.160206, 29.519005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461514, 29.396179, 29.428970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476731, -0.313269, 0.821335,
		0.414023, -0.744203, -0.524163,
		0.775444, 0.589935, -0.225084,
		37.694145, 29.573160, 29.361444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729542, 28.727543, 29.484888>,  <37.151337, 29.160206, 29.519005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729542, 28.727543, 29.484888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.828659, 29.100666, 29.589550>,  <37.888130, 29.324541, 29.652348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.828659, 29.100666, 29.589550>,  <37.729542, 28.727543, 29.484888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828659, 29.100666, 29.589550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515790, -0.355644, 0.779409,
		0.820096, -0.058175, -0.569261,
		0.247796, 0.932809, 0.261656,
		37.903000, 29.380508, 29.668047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516205, 28.699955, 29.628796>,  <37.729542, 28.727543, 29.484888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516205, 28.699955, 29.628796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.362061, 29.003170, 29.839272>,  <38.269573, 29.185099, 29.965557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.362061, 29.003170, 29.839272>,  <38.516205, 28.699955, 29.628796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362061, 29.003170, 29.839272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564481, -0.257437, 0.784275,
		0.729970, 0.599256, -0.328690,
		-0.385364, 0.758036, 0.526190,
		38.246452, 29.230581, 29.997129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083164, 28.952837, 29.983406>,  <38.516205, 28.699955, 29.628796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083164, 28.952837, 29.983406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.768188, 29.090630, 30.187862>,  <38.579201, 29.173306, 30.310535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.768188, 29.090630, 30.187862>,  <39.083164, 28.952837, 29.983406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768188, 29.090630, 30.187862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512426, -0.095016, 0.853458,
		0.342566, 0.933973, -0.101701,
		-0.787444, 0.344480, 0.511142,
		38.531956, 29.193974, 30.341206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.078503, 25.629509, 31.406008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.447634, 25.693180, 31.546322>,  <26.669113, 25.731382, 31.630510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.447634, 25.693180, 31.546322>,  <26.078503, 25.629509, 31.406008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447634, 25.693180, 31.546322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111189, -0.761803, 0.638195,
		0.368817, -0.627948, -0.685314,
		0.922828, 0.159178, 0.350787,
		26.724482, 25.740934, 31.651558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.382143, 24.888445, 31.591404>,  <26.078503, 25.629509, 31.406008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.382143, 24.888445, 31.591404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.610884, 25.162754, 31.771492>,  <26.748127, 25.327339, 31.879545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.610884, 25.162754, 31.771492>,  <26.382143, 24.888445, 31.591404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.610884, 25.162754, 31.771492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208252, -0.652186, 0.728893,
		0.793485, -0.323058, -0.515767,
		0.571850, 0.685775, 0.450222,
		26.782438, 25.368486, 31.906559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958433, 24.556692, 31.889650>,  <26.382143, 24.888445, 31.591404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958433, 24.556692, 31.889650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.927212, 24.887863, 32.111801>,  <26.908478, 25.086565, 32.245090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.927212, 24.887863, 32.111801>,  <26.958433, 24.556692, 31.889650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927212, 24.887863, 32.111801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011937, -0.556260, 0.830923,
		0.996878, 0.071488, 0.033537,
		-0.078056, 0.827928, 0.555376,
		26.903795, 25.136242, 32.278416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397068, 24.448536, 32.476395>,  <26.958433, 24.556692, 31.889650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397068, 24.448536, 32.476395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.158108, 24.748569, 32.589874>,  <27.014730, 24.928589, 32.657963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.158108, 24.748569, 32.589874>,  <27.397068, 24.448536, 32.476395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158108, 24.748569, 32.589874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090504, -0.414569, 0.905506,
		0.796818, 0.515276, 0.315550,
		-0.597403, 0.750082, 0.283701,
		26.978888, 24.973595, 32.674984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520145, 24.595884, 33.122265>,  <27.397068, 24.448536, 32.476395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520145, 24.595884, 33.122265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.155369, 24.757030, 33.091129>,  <26.936502, 24.853718, 33.072449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.155369, 24.757030, 33.091129>,  <27.520145, 24.595884, 33.122265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155369, 24.757030, 33.091129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249422, -0.393659, 0.884771,
		0.325805, 0.826275, 0.459479,
		-0.911943, 0.402868, -0.077835,
		26.881786, 24.877892, 33.067780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383984, 24.827246, 33.700813>,  <27.520145, 24.595884, 33.122265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383984, 24.827246, 33.700813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.014639, 24.797134, 33.550220>,  <26.793032, 24.779068, 33.459866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.014639, 24.797134, 33.550220>,  <27.383984, 24.827246, 33.700813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014639, 24.797134, 33.550220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325125, -0.368217, 0.871040,
		-0.204197, 0.926688, 0.315522,
		-0.923362, -0.075279, -0.376478,
		26.737631, 24.774551, 33.437279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009823, 25.158150, 34.237072>,  <27.383984, 24.827246, 33.700813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009823, 25.158150, 34.237072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.778103, 24.899143, 34.039028>,  <26.639071, 24.743738, 33.920204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.778103, 24.899143, 34.039028>,  <27.009823, 25.158150, 34.237072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778103, 24.899143, 34.039028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454010, -0.248142, 0.855745,
		-0.676967, 0.720519, -0.150230,
		-0.579302, -0.647517, -0.495107,
		26.604313, 24.704887, 33.890495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372253, 25.220417, 34.536057>,  <27.009823, 25.158150, 34.237072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372253, 25.220417, 34.536057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.373228, 24.878120, 34.329098>,  <26.373814, 24.672743, 34.204922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.373228, 24.878120, 34.329098>,  <26.372253, 25.220417, 34.536057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373228, 24.878120, 34.329098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550880, -0.432959, 0.713496,
		-0.834581, 0.283282, -0.472468,
		0.002439, -0.855744, -0.517394,
		26.373960, 24.621397, 34.173878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.699535, 25.006262, 34.379166>,  <26.372253, 25.220417, 34.536057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.699535, 25.006262, 34.379166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.922850, 24.675026, 34.358814>,  <26.056839, 24.476284, 34.346603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.922850, 24.675026, 34.358814>,  <25.699535, 25.006262, 34.379166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922850, 24.675026, 34.358814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567511, -0.425904, 0.704654,
		-0.605185, -0.364523, -0.707724,
		0.558285, -0.828088, -0.050880,
		26.090336, 24.426600, 34.343552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.238262, 24.507683, 34.546246>,  <25.699535, 25.006262, 34.379166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.238262, 24.507683, 34.546246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.581131, 24.306423, 34.590240>,  <25.786852, 24.185667, 34.616638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.581131, 24.306423, 34.590240>,  <25.238262, 24.507683, 34.546246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581131, 24.306423, 34.590240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376250, -0.465926, 0.800843,
		-0.351697, -0.727843, -0.588688,
		0.857173, -0.503148, 0.109986,
		25.838284, 24.155479, 34.623238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.075117, 23.802238, 34.667557>,  <25.238262, 24.507683, 34.546246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.075117, 23.802238, 34.667557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.445490, 23.875198, 34.799847>,  <25.667713, 23.918974, 34.879223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.445490, 23.875198, 34.799847>,  <25.075117, 23.802238, 34.667557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.445490, 23.875198, 34.799847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249453, -0.362156, 0.898118,
		0.283592, -0.914097, -0.289831,
		0.925931, 0.182400, 0.330729,
		25.723269, 23.929918, 34.899067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.156593, 23.271950, 35.126152>,  <25.075117, 23.802238, 34.667557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.156593, 23.271950, 35.126152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.435553, 23.546776, 35.207710>,  <25.602928, 23.711672, 35.256645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.435553, 23.546776, 35.207710>,  <25.156593, 23.271950, 35.126152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435553, 23.546776, 35.207710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039938, -0.321316, 0.946130,
		0.715569, -0.651687, -0.251526,
		0.697399, 0.687066, 0.203896,
		25.644773, 23.752895, 35.268879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737520, 22.796511, 35.197647>,  <25.156593, 23.271950, 35.126152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737520, 22.796511, 35.197647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.970284, 22.716461, 35.512947>,  <26.109941, 22.668432, 35.702126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.970284, 22.716461, 35.512947>,  <25.737520, 22.796511, 35.197647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.970284, 22.716461, 35.512947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006644, -0.970387, -0.241463,
		0.813226, 0.135273, -0.566007,
		0.581910, -0.200124, 0.788246,
		26.144855, 22.656424, 35.749420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318378, 22.393417, 35.049911>,  <25.737520, 22.796511, 35.197647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318378, 22.393417, 35.049911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.203791, 22.299828, 35.421543>,  <26.135038, 22.243673, 35.644524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.203791, 22.299828, 35.421543>,  <26.318378, 22.393417, 35.049911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.203791, 22.299828, 35.421543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115747, -0.971072, -0.208859,
		0.951072, 0.047707, 0.305263,
		-0.286468, -0.233974, 0.929081,
		26.117849, 22.229635, 35.700268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742903, 22.039804, 34.567413>,  <26.318378, 22.393417, 35.049911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742903, 22.039804, 34.567413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.866587, 21.685673, 34.428516>,  <25.940798, 21.473194, 34.345177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.866587, 21.685673, 34.428516>,  <25.742903, 22.039804, 34.567413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866587, 21.685673, 34.428516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023853, 0.357802, -0.933493,
		0.950695, 0.296929, 0.089518,
		0.309211, -0.885331, -0.347243,
		25.959351, 21.420073, 34.324345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.413153, 22.093777, 34.219650>,  <25.742903, 22.039804, 34.567413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.413153, 22.093777, 34.219650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.276791, 21.749496, 34.068401>,  <26.194973, 21.542929, 33.977654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.276791, 21.749496, 34.068401>,  <26.413153, 22.093777, 34.219650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276791, 21.749496, 34.068401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123083, 0.357890, -0.925616,
		0.932006, -0.362087, -0.016069,
		-0.340905, -0.860702, -0.378122,
		26.174519, 21.491285, 33.954964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817394, 21.887981, 33.714508>,  <26.413153, 22.093777, 34.219650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817394, 21.887981, 33.714508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.489355, 21.689857, 33.599892>,  <26.292532, 21.570984, 33.531120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.489355, 21.689857, 33.599892>,  <26.817394, 21.887981, 33.714508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489355, 21.689857, 33.599892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158243, 0.284920, -0.945399,
		0.549907, -0.820664, -0.155283,
		-0.820098, -0.495310, -0.286544,
		26.243326, 21.541265, 33.513927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957445, 21.541176, 33.109184>,  <26.817394, 21.887981, 33.714508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957445, 21.541176, 33.109184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.558315, 21.549541, 33.084171>,  <26.318838, 21.554560, 33.069164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.558315, 21.549541, 33.084171>,  <26.957445, 21.541176, 33.109184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.558315, 21.549541, 33.084171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065309, 0.443716, -0.893784,
		0.009054, -0.895923, -0.444116,
		-0.997824, 0.020912, -0.062529,
		26.258968, 21.555815, 33.065414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866888, 21.035246, 32.624882>,  <26.957445, 21.541176, 33.109184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866888, 21.035246, 32.624882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.534454, 21.257595, 32.617931>,  <26.334993, 21.391005, 32.613762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.534454, 21.257595, 32.617931>,  <26.866888, 21.035246, 32.624882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534454, 21.257595, 32.617931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124319, 0.155237, -0.980024,
		-0.542074, -0.816642, -0.198121,
		-0.831084, 0.555875, -0.017375,
		26.285130, 21.424358, 32.612720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426907, 20.898439, 31.988697>,  <26.866888, 21.035246, 32.624882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426907, 20.898439, 31.988697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.297287, 21.256226, 32.111935>,  <26.219515, 21.470898, 32.185875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.297287, 21.256226, 32.111935>,  <26.426907, 20.898439, 31.988697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.297287, 21.256226, 32.111935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055135, 0.342968, -0.937728,
		-0.944432, -0.286884, -0.160456,
		-0.324051, 0.894467, 0.308092,
		26.200071, 21.524565, 32.204361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233042, 21.173992, 31.364180>,  <26.426907, 20.898439, 31.988697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233042, 21.173992, 31.364180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.230049, 21.481995, 31.619377>,  <26.228254, 21.666796, 31.772495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.230049, 21.481995, 31.619377>,  <26.233042, 21.173992, 31.364180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230049, 21.481995, 31.619377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162788, 0.630438, -0.758979,
		-0.986633, 0.098180, -0.130064,
		-0.007480, 0.770006, 0.637993,
		26.227804, 21.712996, 31.810776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703049, 21.642612, 31.054142>,  <26.233042, 21.173992, 31.364180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703049, 21.642612, 31.054142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.952000, 21.843246, 31.294495>,  <26.101370, 21.963627, 31.438705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.952000, 21.843246, 31.294495>,  <25.703049, 21.642612, 31.054142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952000, 21.843246, 31.294495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130807, 0.690235, -0.711663,
		-0.771709, 0.521523, 0.363977,
		0.622378, 0.501587, 0.600880,
		26.138714, 21.993723, 31.474758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397285, 22.272369, 31.113655>,  <25.703049, 21.642612, 31.054142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.397285, 22.272369, 31.113655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.786268, 22.297256, 31.203506>,  <26.019657, 22.312189, 31.257418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.786268, 22.297256, 31.203506>,  <25.397285, 22.272369, 31.113655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786268, 22.297256, 31.203506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100399, 0.757921, -0.644574,
		-0.210351, 0.649372, 0.730799,
		0.972457, 0.062215, 0.224626,
		26.078005, 22.315922, 31.270895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.462673, 23.009109, 31.173717>,  <25.397285, 22.272369, 31.113655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.462673, 23.009109, 31.173717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.830114, 22.855625, 31.135910>,  <26.050579, 22.763535, 31.113226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.830114, 22.855625, 31.135910>,  <25.462673, 23.009109, 31.173717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830114, 22.855625, 31.135910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181900, 0.622887, -0.760871,
		0.350829, 0.681746, 0.641983,
		0.918603, -0.383712, -0.094517,
		26.105696, 22.740511, 31.107555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886620, 23.554897, 31.127733>,  <25.462673, 23.009109, 31.173717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886620, 23.554897, 31.127733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.110022, 23.261398, 30.972977>,  <26.244062, 23.085299, 30.880123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.110022, 23.261398, 30.972977>,  <25.886620, 23.554897, 31.127733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110022, 23.261398, 30.972977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269677, 0.601695, -0.751822,
		0.784439, 0.315561, 0.533926,
		0.558507, -0.733746, -0.386894,
		26.277573, 23.041275, 30.856909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513870, 23.946222, 30.899363>,  <25.886620, 23.554897, 31.127733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513870, 23.946222, 30.899363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.500113, 23.603664, 30.693295>,  <26.491858, 23.398129, 30.569653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.500113, 23.603664, 30.693295>,  <26.513870, 23.946222, 30.899363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500113, 23.603664, 30.693295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239448, 0.493402, -0.836193,
		0.970300, -0.152118, 0.188092,
		-0.034395, -0.856396, -0.515172,
		26.489794, 23.346745, 30.538742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083326, 23.893160, 30.471817>,  <26.513870, 23.946222, 30.899363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083326, 23.893160, 30.471817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.826485, 23.651371, 30.283215>,  <26.672380, 23.506298, 30.170053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.826485, 23.651371, 30.283215>,  <27.083326, 23.893160, 30.471817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826485, 23.651371, 30.283215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223244, 0.440952, -0.869323,
		0.733393, -0.663455, -0.148191,
		-0.642102, -0.604473, -0.471504,
		26.633854, 23.470030, 30.141764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452019, 23.893728, 29.935200>,  <27.083326, 23.893160, 30.471817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452019, 23.893728, 29.935200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.098898, 23.741104, 29.825600>,  <26.887026, 23.649530, 29.759840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.098898, 23.741104, 29.825600>,  <27.452019, 23.893728, 29.935200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098898, 23.741104, 29.825600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104002, 0.410056, -0.906111,
		0.458095, -0.828410, -0.322313,
		-0.882798, -0.381564, -0.274001,
		26.834057, 23.626637, 29.743401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017326, 23.367174, 29.848766>,  <27.452019, 23.893728, 29.935200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017326, 23.367174, 29.848766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.400032, 23.479187, 29.880230>,  <28.629656, 23.546394, 29.899109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.400032, 23.479187, 29.880230>,  <28.017326, 23.367174, 29.848766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400032, 23.479187, 29.880230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072287, -0.490860, 0.868234,
		0.281746, -0.825008, -0.489879,
		0.956762, 0.280033, 0.078661,
		28.687061, 23.563196, 29.903828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391289, 22.767683, 30.063093>,  <28.017326, 23.367174, 29.848766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391289, 22.767683, 30.063093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.597437, 23.091240, 30.176289>,  <28.721127, 23.285374, 30.244205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.597437, 23.091240, 30.176289>,  <28.391289, 22.767683, 30.063093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597437, 23.091240, 30.176289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022202, -0.342713, 0.939178,
		0.856679, -0.477743, -0.194584,
		0.515372, 0.808894, 0.282988,
		28.752048, 23.333908, 30.261185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537039, 22.691362, 30.792746>,  <28.391289, 22.767683, 30.063093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537039, 22.691362, 30.792746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.806627, 22.985458, 30.763943>,  <28.968380, 23.161917, 30.746660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.806627, 22.985458, 30.763943>,  <28.537039, 22.691362, 30.792746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806627, 22.985458, 30.763943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334617, -0.216918, 0.917049,
		0.658632, -0.642158, -0.392220,
		0.673970, 0.735241, -0.072008,
		29.008818, 23.206030, 30.742340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227257, 22.394188, 30.942175>,  <28.537039, 22.691362, 30.792746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227257, 22.394188, 30.942175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.144459, 22.773098, 31.040012>,  <29.094780, 23.000444, 31.098715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.144459, 22.773098, 31.040012>,  <29.227257, 22.394188, 30.942175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144459, 22.773098, 31.040012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159959, -0.213875, 0.963676,
		0.965177, 0.238602, -0.107254,
		-0.206996, 0.947273, 0.244593,
		29.082359, 23.057280, 31.113390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710367, 22.660355, 31.326042>,  <29.227257, 22.394188, 30.942175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710367, 22.660355, 31.326042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.402153, 22.898159, 31.417984>,  <29.217224, 23.040842, 31.473148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.402153, 22.898159, 31.417984>,  <29.710367, 22.660355, 31.326042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402153, 22.898159, 31.417984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130872, -0.205365, 0.969896,
		0.623816, 0.777421, 0.080437,
		-0.770536, 0.594510, 0.229852,
		29.170992, 23.076511, 31.486940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830585, 23.136354, 31.919867>,  <29.710367, 22.660355, 31.326042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830585, 23.136354, 31.919867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.430939, 23.128349, 31.934631>,  <29.191151, 23.123547, 31.943489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.430939, 23.128349, 31.934631>,  <29.830585, 23.136354, 31.919867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430939, 23.128349, 31.934631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041916, -0.424662, 0.904381,
		-0.002423, 0.905131, 0.425127,
		-0.999118, -0.020012, 0.036911,
		29.131203, 23.122345, 31.945705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586367, 23.313017, 32.634315>,  <29.830585, 23.136354, 31.919867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586367, 23.313017, 32.634315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.270523, 23.116890, 32.486744>,  <29.081017, 22.999214, 32.398201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.270523, 23.116890, 32.486744>,  <29.586367, 23.313017, 32.634315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270523, 23.116890, 32.486744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120233, -0.465951, 0.876603,
		-0.601713, 0.736533, 0.308968,
		-0.789611, -0.490315, -0.368925,
		29.033640, 22.969795, 32.376068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710899, 23.927742, 33.094784>,  <29.586367, 23.313017, 32.634315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710899, 23.927742, 33.094784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.034401, 24.003506, 33.317509>,  <30.228502, 24.048964, 33.451145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.034401, 24.003506, 33.317509>,  <29.710899, 23.927742, 33.094784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034401, 24.003506, 33.317509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230578, 0.768830, -0.596435,
		-0.541064, 0.610758, 0.578121,
		0.808754, 0.189407, 0.556814,
		30.277027, 24.060328, 33.484554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709322, 24.669519, 33.272171>,  <29.710899, 23.927742, 33.094784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709322, 24.669519, 33.272171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.100071, 24.587227, 33.295464>,  <30.334520, 24.537851, 33.309441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.100071, 24.587227, 33.295464>,  <29.709322, 24.669519, 33.272171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100071, 24.587227, 33.295464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208018, 0.851484, -0.481356,
		0.049447, 0.482338, 0.874589,
		0.976874, -0.205732, 0.058232,
		30.393133, 24.525507, 33.312935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999281, 25.287645, 33.575409>,  <29.709322, 24.669519, 33.272171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999281, 25.287645, 33.575409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.307898, 25.104134, 33.399117>,  <30.493067, 24.994026, 33.293343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.307898, 25.104134, 33.399117>,  <29.999281, 25.287645, 33.575409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307898, 25.104134, 33.399117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170602, 0.816610, -0.551401,
		0.612877, 0.350240, 0.708318,
		0.771542, -0.458781, -0.440730,
		30.539360, 24.966499, 33.266899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459187, 25.806940, 33.460983>,  <29.999281, 25.287645, 33.575409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459187, 25.806940, 33.460983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.573380, 25.512535, 33.215454>,  <30.641895, 25.335892, 33.068134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.573380, 25.512535, 33.215454>,  <30.459187, 25.806940, 33.460983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573380, 25.512535, 33.215454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058482, 0.652665, -0.755386,
		0.956598, 0.179753, 0.229368,
		0.285483, -0.736015, -0.613825,
		30.659025, 25.291731, 33.031307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054243, 26.045963, 33.178394>,  <30.459187, 25.806940, 33.460983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054243, 26.045963, 33.178394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.910109, 25.777199, 32.919571>,  <30.823627, 25.615940, 32.764275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.910109, 25.777199, 32.919571>,  <31.054243, 26.045963, 33.178394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910109, 25.777199, 32.919571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074421, 0.670743, -0.737946,
		0.929849, -0.314064, -0.191688,
		-0.360336, -0.671913, -0.647063,
		30.802008, 25.575624, 32.725452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609327, 26.001179, 32.645725>,  <31.054243, 26.045963, 33.178394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609327, 26.001179, 32.645725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.261570, 25.877914, 32.491226>,  <31.052916, 25.803955, 32.398525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.261570, 25.877914, 32.491226>,  <31.609327, 26.001179, 32.645725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261570, 25.877914, 32.491226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113447, 0.636325, -0.763034,
		0.480918, -0.707196, -0.518257,
		-0.869395, -0.308162, -0.386249,
		31.000751, 25.785465, 32.375351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760050, 25.792065, 31.973867>,  <31.609327, 26.001179, 32.645725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760050, 25.792065, 31.973867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.366571, 25.863903, 31.970200>,  <31.130484, 25.907005, 31.967999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.366571, 25.863903, 31.970200>,  <31.760050, 25.792065, 31.973867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366571, 25.863903, 31.970200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103468, 0.523554, -0.845687,
		-0.147080, -0.832849, -0.533601,
		-0.983698, 0.179594, -0.009169,
		31.071463, 25.917782, 31.967449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.929193, 25.492035, 36.918385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.736740, 25.377682, 36.586895>,  <27.621267, 25.309069, 36.388000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.736740, 25.377682, 36.586895>,  <27.929193, 25.492035, 36.918385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736740, 25.377682, 36.586895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523424, 0.664647, -0.533171,
		0.703234, -0.690299, -0.170144,
		-0.481133, -0.285886, -0.828722,
		27.592400, 25.291916, 36.338280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435688, 25.465755, 36.395985>,  <27.929193, 25.492035, 36.918385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435688, 25.465755, 36.395985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.084610, 25.483318, 36.205101>,  <27.873964, 25.493856, 36.090572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.084610, 25.483318, 36.205101>,  <28.435688, 25.465755, 36.395985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084610, 25.483318, 36.205101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380437, 0.669379, -0.638122,
		0.291413, -0.741622, -0.604215,
		-0.877694, 0.043909, -0.477206,
		27.821302, 25.496490, 36.061939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629204, 25.426952, 35.730412>,  <28.435688, 25.465755, 36.395985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629204, 25.426952, 35.730412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.270906, 25.603474, 35.751942>,  <28.055929, 25.709387, 35.764858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.270906, 25.603474, 35.751942>,  <28.629204, 25.426952, 35.730412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270906, 25.603474, 35.751942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303300, 0.695115, -0.651785,
		-0.325049, -0.567507, -0.756492,
		-0.895741, 0.441306, 0.053822,
		28.002184, 25.735865, 35.768089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552603, 25.748812, 35.064293>,  <28.629204, 25.426952, 35.730412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552603, 25.748812, 35.064293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.263317, 25.922047, 35.279476>,  <28.089746, 26.025988, 35.408585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.263317, 25.922047, 35.279476>,  <28.552603, 25.748812, 35.064293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263317, 25.922047, 35.279476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175136, 0.868488, -0.463741,
		-0.668049, -0.241168, -0.703952,
		-0.723213, 0.433089, 0.537956,
		28.046352, 26.051973, 35.440865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009281, 26.026741, 34.566086>,  <28.552603, 25.748812, 35.064293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009281, 26.026741, 34.566086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.001692, 26.254684, 34.894695>,  <27.997139, 26.391451, 35.091862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.001692, 26.254684, 34.894695>,  <28.009281, 26.026741, 34.566086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001692, 26.254684, 34.894695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100216, 0.818618, -0.565527,
		-0.994785, 0.071600, -0.072641,
		-0.018974, 0.569858, 0.821524,
		27.996000, 26.425642, 35.141151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559689, 26.594301, 34.385605>,  <28.009281, 26.026741, 34.566086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559689, 26.594301, 34.385605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.767452, 26.704407, 34.709194>,  <27.892111, 26.770470, 34.903347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.767452, 26.704407, 34.709194>,  <27.559689, 26.594301, 34.385605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767452, 26.704407, 34.709194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017893, 0.942987, -0.332349,
		-0.854338, 0.187100, 0.484871,
		0.519410, 0.275262, 0.808977,
		27.923275, 26.786985, 34.951889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179440, 27.175568, 34.714329>,  <27.559689, 26.594301, 34.385605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179440, 27.175568, 34.714329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.560762, 27.178036, 34.835102>,  <27.789557, 27.179516, 34.907566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.560762, 27.178036, 34.835102>,  <27.179440, 27.175568, 34.714329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560762, 27.178036, 34.835102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085063, 0.953827, -0.288059,
		-0.289770, 0.300292, 0.908767,
		0.953309, 0.006168, 0.301934,
		27.846756, 27.179886, 34.925682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294157, 27.814398, 35.023083>,  <27.179440, 27.175568, 34.714329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294157, 27.814398, 35.023083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.664938, 27.685787, 34.945747>,  <27.887407, 27.608622, 34.899345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.664938, 27.685787, 34.945747>,  <27.294157, 27.814398, 35.023083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664938, 27.685787, 34.945747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271293, 0.930384, -0.246546,
		0.259154, 0.176084, 0.949649,
		0.926952, -0.321526, -0.193342,
		27.943024, 27.589329, 34.887745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764727, 28.338156, 35.272816>,  <27.294157, 27.814398, 35.023083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764727, 28.338156, 35.272816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.989656, 28.149899, 35.000851>,  <28.124615, 28.036943, 34.837669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.989656, 28.149899, 35.000851>,  <27.764727, 28.338156, 35.272816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989656, 28.149899, 35.000851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328696, 0.881700, -0.338472,
		0.758782, -0.033154, 0.650500,
		0.562324, -0.470643, -0.679916,
		28.158354, 28.008705, 34.796875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518379, 28.654676, 35.354939>,  <27.764727, 28.338156, 35.272816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518379, 28.654676, 35.354939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.464977, 28.487240, 34.995617>,  <28.432936, 28.386778, 34.780022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.464977, 28.487240, 34.995617>,  <28.518379, 28.654676, 35.354939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464977, 28.487240, 34.995617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470860, 0.770791, -0.429152,
		0.872048, -0.480270, 0.094195,
		-0.133504, -0.418594, -0.898307,
		28.424927, 28.361662, 34.726124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102057, 28.981991, 34.848858>,  <28.518379, 28.654676, 35.354939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102057, 28.981991, 34.848858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.833254, 28.834312, 34.592079>,  <28.671972, 28.745707, 34.438011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.833254, 28.834312, 34.592079>,  <29.102057, 28.981991, 34.848858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833254, 28.834312, 34.592079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306143, 0.650820, -0.694773,
		0.674303, -0.663421, -0.324328,
		-0.672006, -0.369197, -0.641951,
		28.631651, 28.723555, 34.399494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537870, 28.814381, 34.336910>,  <29.102057, 28.981991, 34.848858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537870, 28.814381, 34.336910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.178419, 28.813057, 34.161434>,  <28.962748, 28.812263, 34.056149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.178419, 28.813057, 34.161434>,  <29.537870, 28.814381, 34.336910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178419, 28.813057, 34.161434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279176, 0.767058, -0.577653,
		0.338414, -0.641569, -0.688379,
		-0.898630, -0.003307, -0.438694,
		28.908831, 28.812065, 34.029827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234024, 28.559721, 34.267124>,  <29.537870, 28.814381, 34.336910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234024, 28.559721, 34.267124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.594856, 28.637062, 34.421459>,  <30.811356, 28.683466, 34.514061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.594856, 28.637062, 34.421459>,  <30.234024, 28.559721, 34.267124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594856, 28.637062, 34.421459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086387, -0.795031, 0.600386,
		0.422837, -0.574926, -0.700477,
		0.902079, 0.193353, 0.385835,
		30.865480, 28.695068, 34.537209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694885, 28.003956, 34.249290>,  <30.234024, 28.559721, 34.267124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694885, 28.003956, 34.249290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.846176, 28.216103, 34.552780>,  <30.936951, 28.343391, 34.734875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.846176, 28.216103, 34.552780>,  <30.694885, 28.003956, 34.249290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846176, 28.216103, 34.552780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073120, -0.834161, 0.546653,
		0.922821, -0.151281, -0.354281,
		0.378226, 0.530368, 0.758720,
		30.959644, 28.375214, 34.780396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387943, 27.695576, 34.553997>,  <30.694885, 28.003956, 34.249290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387943, 27.695576, 34.553997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.210430, 27.917702, 34.835331>,  <31.103922, 28.050978, 35.004131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.210430, 27.917702, 34.835331>,  <31.387943, 27.695576, 34.553997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210430, 27.917702, 34.835331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204112, -0.701587, 0.682725,
		0.872579, 0.446541, 0.198006,
		-0.443783, 0.555317, 0.703335,
		31.077295, 28.084297, 35.046333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801353, 27.658512, 35.158684>,  <31.387943, 27.695576, 34.553997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801353, 27.658512, 35.158684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.450615, 27.785774, 35.302860>,  <31.240171, 27.862131, 35.389366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.450615, 27.785774, 35.302860>,  <31.801353, 27.658512, 35.158684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450615, 27.785774, 35.302860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025680, -0.779635, 0.625708,
		0.480082, 0.539394, 0.691791,
		-0.876848, 0.318156, 0.360437,
		31.187561, 27.881222, 35.410992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731707, 27.385986, 35.890453>,  <31.801353, 27.658512, 35.158684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731707, 27.385986, 35.890453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.352663, 27.509525, 35.857826>,  <31.125237, 27.583649, 35.838249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.352663, 27.509525, 35.857826>,  <31.731707, 27.385986, 35.890453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352663, 27.509525, 35.857826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306508, -0.807213, 0.504441,
		0.089953, 0.503013, 0.859585,
		-0.947608, 0.308846, -0.081567,
		31.068380, 27.602179, 35.833355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388329, 27.317045, 36.523376>,  <31.731707, 27.385986, 35.890453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388329, 27.317045, 36.523376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.062349, 27.338413, 36.292549>,  <30.866762, 27.351234, 36.154053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.062349, 27.338413, 36.292549>,  <31.388329, 27.317045, 36.523376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062349, 27.338413, 36.292549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402216, -0.769014, 0.496830,
		-0.417231, 0.636996, 0.648193,
		-0.814948, 0.053421, -0.577067,
		30.817865, 27.354439, 36.119431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801834, 27.352716, 37.012711>,  <31.388329, 27.317045, 36.523376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801834, 27.352716, 37.012711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.704903, 27.199051, 36.656353>,  <30.646744, 27.106852, 36.442539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.704903, 27.199051, 36.656353>,  <30.801834, 27.352716, 37.012711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704903, 27.199051, 36.656353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466306, -0.759129, 0.454184,
		-0.850785, 0.525491, 0.004820,
		-0.242329, -0.384166, -0.890895,
		30.632204, 27.083801, 36.389084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075010, 27.159605, 37.099533>,  <30.801834, 27.352716, 37.012711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075010, 27.159605, 37.099533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.208111, 26.952183, 36.784477>,  <30.287971, 26.827728, 36.595444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.208111, 26.952183, 36.784477>,  <30.075010, 27.159605, 37.099533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208111, 26.952183, 36.784477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531404, -0.793103, 0.297653,
		-0.779028, 0.319509, -0.539471,
		0.332754, -0.518557, -0.787638,
		30.307938, 26.796616, 36.548187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567656, 26.633982, 37.032253>,  <30.075010, 27.159605, 37.099533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567656, 26.633982, 37.032253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.866190, 26.500618, 36.801838>,  <30.045311, 26.420599, 36.663589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.866190, 26.500618, 36.801838>,  <29.567656, 26.633982, 37.032253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866190, 26.500618, 36.801838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295336, -0.941508, 0.162296,
		-0.596457, 0.048999, -0.801148,
		0.746334, -0.333410, -0.576040,
		30.090090, 26.400595, 36.629025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247494, 26.119804, 36.580120>,  <29.567656, 26.633982, 37.032253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247494, 26.119804, 36.580120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.632000, 26.013527, 36.550777>,  <29.862703, 25.949760, 36.533173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.632000, 26.013527, 36.550777>,  <29.247494, 26.119804, 36.580120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632000, 26.013527, 36.550777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257754, -0.960781, 0.102281,
		-0.097651, -0.079412, -0.992047,
		0.961263, -0.265692, -0.073353,
		29.920380, 25.933819, 36.528770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239872, 25.538557, 36.208351>,  <29.247494, 26.119804, 36.580120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239872, 25.538557, 36.208351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.606836, 25.514751, 36.365734>,  <29.827015, 25.500467, 36.460163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.606836, 25.514751, 36.365734>,  <29.239872, 25.538557, 36.208351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606836, 25.514751, 36.365734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169699, -0.952851, 0.251550,
		0.359940, -0.297545, -0.884257,
		0.917412, -0.059514, 0.393462,
		29.882061, 25.496897, 36.483772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604366, 24.958607, 35.891220>,  <29.239872, 25.538557, 36.208351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604366, 24.958607, 35.891220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.756720, 25.028759, 36.254356>,  <29.848131, 25.070850, 36.472237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.756720, 25.028759, 36.254356>,  <29.604366, 24.958607, 35.891220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756720, 25.028759, 36.254356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111715, -0.965924, 0.233474,
		0.917850, -0.190345, -0.348311,
		0.380883, 0.175382, 0.907838,
		29.870985, 25.081373, 36.526707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981253, 24.355171, 36.065811>,  <29.604366, 24.958607, 35.891220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981253, 24.355171, 36.065811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.916594, 24.531998, 36.418732>,  <29.877798, 24.638094, 36.630482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.916594, 24.531998, 36.418732>,  <29.981253, 24.355171, 36.065811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916594, 24.531998, 36.418732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199412, -0.890244, 0.409512,
		0.966491, -0.109745, 0.232057,
		-0.161646, 0.442065, 0.882298,
		29.868099, 24.664618, 36.683422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331480, 23.944258, 36.666245>,  <29.981253, 24.355171, 36.065811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331480, 23.944258, 36.666245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.034925, 24.146339, 36.842930>,  <29.856993, 24.267590, 36.948940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.034925, 24.146339, 36.842930>,  <30.331480, 23.944258, 36.666245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034925, 24.146339, 36.842930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345885, -0.851725, 0.393609,
		0.575072, 0.139035, 0.806202,
		-0.741388, 0.505206, 0.441713,
		29.812510, 24.297901, 36.975445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365824, 23.219572, 36.510002>,  <30.331480, 23.944258, 36.666245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365824, 23.219572, 36.510002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.496740, 22.923740, 36.274750>,  <30.575291, 22.746241, 36.133598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.496740, 22.923740, 36.274750>,  <30.365824, 23.219572, 36.510002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496740, 22.923740, 36.274750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052769, 0.635750, -0.770089,
		0.943450, 0.221007, 0.247101,
		0.327289, -0.739580, -0.588136,
		30.594927, 22.701866, 36.098309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014893, 23.418608, 36.097237>,  <30.365824, 23.219572, 36.510002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014893, 23.418608, 36.097237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.871134, 23.118042, 35.875889>,  <30.784880, 22.937702, 35.743080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.871134, 23.118042, 35.875889>,  <31.014893, 23.418608, 36.097237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871134, 23.118042, 35.875889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071532, 0.613425, -0.786506,
		0.930440, -0.243083, -0.274212,
		-0.359395, -0.751412, -0.553367,
		30.763315, 22.892618, 35.709877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366369, 23.391333, 35.402733>,  <31.014893, 23.418608, 36.097237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366369, 23.391333, 35.402733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.029139, 23.186565, 35.336803>,  <30.826801, 23.063705, 35.297245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.029139, 23.186565, 35.336803>,  <31.366369, 23.391333, 35.402733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029139, 23.186565, 35.336803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129370, 0.490524, -0.861771,
		0.522008, -0.705212, -0.479775,
		-0.843072, -0.511920, -0.164825,
		30.776217, 23.032990, 35.287357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449333, 23.056852, 34.818169>,  <31.366369, 23.391333, 35.402733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449333, 23.056852, 34.818169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.055506, 23.102386, 34.871338>,  <30.819210, 23.129707, 34.903240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.055506, 23.102386, 34.871338>,  <31.449333, 23.056852, 34.818169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055506, 23.102386, 34.871338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073571, 0.419920, -0.904574,
		-0.158791, -0.900394, -0.405064,
		-0.984567, 0.113837, 0.132922,
		30.760136, 23.136538, 34.911213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074007, 22.820198, 34.113098>,  <31.449333, 23.056852, 34.818169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074007, 22.820198, 34.113098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.809299, 23.036537, 34.320770>,  <30.650475, 23.166340, 34.445374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.809299, 23.036537, 34.320770>,  <31.074007, 22.820198, 34.113098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809299, 23.036537, 34.320770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327771, 0.414096, -0.849170,
		-0.674262, -0.732126, -0.096762,
		-0.661768, 0.540847, 0.519179,
		30.610769, 23.198792, 34.476524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484144, 22.780884, 33.661686>,  <31.074007, 22.820198, 34.113098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484144, 22.780884, 33.661686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.448111, 23.092625, 33.909718>,  <30.426491, 23.279669, 34.058537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.448111, 23.092625, 33.909718>,  <30.484144, 22.780884, 33.661686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448111, 23.092625, 33.909718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081684, 0.614727, -0.784498,
		-0.992579, -0.121321, 0.008283,
		-0.090085, 0.779353, 0.620075,
		30.421085, 23.326431, 34.095741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908270, 23.182301, 33.359287>,  <30.484144, 22.780884, 33.661686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908270, 23.182301, 33.359287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.145540, 23.414104, 33.582829>,  <30.287903, 23.553186, 33.716953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.145540, 23.414104, 33.582829>,  <29.908270, 23.182301, 33.359287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145540, 23.414104, 33.582829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155305, 0.598752, -0.785733,
		-0.789953, 0.552868, 0.265163,
		0.593174, 0.579511, 0.558849,
		30.323492, 23.587957, 33.750484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111027, 23.318075, 33.238529>,  <29.908270, 23.182301, 33.359287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111027, 23.318075, 33.238529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.011526, 23.031609, 32.977692>,  <28.951826, 22.859730, 32.821190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.011526, 23.031609, 32.977692>,  <29.111027, 23.318075, 33.238529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011526, 23.031609, 32.977692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112039, -0.647463, 0.753816,
		-0.962066, 0.260572, 0.080819,
		-0.248751, -0.716166, -0.652097,
		28.936901, 22.816759, 32.782063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.475380, 23.141403, 33.483730>,  <29.111027, 23.318075, 33.238529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.475380, 23.141403, 33.483730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.592880, 22.830273, 33.261486>,  <28.663380, 22.643595, 33.128139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.592880, 22.830273, 33.261486>,  <28.475380, 23.141403, 33.483730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592880, 22.830273, 33.261486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021463, -0.586470, 0.809687,
		-0.955642, -0.225919, -0.188969,
		0.293748, -0.777826, -0.555606,
		28.681005, 22.596926, 33.094803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886023, 22.555285, 33.552837>,  <28.475380, 23.141403, 33.483730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886023, 22.555285, 33.552837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.214075, 22.353798, 33.444279>,  <28.410906, 22.232906, 33.379143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.214075, 22.353798, 33.444279>,  <27.886023, 22.555285, 33.552837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214075, 22.353798, 33.444279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172871, -0.670292, 0.721681,
		-0.545436, -0.544957, -0.636806,
		0.820131, -0.503716, -0.271395,
		28.460115, 22.202682, 33.362862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665287, 21.867409, 33.512394>,  <27.886023, 22.555285, 33.552837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665287, 21.867409, 33.512394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.061277, 21.873363, 33.568569>,  <28.298872, 21.876936, 33.602276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.061277, 21.873363, 33.568569>,  <27.665287, 21.867409, 33.512394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061277, 21.873363, 33.568569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095797, -0.659895, 0.745226,
		0.103768, -0.751211, -0.651855,
		0.989977, 0.014885, 0.140440,
		28.358271, 21.877829, 33.610703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974607, 21.225826, 33.376064>,  <27.665287, 21.867409, 33.512394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974607, 21.225826, 33.376064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.272598, 21.385498, 33.589855>,  <28.451393, 21.481300, 33.718128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.272598, 21.385498, 33.589855>,  <27.974607, 21.225826, 33.376064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272598, 21.385498, 33.589855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099639, -0.858803, 0.502523,
		0.659604, -0.321115, -0.679564,
		0.744979, 0.399178, 0.534475,
		28.496092, 21.505251, 33.750198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451710, 20.665178, 33.537907>,  <27.974607, 21.225826, 33.376064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451710, 20.665178, 33.537907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.573385, 20.933090, 33.808865>,  <28.646391, 21.093838, 33.971439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.573385, 20.933090, 33.808865>,  <28.451710, 20.665178, 33.537907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573385, 20.933090, 33.808865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077982, -0.726215, 0.683031,
		0.949415, -0.154946, -0.273136,
		0.304188, 0.669779, 0.677396,
		28.664642, 21.134024, 34.012085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953579, 20.380198, 33.955036>,  <28.451710, 20.665178, 33.537907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953579, 20.380198, 33.955036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.820051, 20.687950, 34.172886>,  <28.739935, 20.872601, 34.303596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.820051, 20.687950, 34.172886>,  <28.953579, 20.380198, 33.955036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820051, 20.687950, 34.172886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138669, -0.531401, 0.835694,
		0.932381, 0.354494, 0.070704,
		-0.333821, 0.769381, 0.544626,
		28.719906, 20.918764, 34.336273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381371, 20.372541, 34.616852>,  <28.953579, 20.380198, 33.955036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381371, 20.372541, 34.616852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.068962, 20.608345, 34.699303>,  <28.881517, 20.749826, 34.748772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.068962, 20.608345, 34.699303>,  <29.381371, 20.372541, 34.616852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068962, 20.608345, 34.699303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186453, -0.535120, 0.823943,
		0.596023, 0.605083, 0.527855,
		-0.781019, 0.589509, 0.206125,
		28.834656, 20.785198, 34.761139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404055, 20.624815, 35.342216>,  <29.381371, 20.372541, 34.616852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404055, 20.624815, 35.342216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.021940, 20.622021, 35.223976>,  <28.792671, 20.620344, 35.153030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.021940, 20.622021, 35.223976>,  <29.404055, 20.624815, 35.342216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021940, 20.622021, 35.223976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239939, -0.565920, 0.788774,
		-0.172796, 0.824431, 0.538939,
		-0.955286, -0.006985, -0.295602,
		28.735355, 20.619925, 35.135296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<28.490150, 31.250410, 22.852690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221182, 31.344810, 23.133305>,  <28.059801, 31.401451, 23.301674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221182, 31.344810, 23.133305>,  <28.490150, 31.250410, 22.852690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221182, 31.344810, 23.133305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321914, -0.760223, 0.564298,
		0.666498, 0.605281, 0.435219,
		-0.672422, 0.236000, 0.701536,
		28.019455, 31.415611, 23.343765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742527, 31.409061, 23.669312>,  <28.490150, 31.250410, 22.852690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742527, 31.409061, 23.669312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386705, 31.228535, 23.641003>,  <28.173212, 31.120218, 23.624018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386705, 31.228535, 23.641003>,  <28.742527, 31.409061, 23.669312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386705, 31.228535, 23.641003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303411, -0.699495, 0.647030,
		-0.341519, 0.554095, 0.759173,
		-0.889554, -0.451315, -0.070772,
		28.119839, 31.093140, 23.619772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250347, 31.274271, 24.312347>,  <28.742527, 31.409061, 23.669312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250347, 31.274271, 24.312347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197380, 30.983482, 24.042835>,  <28.165600, 30.809010, 23.881128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197380, 30.983482, 24.042835>,  <28.250347, 31.274271, 24.312347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197380, 30.983482, 24.042835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315039, -0.675384, 0.666788,
		-0.939795, -0.123972, 0.318458,
		-0.132419, -0.726971, -0.673779,
		28.157654, 30.765390, 23.840702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892870, 30.721771, 24.742504>,  <28.250347, 31.274271, 24.312347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892870, 30.721771, 24.742504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.077814, 30.570778, 24.421574>,  <28.188780, 30.480183, 24.229015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.077814, 30.570778, 24.421574>,  <27.892870, 30.721771, 24.742504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077814, 30.570778, 24.421574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310245, -0.778789, 0.545193,
		-0.830646, -0.500993, -0.242968,
		0.462359, -0.377483, -0.802328,
		28.216522, 30.457533, 24.180876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700117, 29.952440, 24.776745>,  <27.892870, 30.721771, 24.742504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700117, 29.952440, 24.776745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015265, 30.020348, 24.539951>,  <28.204353, 30.061092, 24.397875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015265, 30.020348, 24.539951>,  <27.700117, 29.952440, 24.776745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015265, 30.020348, 24.539951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446602, -0.819376, 0.359402,
		-0.424043, -0.547542, -0.721378,
		0.787867, 0.169767, -0.591984,
		28.251625, 30.071278, 24.362356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957285, 29.259254, 24.551222>,  <27.700117, 29.952440, 24.776745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957285, 29.259254, 24.551222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271097, 29.501141, 24.496334>,  <28.459385, 29.646273, 24.463402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271097, 29.501141, 24.496334>,  <27.957285, 29.259254, 24.551222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271097, 29.501141, 24.496334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602714, -0.691619, 0.397993,
		0.145769, -0.394942, -0.907068,
		0.784530, 0.604717, -0.137221,
		28.506456, 29.682556, 24.455168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379337, 28.812565, 24.170761>,  <27.957285, 29.259254, 24.551222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379337, 28.812565, 24.170761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603367, 29.099976, 24.335701>,  <28.737785, 29.272423, 24.434666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603367, 29.099976, 24.335701>,  <28.379337, 28.812565, 24.170761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603367, 29.099976, 24.335701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569906, -0.695425, 0.437711,
		0.601267, -0.010150, -0.798984,
		0.560076, 0.718527, 0.412352,
		28.771389, 29.315535, 24.459406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010082, 28.663172, 24.032394>,  <28.379337, 28.812565, 24.170761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010082, 28.663172, 24.032394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037621, 28.865356, 24.376434>,  <29.054144, 28.986668, 24.582857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037621, 28.865356, 24.376434>,  <29.010082, 28.663172, 24.032394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037621, 28.865356, 24.376434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512034, -0.757828, 0.404374,
		0.856202, 0.412559, -0.310988,
		0.068847, 0.505462, 0.860098,
		29.058275, 29.016994, 24.634464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708231, 28.523533, 24.327139>,  <29.010082, 28.663172, 24.032394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708231, 28.523533, 24.327139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529106, 28.705956, 24.634769>,  <29.421631, 28.815409, 24.819347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529106, 28.705956, 24.634769>,  <29.708231, 28.523533, 24.327139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529106, 28.705956, 24.634769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415415, -0.655551, 0.630621,
		0.791768, 0.601884, 0.104110,
		-0.447810, 0.456057, 0.769076,
		29.394764, 28.842773, 24.865492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246134, 28.685349, 24.749191>,  <29.708231, 28.523533, 24.327139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246134, 28.685349, 24.749191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923319, 28.678204, 24.985283>,  <29.729630, 28.673916, 25.126938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923319, 28.678204, 24.985283>,  <30.246134, 28.685349, 24.749191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923319, 28.678204, 24.985283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505066, -0.538748, 0.674284,
		0.305941, 0.842278, 0.443811,
		-0.807037, -0.017863, 0.590231,
		29.681208, 28.672844, 25.162352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556540, 28.648933, 25.544559>,  <30.246134, 28.685349, 24.749191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556540, 28.648933, 25.544559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180847, 28.511993, 25.554729>,  <29.955433, 28.429831, 25.560831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180847, 28.511993, 25.554729>,  <30.556540, 28.648933, 25.544559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180847, 28.511993, 25.554729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271184, -0.694500, 0.666430,
		-0.210495, 0.632825, 0.745134,
		-0.939229, -0.342349, 0.025423,
		29.899078, 28.409288, 25.562357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419127, 28.498171, 26.260386>,  <30.556540, 28.648933, 25.544559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419127, 28.498171, 26.260386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153900, 28.278664, 26.056740>,  <29.994764, 28.146959, 25.934553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153900, 28.278664, 26.056740>,  <30.419127, 28.498171, 26.260386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153900, 28.278664, 26.056740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344412, -0.827511, 0.443403,
		-0.664623, 0.118660, 0.737697,
		-0.663066, -0.548767, -0.509114,
		29.954981, 28.114033, 25.904005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698868, 28.984629, 26.646481>,  <30.419127, 28.498171, 26.260386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698868, 28.984629, 26.646481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070501, 28.967491, 26.793430>,  <31.293482, 28.957209, 26.881599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070501, 28.967491, 26.793430>,  <30.698868, 28.984629, 26.646481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070501, 28.967491, 26.793430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319666, 0.592635, -0.739322,
		-0.186045, 0.804331, 0.564304,
		0.929086, -0.042842, 0.367374,
		31.349228, 28.954639, 26.903643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977343, 29.717934, 26.872005>,  <30.698868, 28.984629, 26.646481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977343, 29.717934, 26.872005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281885, 29.466652, 26.807888>,  <31.464611, 29.315884, 26.769419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281885, 29.466652, 26.807888>,  <30.977343, 29.717934, 26.872005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281885, 29.466652, 26.807888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416579, 0.663463, -0.621513,
		0.496785, 0.406420, 0.766830,
		0.761359, -0.628203, -0.160292,
		31.510292, 29.278191, 26.759800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489601, 30.183231, 26.865808>,  <30.977343, 29.717934, 26.872005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489601, 30.183231, 26.865808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656158, 29.860966, 26.697277>,  <31.756094, 29.667606, 26.596159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656158, 29.860966, 26.697277>,  <31.489601, 30.183231, 26.865808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656158, 29.860966, 26.697277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487136, 0.588983, -0.644824,
		0.767667, 0.063258, 0.637719,
		0.416395, -0.805666, -0.421328,
		31.781076, 29.619267, 26.570879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254864, 30.297457, 26.722267>,  <31.489601, 30.183231, 26.865808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254864, 30.297457, 26.722267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169731, 29.977402, 26.497952>,  <32.118652, 29.785370, 26.363361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169731, 29.977402, 26.497952>,  <32.254864, 30.297457, 26.722267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169731, 29.977402, 26.497952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630918, 0.325712, -0.704169,
		0.746087, -0.503681, 0.435499,
		-0.212829, -0.800135, -0.560791,
		32.105881, 29.737362, 26.329714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916958, 30.171734, 26.472126>,  <32.254864, 30.297457, 26.722267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916958, 30.171734, 26.472126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664505, 30.035614, 26.193310>,  <32.513031, 29.953941, 26.026020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664505, 30.035614, 26.193310>,  <32.916958, 30.171734, 26.472126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664505, 30.035614, 26.193310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571534, 0.403529, -0.714502,
		0.524421, -0.849329, -0.060188,
		-0.631135, -0.340301, -0.697039,
		32.475163, 29.933525, 25.984198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300816, 29.883566, 25.978943>,  <32.916958, 30.171734, 26.472126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300816, 29.883566, 25.978943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969540, 29.969784, 25.772007>,  <32.770775, 30.021515, 25.647846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969540, 29.969784, 25.772007>,  <33.300816, 29.883566, 25.978943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969540, 29.969784, 25.772007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551571, 0.477093, -0.684216,
		0.099340, -0.852011, -0.514012,
		-0.828191, 0.215544, -0.517339,
		32.721081, 30.034447, 25.616806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536240, 29.877867, 25.357698>,  <33.300816, 29.883566, 25.978943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536240, 29.877867, 25.357698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182270, 30.057003, 25.306545>,  <32.969891, 30.164484, 25.275854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182270, 30.057003, 25.306545>,  <33.536240, 29.877867, 25.357698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182270, 30.057003, 25.306545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420204, 0.649305, -0.633902,
		-0.200852, -0.614690, -0.762768,
		-0.884922, 0.447839, -0.127881,
		32.916794, 30.191355, 25.268181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359840, 29.845045, 24.593761>,  <33.536240, 29.877867, 25.357698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359840, 29.845045, 24.593761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173492, 30.152435, 24.769222>,  <33.061684, 30.336868, 24.874498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173492, 30.152435, 24.769222>,  <33.359840, 29.845045, 24.593761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173492, 30.152435, 24.769222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389500, 0.623220, -0.678150,
		-0.794518, -0.145071, -0.589657,
		-0.465866, 0.768474, 0.438654,
		33.033733, 30.382977, 24.900818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945358, 30.111076, 24.041225>,  <33.359840, 29.845045, 24.593761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945358, 30.111076, 24.041225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977757, 30.398758, 24.317249>,  <32.997196, 30.571367, 24.482864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977757, 30.398758, 24.317249>,  <32.945358, 30.111076, 24.041225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977757, 30.398758, 24.317249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276419, 0.648971, -0.708822,
		-0.957618, 0.248157, -0.146238,
		0.080995, 0.719204, 0.690062,
		33.002056, 30.614519, 24.524267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627972, 30.713985, 23.758373>,  <32.945358, 30.111076, 24.041225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627972, 30.713985, 23.758373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867168, 30.850742, 24.048344>,  <33.010685, 30.932796, 24.222326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867168, 30.850742, 24.048344>,  <32.627972, 30.713985, 23.758373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867168, 30.850742, 24.048344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277376, 0.760295, -0.587379,
		-0.751979, 0.552323, 0.359815,
		0.597988, 0.341892, 0.724927,
		33.046566, 30.953310, 24.265821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667675, 31.432119, 23.782797>,  <32.627972, 30.713985, 23.758373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667675, 31.432119, 23.782797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010601, 31.341450, 23.967678>,  <33.216358, 31.287048, 24.078606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010601, 31.341450, 23.967678>,  <32.667675, 31.432119, 23.782797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010601, 31.341450, 23.967678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458057, 0.745640, -0.483947,
		-0.234938, 0.626610, 0.743078,
		0.857314, -0.226674, 0.462202,
		33.267796, 31.273447, 24.106339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084045, 32.121243, 23.928091>,  <32.667675, 31.432119, 23.782797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084045, 32.121243, 23.928091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370575, 31.850342, 23.995277>,  <33.542492, 31.687801, 24.035589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370575, 31.850342, 23.995277>,  <33.084045, 32.121243, 23.928091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370575, 31.850342, 23.995277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648183, 0.556732, -0.519527,
		0.258337, 0.481023, 0.837782,
		0.716325, -0.677249, 0.167966,
		33.585472, 31.647167, 24.045668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669582, 32.553169, 24.211550>,  <33.084045, 32.121243, 23.928091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669582, 32.553169, 24.211550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813667, 32.208424, 24.068760>,  <33.900120, 32.001575, 23.983086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813667, 32.208424, 24.068760>,  <33.669582, 32.553169, 24.211550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813667, 32.208424, 24.068760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746073, 0.495877, -0.444389,
		0.560020, -0.106254, 0.821637,
		0.360213, -0.861868, -0.356975,
		33.921730, 31.949863, 23.961668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432327, 32.490406, 24.415926>,  <33.669582, 32.553169, 24.211550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432327, 32.490406, 24.415926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376049, 32.253521, 24.098564>,  <34.342281, 32.111389, 23.908146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376049, 32.253521, 24.098564>,  <34.432327, 32.490406, 24.415926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376049, 32.253521, 24.098564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758104, 0.450982, -0.471055,
		0.636775, -0.667759, 0.385506,
		-0.140695, -0.592210, -0.793405,
		34.333839, 32.075859, 23.860542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814255, 32.955425, 24.966288>,  <34.432327, 32.490406, 24.415926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814255, 32.955425, 24.966288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625168, 33.197384, 25.222610>,  <34.511715, 33.342560, 25.376404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625168, 33.197384, 25.222610>,  <34.814255, 32.955425, 24.966288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625168, 33.197384, 25.222610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047756, -0.708533, 0.704059,
		0.879918, 0.363424, 0.306049,
		-0.472719, 0.604899, 0.640807,
		34.483353, 33.378853, 25.414852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131828, 32.830276, 25.573498>,  <34.814255, 32.955425, 24.966288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131828, 32.830276, 25.573498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784363, 33.004353, 25.668190>,  <34.575886, 33.108799, 25.725006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784363, 33.004353, 25.668190>,  <35.131828, 32.830276, 25.573498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784363, 33.004353, 25.668190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027155, -0.518959, 0.854368,
		0.494663, 0.735727, 0.462617,
		-0.868660, 0.435186, 0.236732,
		34.523766, 33.134907, 25.739210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100025, 33.013031, 26.299429>,  <35.131828, 32.830276, 25.573498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100025, 33.013031, 26.299429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726177, 32.958088, 26.168209>,  <34.501869, 32.925121, 26.089478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726177, 32.958088, 26.168209>,  <35.100025, 33.013031, 26.299429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726177, 32.958088, 26.168209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224205, -0.488455, 0.843293,
		-0.276069, 0.861710, 0.425725,
		-0.934622, -0.137357, -0.328047,
		34.445789, 32.916882, 26.069796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742100, 33.134239, 26.832968>,  <35.100025, 33.013031, 26.299429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742100, 33.134239, 26.832968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486103, 32.946339, 26.589741>,  <34.332504, 32.833599, 26.443804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486103, 32.946339, 26.589741>,  <34.742100, 33.134239, 26.832968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486103, 32.946339, 26.589741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410628, -0.459790, 0.787386,
		-0.649460, 0.753609, 0.101367,
		-0.639989, -0.469752, -0.608069,
		34.294106, 32.805412, 26.407320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089058, 33.366047, 27.068005>,  <34.742100, 33.134239, 26.832968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089058, 33.366047, 27.068005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076279, 33.011837, 26.882607>,  <34.068611, 32.799313, 26.771368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076279, 33.011837, 26.882607>,  <34.089058, 33.366047, 27.068005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076279, 33.011837, 26.882607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386416, -0.416729, 0.822812,
		-0.921771, 0.205387, -0.328868,
		-0.031946, -0.885524, -0.463493,
		34.066696, 32.746181, 26.743559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571339, 33.091343, 27.374205>,  <34.089058, 33.366047, 27.068005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571339, 33.091343, 27.374205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702660, 32.777199, 27.164280>,  <33.781452, 32.588711, 27.038326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702660, 32.777199, 27.164280>,  <33.571339, 33.091343, 27.374205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702660, 32.777199, 27.164280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266731, -0.610076, 0.746097,
		-0.906129, -0.104966, -0.409772,
		0.328307, -0.785359, -0.524810,
		33.801151, 32.541592, 27.006838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000343, 32.487274, 27.366819>,  <33.571339, 33.091343, 27.374205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000343, 32.487274, 27.366819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354031, 32.312466, 27.300877>,  <33.566242, 32.207581, 27.261311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354031, 32.312466, 27.300877>,  <33.000343, 32.487274, 27.366819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354031, 32.312466, 27.300877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269798, -0.765987, 0.583501,
		-0.381278, -0.471463, -0.795204,
		0.884215, -0.437020, -0.164855,
		33.619293, 32.181358, 27.251421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733734, 31.816875, 27.264406>,  <33.000343, 32.487274, 27.366819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733734, 31.816875, 27.264406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123592, 31.802055, 27.352673>,  <33.357506, 31.793163, 27.405632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123592, 31.802055, 27.352673>,  <32.733734, 31.816875, 27.264406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123592, 31.802055, 27.352673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201530, -0.573847, 0.793779,
		0.097219, -0.818124, -0.566765,
		0.974646, -0.037050, 0.220665,
		33.415985, 31.790939, 27.418873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878288, 31.065199, 27.525852>,  <32.733734, 31.816875, 27.264406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878288, 31.065199, 27.525852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191864, 31.258724, 27.681477>,  <33.380009, 31.374840, 27.774851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191864, 31.258724, 27.681477>,  <32.878288, 31.065199, 27.525852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191864, 31.258724, 27.681477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162690, -0.444681, 0.880790,
		0.599148, -0.753778, -0.269889,
		0.783935, 0.483815, 0.389061,
		33.427044, 31.403870, 27.798195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218296, 30.548058, 27.836121>,  <32.878288, 31.065199, 27.525852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218296, 30.548058, 27.836121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328583, 30.892937, 28.006107>,  <33.394753, 31.099865, 28.108099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328583, 30.892937, 28.006107>,  <33.218296, 30.548058, 27.836121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328583, 30.892937, 28.006107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241812, -0.365670, 0.898784,
		0.930328, -0.350567, 0.107671,
		0.275712, 0.862199, 0.424965,
		33.411297, 31.151596, 28.133596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593697, 30.307972, 28.265629>,  <33.218296, 30.548058, 27.836121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593697, 30.307972, 28.265629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510300, 30.679451, 28.388302>,  <33.460262, 30.902338, 28.461905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510300, 30.679451, 28.388302>,  <33.593697, 30.307972, 28.265629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510300, 30.679451, 28.388302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176049, -0.344086, 0.922286,
		0.962049, 0.138296, 0.235234,
		-0.208489, 0.928697, 0.306681,
		33.447754, 30.958061, 28.480307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935070, 30.349291, 28.888390>,  <33.593697, 30.307972, 28.265629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935070, 30.349291, 28.888390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681030, 30.657425, 28.911106>,  <33.528606, 30.842306, 28.924736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681030, 30.657425, 28.911106>,  <33.935070, 30.349291, 28.888390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681030, 30.657425, 28.911106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184699, -0.222839, 0.957199,
		0.750020, 0.597430, 0.283807,
		-0.635103, 0.770337, 0.056789,
		33.490498, 30.888527, 28.928143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060658, 30.675659, 29.493673>,  <33.935070, 30.349291, 28.888390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060658, 30.675659, 29.493673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687687, 30.786411, 29.400795>,  <33.463905, 30.852863, 29.345068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687687, 30.786411, 29.400795>,  <34.060658, 30.675659, 29.493673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687687, 30.786411, 29.400795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245069, -0.012329, 0.969427,
		0.265552, 0.960825, 0.079351,
		-0.932429, 0.276879, -0.232194,
		33.407959, 30.869474, 29.331137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839607, 31.156729, 30.020329>,  <34.060658, 30.675659, 29.493673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839607, 31.156729, 30.020329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497356, 31.029530, 29.856976>,  <33.292004, 30.953211, 29.758965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497356, 31.029530, 29.856976>,  <33.839607, 31.156729, 30.020329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497356, 31.029530, 29.856976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447940, 0.059633, 0.892073,
		-0.259324, 0.946214, -0.193467,
		-0.855629, -0.317997, -0.408383,
		33.240669, 30.934130, 29.734461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254414, 31.581003, 30.326633>,  <33.839607, 31.156729, 30.020329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254414, 31.581003, 30.326633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105232, 31.231705, 30.201191>,  <33.015724, 31.022125, 30.125925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105232, 31.231705, 30.201191>,  <33.254414, 31.581003, 30.326633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105232, 31.231705, 30.201191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464854, -0.116665, 0.877668,
		-0.803007, 0.473107, -0.362422,
		-0.372949, -0.873246, -0.313608,
		32.993347, 30.969730, 30.107109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521816, 31.656330, 30.558134>,  <33.254414, 31.581003, 30.326633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521816, 31.656330, 30.558134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596882, 31.273090, 30.471581>,  <32.641922, 31.043146, 30.419647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596882, 31.273090, 30.471581>,  <32.521816, 31.656330, 30.558134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596882, 31.273090, 30.471581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297875, -0.265439, 0.916958,
		-0.935977, -0.107626, -0.335209,
		0.187666, -0.958102, -0.216386,
		32.653183, 30.985661, 30.406666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966486, 31.359831, 30.806583>,  <32.521816, 31.656330, 30.558134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966486, 31.359831, 30.806583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251965, 31.079945, 30.793713>,  <32.423252, 30.912012, 30.785990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251965, 31.079945, 30.793713>,  <31.966486, 31.359831, 30.806583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251965, 31.079945, 30.793713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269213, -0.316420, 0.909617,
		-0.646654, -0.640528, -0.414200,
		0.713697, -0.699716, -0.032176,
		32.466072, 30.870029, 30.784060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662912, 30.777121, 31.134790>,  <31.966486, 31.359831, 30.806583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662912, 30.777121, 31.134790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052181, 30.685631, 31.124798>,  <32.285744, 30.630737, 31.118803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052181, 30.685631, 31.124798>,  <31.662912, 30.777121, 31.134790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052181, 30.685631, 31.124798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045143, -0.296271, 0.954037,
		-0.225612, -0.927313, -0.298647,
		0.973171, -0.228724, -0.024981,
		32.344131, 30.617014, 31.117304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676359, 30.024872, 31.269119>,  <31.662912, 30.777121, 31.134790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676359, 30.024872, 31.269119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024105, 30.202023, 31.356815>,  <32.232754, 30.308313, 31.409433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024105, 30.202023, 31.356815>,  <31.676359, 30.024872, 31.269119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024105, 30.202023, 31.356815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008233, -0.430606, 0.902503,
		0.494105, -0.786408, -0.370706,
		0.869363, 0.442879, 0.219239,
		32.284916, 30.334887, 31.422586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130539, 29.486782, 31.390167>,  <31.676359, 30.024872, 31.269119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130539, 29.486782, 31.390167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281002, 29.810390, 31.570827>,  <32.371281, 30.004557, 31.679224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281002, 29.810390, 31.570827>,  <32.130539, 29.486782, 31.390167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281002, 29.810390, 31.570827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099806, -0.519994, 0.848319,
		0.921166, -0.274020, -0.276343,
		0.376153, 0.809023, 0.451652,
		32.393848, 30.053097, 31.706324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629539, 29.177174, 31.845697>,  <32.130539, 29.486782, 31.390167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629539, 29.177174, 31.845697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554379, 29.547760, 31.976143>,  <32.509281, 29.770113, 32.054409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554379, 29.547760, 31.976143>,  <32.629539, 29.177174, 31.845697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554379, 29.547760, 31.976143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044891, -0.339783, 0.939432,
		0.981161, 0.161881, 0.105435,
		-0.187901, 0.926468, 0.326115,
		32.498009, 29.825701, 32.073978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945335, 29.214455, 32.511398>,  <32.629539, 29.177174, 31.845697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945335, 29.214455, 32.511398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688545, 29.520756, 32.495937>,  <32.534473, 29.704536, 32.486660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688545, 29.520756, 32.495937>,  <32.945335, 29.214455, 32.511398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688545, 29.520756, 32.495937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349606, -0.247480, 0.903620,
		0.682385, 0.593612, 0.426587,
		-0.641971, 0.765754, -0.038654,
		32.495953, 29.750483, 32.484341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995701, 29.617443, 33.214867>,  <32.945335, 29.214455, 32.511398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995701, 29.617443, 33.214867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634544, 29.708908, 33.069260>,  <32.417850, 29.763786, 32.981895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634544, 29.708908, 33.069260>,  <32.995701, 29.617443, 33.214867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634544, 29.708908, 33.069260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403975, -0.161833, 0.900341,
		0.146964, 0.959960, 0.238491,
		-0.902887, 0.228662, -0.364017,
		32.363678, 29.777506, 32.960056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641026, 29.958010, 33.794422>,  <32.995701, 29.617443, 33.214867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641026, 29.958010, 33.794422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343018, 29.877747, 33.539963>,  <32.164211, 29.829590, 33.387287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343018, 29.877747, 33.539963>,  <32.641026, 29.958010, 33.794422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343018, 29.877747, 33.539963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631211, -0.096294, 0.769610,
		-0.215684, 0.974918, -0.054916,
		-0.745019, -0.200656, -0.636148,
		32.119511, 29.817549, 33.349117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987944, 30.309238, 34.094379>,  <32.641026, 29.958010, 33.794422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987944, 30.309238, 34.094379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888395, 30.009171, 33.849331>,  <31.828667, 29.829130, 33.702301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888395, 30.009171, 33.849331>,  <31.987944, 30.309238, 34.094379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888395, 30.009171, 33.849331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543756, -0.415214, 0.729333,
		-0.801494, 0.514626, -0.304577,
		-0.248869, -0.750172, -0.612622,
		31.813734, 29.784119, 33.665543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290398, 30.247944, 34.231544>,  <31.987944, 30.309238, 34.094379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290398, 30.247944, 34.231544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372595, 29.902512, 34.047371>,  <31.421913, 29.695251, 33.936867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372595, 29.902512, 34.047371>,  <31.290398, 30.247944, 34.231544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372595, 29.902512, 34.047371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481651, -0.498794, 0.720567,
		-0.851930, 0.073696, -0.518444,
		0.205495, -0.863582, -0.460433,
		31.434244, 29.643436, 33.909241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664860, 29.878042, 34.254353>,  <31.290398, 30.247944, 34.231544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664860, 29.878042, 34.254353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949371, 29.601585, 34.203125>,  <31.120079, 29.435711, 34.172386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949371, 29.601585, 34.203125>,  <30.664860, 29.878042, 34.254353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949371, 29.601585, 34.203125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450105, -0.587788, 0.672243,
		-0.539897, -0.420506, -0.729168,
		0.711279, -0.691144, -0.128073,
		31.162754, 29.394241, 34.164703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303715, 29.202375, 33.991280>,  <30.664860, 29.878042, 34.254353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303715, 29.202375, 33.991280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654459, 29.137878, 34.172440>,  <30.864906, 29.099180, 34.281136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654459, 29.137878, 34.172440>,  <30.303715, 29.202375, 33.991280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654459, 29.137878, 34.172440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396254, -0.775839, 0.490975,
		0.272211, -0.609979, -0.744195,
		0.876860, -0.161242, 0.452898,
		30.917517, 29.089506, 34.308308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680519, 28.849688, 33.584438>,  <30.303715, 29.202375, 33.991280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680519, 28.849688, 33.584438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289082, 28.928444, 33.608395>,  <29.054218, 28.975697, 33.622768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289082, 28.928444, 33.608395>,  <29.680519, 28.849688, 33.584438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289082, 28.928444, 33.608395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079414, 0.629747, -0.772730,
		-0.189855, -0.751434, -0.631903,
		-0.978596, 0.196889, 0.059886,
		28.995502, 28.987511, 33.626362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390877, 28.720764, 32.947628>,  <29.680519, 28.849688, 33.584438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390877, 28.720764, 32.947628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120481, 28.960442, 33.119213>,  <28.958244, 29.104248, 33.222164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120481, 28.960442, 33.119213>,  <29.390877, 28.720764, 32.947628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120481, 28.960442, 33.119213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045820, 0.546799, -0.836009,
		-0.735485, -0.584789, -0.342176,
		-0.675990, 0.599193, 0.428958,
		28.917685, 29.140200, 33.247902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854553, 28.780886, 32.419888>,  <29.390877, 28.720764, 32.947628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854553, 28.780886, 32.419888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856312, 29.090202, 32.673500>,  <28.857367, 29.275793, 32.825668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856312, 29.090202, 32.673500>,  <28.854553, 28.780886, 32.419888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856312, 29.090202, 32.673500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113692, 0.629543, -0.768602,
		-0.993506, 0.075465, -0.085148,
		0.004398, 0.773292, 0.634035,
		28.857632, 29.322189, 32.863712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433956, 29.217691, 32.129017>,  <28.854553, 28.780886, 32.419888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433956, 29.217691, 32.129017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615011, 29.453926, 32.396248>,  <28.723644, 29.595667, 32.556587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615011, 29.453926, 32.396248>,  <28.433956, 29.217691, 32.129017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615011, 29.453926, 32.396248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110092, 0.706475, -0.699123,
		-0.884871, 0.390000, 0.254759,
		0.452639, 0.590587, 0.668076,
		28.750803, 29.631102, 32.596672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172617, 29.971539, 32.049236>,  <28.433956, 29.217691, 32.129017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172617, 29.971539, 32.049236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534794, 29.958946, 32.218555>,  <28.752100, 29.951391, 32.320148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534794, 29.958946, 32.218555>,  <28.172617, 29.971539, 32.049236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534794, 29.958946, 32.218555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303184, 0.745907, -0.593045,
		-0.297071, 0.665306, 0.684921,
		0.905444, -0.031480, 0.423298,
		28.806427, 29.949503, 32.345543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
