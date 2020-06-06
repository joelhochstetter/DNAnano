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
	<4.453015, 14.430425, 14.678711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.488396, 14.698233, 14.973715>,  <4.509624, 14.858917, 15.150717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.488396, 14.698233, 14.973715>,  <4.453015, 14.430425, 14.678711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.488396, 14.698233, 14.973715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992596, -0.121123, -0.009087,
		0.083246, 0.732853, -0.675275,
		0.088451, 0.669519, 0.737510,
		4.514931, 14.899088, 15.194968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.660638, 15.011209, 14.376008>,  <4.453015, 14.430425, 14.678711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.660638, 15.011209, 14.376008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.761179, 14.886889, 14.742663>,  <4.821504, 14.812298, 14.962656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.761179, 14.886889, 14.742663>,  <4.660638, 15.011209, 14.376008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.761179, 14.886889, 14.742663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874226, -0.333542, -0.352816,
		0.415392, 0.890030, 0.187873,
		0.251353, -0.310800, 0.916638,
		4.836585, 14.793650, 15.017654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.328136, 15.088253, 14.389114>,  <4.660638, 15.011209, 14.376008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.328136, 15.088253, 14.389114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.234914, 14.805516, 14.656265>,  <5.178981, 14.635875, 14.816556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.234914, 14.805516, 14.656265>,  <5.328136, 15.088253, 14.389114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.234914, 14.805516, 14.656265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787242, -0.540329, -0.297144,
		0.570907, 0.456531, 0.682381,
		-0.233054, -0.706841, 0.667878,
		5.164998, 14.593464, 14.856628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.141908, 15.098628, 14.239889>,  <5.328136, 15.088253, 14.389114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.141908, 15.098628, 14.239889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.504016, 15.104155, 14.070044>,  <6.721281, 15.107471, 13.968137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.504016, 15.104155, 14.070044>,  <6.141908, 15.098628, 14.239889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.504016, 15.104155, 14.070044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184583, -0.887414, -0.422405,
		-0.382644, 0.460766, -0.800799,
		0.905270, 0.013817, -0.424613,
		6.775597, 15.108300, 13.942659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.107642, 14.715101, 13.447772>,  <6.141908, 15.098628, 14.239889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.107642, 14.715101, 13.447772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.479997, 14.707381, 13.593690>,  <6.703410, 14.702749, 13.681241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.479997, 14.707381, 13.593690>,  <6.107642, 14.715101, 13.447772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.479997, 14.707381, 13.593690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123677, -0.922982, -0.364430,
		0.343733, 0.384360, -0.856805,
		0.930887, -0.019300, 0.364796,
		6.759264, 14.701591, 13.703129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.568584, 14.562857, 12.791782>,  <6.107642, 14.715101, 13.447772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.568584, 14.562857, 12.791782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.752693, 14.459420, 13.131495>,  <6.863158, 14.397359, 13.335323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.752693, 14.459420, 13.131495>,  <6.568584, 14.562857, 12.791782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.752693, 14.459420, 13.131495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218107, -0.894382, -0.390525,
		0.860570, 0.364982, -0.355257,
		0.460270, -0.258590, 0.849284,
		6.890774, 14.381844, 13.386281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.275990, 14.364464, 12.597715>,  <6.568584, 14.562857, 12.791782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.275990, 14.364464, 12.597715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.187993, 14.188293, 12.945883>,  <7.135194, 14.082591, 13.154783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.187993, 14.188293, 12.945883>,  <7.275990, 14.364464, 12.597715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.187993, 14.188293, 12.945883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449023, -0.837851, -0.310458,
		0.866015, 0.322540, 0.382082,
		-0.219992, -0.440425, 0.870419,
		7.121995, 14.056166, 13.207008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.760103, 13.799365, 12.627604>,  <7.275990, 14.364464, 12.597715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.760103, 13.799365, 12.627604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.514780, 13.686231, 12.922591>,  <7.367586, 13.618350, 13.099584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.514780, 13.686231, 12.922591>,  <7.760103, 13.799365, 12.627604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.514780, 13.686231, 12.922591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204633, -0.958706, -0.197506,
		0.762876, 0.029778, 0.645859,
		-0.613307, -0.282836, 0.737467,
		7.330787, 13.601379, 13.143831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.046295, 13.241786, 12.863759>,  <7.760103, 13.799365, 12.627604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.046295, 13.241786, 12.863759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.683898, 13.198702, 13.027503>,  <7.466460, 13.172852, 13.125750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.683898, 13.198702, 13.027503>,  <8.046295, 13.241786, 12.863759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.683898, 13.198702, 13.027503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056334, -0.989163, -0.135587,
		0.419528, -0.099780, 0.902242,
		-0.905992, -0.107710, 0.409361,
		7.412100, 13.166389, 13.150311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.209961, 12.742860, 13.143537>,  <8.046295, 13.241786, 12.863759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.209961, 12.742860, 13.143537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.810083, 12.740278, 13.133985>,  <7.570157, 12.738729, 13.128254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.810083, 12.740278, 13.133985>,  <8.209961, 12.742860, 13.143537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.810083, 12.740278, 13.133985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011287, -0.978024, -0.208188,
		-0.022011, -0.208394, 0.977797,
		-0.999694, -0.006454, -0.023879,
		7.510175, 12.738342, 13.126821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.004558, 12.053280, 13.403385>,  <8.209961, 12.742860, 13.143537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.004558, 12.053280, 13.403385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.697458, 12.201159, 13.194049>,  <7.513198, 12.289887, 13.068447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.697458, 12.201159, 13.194049>,  <8.004558, 12.053280, 13.403385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.697458, 12.201159, 13.194049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078910, -0.865096, -0.495360,
		-0.635873, -0.339016, 0.693350,
		-0.767749, 0.369699, -0.523339,
		7.467134, 12.312069, 13.037047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.401686, 11.691476, 13.607489>,  <8.004558, 12.053280, 13.403385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.401686, 11.691476, 13.607489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.333195, 11.843303, 13.243816>,  <7.292101, 11.934399, 13.025613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.333195, 11.843303, 13.243816>,  <7.401686, 11.691476, 13.607489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.333195, 11.843303, 13.243816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138863, -0.922895, -0.359141,
		-0.975397, 0.064758, 0.210732,
		-0.171227, 0.379568, -0.909181,
		7.281827, 11.957173, 12.971062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.806671, 11.380775, 13.370231>,  <7.401686, 11.691476, 13.607489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.806671, 11.380775, 13.370231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.932583, 11.501301, 13.010203>,  <7.008130, 11.573616, 12.794187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.932583, 11.501301, 13.010203>,  <6.806671, 11.380775, 13.370231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.932583, 11.501301, 13.010203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241747, -0.891551, -0.383009,
		-0.917863, 0.338152, -0.207800,
		0.314780, 0.301315, -0.900068,
		7.027017, 11.591695, 12.740183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.205285, 11.358042, 12.900219>,  <6.806671, 11.380775, 13.370231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.205285, 11.358042, 12.900219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.552835, 11.343999, 12.702704>,  <6.761364, 11.335573, 12.584196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.552835, 11.343999, 12.702704>,  <6.205285, 11.358042, 12.900219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.552835, 11.343999, 12.702704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296847, -0.835197, -0.462955,
		-0.396155, 0.548829, -0.736104,
		0.868875, -0.035108, -0.493785,
		6.813497, 11.333467, 12.554569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.021286, 11.048284, 12.311415>,  <6.205285, 11.358042, 12.900219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.021286, 11.048284, 12.311415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.416470, 11.049287, 12.249537>,  <6.653580, 11.049889, 12.212411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.416470, 11.049287, 12.249537>,  <6.021286, 11.048284, 12.311415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.416470, 11.049287, 12.249537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077194, -0.858524, -0.506930,
		-0.134079, 0.512768, -0.847993,
		0.987959, 0.002509, -0.154692,
		6.712858, 11.050039, 12.203130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.045803, 11.026270, 11.571814>,  <6.021286, 11.048284, 12.311415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.045803, 11.026270, 11.571814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.360463, 10.882971, 11.772946>,  <6.549259, 10.796991, 11.893626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.360463, 10.882971, 11.772946>,  <6.045803, 11.026270, 11.571814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.360463, 10.882971, 11.772946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164996, -0.906799, -0.387933,
		0.594944, 0.222202, -0.772443,
		0.786650, -0.358249, 0.502832,
		6.596458, 10.775496, 11.923796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.324800, 10.552252, 11.065794>,  <6.045803, 11.026270, 11.571814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.324800, 10.552252, 11.065794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.422972, 10.465223, 11.443667>,  <6.481874, 10.413006, 11.670391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.422972, 10.465223, 11.443667>,  <6.324800, 10.552252, 11.065794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.422972, 10.465223, 11.443667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222049, -0.961198, -0.163687,
		0.943641, -0.169592, -0.284217,
		0.245429, -0.217572, 0.944683,
		6.496601, 10.399952, 11.727073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.699423, 9.934070, 10.960699>,  <6.324800, 10.552252, 11.065794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.699423, 9.934070, 10.960699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.602290, 9.960483, 11.347826>,  <6.544010, 9.976331, 11.580102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.602290, 9.960483, 11.347826>,  <6.699423, 9.934070, 10.960699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.602290, 9.960483, 11.347826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169138, -0.985281, 0.024786,
		0.955209, -0.157676, 0.250427,
		-0.242833, 0.066033, 0.967818,
		6.529440, 9.980292, 11.638171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.024404, 9.379251, 11.227671>,  <6.699423, 9.934070, 10.960699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.024404, 9.379251, 11.227671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.737669, 9.488599, 11.484238>,  <6.565629, 9.554208, 11.638178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.737669, 9.488599, 11.484238>,  <7.024404, 9.379251, 11.227671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.737669, 9.488599, 11.484238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147881, -0.958614, 0.243290,
		0.681380, 0.079545, 0.727594,
		-0.716835, 0.273370, 0.641417,
		6.522619, 9.570610, 11.676662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.236713, 9.182779, 11.957871>,  <7.024404, 9.379251, 11.227671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.236713, 9.182779, 11.957871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.838598, 9.208739, 11.929056>,  <6.599729, 9.224315, 11.911767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.838598, 9.208739, 11.929056>,  <7.236713, 9.182779, 11.957871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.838598, 9.208739, 11.929056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090852, -0.883758, 0.459040,
		-0.033874, 0.463422, 0.885490,
		-0.995288, 0.064899, -0.072039,
		6.540011, 9.228209, 11.907445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.016163, 8.966351, 12.582414>,  <7.236713, 9.182779, 11.957871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.016163, 8.966351, 12.582414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.701878, 8.932189, 12.337346>,  <6.513307, 8.911693, 12.190306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.701878, 8.932189, 12.337346>,  <7.016163, 8.966351, 12.582414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.701878, 8.932189, 12.337346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183326, -0.913782, 0.362483,
		-0.590803, 0.397125, 0.702313,
		-0.785712, -0.085403, -0.612668,
		6.466165, 8.906568, 12.153545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.570675, 8.557161, 13.022660>,  <7.016163, 8.966351, 12.582414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.570675, 8.557161, 13.022660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.438280, 8.553004, 12.645229>,  <6.358842, 8.550509, 12.418771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.438280, 8.553004, 12.645229>,  <6.570675, 8.557161, 13.022660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.438280, 8.553004, 12.645229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157269, -0.985346, 0.066020,
		-0.930437, 0.170248, 0.324504,
		-0.330989, -0.010393, -0.943577,
		6.338983, 8.549887, 12.362156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.007133, 8.202706, 13.129041>,  <6.570675, 8.557161, 13.022660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.007133, 8.202706, 13.129041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.097506, 8.194755, 12.739465>,  <6.151730, 8.189983, 12.505719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.097506, 8.194755, 12.739465>,  <6.007133, 8.202706, 13.129041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.097506, 8.194755, 12.739465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061417, -0.998093, 0.006125,
		-0.972206, 0.058433, -0.226721,
		0.225931, -0.019879, -0.973940,
		6.165285, 8.188791, 12.447283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.512534, 7.683749, 12.865903>,  <6.007133, 8.202706, 13.129041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.512534, 7.683749, 12.865903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.838160, 7.749830, 12.643189>,  <6.033535, 7.789479, 12.509562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.838160, 7.749830, 12.643189>,  <5.512534, 7.683749, 12.865903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.838160, 7.749830, 12.643189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273642, -0.954712, 0.116816,
		-0.512269, -0.247454, -0.822403,
		0.814064, 0.165203, -0.556783,
		6.082379, 7.799391, 12.476154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.468412, 7.130879, 12.424177>,  <5.512534, 7.683749, 12.865903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.468412, 7.130879, 12.424177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.837439, 7.268173, 12.353679>,  <6.058854, 7.350549, 12.311379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.837439, 7.268173, 12.353679>,  <5.468412, 7.130879, 12.424177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.837439, 7.268173, 12.353679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325682, -0.937667, -0.121291,
		-0.206890, 0.054499, -0.976845,
		0.922566, 0.343235, -0.176245,
		6.114208, 7.371143, 12.300805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.880061, 6.927311, 11.685022>,  <5.468412, 7.130879, 12.424177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.880061, 6.927311, 11.685022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.134013, 6.992750, 11.987060>,  <6.286384, 7.032013, 12.168282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.134013, 6.992750, 11.987060>,  <5.880061, 6.927311, 11.685022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.134013, 6.992750, 11.987060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318238, -0.945940, -0.062628,
		0.704027, 0.280060, -0.652619,
		0.634878, 0.163596, 0.755093,
		6.324476, 7.041829, 12.213588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.600665, 6.746187, 11.463424>,  <5.880061, 6.927311, 11.685022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.600665, 6.746187, 11.463424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.485567, 6.696816, 11.843312>,  <6.416508, 6.667194, 12.071245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.485567, 6.696816, 11.843312>,  <6.600665, 6.746187, 11.463424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.485567, 6.696816, 11.843312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004678, -0.991830, -0.127480,
		0.957696, -0.032239, 0.285971,
		-0.287745, -0.123425, 0.949720,
		6.399243, 6.659789, 12.128228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.162225, 6.805086, 10.837614>,  <6.600665, 6.746187, 11.463424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.162225, 6.805086, 10.837614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.789605, 6.709170, 10.728275>,  <6.566033, 6.651620, 10.662672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.789605, 6.709170, 10.728275>,  <7.162225, 6.805086, 10.837614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.789605, 6.709170, 10.728275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075881, 0.606993, -0.791076,
		0.355611, -0.757668, -0.547248,
		-0.931549, -0.239790, -0.273346,
		6.510140, 6.637233, 10.646272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.235826, 6.092566, 10.567348>,  <7.162225, 6.805086, 10.837614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.235826, 6.092566, 10.567348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.257053, 5.807302, 10.846945>,  <7.269789, 5.636145, 11.014703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.257053, 5.807302, 10.846945>,  <7.235826, 6.092566, 10.567348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.257053, 5.807302, 10.846945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254829, 0.686474, 0.681040,
		-0.965529, 0.141983, 0.218163,
		0.053067, -0.713158, 0.698992,
		7.272973, 5.593355, 11.056643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.865996, 6.126376, 10.091820>,  <7.235826, 6.092566, 10.567348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.865996, 6.126376, 10.091820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.934330, 5.852461, 10.375195>,  <7.975330, 5.688112, 10.545219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.934330, 5.852461, 10.375195>,  <7.865996, 6.126376, 10.091820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.934330, 5.852461, 10.375195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941744, -0.097932, -0.321757,
		0.289714, 0.722133, 0.628164,
		0.170834, -0.684787, 0.708437,
		7.985580, 5.647025, 10.587726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.447363, 5.795156, 9.861577>,  <7.865996, 6.126376, 10.091820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.447363, 5.795156, 9.861577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.732997, 5.574859, 9.688712>,  <8.904377, 5.442680, 9.584993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.732997, 5.574859, 9.688712>,  <8.447363, 5.795156, 9.861577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.732997, 5.574859, 9.688712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514621, 0.005544, -0.857400,
		0.474603, 0.834656, -0.279465,
		0.714085, -0.550743, -0.432163,
		8.947223, 5.409636, 9.559063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.040931, 5.971167, 10.142395>,  <8.447363, 5.795156, 9.861577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.040931, 5.971167, 10.142395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.428926, 5.924298, 10.227621>,  <9.661722, 5.896177, 10.278757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.428926, 5.924298, 10.227621>,  <9.040931, 5.971167, 10.142395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.428926, 5.924298, 10.227621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181650, 0.931678, -0.314609,
		-0.161646, 0.343870, 0.925000,
		0.969986, -0.117171, 0.213066,
		9.719921, 5.889147, 10.291541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.406537, 6.395932, 10.628444>,  <9.040931, 5.971167, 10.142395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.406537, 6.395932, 10.628444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.703417, 6.311943, 10.373869>,  <9.881545, 6.261550, 10.221125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.703417, 6.311943, 10.373869>,  <9.406537, 6.395932, 10.628444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.703417, 6.311943, 10.373869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219172, 0.973480, -0.065575,
		0.633326, -0.090819, 0.768537,
		0.742201, -0.209972, -0.636436,
		9.926077, 6.248951, 10.182939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.073484, 6.758028, 10.776995>,  <9.406537, 6.395932, 10.628444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.073484, 6.758028, 10.776995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.048327, 6.676250, 10.386252>,  <10.033233, 6.627182, 10.151807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.048327, 6.676250, 10.386252>,  <10.073484, 6.758028, 10.776995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.048327, 6.676250, 10.386252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304385, 0.928230, -0.213866,
		0.950471, -0.310791, 0.003851,
		-0.062893, -0.204445, -0.976855,
		10.029459, 6.614916, 10.093196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.704732, 6.911020, 10.372557>,  <10.073484, 6.758028, 10.776995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.704732, 6.911020, 10.372557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.350273, 6.981147, 10.200972>,  <10.137598, 7.023223, 10.098021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.350273, 6.981147, 10.200972>,  <10.704732, 6.911020, 10.372557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.350273, 6.981147, 10.200972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112379, 0.979342, 0.168108,
		0.449573, 0.100762, -0.887542,
		-0.886146, 0.175318, -0.428963,
		10.084430, 7.033742, 10.072283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.795236, 7.612224, 10.112076>,  <10.704732, 6.911020, 10.372557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.795236, 7.612224, 10.112076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.401312, 7.563485, 10.062596>,  <10.164957, 7.534241, 10.032908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.401312, 7.563485, 10.062596>,  <10.795236, 7.612224, 10.112076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.401312, 7.563485, 10.062596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145420, 0.968080, 0.204142,
		0.094876, 0.219030, -0.971095,
		-0.984811, -0.121848, -0.123699,
		10.105868, 7.526930, 10.025487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.474860, 8.270578, 9.754363>,  <10.795236, 7.612224, 10.112076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.474860, 8.270578, 9.754363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.169757, 8.093513, 9.942937>,  <9.986695, 7.987275, 10.056081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.169757, 8.093513, 9.942937>,  <10.474860, 8.270578, 9.754363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.169757, 8.093513, 9.942937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304218, 0.888918, 0.342456,
		-0.570659, 0.117792, -0.812695,
		-0.762758, -0.442663, 0.471435,
		9.940929, 7.960715, 10.084368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.859593, 8.706700, 9.603112>,  <10.474860, 8.270578, 9.754363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.859593, 8.706700, 9.603112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.790658, 8.501400, 9.939415>,  <9.749297, 8.378220, 10.141197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.790658, 8.501400, 9.939415>,  <9.859593, 8.706700, 9.603112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.790658, 8.501400, 9.939415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218661, 0.852166, 0.475394,
		-0.960462, -0.101912, -0.259089,
		-0.172339, -0.513251, 0.840758,
		9.738956, 8.347425, 10.191642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.341155, 9.047621, 9.994399>,  <9.859593, 8.706700, 9.603112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.341155, 9.047621, 9.994399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.497842, 8.807366, 10.273195>,  <9.591854, 8.663214, 10.440473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.497842, 8.807366, 10.273195>,  <9.341155, 9.047621, 9.994399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.497842, 8.807366, 10.273195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136416, 0.787068, 0.601593,
		-0.909917, -0.140573, 0.390244,
		0.391716, -0.600636, 0.696990,
		9.615356, 8.627175, 10.482292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.989929, 9.233856, 10.552701>,  <9.341155, 9.047621, 9.994399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.989929, 9.233856, 10.552701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.334509, 9.070046, 10.672831>,  <9.541257, 8.971761, 10.744908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.334509, 9.070046, 10.672831>,  <8.989929, 9.233856, 10.552701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.334509, 9.070046, 10.672831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123296, 0.742334, 0.658588,
		-0.492649, -0.530311, 0.689976,
		0.861450, -0.409524, 0.300325,
		9.592944, 8.947189, 10.762928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.946406, 9.279275, 11.239164>,  <8.989929, 9.233856, 10.552701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.946406, 9.279275, 11.239164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.333924, 9.238092, 11.148977>,  <9.566435, 9.213383, 11.094865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.333924, 9.238092, 11.148977>,  <8.946406, 9.279275, 11.239164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.333924, 9.238092, 11.148977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241245, 0.600452, 0.762403,
		0.056888, -0.793005, 0.606553,
		0.968795, -0.102957, -0.225467,
		9.624563, 9.207206, 11.081337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.233383, 9.229207, 11.925455>,  <8.946406, 9.279275, 11.239164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.233383, 9.229207, 11.925455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.550534, 9.270965, 11.685307>,  <9.740825, 9.296020, 11.541218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.550534, 9.270965, 11.685307>,  <9.233383, 9.229207, 11.925455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.550534, 9.270965, 11.685307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438564, 0.586276, 0.681133,
		0.423089, -0.803357, 0.419063,
		0.792879, 0.104394, -0.600371,
		9.788398, 9.302283, 11.505196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.868354, 9.161160, 12.294885>,  <9.233383, 9.229207, 11.925455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.868354, 9.161160, 12.294885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.967919, 9.379844, 11.975098>,  <10.027658, 9.511054, 11.783225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.967919, 9.379844, 11.975098>,  <9.868354, 9.161160, 12.294885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.967919, 9.379844, 11.975098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333840, 0.726432, 0.600706,
		0.909172, -0.416418, -0.001695,
		0.248913, 0.546711, -0.799468,
		10.042593, 9.543857, 11.735257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.461690, 9.419334, 12.517630>,  <9.868354, 9.161160, 12.294885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.461690, 9.419334, 12.517630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.333261, 9.654129, 12.220345>,  <10.256203, 9.795006, 12.041975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.333261, 9.654129, 12.220345>,  <10.461690, 9.419334, 12.517630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.333261, 9.654129, 12.220345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119026, 0.803547, 0.583219,
		0.939545, 0.098795, -0.327864,
		-0.321073, 0.586985, -0.743209,
		10.236938, 9.830225, 11.997383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.917879, 9.917378, 12.516042>,  <10.461690, 9.419334, 12.517630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.917879, 9.917378, 12.516042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.617980, 10.060441, 12.293345>,  <10.438041, 10.146278, 12.159728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.617980, 10.060441, 12.293345>,  <10.917879, 9.917378, 12.516042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.617980, 10.060441, 12.293345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012088, 0.833806, 0.551926,
		0.661613, 0.420535, -0.620821,
		-0.749748, 0.357657, -0.556740,
		10.393056, 10.167738, 12.126324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.120384, 10.627603, 12.384351>,  <10.917879, 9.917378, 12.516042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.120384, 10.627603, 12.384351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.724810, 10.591812, 12.337022>,  <10.487465, 10.570337, 12.308624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.724810, 10.591812, 12.337022>,  <11.120384, 10.627603, 12.384351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.724810, 10.591812, 12.337022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135848, 0.866672, 0.480027,
		0.059596, 0.490790, -0.869238,
		-0.988936, -0.089477, -0.118323,
		10.428129, 10.564969, 12.301525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.835780, 11.165936, 11.924747>,  <11.120384, 10.627603, 12.384351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.835780, 11.165936, 11.924747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.521870, 11.024556, 12.128394>,  <10.333524, 10.939728, 12.250583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.521870, 11.024556, 12.128394>,  <10.835780, 11.165936, 11.924747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.521870, 11.024556, 12.128394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203675, 0.922900, 0.326760,
		-0.585358, 0.152738, -0.796258,
		-0.784775, -0.353450, 0.509118,
		10.286437, 10.918521, 12.281130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.302851, 11.636374, 11.837398>,  <10.835780, 11.165936, 11.924747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.302851, 11.636374, 11.837398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.162774, 11.468520, 12.172365>,  <10.078728, 11.367807, 12.373345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.162774, 11.468520, 12.172365>,  <10.302851, 11.636374, 11.837398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.162774, 11.468520, 12.172365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273855, 0.900836, 0.336893,
		-0.895750, -0.111354, -0.430386,
		-0.350193, -0.419636, 0.837419,
		10.057716, 11.342629, 12.423591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.647532, 11.926554, 11.928859>,  <10.302851, 11.636374, 11.837398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.647532, 11.926554, 11.928859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.775935, 11.804677, 12.287549>,  <9.852977, 11.731551, 12.502764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.775935, 11.804677, 12.287549>,  <9.647532, 11.926554, 11.928859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.775935, 11.804677, 12.287549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198243, 0.904243, 0.378212,
		-0.926096, -0.299178, 0.229864,
		0.321006, -0.304692, 0.896726,
		9.872237, 11.713269, 12.556567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.129330, 12.018248, 12.382162>,  <9.647532, 11.926554, 11.928859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.129330, 12.018248, 12.382162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.442743, 12.028989, 12.630469>,  <9.630792, 12.035434, 12.779453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.442743, 12.028989, 12.630469>,  <9.129330, 12.018248, 12.382162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.442743, 12.028989, 12.630469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396918, 0.790284, 0.466806,
		-0.478047, -0.612152, 0.629874,
		0.783535, 0.026853, 0.620767,
		9.677804, 12.037045, 12.816699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.746739, 12.271121, 12.910895>,  <9.129330, 12.018248, 12.382162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.746739, 12.271121, 12.910895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.131276, 12.305700, 13.015470>,  <9.361999, 12.326448, 13.078215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.131276, 12.305700, 13.015470>,  <8.746739, 12.271121, 12.910895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.131276, 12.305700, 13.015470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225952, 0.790304, 0.569531,
		-0.157379, -0.606586, 0.779285,
		0.961341, 0.086449, 0.261437,
		9.419679, 12.331635, 13.093901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.785491, 12.372478, 13.640321>,  <8.746739, 12.271121, 12.910895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.785491, 12.372478, 13.640321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.135068, 12.514470, 13.507526>,  <9.344814, 12.599665, 13.427850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.135068, 12.514470, 13.507526>,  <8.785491, 12.372478, 13.640321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.135068, 12.514470, 13.507526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092951, 0.792521, 0.602719,
		0.477058, -0.495883, 0.725614,
		0.873942, 0.354978, -0.331986,
		9.397251, 12.620964, 13.407930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.148203, 12.625712, 14.224297>,  <8.785491, 12.372478, 13.640321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.148203, 12.625712, 14.224297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.372240, 12.782805, 13.932528>,  <9.506662, 12.877061, 13.757466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.372240, 12.782805, 13.932528>,  <9.148203, 12.625712, 14.224297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.372240, 12.782805, 13.932528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057678, 0.859866, 0.507252,
		0.826419, -0.326180, 0.458954,
		0.560094, 0.392731, -0.729423,
		9.540268, 12.900625, 13.713700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.691004, 12.905169, 14.579037>,  <9.148203, 12.625712, 14.224297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.691004, 12.905169, 14.579037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.645006, 13.086123, 14.225285>,  <9.617408, 13.194695, 14.013034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.645006, 13.086123, 14.225285>,  <9.691004, 12.905169, 14.579037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.645006, 13.086123, 14.225285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007178, 0.890640, 0.454652,
		0.993340, 0.045934, -0.105666,
		-0.114995, 0.452382, -0.884379,
		9.610508, 13.221837, 13.959970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.204130, 13.363885, 14.432402>,  <9.691004, 12.905169, 14.579037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.204130, 13.363885, 14.432402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.891207, 13.484803, 14.214554>,  <9.703453, 13.557354, 14.083845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.891207, 13.484803, 14.214554>,  <10.204130, 13.363885, 14.432402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.891207, 13.484803, 14.214554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118182, 0.786426, 0.606273,
		0.611577, 0.538657, -0.579502,
		-0.782309, 0.302296, -0.544620,
		9.656514, 13.575492, 14.051167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.255852, 14.059395, 14.316040>,  <10.204130, 13.363885, 14.432402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.255852, 14.059395, 14.316040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.871718, 13.947853, 14.316587>,  <9.641238, 13.880928, 14.316916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.871718, 13.947853, 14.316587>,  <10.255852, 14.059395, 14.316040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.871718, 13.947853, 14.316587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206646, 0.714934, 0.667958,
		-0.187240, 0.641179, -0.744198,
		-0.960333, -0.278854, 0.001367,
		9.583618, 13.864197, 14.316998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.853291, 13.770485, 14.791399>,  <10.255852, 14.059395, 14.316040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.853291, 13.770485, 14.791399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.056834, 13.853897, 15.125484>,  <11.178960, 13.903944, 15.325934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.056834, 13.853897, 15.125484>,  <10.853291, 13.770485, 14.791399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.056834, 13.853897, 15.125484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396912, -0.917769, -0.012678,
		0.763888, 0.337957, -0.549783,
		0.508858, 0.208531, 0.835212,
		11.209492, 13.916456, 15.376047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.392598, 13.524145, 14.622669>,  <10.853291, 13.770485, 14.791399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.392598, 13.524145, 14.622669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.414305, 13.576284, 15.018662>,  <11.427329, 13.607568, 15.256258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.414305, 13.576284, 15.018662>,  <11.392598, 13.524145, 14.622669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.414305, 13.576284, 15.018662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341142, -0.934207, 0.104303,
		0.938444, 0.332065, -0.095164,
		0.054267, 0.130347, 0.989982,
		11.430585, 13.615389, 15.315657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.046938, 13.308179, 14.851353>,  <11.392598, 13.524145, 14.622669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.046938, 13.308179, 14.851353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.813135, 13.298652, 15.175768>,  <11.672853, 13.292935, 15.370418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.813135, 13.298652, 15.175768>,  <12.046938, 13.308179, 14.851353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.813135, 13.298652, 15.175768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207023, -0.970864, 0.120687,
		0.784534, 0.238446, 0.572407,
		-0.584507, -0.023818, 0.811039,
		11.637783, 13.291507, 15.419080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.851653, 14.002202, 15.128783>,  <12.046938, 13.308179, 14.851353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.851653, 14.002202, 15.128783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.924069, 14.395590, 15.130126>,  <11.967520, 14.631622, 15.130932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.924069, 14.395590, 15.130126>,  <11.851653, 14.002202, 15.128783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.924069, 14.395590, 15.130126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532612, 0.095174, 0.840991,
		0.826770, -0.154043, 0.541039,
		0.181042, 0.983470, 0.003358,
		11.978382, 14.690631, 15.131133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.185002, 14.199751, 15.774690>,  <11.851653, 14.002202, 15.128783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.185002, 14.199751, 15.774690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.959906, 14.490774, 15.617728>,  <11.824848, 14.665388, 15.523551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.959906, 14.490774, 15.617728>,  <12.185002, 14.199751, 15.774690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.959906, 14.490774, 15.617728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525129, 0.051967, 0.849434,
		0.638406, 0.684074, 0.352818,
		-0.562741, 0.727559, -0.392404,
		11.791083, 14.709042, 15.500008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.215245, 14.802929, 16.186584>,  <12.185002, 14.199751, 15.774690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.215245, 14.802929, 16.186584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.865333, 14.756563, 15.998405>,  <11.655385, 14.728744, 15.885498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.865333, 14.756563, 15.998405>,  <12.215245, 14.802929, 16.186584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.865333, 14.756563, 15.998405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478664, 0.056292, 0.876192,
		-0.075081, 0.991663, -0.104727,
		-0.874782, -0.115914, -0.470447,
		11.602898, 14.721788, 15.857271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.341496, 15.339460, 16.754055>,  <12.215245, 14.802929, 16.186584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.341496, 15.339460, 16.754055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.992365, 15.156054, 16.820913>,  <11.782887, 15.046010, 16.861029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.992365, 15.156054, 16.820913>,  <12.341496, 15.339460, 16.754055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.992365, 15.156054, 16.820913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285452, -0.201848, 0.936896,
		-0.395844, 0.865460, 0.307063,
		-0.872826, -0.458516, 0.167147,
		11.730517, 15.018498, 16.871058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.867439, 15.739854, 17.223787>,  <12.341496, 15.339460, 16.754055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.867439, 15.739854, 17.223787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.823391, 15.345418, 17.273584>,  <11.796962, 15.108756, 17.303463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.823391, 15.345418, 17.273584>,  <11.867439, 15.739854, 17.223787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.823391, 15.345418, 17.273584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267065, 0.091293, 0.959345,
		-0.957366, 0.138893, 0.253296,
		-0.110122, -0.986090, 0.124495,
		11.790355, 15.049591, 17.310932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.289758, 15.554412, 17.740490>,  <11.867439, 15.739854, 17.223787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.289758, 15.554412, 17.740490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.605030, 15.314080, 17.687160>,  <11.794193, 15.169881, 17.655163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.605030, 15.314080, 17.687160>,  <11.289758, 15.554412, 17.740490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.605030, 15.314080, 17.687160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319634, 0.214505, 0.922942,
		-0.525932, -0.770060, 0.361114,
		0.788181, -0.600829, -0.133322,
		11.841484, 15.133832, 17.647163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.303738, 14.895496, 18.107315>,  <11.289758, 15.554412, 17.740490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.303738, 14.895496, 18.107315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.693305, 14.963653, 18.047382>,  <11.927046, 15.004546, 18.011423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.693305, 14.963653, 18.047382>,  <11.303738, 14.895496, 18.107315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.693305, 14.963653, 18.047382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138359, 0.077377, 0.987355,
		0.179830, -0.982334, 0.051784,
		0.973919, 0.170391, -0.149830,
		11.985480, 15.014770, 18.002434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.579301, 14.555279, 18.615261>,  <11.303738, 14.895496, 18.107315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.579301, 14.555279, 18.615261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.845333, 14.825809, 18.488611>,  <12.004952, 14.988127, 18.412621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.845333, 14.825809, 18.488611>,  <11.579301, 14.555279, 18.615261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.845333, 14.825809, 18.488611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222707, 0.225066, 0.948550,
		0.712789, -0.701378, -0.000935,
		0.665082, 0.676324, -0.316627,
		12.044858, 15.028706, 18.393623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.137419, 14.461088, 18.989151>,  <11.579301, 14.555279, 18.615261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.137419, 14.461088, 18.989151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.209370, 14.833902, 18.863323>,  <12.252541, 15.057590, 18.787827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.209370, 14.833902, 18.863323>,  <12.137419, 14.461088, 18.989151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.209370, 14.833902, 18.863323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379314, 0.229337, 0.896396,
		0.907615, -0.280563, -0.312281,
		0.179878, 0.932035, -0.314571,
		12.263333, 15.113513, 18.768951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.808992, 14.703893, 19.341688>,  <12.137419, 14.461088, 18.989151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.808992, 14.703893, 19.341688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.609262, 15.027084, 19.216568>,  <12.489423, 15.221000, 19.141497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.609262, 15.027084, 19.216568>,  <12.808992, 14.703893, 19.341688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.609262, 15.027084, 19.216568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192681, 0.455542, 0.869112,
		0.844717, 0.373700, -0.383146,
		-0.499326, 0.807979, -0.312799,
		12.459464, 15.269478, 19.122728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.232630, 15.332702, 19.487265>,  <12.808992, 14.703893, 19.341688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.232630, 15.332702, 19.487265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.854229, 15.461061, 19.468910>,  <12.627189, 15.538077, 19.457897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.854229, 15.461061, 19.468910>,  <13.232630, 15.332702, 19.487265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.854229, 15.461061, 19.468910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136179, 0.521863, 0.842089,
		0.294172, 0.790368, -0.537383,
		-0.946001, 0.320900, -0.045886,
		12.570429, 15.557331, 19.455145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.321330, 16.097269, 19.645933>,  <13.232630, 15.332702, 19.487265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.321330, 16.097269, 19.645933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.933802, 16.003880, 19.679096>,  <12.701284, 15.947845, 19.698994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.933802, 16.003880, 19.679096>,  <13.321330, 16.097269, 19.645933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.933802, 16.003880, 19.679096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076635, 0.600614, 0.795858,
		-0.235608, 0.764691, -0.599780,
		-0.968822, -0.233474, 0.082907,
		12.643155, 15.933837, 19.703968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.021112, 16.770355, 19.682247>,  <13.321330, 16.097269, 19.645933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.021112, 16.770355, 19.682247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.764625, 16.506783, 19.839548>,  <12.610732, 16.348639, 19.933928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.764625, 16.506783, 19.839548>,  <13.021112, 16.770355, 19.682247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.764625, 16.506783, 19.839548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040615, 0.540898, 0.840107,
		-0.766282, 0.522720, -0.373597,
		-0.641219, -0.658933, 0.393250,
		12.572259, 16.309103, 19.957523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.377237, 17.136967, 19.886175>,  <13.021112, 16.770355, 19.682247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.377237, 17.136967, 19.886175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.424072, 16.813463, 20.116722>,  <12.452173, 16.619362, 20.255051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.424072, 16.813463, 20.116722>,  <12.377237, 17.136967, 19.886175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.424072, 16.813463, 20.116722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094750, 0.568615, 0.817129,
		-0.988591, -0.150286, -0.010053,
		0.117087, -0.808759, 0.576367,
		12.459198, 16.570835, 20.289633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.249174, 17.361488, 20.448648>,  <12.377237, 17.136967, 19.886175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.249174, 17.361488, 20.448648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.293037, 16.997751, 20.609182>,  <12.319356, 16.779509, 20.705502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.293037, 16.997751, 20.609182>,  <12.249174, 17.361488, 20.448648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.293037, 16.997751, 20.609182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005667, 0.404334, 0.914594,
		-0.993953, -0.098019, 0.049492,
		0.109659, -0.909344, 0.401334,
		12.325935, 16.724949, 20.729582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.701303, 17.241137, 21.003326>,  <12.249174, 17.361488, 20.448648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.701303, 17.241137, 21.003326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.023591, 17.015667, 21.076086>,  <12.216964, 16.880386, 21.119741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.023591, 17.015667, 21.076086>,  <11.701303, 17.241137, 21.003326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.023591, 17.015667, 21.076086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097275, 0.428873, 0.898112,
		-0.584254, -0.705933, 0.400382,
		0.805720, -0.563673, 0.181901,
		12.265307, 16.846565, 21.130657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.519074, 17.009972, 21.724667>,  <11.701303, 17.241137, 21.003326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.519074, 17.009972, 21.724667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.904298, 16.931868, 21.650486>,  <12.135432, 16.885006, 21.605978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.904298, 16.931868, 21.650486>,  <11.519074, 17.009972, 21.724667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.904298, 16.931868, 21.650486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197822, 0.045715, 0.979171,
		-0.182716, -0.979685, 0.082653,
		0.963058, -0.195261, -0.185451,
		12.193215, 16.873289, 21.594851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.746408, 16.533596, 22.170361>,  <11.519074, 17.009972, 21.724667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.746408, 16.533596, 22.170361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.082184, 16.727139, 22.071388>,  <12.283649, 16.843264, 22.012005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.082184, 16.727139, 22.071388>,  <11.746408, 16.533596, 22.170361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.082184, 16.727139, 22.071388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132781, 0.258891, 0.956737,
		0.526983, -0.835977, 0.153076,
		0.839439, 0.483858, -0.247433,
		12.334016, 16.872295, 21.997158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.295630, 16.219704, 22.595165>,  <11.746408, 16.533596, 22.170361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.295630, 16.219704, 22.595165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.367301, 16.602617, 22.504391>,  <12.410303, 16.832365, 22.449926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.367301, 16.602617, 22.504391>,  <12.295630, 16.219704, 22.595165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.367301, 16.602617, 22.504391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005601, 0.229674, 0.973252,
		0.983801, -0.175654, 0.035790,
		0.179175, 0.957285, -0.226937,
		12.421054, 16.889803, 22.436310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.873235, 16.406540, 23.040251>,  <12.295630, 16.219704, 22.595165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.873235, 16.406540, 23.040251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.736833, 16.767052, 22.933361>,  <12.654991, 16.983358, 22.869226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.736833, 16.767052, 22.933361>,  <12.873235, 16.406540, 23.040251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.736833, 16.767052, 22.933361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070474, 0.307973, 0.948781,
		0.937416, 0.304707, -0.168537,
		-0.341005, 0.901281, -0.267225,
		12.634531, 17.037436, 22.853193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.416656, 16.882975, 23.289320>,  <12.873235, 16.406540, 23.040251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.416656, 16.882975, 23.289320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.069654, 17.078989, 23.255138>,  <12.861452, 17.196598, 23.234631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.069654, 17.078989, 23.255138>,  <13.416656, 16.882975, 23.289320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.069654, 17.078989, 23.255138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186790, 0.480129, 0.857080,
		0.461027, 0.727558, -0.508048,
		-0.867504, 0.490035, -0.085452,
		12.809402, 17.226000, 23.229504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.574339, 17.563055, 23.209984>,  <13.416656, 16.882975, 23.289320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.574339, 17.563055, 23.209984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.211706, 17.522009, 23.373730>,  <12.994126, 17.497381, 23.471977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.211706, 17.522009, 23.373730>,  <13.574339, 17.563055, 23.209984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.211706, 17.522009, 23.373730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306540, 0.506584, 0.805857,
		-0.290071, 0.856062, -0.427804,
		-0.906583, -0.102616, 0.409363,
		12.939732, 17.491224, 23.496538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.558302, 18.149824, 23.482643>,  <13.574339, 17.563055, 23.209984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.558302, 18.149824, 23.482643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.260063, 17.955614, 23.665224>,  <13.081120, 17.839088, 23.774773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.260063, 17.955614, 23.665224>,  <13.558302, 18.149824, 23.482643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.260063, 17.955614, 23.665224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261773, 0.416509, 0.870629,
		-0.612830, 0.768625, -0.183450,
		-0.745596, -0.485526, 0.456455,
		13.036385, 17.809956, 23.802160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.232559, 18.706940, 23.885765>,  <13.558302, 18.149824, 23.482643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.232559, 18.706940, 23.885765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.139951, 18.356377, 24.054670>,  <13.084386, 18.146038, 24.156013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.139951, 18.356377, 24.054670>,  <13.232559, 18.706940, 23.885765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.139951, 18.356377, 24.054670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420329, 0.301334, 0.855874,
		-0.877338, 0.375643, 0.298615,
		-0.231520, -0.876408, 0.422265,
		13.070495, 18.093454, 24.181351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.164289, 18.843042, 24.624456>,  <13.232559, 18.706940, 23.885765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.164289, 18.843042, 24.624456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.181009, 18.443430, 24.618967>,  <13.191041, 18.203663, 24.615673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.181009, 18.443430, 24.618967>,  <13.164289, 18.843042, 24.624456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.181009, 18.443430, 24.618967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192223, -0.005439, 0.981336,
		-0.980461, -0.043658, 0.191810,
		0.041800, -0.999032, -0.013725,
		13.193549, 18.143721, 24.614849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.737185, 18.653587, 25.163132>,  <13.164289, 18.843042, 24.624456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.737185, 18.653587, 25.163132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.992398, 18.353775, 25.092569>,  <13.145526, 18.173887, 25.050232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.992398, 18.353775, 25.092569>,  <12.737185, 18.653587, 25.163132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.992398, 18.353775, 25.092569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290883, 0.022496, 0.956494,
		-0.712954, -0.661586, 0.232379,
		0.638031, -0.749532, -0.176406,
		13.183807, 18.128916, 25.039648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.753866, 18.196217, 25.794645>,  <12.737185, 18.653587, 25.163132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.753866, 18.196217, 25.794645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.076487, 18.083906, 25.586554>,  <13.270059, 18.016520, 25.461699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.076487, 18.083906, 25.586554>,  <12.753866, 18.196217, 25.794645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.076487, 18.083906, 25.586554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493709, -0.164105, 0.854003,
		-0.325155, -0.945640, 0.006262,
		0.806552, -0.280775, -0.520231,
		13.318452, 17.999674, 25.430485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.762381, 17.587748, 25.997658>,  <12.753866, 18.196217, 25.794645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.762381, 17.587748, 25.997658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.121344, 17.683167, 25.849197>,  <13.336721, 17.740417, 25.760120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.121344, 17.683167, 25.849197>,  <12.762381, 17.587748, 25.997658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.121344, 17.683167, 25.849197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415726, -0.175474, 0.892402,
		0.147751, -0.955146, -0.256641,
		0.897408, 0.238546, -0.371152,
		13.390566, 17.754730, 25.737852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.331874, 17.116861, 26.279917>,  <12.762381, 17.587748, 25.997658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.331874, 17.116861, 26.279917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.498997, 17.474039, 26.212879>,  <13.599271, 17.688345, 26.172657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.498997, 17.474039, 26.212879>,  <13.331874, 17.116861, 26.279917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.498997, 17.474039, 26.212879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329756, 0.022844, 0.943790,
		0.846580, -0.449588, -0.284909,
		0.417808, 0.892944, -0.167594,
		13.624339, 17.741922, 26.162601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.872521, 17.140751, 26.832264>,  <13.331874, 17.116861, 26.279917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.872521, 17.140751, 26.832264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.836805, 17.509047, 26.680332>,  <13.815375, 17.730024, 26.589172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.836805, 17.509047, 26.680332>,  <13.872521, 17.140751, 26.832264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.836805, 17.509047, 26.680332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392230, 0.383043, 0.836322,
		0.915523, -0.074304, -0.395343,
		-0.089291, 0.920737, -0.379829,
		13.810018, 17.785267, 26.566383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.528067, 17.315109, 26.772493>,  <13.872521, 17.140751, 26.832264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.528067, 17.315109, 26.772493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.306016, 17.647701, 26.781233>,  <14.172786, 17.847256, 26.786476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.306016, 17.647701, 26.781233>,  <14.528067, 17.315109, 26.772493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.306016, 17.647701, 26.781233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526882, 0.331198, 0.782754,
		0.643607, 0.446039, -0.621948,
		-0.555126, 0.831479, 0.021848,
		14.139478, 17.897144, 26.787786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.957429, 17.859261, 26.772284>,  <14.528067, 17.315109, 26.772493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.957429, 17.859261, 26.772284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.633430, 18.026386, 26.936888>,  <14.439032, 18.126661, 27.035650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.633430, 18.026386, 26.936888>,  <14.957429, 17.859261, 26.772284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.633430, 18.026386, 26.936888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585602, 0.538846, 0.605570,
		0.031273, 0.731490, -0.681134,
		-0.809995, 0.417812, 0.411511,
		14.390432, 18.151730, 27.060341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.037091, 18.570305, 26.815638>,  <14.957429, 17.859261, 26.772284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.037091, 18.570305, 26.815638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.765855, 18.490858, 27.098690>,  <14.603113, 18.443190, 27.268522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.765855, 18.490858, 27.098690>,  <15.037091, 18.570305, 26.815638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.765855, 18.490858, 27.098690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509969, 0.566177, 0.647592,
		-0.529268, 0.799997, -0.282631,
		-0.678091, -0.198616, 0.707633,
		14.562428, 18.431273, 27.310980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.880184, 19.169460, 27.068960>,  <15.037091, 18.570305, 26.815638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.880184, 19.169460, 27.068960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.756374, 18.926952, 27.361980>,  <14.682089, 18.781448, 27.537792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.756374, 18.926952, 27.361980>,  <14.880184, 19.169460, 27.068960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.756374, 18.926952, 27.361980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443692, 0.589296, 0.675180,
		-0.841031, 0.534012, 0.086595,
		-0.309524, -0.606268, 0.732553,
		14.663517, 18.745071, 27.581747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.699335, 19.637947, 27.543531>,  <14.880184, 19.169460, 27.068960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.699335, 19.637947, 27.543531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.707471, 19.297205, 27.752884>,  <14.712353, 19.092760, 27.878496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.707471, 19.297205, 27.752884>,  <14.699335, 19.637947, 27.543531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.707471, 19.297205, 27.752884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149763, 0.520179, 0.840824,
		-0.988513, 0.061281, 0.138156,
		0.020339, -0.851856, 0.523382,
		14.713573, 19.041649, 27.909899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.330569, 19.734110, 28.232561>,  <14.699335, 19.637947, 27.543531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.330569, 19.734110, 28.232561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.561526, 19.413393, 28.294203>,  <14.700100, 19.220963, 28.331188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.561526, 19.413393, 28.294203>,  <14.330569, 19.734110, 28.232561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.561526, 19.413393, 28.294203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169776, 0.302523, 0.937900,
		-0.798620, -0.515373, 0.310799,
		0.577392, -0.801792, 0.154103,
		14.734744, 19.172855, 28.340433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.107378, 19.423578, 28.850147>,  <14.330569, 19.734110, 28.232561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.107378, 19.423578, 28.850147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.482141, 19.303389, 28.778681>,  <14.707000, 19.231276, 28.735802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.482141, 19.303389, 28.778681>,  <14.107378, 19.423578, 28.850147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.482141, 19.303389, 28.778681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291585, 0.389791, 0.873522,
		-0.192828, -0.870505, 0.452812,
		0.936908, -0.300472, -0.178664,
		14.763214, 19.213247, 28.725082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.288508, 19.264009, 29.519587>,  <14.107378, 19.423578, 28.850147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.288508, 19.264009, 29.519587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.635570, 19.281456, 29.321486>,  <14.843806, 19.291924, 29.202625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.635570, 19.281456, 29.321486>,  <14.288508, 19.264009, 29.519587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.635570, 19.281456, 29.321486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459863, 0.308193, 0.832792,
		0.188958, -0.950324, 0.247347,
		0.867652, 0.043617, -0.495254,
		14.895865, 19.294540, 29.172909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.768730, 19.004986, 29.956305>,  <14.288508, 19.264009, 29.519587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.768730, 19.004986, 29.956305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.995908, 19.190693, 29.684452>,  <15.132215, 19.302116, 29.521341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.995908, 19.190693, 29.684452>,  <14.768730, 19.004986, 29.956305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.995908, 19.190693, 29.684452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680632, 0.199372, 0.704976,
		0.462795, -0.862964, -0.202762,
		0.567944, 0.464266, -0.679630,
		15.166291, 19.329973, 29.480564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.432772, 18.703535, 30.066027>,  <14.768730, 19.004986, 29.956305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.432772, 18.703535, 30.066027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.477168, 19.049480, 29.870192>,  <15.503806, 19.257048, 29.752691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.477168, 19.049480, 29.870192>,  <15.432772, 18.703535, 30.066027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.477168, 19.049480, 29.870192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755834, 0.246407, 0.606629,
		0.645288, -0.437377, -0.626342,
		0.110991, 0.864861, -0.489588,
		15.510466, 19.308939, 29.723316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.122253, 18.744297, 29.723669>,  <15.432772, 18.703535, 30.066027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.122253, 18.744297, 29.723669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.013643, 19.123247, 29.791494>,  <15.948477, 19.350618, 29.832190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.013643, 19.123247, 29.791494>,  <16.122253, 18.744297, 29.723669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.013643, 19.123247, 29.791494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798445, 0.123371, 0.589292,
		0.537363, 0.295394, -0.789926,
		-0.271527, 0.947376, 0.169561,
		15.932185, 19.407459, 29.842363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.596846, 19.119492, 29.492731>,  <16.122253, 18.744297, 29.723669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.596846, 19.119492, 29.492731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.422358, 19.315561, 29.794577>,  <16.317665, 19.433203, 29.975683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.422358, 19.315561, 29.794577>,  <16.596846, 19.119492, 29.492731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.422358, 19.315561, 29.794577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882737, 0.070387, 0.464565,
		0.174603, 0.868778, -0.463400,
		-0.436220, 0.490175, 0.754613,
		16.291491, 19.462614, 30.020960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.234518, 19.311043, 29.813107>,  <16.596846, 19.119492, 29.492731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.234518, 19.311043, 29.813107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.955961, 19.448597, 30.065069>,  <16.788828, 19.531130, 30.216246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.955961, 19.448597, 30.065069>,  <17.234518, 19.311043, 29.813107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.955961, 19.448597, 30.065069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698142, 0.121296, 0.705610,
		0.166245, 0.931144, -0.324552,
		-0.696391, 0.343887, 0.629905,
		16.747044, 19.551764, 30.254042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.533268, 19.857115, 30.088001>,  <17.234518, 19.311043, 29.813107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.533268, 19.857115, 30.088001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.231215, 19.745544, 30.325312>,  <17.049982, 19.678602, 30.467697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.231215, 19.745544, 30.325312>,  <17.533268, 19.857115, 30.088001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.231215, 19.745544, 30.325312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608554, 0.038300, 0.792587,
		-0.243796, 0.959548, 0.140821,
		-0.755132, -0.278927, 0.593275,
		17.004675, 19.661867, 30.503294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.519707, 20.260109, 30.662991>,  <17.533268, 19.857115, 30.088001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.519707, 20.260109, 30.662991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.305019, 19.958363, 30.814182>,  <17.176207, 19.777315, 30.904898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.305019, 19.958363, 30.814182>,  <17.519707, 20.260109, 30.662991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.305019, 19.958363, 30.814182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544865, 0.032178, 0.837906,
		-0.644249, 0.655667, 0.393756,
		-0.536717, -0.754364, 0.377981,
		17.144005, 19.732054, 30.927576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.270350, 20.423603, 31.377300>,  <17.519707, 20.260109, 30.662991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.270350, 20.423603, 31.377300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.246754, 20.024357, 31.384117>,  <17.232595, 19.784809, 31.388206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.246754, 20.024357, 31.384117>,  <17.270350, 20.423603, 31.377300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.246754, 20.024357, 31.384117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487382, -0.013899, 0.873078,
		-0.871194, 0.059808, 0.487283,
		-0.058990, -0.998113, 0.017041,
		17.229057, 19.724922, 31.389229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.942703, 20.192095, 31.952940>,  <17.270350, 20.423603, 31.377300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.942703, 20.192095, 31.952940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.193884, 19.909678, 31.821987>,  <17.344593, 19.740227, 31.743416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.193884, 19.909678, 31.821987>,  <16.942703, 20.192095, 31.952940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.193884, 19.909678, 31.821987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461079, -0.001375, 0.887358,
		-0.626962, -0.708169, 0.324677,
		0.627953, -0.706042, -0.327384,
		17.382269, 19.697865, 31.723772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.708530, 19.922207, 32.614124>,  <16.942703, 20.192095, 31.952940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.708530, 19.922207, 32.614124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.369240, 20.134041, 32.616940>,  <16.165665, 20.261141, 32.618629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.369240, 20.134041, 32.616940>,  <16.708530, 19.922207, 32.614124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.369240, 20.134041, 32.616940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187959, 0.313416, -0.930829,
		-0.495157, -0.788233, -0.365388,
		-0.848228, 0.529585, 0.007035,
		16.114771, 20.292915, 32.619049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.661358, 20.456282, 33.167233>,  <16.708530, 19.922207, 32.614124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.661358, 20.456282, 33.167233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.051519, 20.394947, 33.230568>,  <17.285616, 20.358147, 33.268570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.051519, 20.394947, 33.230568>,  <16.661358, 20.456282, 33.167233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.051519, 20.394947, 33.230568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181835, -0.153762, 0.971233,
		-0.124572, -0.976139, -0.177861,
		0.975407, -0.153330, 0.158342,
		17.344141, 20.348946, 33.278069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.603485, 19.972454, 33.554398>,  <16.661358, 20.456282, 33.167233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.603485, 19.972454, 33.554398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.932398, 20.189323, 33.623566>,  <17.129745, 20.319445, 33.665066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.932398, 20.189323, 33.623566>,  <16.603485, 19.972454, 33.554398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.932398, 20.189323, 33.623566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138982, -0.103328, 0.984889,
		0.551847, -0.833890, -0.009613,
		0.822283, 0.542172, 0.172917,
		17.179083, 20.351974, 33.675442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.145216, 19.578264, 34.053337>,  <16.603485, 19.972454, 33.554398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.145216, 19.578264, 34.053337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.120291, 19.976730, 34.077908>,  <17.105335, 20.215809, 34.092651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.120291, 19.976730, 34.077908>,  <17.145216, 19.578264, 34.053337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.120291, 19.976730, 34.077908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103936, -0.067693, 0.992278,
		0.992630, 0.055447, 0.107755,
		-0.062313, 0.996164, 0.061431,
		17.101597, 20.275579, 34.096336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.226000, 19.355518, 33.299343>,  <17.145216, 19.578264, 34.053337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.226000, 19.355518, 33.299343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.607109, 19.244701, 33.249599>,  <17.835775, 19.178211, 33.219753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.607109, 19.244701, 33.249599>,  <17.226000, 19.355518, 33.299343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.607109, 19.244701, 33.249599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213127, -0.318311, -0.923718,
		0.216324, 0.906601, -0.362325,
		0.952775, -0.277043, -0.124363,
		17.892942, 19.161589, 33.212292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.570236, 19.689323, 32.700649>,  <17.226000, 19.355518, 33.299343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.570236, 19.689323, 32.700649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.754158, 19.343603, 32.782204>,  <17.864511, 19.136171, 32.831135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.754158, 19.343603, 32.782204>,  <17.570236, 19.689323, 32.700649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.754158, 19.343603, 32.782204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167046, -0.309678, -0.936053,
		0.872167, 0.396343, -0.286769,
		0.459804, -0.864298, 0.203883,
		17.892099, 19.084314, 32.843369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.928349, 19.392145, 32.061100>,  <17.570236, 19.689323, 32.700649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.928349, 19.392145, 32.061100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.868134, 19.100260, 32.327888>,  <17.832005, 18.925129, 32.487961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.868134, 19.100260, 32.327888>,  <17.928349, 19.392145, 32.061100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.868134, 19.100260, 32.327888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044120, -0.669031, -0.741923,
		0.987619, -0.141113, 0.068518,
		-0.150536, -0.729715, 0.666974,
		17.822973, 18.881346, 32.527981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.471470, 18.856852, 31.959682>,  <17.928349, 19.392145, 32.061100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.471470, 18.856852, 31.959682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.304298, 18.609932, 32.226299>,  <18.203997, 18.461781, 32.386269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.304298, 18.609932, 32.226299>,  <18.471470, 18.856852, 31.959682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.304298, 18.609932, 32.226299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269703, -0.616310, -0.739880,
		0.867524, -0.488984, 0.091086,
		-0.417927, -0.617297, 0.666544,
		18.178921, 18.424744, 32.426262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.816193, 18.226545, 32.119980>,  <18.471470, 18.856852, 31.959682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.816193, 18.226545, 32.119980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.416752, 18.247673, 32.119732>,  <18.177088, 18.260349, 32.119583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.416752, 18.247673, 32.119732>,  <18.816193, 18.226545, 32.119980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.416752, 18.247673, 32.119732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025931, -0.500454, -0.865375,
		-0.046018, -0.864150, 0.501125,
		-0.998604, 0.052817, -0.000622,
		18.117170, 18.263519, 32.119545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.562857, 17.530060, 31.942743>,  <18.816193, 18.226545, 32.119980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.562857, 17.530060, 31.942743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.256136, 17.766270, 31.842110>,  <18.072104, 17.907997, 31.781729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.256136, 17.766270, 31.842110>,  <18.562857, 17.530060, 31.942743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.256136, 17.766270, 31.842110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069241, -0.465757, -0.882200,
		-0.638141, -0.659051, 0.398031,
		-0.766800, 0.590528, -0.251585,
		18.026096, 17.943428, 31.766634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.953045, 17.118816, 31.629095>,  <18.562857, 17.530060, 31.942743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.953045, 17.118816, 31.629095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.019558, 17.487911, 31.490007>,  <18.059465, 17.709368, 31.406555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.019558, 17.487911, 31.490007>,  <17.953045, 17.118816, 31.629095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.019558, 17.487911, 31.490007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033722, -0.357742, -0.933211,
		-0.985502, 0.143449, -0.090602,
		0.166280, 0.922737, -0.347718,
		18.069443, 17.764732, 31.385693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.461287, 17.189491, 31.055889>,  <17.953045, 17.118816, 31.629095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.461287, 17.189491, 31.055889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.748926, 17.460880, 30.995790>,  <17.921511, 17.623713, 30.959732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.748926, 17.460880, 30.995790>,  <17.461287, 17.189491, 31.055889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.748926, 17.460880, 30.995790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033602, -0.249908, -0.967686,
		-0.694094, 0.690814, -0.202507,
		0.719099, 0.678470, -0.150247,
		17.964657, 17.664421, 30.950716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.295332, 17.503588, 30.440823>,  <17.461287, 17.189491, 31.055889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.295332, 17.503588, 30.440823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.675400, 17.620934, 30.482990>,  <17.903440, 17.691341, 30.508291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.675400, 17.620934, 30.482990>,  <17.295332, 17.503588, 30.440823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.675400, 17.620934, 30.482990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126032, -0.052212, -0.990651,
		-0.285119, 0.954573, -0.086584,
		0.950170, 0.293366, 0.105420,
		17.960451, 17.708942, 30.514616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.324978, 18.038914, 30.071980>,  <17.295332, 17.503588, 30.440823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.324978, 18.038914, 30.071980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.703152, 17.910185, 30.092316>,  <17.930056, 17.832949, 30.104517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.703152, 17.910185, 30.092316>,  <17.324978, 18.038914, 30.071980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.703152, 17.910185, 30.092316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051256, -0.007195, -0.998660,
		0.321756, 0.946773, 0.009692,
		0.945434, -0.321821, 0.050843,
		17.986782, 17.813639, 30.107569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.668478, 18.324371, 29.524765>,  <17.324978, 18.038914, 30.071980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.668478, 18.324371, 29.524765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.906246, 18.016191, 29.616915>,  <18.048906, 17.831284, 29.672205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.906246, 18.016191, 29.616915>,  <17.668478, 18.324371, 29.524765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.906246, 18.016191, 29.616915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215268, -0.123571, -0.968705,
		0.774806, 0.625410, 0.092400,
		0.594420, -0.770449, 0.230375,
		18.084572, 17.785057, 29.686028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.103777, 18.285957, 28.985216>,  <17.668478, 18.324371, 29.524765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.103777, 18.285957, 28.985216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.213739, 17.937248, 29.147419>,  <18.279716, 17.728022, 29.244741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.213739, 17.937248, 29.147419>,  <18.103777, 18.285957, 28.985216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.213739, 17.937248, 29.147419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327090, -0.311803, -0.892071,
		0.904123, 0.377874, 0.199432,
		0.274907, -0.871774, 0.405507,
		18.296211, 17.675716, 29.269072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.813950, 18.078167, 28.739044>,  <18.103777, 18.285957, 28.985216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.813950, 18.078167, 28.739044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.632172, 17.747166, 28.870932>,  <18.523106, 17.548565, 28.950064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.632172, 17.747166, 28.870932>,  <18.813950, 18.078167, 28.739044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.632172, 17.747166, 28.870932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078470, -0.405900, -0.910543,
		0.887312, -0.387918, 0.249393,
		-0.454445, -0.827505, 0.329720,
		18.495838, 17.498915, 28.969847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.251574, 17.623547, 28.490311>,  <18.813950, 18.078167, 28.739044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.251574, 17.623547, 28.490311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.913498, 17.423025, 28.564449>,  <18.710653, 17.302711, 28.608932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.913498, 17.423025, 28.564449>,  <19.251574, 17.623547, 28.490311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.913498, 17.423025, 28.564449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042244, -0.408358, -0.911844,
		0.532799, -0.762848, 0.366316,
		-0.845187, -0.501304, 0.185347,
		18.659943, 17.272635, 28.620054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.309521, 16.969131, 28.187840>,  <19.251574, 17.623547, 28.490311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.309521, 16.969131, 28.187840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.913630, 16.999502, 28.236300>,  <18.676096, 17.017725, 28.265375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.913630, 16.999502, 28.236300>,  <19.309521, 16.969131, 28.187840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.913630, 16.999502, 28.236300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142421, -0.448897, -0.882161,
		-0.012596, -0.890352, 0.455099,
		-0.989726, 0.075927, 0.121151,
		18.616713, 17.022280, 28.272644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.976288, 16.315849, 28.114893>,  <19.309521, 16.969131, 28.187840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.976288, 16.315849, 28.114893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.691397, 16.583860, 28.031179>,  <18.520462, 16.744667, 27.980951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.691397, 16.583860, 28.031179>,  <18.976288, 16.315849, 28.114893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.691397, 16.583860, 28.031179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188626, -0.469861, -0.862352,
		-0.676132, -0.574714, 0.461031,
		-0.712226, 0.670026, -0.209282,
		18.477728, 16.784868, 27.968395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.528992, 15.915140, 27.818375>,  <18.976288, 16.315849, 28.114893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.528992, 15.915140, 27.818375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.432606, 16.284582, 27.699116>,  <18.374775, 16.506247, 27.627560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.432606, 16.284582, 27.699116>,  <18.528992, 15.915140, 27.818375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.432606, 16.284582, 27.699116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052701, -0.319198, -0.946222,
		-0.969102, -0.212291, 0.125590,
		-0.240963, 0.923604, -0.298147,
		18.360317, 16.561663, 27.609671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.896963, 15.800170, 27.265327>,  <18.528992, 15.915140, 27.818375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.896963, 15.800170, 27.265327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.004278, 16.180138, 27.201231>,  <18.068666, 16.408117, 27.162773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.004278, 16.180138, 27.201231>,  <17.896963, 15.800170, 27.265327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.004278, 16.180138, 27.201231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005728, -0.164765, -0.986316,
		-0.963322, 0.265533, -0.038763,
		0.268286, 0.949918, -0.160243,
		18.084764, 16.465113, 27.153158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.358015, 16.126534, 26.879351>,  <17.896963, 15.800170, 27.265327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.358015, 16.126534, 26.879351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.707523, 16.308977, 26.811840>,  <17.917229, 16.418444, 26.771334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.707523, 16.308977, 26.811840>,  <17.358015, 16.126534, 26.879351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.707523, 16.308977, 26.811840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133667, -0.108442, -0.985075,
		-0.467605, 0.883291, -0.033786,
		0.873772, 0.456110, -0.168775,
		17.969656, 16.445810, 26.761208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.112225, 16.673765, 26.484875>,  <17.358015, 16.126534, 26.879351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.112225, 16.673765, 26.484875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.504847, 16.611933, 26.439869>,  <17.740419, 16.574833, 26.412865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.504847, 16.611933, 26.439869>,  <17.112225, 16.673765, 26.484875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.504847, 16.611933, 26.439869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137471, -0.161611, -0.977233,
		0.132876, 0.974673, -0.179880,
		0.981553, -0.154579, -0.112515,
		17.799313, 16.565559, 26.406115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.348877, 17.060904, 25.883451>,  <17.112225, 16.673765, 26.484875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.348877, 17.060904, 25.883451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.626947, 16.778639, 25.938257>,  <17.793791, 16.609280, 25.971140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.626947, 16.778639, 25.938257>,  <17.348877, 17.060904, 25.883451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.626947, 16.778639, 25.938257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106647, -0.289740, -0.951145,
		0.710883, 0.646602, -0.276677,
		0.695177, -0.705660, 0.137013,
		17.835501, 16.566940, 25.979361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.930777, 17.171141, 25.314789>,  <17.348877, 17.060904, 25.883451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.930777, 17.171141, 25.314789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.978477, 16.793203, 25.436804>,  <18.007097, 16.566441, 25.510014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.978477, 16.793203, 25.436804>,  <17.930777, 17.171141, 25.314789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.978477, 16.793203, 25.436804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031722, -0.310700, -0.949978,
		0.992357, 0.103609, -0.067024,
		0.119251, -0.944844, 0.305039,
		18.014254, 16.509750, 25.528315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.452723, 16.886351, 24.973091>,  <17.930777, 17.171141, 25.314789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.452723, 16.886351, 24.973091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.264254, 16.555586, 25.095865>,  <18.151173, 16.357126, 25.169529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.264254, 16.555586, 25.095865>,  <18.452723, 16.886351, 24.973091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.264254, 16.555586, 25.095865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053722, -0.374241, -0.925774,
		0.880403, -0.419711, 0.220755,
		-0.471173, -0.826914, 0.306936,
		18.122902, 16.307512, 25.187946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.724649, 16.268795, 24.591644>,  <18.452723, 16.886351, 24.973091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.724649, 16.268795, 24.591644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.362604, 16.142754, 24.705822>,  <18.145376, 16.067129, 24.774328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.362604, 16.142754, 24.705822>,  <18.724649, 16.268795, 24.591644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.362604, 16.142754, 24.705822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084193, -0.525237, -0.846781,
		0.416752, -0.790465, 0.448869,
		-0.905113, -0.315106, 0.285445,
		18.091070, 16.048222, 24.791456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.662624, 15.616405, 24.305927>,  <18.724649, 16.268795, 24.591644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.662624, 15.616405, 24.305927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.280695, 15.700755, 24.389685>,  <18.051538, 15.751366, 24.439939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.280695, 15.700755, 24.389685>,  <18.662624, 15.616405, 24.305927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.280695, 15.700755, 24.389685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275659, -0.365242, -0.889163,
		-0.111023, -0.906714, 0.406871,
		-0.954823, 0.210875, 0.209393,
		17.994247, 15.764018, 24.452503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.358440, 15.117379, 23.884405>,  <18.662624, 15.616405, 24.305927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.358440, 15.117379, 23.884405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.042875, 15.321650, 24.021122>,  <17.853537, 15.444212, 24.103153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.042875, 15.321650, 24.021122>,  <18.358440, 15.117379, 23.884405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.042875, 15.321650, 24.021122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552261, -0.345294, -0.758801,
		-0.269483, -0.787389, 0.554435,
		-0.788915, 0.510677, 0.341793,
		17.806200, 15.474853, 24.123659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.791775, 14.711254, 24.070520>,  <18.358440, 15.117379, 23.884405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.791775, 14.711254, 24.070520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.658201, 15.068787, 23.950819>,  <17.578056, 15.283306, 23.878998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.658201, 15.068787, 23.950819>,  <17.791775, 14.711254, 24.070520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.658201, 15.068787, 23.950819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558728, -0.443392, -0.700875,
		-0.759152, -0.066844, 0.647472,
		-0.333934, 0.893832, -0.299255,
		17.558022, 15.336936, 23.861042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.090942, 14.626831, 24.147297>,  <17.791775, 14.711254, 24.070520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.090942, 14.626831, 24.147297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.142853, 14.939342, 23.903078>,  <17.174000, 15.126847, 23.756546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.142853, 14.939342, 23.903078>,  <17.090942, 14.626831, 24.147297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.142853, 14.939342, 23.903078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645062, -0.401111, -0.650388,
		-0.753029, 0.478246, 0.451916,
		0.129777, 0.781275, -0.610546,
		17.181786, 15.173724, 23.719913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.339684, 14.948803, 23.964493>,  <17.090942, 14.626831, 24.147297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.339684, 14.948803, 23.964493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.580410, 15.078254, 23.672443>,  <16.724846, 15.155924, 23.497213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.580410, 15.078254, 23.672443>,  <16.339684, 14.948803, 23.964493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.580410, 15.078254, 23.672443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620667, -0.385790, -0.682597,
		-0.502581, 0.863963, -0.031310,
		0.601817, 0.323627, -0.730124,
		16.760956, 15.175342, 23.453405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.886898, 15.292149, 23.448555>,  <16.339684, 14.948803, 23.964493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.886898, 15.292149, 23.448555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.209282, 15.207152, 23.227549>,  <16.402712, 15.156155, 23.094944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.209282, 15.207152, 23.227549>,  <15.886898, 15.292149, 23.448555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.209282, 15.207152, 23.227549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588253, -0.183046, -0.787688,
		0.066241, 0.959865, -0.272526,
		0.805960, -0.212491, -0.552518,
		16.451069, 15.143405, 23.061792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.817851, 15.765798, 22.998842>,  <15.886898, 15.292149, 23.448555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.817851, 15.765798, 22.998842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.078054, 15.507206, 22.839392>,  <16.234177, 15.352051, 22.743721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.078054, 15.507206, 22.839392>,  <15.817851, 15.765798, 22.998842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.078054, 15.507206, 22.839392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580560, -0.084861, -0.809783,
		0.489681, 0.758197, -0.430523,
		0.650509, -0.646480, -0.398624,
		16.273207, 15.313262, 22.719805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.969692, 16.051914, 22.295834>,  <15.817851, 15.765798, 22.998842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.969692, 16.051914, 22.295834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.046446, 15.659363, 22.299414>,  <16.092499, 15.423832, 22.301561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.046446, 15.659363, 22.299414>,  <15.969692, 16.051914, 22.295834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.046446, 15.659363, 22.299414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530123, -0.111319, -0.840582,
		0.825923, 0.156550, -0.541611,
		0.191885, -0.981377, 0.008950,
		16.104012, 15.364950, 22.302099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.190533, 15.863788, 21.670443>,  <15.969692, 16.051914, 22.295834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.190533, 15.863788, 21.670443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.114483, 15.486223, 21.778431>,  <16.068853, 15.259685, 21.843224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.114483, 15.486223, 21.778431>,  <16.190533, 15.863788, 21.670443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.114483, 15.486223, 21.778431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507776, -0.140805, -0.849904,
		0.840248, -0.298671, -0.452526,
		-0.190124, -0.943912, 0.269969,
		16.057446, 15.203050, 21.859423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318628, 15.515738, 21.057665>,  <16.190533, 15.863788, 21.670443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318628, 15.515738, 21.057665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.119040, 15.268517, 21.300659>,  <15.999287, 15.120184, 21.446457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.119040, 15.268517, 21.300659>,  <16.318628, 15.515738, 21.057665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.119040, 15.268517, 21.300659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435150, -0.427527, -0.792379,
		0.749449, -0.659722, -0.055622,
		-0.498970, -0.618051, 0.607487,
		15.969348, 15.083101, 21.482906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.418139, 14.858729, 20.860825>,  <16.318628, 15.515738, 21.057665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.418139, 14.858729, 20.860825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.074629, 14.814371, 21.060907>,  <15.868523, 14.787756, 21.180956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.074629, 14.814371, 21.060907>,  <16.418139, 14.858729, 20.860825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.074629, 14.814371, 21.060907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381583, -0.513069, -0.768866,
		0.341904, -0.851153, 0.398296,
		-0.858776, -0.110895, 0.500206,
		15.816996, 14.781102, 21.210970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.323837, 14.135104, 20.912273>,  <16.418139, 14.858729, 20.860825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.323837, 14.135104, 20.912273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.973207, 14.320500, 20.964108>,  <15.762830, 14.431738, 20.995209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.973207, 14.320500, 20.964108>,  <16.323837, 14.135104, 20.912273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.973207, 14.320500, 20.964108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395512, -0.540365, -0.742681,
		-0.274202, -0.702269, 0.656987,
		-0.876575, 0.463491, 0.129587,
		15.710235, 14.459548, 21.002983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.850854, 13.564847, 20.795652>,  <16.323837, 14.135104, 20.912273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.850854, 13.564847, 20.795652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.661358, 13.908668, 20.718977>,  <15.547661, 14.114960, 20.672972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.661358, 13.908668, 20.718977>,  <15.850854, 13.564847, 20.795652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.661358, 13.908668, 20.718977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552773, -0.459669, -0.695087,
		-0.685576, -0.223330, 0.692900,
		-0.473739, 0.859551, -0.191687,
		15.519237, 14.166533, 20.661470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.154324, 13.424005, 20.903708>,  <15.850854, 13.564847, 20.795652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.154324, 13.424005, 20.903708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.159729, 13.749782, 20.671673>,  <15.162972, 13.945248, 20.532452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.159729, 13.749782, 20.671673>,  <15.154324, 13.424005, 20.903708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.159729, 13.749782, 20.671673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649912, -0.433730, -0.624094,
		-0.759890, 0.385440, 0.523454,
		0.013513, 0.814442, -0.580088,
		15.163783, 13.994114, 20.497646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.554210, 13.440670, 20.598513>,  <15.154324, 13.424005, 20.903708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.554210, 13.440670, 20.598513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.736831, 13.703283, 20.358337>,  <14.846403, 13.860851, 20.214233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.736831, 13.703283, 20.358337>,  <14.554210, 13.440670, 20.598513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.736831, 13.703283, 20.358337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498109, -0.370573, -0.783940,
		-0.737189, 0.656992, 0.157840,
		0.456552, 0.656534, -0.600436,
		14.873796, 13.900244, 20.178207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.025792, 13.711821, 20.158524>,  <14.554210, 13.440670, 20.598513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.025792, 13.711821, 20.158524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.378225, 13.781912, 19.982803>,  <14.589685, 13.823967, 19.877371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.378225, 13.781912, 19.982803>,  <14.025792, 13.711821, 20.158524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.378225, 13.781912, 19.982803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361381, -0.349784, -0.864324,
		-0.305115, 0.920297, -0.244864,
		0.881084, 0.175229, -0.439302,
		14.642550, 13.834480, 19.851013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.788091, 14.017937, 19.568037>,  <14.025792, 13.711821, 20.158524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.788091, 14.017937, 19.568037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.161287, 13.892684, 19.497070>,  <14.385205, 13.817533, 19.454491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.161287, 13.892684, 19.497070>,  <13.788091, 14.017937, 19.568037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.161287, 13.892684, 19.497070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238929, -0.170248, -0.955996,
		0.269149, 0.934325, -0.233656,
		0.932991, -0.313132, -0.177415,
		14.441185, 13.798744, 19.443846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.859151, 14.333737, 18.969168>,  <13.788091, 14.017937, 19.568037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.859151, 14.333737, 18.969168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.135030, 14.044765, 18.988800>,  <14.300557, 13.871381, 19.000580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.135030, 14.044765, 18.988800>,  <13.859151, 14.333737, 18.969168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.135030, 14.044765, 18.988800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090887, -0.153617, -0.983942,
		0.718371, 0.674162, -0.171609,
		0.689698, -0.722432, 0.049081,
		14.341939, 13.828035, 19.003525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.281033, 14.349138, 18.346588>,  <13.859151, 14.333737, 18.969168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.281033, 14.349138, 18.346588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.331968, 13.981755, 18.496372>,  <14.362530, 13.761326, 18.586243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.331968, 13.981755, 18.496372>,  <14.281033, 14.349138, 18.346588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.331968, 13.981755, 18.496372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091928, -0.386837, -0.917554,
		0.987590, 0.082418, -0.133691,
		0.127340, -0.918457, 0.374460,
		14.370171, 13.706218, 18.608709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.701598, 13.995480, 17.860043>,  <14.281033, 14.349138, 18.346588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.701598, 13.995480, 17.860043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.549859, 13.702900, 18.086697>,  <14.458816, 13.527352, 18.222689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.549859, 13.702900, 18.086697>,  <14.701598, 13.995480, 17.860043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.549859, 13.702900, 18.086697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201339, -0.532480, -0.822148,
		0.903083, -0.425966, 0.054726,
		-0.379347, -0.731449, 0.566637,
		14.436055, 13.483465, 18.256687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.930512, 13.377888, 17.589394>,  <14.701598, 13.995480, 17.860043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.930512, 13.377888, 17.589394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.628422, 13.243718, 17.814648>,  <14.447167, 13.163217, 17.949800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.628422, 13.243718, 17.814648>,  <14.930512, 13.377888, 17.589394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.628422, 13.243718, 17.814648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410684, -0.427448, -0.805374,
		0.510853, -0.839512, 0.185068,
		-0.755227, -0.335423, 0.563137,
		14.401854, 13.143091, 17.983589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.474726, 13.870425, 17.879061>,  <14.930512, 13.377888, 17.589394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.474726, 13.870425, 17.879061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.606970, 14.021972, 17.533308>,  <15.686316, 14.112900, 17.325855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.606970, 14.021972, 17.533308>,  <15.474726, 13.870425, 17.879061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.606970, 14.021972, 17.533308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773071, 0.416640, 0.478302,
		0.541349, -0.826360, -0.155145,
		0.330610, 0.378866, -0.864383,
		15.706153, 14.135632, 17.273993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.202051, 13.759404, 17.827480>,  <15.474726, 13.870425, 17.879061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.202051, 13.759404, 17.827480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.125284, 14.077978, 17.598095>,  <16.079224, 14.269123, 17.460464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.125284, 14.077978, 17.598095>,  <16.202051, 13.759404, 17.827480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.125284, 14.077978, 17.598095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791994, 0.470762, 0.388753,
		0.579581, -0.379570, -0.721119,
		-0.191916, 0.796436, -0.573462,
		16.067709, 14.316909, 17.426056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.783936, 13.994121, 17.438431>,  <16.202051, 13.759404, 17.827480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.783936, 13.994121, 17.438431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.540037, 14.303477, 17.507797>,  <16.393698, 14.489092, 17.549417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.540037, 14.303477, 17.507797>,  <16.783936, 13.994121, 17.438431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.540037, 14.303477, 17.507797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725320, 0.456256, 0.515501,
		0.319562, 0.440108, -0.839157,
		-0.609747, 0.773392, 0.173418,
		16.357113, 14.535495, 17.559822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.238979, 14.437224, 17.677910>,  <16.783936, 13.994121, 17.438431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.238979, 14.437224, 17.677910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.910580, 14.655183, 17.746090>,  <16.713541, 14.785957, 17.786999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.910580, 14.655183, 17.746090>,  <17.238979, 14.437224, 17.677910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.910580, 14.655183, 17.746090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487547, 0.513765, 0.705934,
		0.297089, 0.662672, -0.687462,
		-0.820997, 0.544895, 0.170450,
		16.664280, 14.818651, 17.797224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.539978, 15.129250, 17.735817>,  <17.238979, 14.437224, 17.677910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.539978, 15.129250, 17.735817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.187254, 15.136046, 17.924335>,  <16.975618, 15.140124, 18.037447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.187254, 15.136046, 17.924335>,  <17.539978, 15.129250, 17.735817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.187254, 15.136046, 17.924335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375506, 0.629889, 0.679878,
		-0.285311, 0.776499, -0.561824,
		-0.881812, 0.016992, 0.471295,
		16.922710, 15.141144, 18.065723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.392612, 15.868035, 17.882303>,  <17.539978, 15.129250, 17.735817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.392612, 15.868035, 17.882303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.192406, 15.642650, 18.145206>,  <17.072281, 15.507418, 18.302948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.192406, 15.642650, 18.145206>,  <17.392612, 15.868035, 17.882303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.192406, 15.642650, 18.145206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366814, 0.549653, 0.750553,
		-0.784174, 0.616756, -0.068424,
		-0.500518, -0.563465, 0.657259,
		17.042250, 15.473610, 18.342384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.031982, 16.360212, 18.231596>,  <17.392612, 15.868035, 17.882303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.031982, 16.360212, 18.231596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.095903, 16.026333, 18.442402>,  <17.134256, 15.826006, 18.568886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.095903, 16.026333, 18.442402>,  <17.031982, 16.360212, 18.231596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.095903, 16.026333, 18.442402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330556, 0.548300, 0.768179,
		-0.930160, 0.051452, 0.363533,
		0.159800, -0.834697, 0.527014,
		17.143843, 15.775924, 18.600506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.701853, 16.510077, 18.863689>,  <17.031982, 16.360212, 18.231596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.701853, 16.510077, 18.863689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.916615, 16.189682, 18.969637>,  <17.045471, 15.997445, 19.033205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.916615, 16.189682, 18.969637>,  <16.701853, 16.510077, 18.863689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.916615, 16.189682, 18.969637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202234, 0.427000, 0.881347,
		-0.819045, -0.419634, 0.391245,
		0.536905, -0.800985, 0.264868,
		17.077686, 15.949387, 19.049097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.530384, 16.499575, 19.571278>,  <16.701853, 16.510077, 18.863689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.530384, 16.499575, 19.571278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.845821, 16.254810, 19.546993>,  <17.035084, 16.107952, 19.532423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.845821, 16.254810, 19.546993>,  <16.530384, 16.499575, 19.571278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.845821, 16.254810, 19.546993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288490, 0.280973, 0.915329,
		-0.543040, -0.739338, 0.398104,
		0.788595, -0.611909, -0.060712,
		17.082399, 16.071238, 19.528780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.652014, 16.220789, 20.327662>,  <16.530384, 16.499575, 19.571278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.652014, 16.220789, 20.327662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.979137, 16.201841, 20.098246>,  <17.175411, 16.190472, 19.960596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.979137, 16.201841, 20.098246>,  <16.652014, 16.220789, 20.327662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.979137, 16.201841, 20.098246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538810, 0.413144, 0.734163,
		0.202177, -0.909433, 0.363396,
		0.817807, -0.047371, -0.573540,
		17.224480, 16.187630, 19.926184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.217911, 15.968272, 20.777813>,  <16.652014, 16.220789, 20.327662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.217911, 15.968272, 20.777813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.413980, 16.129868, 20.468872>,  <17.531622, 16.226824, 20.283508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.413980, 16.129868, 20.468872>,  <17.217911, 15.968272, 20.777813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.413980, 16.129868, 20.468872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722932, 0.306585, 0.619172,
		0.486929, -0.861858, -0.141776,
		0.490172, 0.403988, -0.772350,
		17.561031, 16.251064, 20.237167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.932863, 15.567056, 20.715420>,  <17.217911, 15.968272, 20.777813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.932863, 15.567056, 20.715420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.921988, 15.941231, 20.574444>,  <17.915462, 16.165735, 20.489859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.921988, 15.941231, 20.574444>,  <17.932863, 15.567056, 20.715420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.921988, 15.941231, 20.574444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602616, 0.296643, 0.740848,
		0.797567, -0.192243, -0.571777,
		-0.027190, 0.935439, -0.352442,
		17.913830, 16.221863, 20.468712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.481823, 15.741119, 20.869886>,  <17.932863, 15.567056, 20.715420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.481823, 15.741119, 20.869886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.322342, 16.101103, 20.799332>,  <18.226654, 16.317093, 20.756998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.322342, 16.101103, 20.799332>,  <18.481823, 15.741119, 20.869886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.322342, 16.101103, 20.799332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518354, 0.379813, 0.766193,
		0.756536, 0.214050, -0.617929,
		-0.398701, 0.899958, -0.176389,
		18.202732, 16.371090, 20.746414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.103857, 16.166910, 20.882826>,  <18.481823, 15.741119, 20.869886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.103857, 16.166910, 20.882826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.775808, 16.378265, 20.970650>,  <18.578979, 16.505079, 21.023344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.775808, 16.378265, 20.970650>,  <19.103857, 16.166910, 20.882826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.775808, 16.378265, 20.970650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487867, 0.445238, 0.750832,
		0.298976, 0.722889, -0.622933,
		-0.820122, 0.528389, 0.219558,
		18.529772, 16.536781, 21.036516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.381151, 16.844250, 20.918610>,  <19.103857, 16.166910, 20.882826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.381151, 16.844250, 20.918610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.032103, 16.847168, 21.113945>,  <18.822674, 16.848919, 21.231146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.032103, 16.847168, 21.113945>,  <19.381151, 16.844250, 20.918610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.032103, 16.847168, 21.113945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421030, 0.517971, 0.744607,
		-0.247513, 0.855367, -0.455065,
		-0.872623, 0.007296, 0.488340,
		18.770315, 16.849358, 21.260447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.342070, 17.508186, 21.192074>,  <19.381151, 16.844250, 20.918610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.342070, 17.508186, 21.192074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.073900, 17.293365, 21.396858>,  <18.912998, 17.164473, 21.519730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.073900, 17.293365, 21.396858>,  <19.342070, 17.508186, 21.192074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.073900, 17.293365, 21.396858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371575, 0.354226, 0.858170,
		-0.642232, 0.765571, -0.037927,
		-0.670425, -0.537051, 0.511963,
		18.872772, 17.132250, 21.550447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.189796, 17.955265, 21.659372>,  <19.342070, 17.508186, 21.192074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.189796, 17.955265, 21.659372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.050545, 17.611006, 21.808016>,  <18.966993, 17.404449, 21.897202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.050545, 17.611006, 21.808016>,  <19.189796, 17.955265, 21.659372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.050545, 17.611006, 21.808016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310204, 0.268316, 0.912020,
		-0.884636, 0.432774, 0.173568,
		-0.348127, -0.860647, 0.371610,
		18.946106, 17.352812, 21.919498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.807493, 18.126884, 22.205122>,  <19.189796, 17.955265, 21.659372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.807493, 18.126884, 22.205122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.922785, 17.749836, 22.272520>,  <18.991961, 17.523607, 22.312958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.922785, 17.749836, 22.272520>,  <18.807493, 18.126884, 22.205122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.922785, 17.749836, 22.272520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212854, 0.234629, 0.948495,
		-0.933604, -0.237520, 0.268267,
		0.288230, -0.942620, 0.168494,
		19.009254, 17.467051, 22.323069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.485828, 17.873714, 22.841547>,  <18.807493, 18.126884, 22.205122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.485828, 17.873714, 22.841547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.802355, 17.632561, 22.800854>,  <18.992270, 17.487867, 22.776438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.802355, 17.632561, 22.800854>,  <18.485828, 17.873714, 22.841547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.802355, 17.632561, 22.800854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182263, 0.073777, 0.980478,
		-0.583610, -0.794409, 0.168264,
		0.791315, -0.602885, -0.101734,
		19.039749, 17.451694, 22.770334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.442574, 17.450567, 23.343487>,  <18.485828, 17.873714, 22.841547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.442574, 17.450567, 23.343487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.827152, 17.394445, 23.248886>,  <19.057899, 17.360773, 23.192125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.827152, 17.394445, 23.248886>,  <18.442574, 17.450567, 23.343487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.827152, 17.394445, 23.248886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249450, 0.083027, 0.964822,
		-0.115734, -0.986621, 0.114825,
		0.961447, -0.140305, -0.236503,
		19.115587, 17.352354, 23.177935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.690273, 16.851723, 23.720407>,  <18.442574, 17.450567, 23.343487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.690273, 16.851723, 23.720407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.010992, 17.065613, 23.613684>,  <19.203424, 17.193947, 23.549648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.010992, 17.065613, 23.613684>,  <18.690273, 16.851723, 23.720407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.010992, 17.065613, 23.613684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265703, 0.080925, 0.960652,
		0.535278, -0.841142, -0.077193,
		0.801798, 0.534726, -0.266811,
		19.251532, 17.226030, 23.533640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.236662, 16.584625, 24.081871>,  <18.690273, 16.851723, 23.720407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.236662, 16.584625, 24.081871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.342915, 16.958807, 23.988605>,  <19.406666, 17.183315, 23.932646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.342915, 16.958807, 23.988605>,  <19.236662, 16.584625, 24.081871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.342915, 16.958807, 23.988605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306739, 0.147277, 0.940330,
		0.913975, -0.321301, -0.247819,
		0.265631, 0.935454, -0.233163,
		19.422604, 17.239443, 23.918657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.944811, 16.572712, 24.347832>,  <19.236662, 16.584625, 24.081871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.944811, 16.572712, 24.347832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.821358, 16.950489, 24.302616>,  <19.747286, 17.177155, 24.275488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.821358, 16.950489, 24.302616>,  <19.944811, 16.572712, 24.347832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.821358, 16.950489, 24.302616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606857, 0.287023, 0.741176,
		0.732441, 0.160154, -0.661725,
		-0.308633, 0.944441, -0.113037,
		19.728767, 17.233822, 24.268705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.509300, 16.982573, 24.555504>,  <19.944811, 16.572712, 24.347832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.509300, 16.982573, 24.555504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.211903, 17.249544, 24.572262>,  <20.033464, 17.409727, 24.582317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.211903, 17.249544, 24.572262>,  <20.509300, 16.982573, 24.555504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.211903, 17.249544, 24.572262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277215, 0.250583, 0.927556,
		0.608579, 0.701247, -0.371328,
		-0.743494, 0.667428, 0.041896,
		19.988853, 17.449772, 24.584831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.804043, 17.463551, 24.998793>,  <20.509300, 16.982573, 24.555504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.804043, 17.463551, 24.998793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.419401, 17.573305, 24.996557>,  <20.188616, 17.639158, 24.995216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.419401, 17.573305, 24.996557>,  <20.804043, 17.463551, 24.998793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.419401, 17.573305, 24.996557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097045, 0.359008, 0.928276,
		0.256712, 0.892091, -0.371851,
		-0.961604, 0.274385, -0.005589,
		20.130920, 17.655621, 24.994881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.684423, 18.246992, 24.926065>,  <20.804043, 17.463551, 24.998793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.684423, 18.246992, 24.926065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.374163, 18.092079, 25.125416>,  <20.188007, 17.999132, 25.245026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.374163, 18.092079, 25.125416>,  <20.684423, 18.246992, 24.926065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.374163, 18.092079, 25.125416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200303, 0.597757, 0.776250,
		-0.598535, 0.701926, -0.386078,
		-0.775651, -0.387281, 0.498376,
		20.141468, 17.975895, 25.274929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.168991, 18.777678, 25.153708>,  <20.684423, 18.246992, 24.926065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.168991, 18.777678, 25.153708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.143738, 18.473347, 25.412058>,  <20.128586, 18.290749, 25.567068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.143738, 18.473347, 25.412058>,  <20.168991, 18.777678, 25.153708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.143738, 18.473347, 25.412058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098816, 0.639220, 0.762649,
		-0.993101, 0.111973, 0.034825,
		-0.063135, -0.760829, 0.645874,
		20.124798, 18.245098, 25.605820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.884060, 19.197224, 25.721762>,  <20.168991, 18.777678, 25.153708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.884060, 19.197224, 25.721762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.013603, 18.846125, 25.863001>,  <20.091330, 18.635466, 25.947744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.013603, 18.846125, 25.863001>,  <19.884060, 19.197224, 25.721762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.013603, 18.846125, 25.863001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134179, 0.412050, 0.901227,
		-0.936543, -0.244491, 0.251221,
		0.323857, -0.877747, 0.353097,
		20.110760, 18.582800, 25.968929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.565403, 19.135637, 26.392138>,  <19.884060, 19.197224, 25.721762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.565403, 19.135637, 26.392138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.856640, 18.862850, 26.419842>,  <20.031382, 18.699177, 26.436464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.856640, 18.862850, 26.419842>,  <19.565403, 19.135637, 26.392138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.856640, 18.862850, 26.419842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201006, 0.309006, 0.929576,
		-0.655345, -0.662896, 0.362066,
		0.728093, -0.681970, 0.069259,
		20.075068, 18.658258, 26.440620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.539814, 18.964121, 27.002129>,  <19.565403, 19.135637, 26.392138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.539814, 18.964121, 27.002129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.903440, 18.810425, 26.937681>,  <20.121616, 18.718206, 26.899012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.903440, 18.810425, 26.937681>,  <19.539814, 18.964121, 27.002129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.903440, 18.810425, 26.937681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281267, 0.280639, 0.917677,
		-0.307393, -0.879546, 0.363193,
		0.909065, -0.384242, -0.161121,
		20.176161, 18.695152, 26.889345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.757654, 18.678347, 27.614790>,  <19.539814, 18.964121, 27.002129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.757654, 18.678347, 27.614790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.090956, 18.740484, 27.402542>,  <20.290937, 18.777767, 27.275194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.090956, 18.740484, 27.402542>,  <19.757654, 18.678347, 27.614790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.090956, 18.740484, 27.402542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452410, 0.360114, 0.815870,
		0.317821, -0.919884, 0.229788,
		0.833256, 0.155342, -0.530616,
		20.340933, 18.787088, 27.243357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.379793, 18.204107, 27.928282>,  <19.757654, 18.678347, 27.614790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.379793, 18.204107, 27.928282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.446596, 18.558645, 27.755539>,  <20.486677, 18.771368, 27.651894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.446596, 18.558645, 27.755539>,  <20.379793, 18.204107, 27.928282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.446596, 18.558645, 27.755539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542973, 0.282923, 0.790654,
		0.822975, -0.366531, -0.434012,
		0.167007, 0.886346, -0.431855,
		20.496698, 18.824549, 27.625982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.036213, 18.408968, 27.932302>,  <20.379793, 18.204107, 27.928282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.036213, 18.408968, 27.932302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.865921, 18.767485, 27.882647>,  <20.763746, 18.982595, 27.852852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.865921, 18.767485, 27.882647>,  <21.036213, 18.408968, 27.932302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.865921, 18.767485, 27.882647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601443, 0.382804, 0.701233,
		0.676032, 0.223873, -0.702041,
		-0.425731, 0.896293, -0.124141,
		20.738201, 19.036373, 27.845404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.584221, 18.945883, 27.882950>,  <21.036213, 18.408968, 27.932302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.584221, 18.945883, 27.882950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.237034, 19.094410, 28.014862>,  <21.028721, 19.183525, 28.094009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.237034, 19.094410, 28.014862>,  <21.584221, 18.945883, 27.882950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.237034, 19.094410, 28.014862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495484, 0.602597, 0.625598,
		0.033569, 0.706400, -0.707016,
		-0.867968, 0.371316, 0.329781,
		20.976643, 19.205805, 28.113796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.371367, 19.724899, 27.838552>,  <21.584221, 18.945883, 27.882950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.371367, 19.724899, 27.838552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.144268, 19.620508, 28.150848>,  <21.008009, 19.557875, 28.338226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.144268, 19.620508, 28.150848>,  <21.371367, 19.724899, 27.838552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.144268, 19.620508, 28.150848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432121, 0.712763, 0.552486,
		-0.700669, 0.651045, -0.291895,
		-0.567745, -0.260976, 0.780741,
		20.973944, 19.542215, 28.385071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.889160, 20.320316, 28.093626>,  <21.371367, 19.724899, 27.838552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.889160, 20.320316, 28.093626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.965219, 20.056845, 28.384827>,  <21.010855, 19.898762, 28.559547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.965219, 20.056845, 28.384827>,  <20.889160, 20.320316, 28.093626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.965219, 20.056845, 28.384827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127166, 0.751810, 0.647001,
		-0.973485, -0.030449, 0.226718,
		0.190149, -0.658677, 0.728003,
		21.022264, 19.859241, 28.603228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.545507, 20.606766, 28.664682>,  <20.889160, 20.320316, 28.093626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.545507, 20.606766, 28.664682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.764118, 20.311459, 28.822807>,  <20.895285, 20.134275, 28.917683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.764118, 20.311459, 28.822807>,  <20.545507, 20.606766, 28.664682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.764118, 20.311459, 28.822807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039466, 0.494230, 0.868435,
		-0.836511, -0.459021, 0.299246,
		0.546526, -0.738266, 0.395313,
		20.928076, 20.089979, 28.941401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.076172, 21.112745, 28.505852>,  <20.545507, 20.606766, 28.664682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.076172, 21.112745, 28.505852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.783264, 21.233013, 28.750271>,  <19.607519, 21.305174, 28.896921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.783264, 21.233013, 28.750271>,  <20.076172, 21.112745, 28.505852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.783264, 21.233013, 28.750271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576534, 0.203871, -0.791230,
		-0.362474, -0.931683, 0.024058,
		-0.732271, 0.300671, 0.611045,
		19.563583, 21.323214, 28.933584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.408024, 20.618681, 28.584192>,  <20.076172, 21.112745, 28.505852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.408024, 20.618681, 28.584192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.314722, 21.007357, 28.569183>,  <19.258741, 21.240562, 28.560177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.314722, 21.007357, 28.569183>,  <19.408024, 20.618681, 28.584192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.314722, 21.007357, 28.569183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443672, -0.140683, -0.885078,
		-0.865302, -0.189800, 0.463927,
		-0.233254, 0.971692, -0.037524,
		19.244745, 21.298864, 28.557926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.711895, 20.682489, 28.616707>,  <19.408024, 20.618681, 28.584192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.711895, 20.682489, 28.616707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.853674, 21.008581, 28.433504>,  <18.938742, 21.204237, 28.323584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.853674, 21.008581, 28.433504>,  <18.711895, 20.682489, 28.616707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.853674, 21.008581, 28.433504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696151, -0.096953, -0.711318,
		-0.624293, 0.570965, 0.533159,
		0.354446, 0.815230, -0.458005,
		18.960009, 21.253151, 28.296103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.126539, 20.976620, 28.378633>,  <18.711895, 20.682489, 28.616707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.126539, 20.976620, 28.378633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.401739, 21.165716, 28.158390>,  <18.566858, 21.279175, 28.026243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.401739, 21.165716, 28.158390>,  <18.126539, 20.976620, 28.378633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.401739, 21.165716, 28.158390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579874, -0.098084, -0.808780,
		-0.436351, 0.875725, 0.206649,
		0.688000, 0.472742, -0.550609,
		18.608139, 21.307539, 27.993208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.703220, 21.344961, 27.982018>,  <18.126539, 20.976620, 28.378633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.703220, 21.344961, 27.982018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.043819, 21.342382, 27.772289>,  <18.248178, 21.340836, 27.646452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.043819, 21.342382, 27.772289>,  <17.703220, 21.344961, 27.982018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.043819, 21.342382, 27.772289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499037, -0.316943, -0.806542,
		-0.160979, 0.948423, -0.273094,
		0.851498, -0.006447, -0.524319,
		18.299269, 21.340448, 27.614994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.542618, 21.676382, 27.338957>,  <17.703220, 21.344961, 27.982018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.542618, 21.676382, 27.338957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.894924, 21.504009, 27.260420>,  <18.106308, 21.400585, 27.213297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.894924, 21.504009, 27.260420>,  <17.542618, 21.676382, 27.338957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.894924, 21.504009, 27.260420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378716, -0.392055, -0.838372,
		0.284306, 0.812766, -0.508509,
		0.880764, -0.430934, -0.196344,
		18.159153, 21.374729, 27.201517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751892, 21.814543, 26.554920>,  <17.542618, 21.676382, 27.338957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.751892, 21.814543, 26.554920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.962317, 21.495016, 26.671644>,  <18.088572, 21.303301, 26.741678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.962317, 21.495016, 26.671644>,  <17.751892, 21.814543, 26.554920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.962317, 21.495016, 26.671644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235474, -0.466525, -0.852588,
		0.817198, 0.379799, -0.433520,
		0.526060, -0.798816, 0.291810,
		18.120134, 21.255371, 26.759188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.246841, 21.644567, 26.014038>,  <17.751892, 21.814543, 26.554920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.246841, 21.644567, 26.014038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.150906, 21.328192, 26.239210>,  <18.093344, 21.138367, 26.374313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.150906, 21.328192, 26.239210>,  <18.246841, 21.644567, 26.014038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.150906, 21.328192, 26.239210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243176, -0.512425, -0.823581,
		0.939863, -0.334418, -0.069438,
		-0.239839, -0.790940, 0.562932,
		18.078955, 21.090910, 26.408089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.133495, 21.218704, 25.530590>,  <18.246841, 21.644567, 26.014038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.133495, 21.218704, 25.530590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.016888, 20.986940, 25.835037>,  <17.946924, 20.847881, 26.017706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.016888, 20.986940, 25.835037>,  <18.133495, 21.218704, 25.530590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.016888, 20.986940, 25.835037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340122, -0.680897, -0.648611,
		0.894055, -0.447954, 0.001423,
		-0.291517, -0.579410, 0.761119,
		17.929432, 20.813118, 26.063374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.227880, 20.544668, 25.274952>,  <18.133495, 21.218704, 25.530590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.227880, 20.544668, 25.274952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.964357, 20.510155, 25.573891>,  <17.806244, 20.489447, 25.753254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.964357, 20.510155, 25.573891>,  <18.227880, 20.544668, 25.274952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.964357, 20.510155, 25.573891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522565, -0.662152, -0.537104,
		0.541201, -0.744386, 0.391142,
		-0.658807, -0.086284, 0.747347,
		17.766716, 20.484270, 25.798096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.177744, 19.769842, 25.415113>,  <18.227880, 20.544668, 25.274952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.177744, 19.769842, 25.415113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.851381, 19.968573, 25.533411>,  <17.655563, 20.087811, 25.604389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.851381, 19.968573, 25.533411>,  <18.177744, 19.769842, 25.415113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.851381, 19.968573, 25.533411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574726, -0.641016, -0.508712,
		-0.063162, -0.585033, 0.808546,
		-0.815905, 0.496824, 0.295746,
		17.606609, 20.117620, 25.622135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.777315, 19.298437, 25.754820>,  <18.177744, 19.769842, 25.415113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.777315, 19.298437, 25.754820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.534241, 19.589260, 25.627003>,  <17.388395, 19.763754, 25.550312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.534241, 19.589260, 25.627003>,  <17.777315, 19.298437, 25.754820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.534241, 19.589260, 25.627003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548739, -0.675258, -0.492861,
		-0.574110, -0.124160, 0.809309,
		-0.607686, 0.727056, -0.319541,
		17.351934, 19.807377, 25.531141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.208172, 18.954382, 25.633932>,  <17.777315, 19.298437, 25.754820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.208172, 18.954382, 25.633932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.133266, 19.302082, 25.450918>,  <17.088324, 19.510702, 25.341110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.133266, 19.302082, 25.450918>,  <17.208172, 18.954382, 25.633932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.133266, 19.302082, 25.450918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567150, -0.475975, -0.672152,
		-0.802042, 0.133621, 0.582128,
		-0.187265, 0.869249, -0.457535,
		17.077087, 19.562857, 25.313658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.441223, 19.090704, 25.542124>,  <17.208172, 18.954382, 25.633932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.441223, 19.090704, 25.542124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.611904, 19.311403, 25.255487>,  <16.714314, 19.443823, 25.083506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.611904, 19.311403, 25.255487>,  <16.441223, 19.090704, 25.542124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.611904, 19.311403, 25.255487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578120, -0.442913, -0.685277,
		-0.695486, 0.706684, 0.129983,
		0.426703, 0.551747, -0.716589,
		16.739916, 19.476927, 25.040510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.922526, 19.213053, 25.039888>,  <16.441223, 19.090704, 25.542124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.922526, 19.213053, 25.039888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.247414, 19.306026, 24.825871>,  <16.442347, 19.361811, 24.697460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.247414, 19.306026, 24.825871>,  <15.922526, 19.213053, 25.039888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.247414, 19.306026, 24.825871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424607, -0.393369, -0.815457,
		-0.400011, 0.889514, -0.220808,
		0.812219, 0.232435, -0.535046,
		16.491079, 19.375757, 24.665358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.637039, 19.469795, 24.416744>,  <15.922526, 19.213053, 25.039888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.637039, 19.469795, 24.416744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.022799, 19.402176, 24.335400>,  <16.254255, 19.361605, 24.286592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.022799, 19.402176, 24.335400>,  <15.637039, 19.469795, 24.416744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.022799, 19.402176, 24.335400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215874, -0.059065, -0.974633,
		0.152748, 0.983836, -0.093455,
		0.964400, -0.169048, -0.203362,
		16.312119, 19.351461, 24.274391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.834503, 19.896431, 23.871582>,  <15.637039, 19.469795, 24.416744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.834503, 19.896431, 23.871582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.124195, 19.620974, 23.885780>,  <16.298010, 19.455698, 23.894299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.124195, 19.620974, 23.885780>,  <15.834503, 19.896431, 23.871582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.124195, 19.620974, 23.885780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085973, -0.141249, -0.986234,
		0.684178, 0.711208, -0.161502,
		0.724230, -0.688644, 0.035495,
		16.341465, 19.414381, 23.896429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.339422, 20.087311, 23.411753>,  <15.834503, 19.896431, 23.871582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.339422, 20.087311, 23.411753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.352417, 19.691326, 23.466776>,  <16.360214, 19.453735, 23.499790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.352417, 19.691326, 23.466776>,  <16.339422, 20.087311, 23.411753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.352417, 19.691326, 23.466776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111548, -0.140361, -0.983797,
		0.993228, 0.016618, -0.114988,
		0.032488, -0.989961, 0.137556,
		16.362164, 19.394339, 23.508043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.709475, 19.965155, 22.883251>,  <16.339422, 20.087311, 23.411753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.709475, 19.965155, 22.883251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.535414, 19.621838, 22.992046>,  <16.430977, 19.415848, 23.057323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.535414, 19.621838, 22.992046>,  <16.709475, 19.965155, 22.883251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.535414, 19.621838, 22.992046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134666, -0.236648, -0.962218,
		0.890229, -0.455339, -0.012604,
		-0.435152, -0.858292, 0.271990,
		16.404867, 19.364349, 23.073643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.109344, 19.472441, 22.577557>,  <16.709475, 19.965155, 22.883251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.109344, 19.472441, 22.577557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.745628, 19.326929, 22.658405>,  <16.527399, 19.239622, 22.706915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.745628, 19.326929, 22.658405>,  <17.109344, 19.472441, 22.577557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.745628, 19.326929, 22.658405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118297, -0.239711, -0.963610,
		0.398994, -0.900112, 0.174933,
		-0.909290, -0.363781, 0.202124,
		16.472841, 19.217794, 22.719042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.178957, 18.883694, 22.318176>,  <17.109344, 19.472441, 22.577557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.178957, 18.883694, 22.318176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.785322, 18.950165, 22.343327>,  <16.549141, 18.990047, 22.358416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.785322, 18.950165, 22.343327>,  <17.178957, 18.883694, 22.318176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.785322, 18.950165, 22.343327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128947, -0.424537, -0.896181,
		-0.122234, -0.890030, 0.439211,
		-0.984089, 0.166178, 0.062874,
		16.490095, 19.000019, 22.362188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.844582, 18.253057, 22.187746>,  <17.178957, 18.883694, 22.318176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.844582, 18.253057, 22.187746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555626, 18.520388, 22.116755>,  <16.382252, 18.680786, 22.074160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555626, 18.520388, 22.116755>,  <16.844582, 18.253057, 22.187746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.555626, 18.520388, 22.116755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117144, -0.371233, -0.921121,
		-0.681493, -0.644616, 0.346464,
		-0.722388, 0.668323, -0.177480,
		16.338909, 18.720884, 22.063511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.114313, 17.955933, 21.930355>,  <16.844582, 18.253057, 22.187746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.114313, 17.955933, 21.930355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.183491, 18.323423, 21.788351>,  <16.224997, 18.543919, 21.703148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.183491, 18.323423, 21.788351>,  <16.114313, 17.955933, 21.930355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.183491, 18.323423, 21.788351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091324, -0.343931, -0.934543,
		-0.980689, 0.194045, 0.024421,
		0.172944, 0.918726, -0.355010,
		16.235374, 18.599041, 21.681849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.984361, 17.731789, 21.291304>,  <16.114313, 17.955933, 21.930355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.984361, 17.731789, 21.291304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.100426, 18.109013, 21.226263>,  <16.170065, 18.335348, 21.187239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.100426, 18.109013, 21.226263>,  <15.984361, 17.731789, 21.291304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.100426, 18.109013, 21.226263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225031, -0.232388, -0.946233,
		-0.930144, 0.237970, -0.279648,
		0.290162, 0.943062, -0.162604,
		16.187475, 18.391932, 21.177483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.656363, 17.966354, 20.631918>,  <15.984361, 17.731789, 21.291304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.656363, 17.966354, 20.631918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.959385, 18.217794, 20.702314>,  <16.141197, 18.368658, 20.744553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.959385, 18.217794, 20.702314>,  <15.656363, 17.966354, 20.631918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.959385, 18.217794, 20.702314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250340, -0.030778, -0.967669,
		-0.602860, 0.777119, -0.180680,
		0.757555, 0.628601, 0.175989,
		16.186651, 18.406374, 20.755112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.619714, 18.167202, 19.933119>,  <15.656363, 17.966354, 20.631918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.619714, 18.167202, 19.933119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.945899, 18.352430, 20.072020>,  <16.141611, 18.463568, 20.155361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.945899, 18.352430, 20.072020>,  <15.619714, 18.167202, 19.933119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.945899, 18.352430, 20.072020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285539, 0.200016, -0.937262,
		-0.503475, 0.863458, 0.030881,
		0.815463, 0.463070, 0.347254,
		16.190538, 18.491352, 20.176195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.764036, 18.814562, 19.494492>,  <15.619714, 18.167202, 19.933119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.764036, 18.814562, 19.494492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.113989, 18.708960, 19.656914>,  <16.323961, 18.645597, 19.754368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.113989, 18.708960, 19.656914>,  <15.764036, 18.814562, 19.494492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.113989, 18.708960, 19.656914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440808, 0.086662, -0.893408,
		0.200676, 0.960620, 0.192195,
		0.874881, -0.264007, 0.406058,
		16.376453, 18.629757, 19.778730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.231440, 19.319416, 19.327126>,  <15.764036, 18.814562, 19.494492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.231440, 19.319416, 19.327126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.469122, 19.010054, 19.415457>,  <16.611731, 18.824436, 19.468456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.469122, 19.010054, 19.415457>,  <16.231440, 19.319416, 19.327126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.469122, 19.010054, 19.415457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478010, 0.118764, -0.870288,
		0.646858, 0.622688, 0.440266,
		0.594206, -0.773405, 0.220828,
		16.647383, 18.778032, 19.481705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849169, 19.518391, 19.174555>,  <16.231440, 19.319416, 19.327126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.849169, 19.518391, 19.174555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.903767, 19.122305, 19.186178>,  <16.936525, 18.884653, 19.193151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.903767, 19.122305, 19.186178>,  <16.849169, 19.518391, 19.174555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.903767, 19.122305, 19.186178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405633, 0.029104, -0.913572,
		0.903787, 0.136484, 0.405637,
		0.136494, -0.990215, 0.029058,
		16.944715, 18.825241, 19.194895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.600021, 19.366138, 18.953911>,  <16.849169, 19.518391, 19.174555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.600021, 19.366138, 18.953911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.387312, 19.032333, 18.896219>,  <17.259686, 18.832050, 18.861605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.387312, 19.032333, 18.896219>,  <17.600021, 19.366138, 18.953911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.387312, 19.032333, 18.896219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365900, -0.072811, -0.927802,
		0.763762, -0.546155, 0.344067,
		-0.531775, -0.834514, -0.144228,
		17.227779, 18.781979, 18.852951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.894897, 19.058836, 18.394783>,  <17.600021, 19.366138, 18.953911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.894897, 19.058836, 18.394783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.579130, 18.813385, 18.401455>,  <17.389669, 18.666115, 18.405458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.579130, 18.813385, 18.401455>,  <17.894897, 19.058836, 18.394783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.579130, 18.813385, 18.401455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180712, -0.258276, -0.949019,
		0.586652, -0.746160, 0.314778,
		-0.789419, -0.613628, 0.016678,
		17.342304, 18.629297, 18.406458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.158941, 18.445553, 18.188778>,  <17.894897, 19.058836, 18.394783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.158941, 18.445553, 18.188778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.763767, 18.432045, 18.128325>,  <17.526663, 18.423941, 18.092052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.763767, 18.432045, 18.128325>,  <18.158941, 18.445553, 18.188778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.763767, 18.432045, 18.128325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152803, -0.371211, -0.915889,
		-0.025173, -0.927934, 0.371893,
		-0.987936, -0.033771, -0.151136,
		17.467386, 18.421913, 18.082983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.081261, 17.907129, 17.779491>,  <18.158941, 18.445553, 18.188778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.081261, 17.907129, 17.779491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.743099, 18.119190, 17.753477>,  <17.540201, 18.246428, 17.737869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.743099, 18.119190, 17.753477>,  <18.081261, 17.907129, 17.779491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.743099, 18.119190, 17.753477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137925, -0.334311, -0.932316,
		-0.516011, -0.779215, 0.355749,
		-0.845405, 0.530152, -0.065035,
		17.489477, 18.278236, 17.733967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.529724, 17.467693, 17.525635>,  <18.081261, 17.907129, 17.779491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.529724, 17.467693, 17.525635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.463305, 17.854536, 17.448551>,  <17.423452, 18.086641, 17.402300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.463305, 17.854536, 17.448551>,  <17.529724, 17.467693, 17.525635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.463305, 17.854536, 17.448551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010512, -0.197148, -0.980318,
		-0.986062, -0.160753, 0.042902,
		-0.166047, 0.967105, -0.192710,
		17.413490, 18.144667, 17.390738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.022772, 17.423466, 17.011045>,  <17.529724, 17.467693, 17.525635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.022772, 17.423466, 17.011045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.143398, 17.804590, 16.997147>,  <17.215775, 18.033264, 16.988808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.143398, 17.804590, 16.997147>,  <17.022772, 17.423466, 17.011045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.143398, 17.804590, 16.997147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045611, -0.050818, -0.997666,
		-0.952353, 0.299278, -0.058784,
		0.301567, 0.952812, -0.034746,
		17.233868, 18.090433, 16.986723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.657368, 17.754272, 16.550375>,  <17.022772, 17.423466, 17.011045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.657368, 17.754272, 16.550375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.969141, 18.004547, 16.562998>,  <17.156206, 18.154713, 16.570572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.969141, 18.004547, 16.562998>,  <16.657368, 17.754272, 16.550375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.969141, 18.004547, 16.562998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025409, 0.081902, -0.996317,
		-0.625968, 0.775762, 0.079735,
		0.779435, 0.625688, 0.031557,
		17.202972, 18.192253, 16.572464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.476799, 18.416809, 16.127901>,  <16.657368, 17.754272, 16.550375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.476799, 18.416809, 16.127901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.872135, 18.361612, 16.153631>,  <17.109337, 18.328495, 16.169069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.872135, 18.361612, 16.153631>,  <16.476799, 18.416809, 16.127901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.872135, 18.361612, 16.153631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075125, 0.074528, -0.994385,
		0.132423, 0.987625, 0.084025,
		0.988342, -0.137992, 0.064326,
		17.168638, 18.320215, 16.172930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.705168, 18.998779, 15.795099>,  <16.476799, 18.416809, 16.127901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.705168, 18.998779, 15.795099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.003447, 18.732479, 15.784408>,  <17.182413, 18.572699, 15.777992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.003447, 18.732479, 15.784408>,  <16.705168, 18.998779, 15.795099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.003447, 18.732479, 15.784408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083059, 0.132687, -0.987672,
		0.661090, 0.734282, 0.154240,
		0.745695, -0.665751, -0.026729,
		17.227156, 18.532753, 15.776389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.246794, 19.363403, 15.486922>,  <16.705168, 18.998779, 15.795099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.246794, 19.363403, 15.486922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.306412, 18.970900, 15.438064>,  <17.342182, 18.735397, 15.408749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.306412, 18.970900, 15.438064>,  <17.246794, 19.363403, 15.486922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.306412, 18.970900, 15.438064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083518, 0.135577, -0.987240,
		0.985297, 0.136942, 0.102160,
		0.149045, -0.981257, -0.122146,
		17.351126, 18.676523, 15.401420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.671144, 19.306854, 14.891710>,  <17.246794, 19.363403, 15.486922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.671144, 19.306854, 14.891710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.544010, 18.929619, 14.930838>,  <17.467730, 18.703278, 14.954314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.544010, 18.929619, 14.930838>,  <17.671144, 19.306854, 14.891710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.544010, 18.929619, 14.930838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156877, -0.154054, -0.975529,
		0.935078, -0.294711, 0.196912,
		-0.317834, -0.943087, 0.097819,
		17.448660, 18.646692, 14.960183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.045841, 19.009830, 14.460594>,  <17.671144, 19.306854, 14.891710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.045841, 19.009830, 14.460594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.770872, 18.726271, 14.523724>,  <17.605890, 18.556135, 14.561601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.770872, 18.726271, 14.523724>,  <18.045841, 19.009830, 14.460594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.770872, 18.726271, 14.523724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023384, -0.238803, -0.970786,
		0.725880, -0.663652, 0.180735,
		-0.687424, -0.708900, 0.157823,
		17.564644, 18.513601, 14.571071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.220615, 18.604290, 13.924768>,  <18.045841, 19.009830, 14.460594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.220615, 18.604290, 13.924768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.865477, 18.476812, 14.057529>,  <17.652393, 18.400326, 14.137186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.865477, 18.476812, 14.057529>,  <18.220615, 18.604290, 13.924768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.865477, 18.476812, 14.057529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256821, -0.255289, -0.932132,
		0.381797, -0.912831, 0.144811,
		-0.887848, -0.318695, 0.331903,
		17.599123, 18.381205, 14.157101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.083138, 17.861221, 13.660481>,  <18.220615, 18.604290, 13.924768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.083138, 17.861221, 13.660481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.753813, 18.071600, 13.745839>,  <17.556217, 18.197826, 13.797053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.753813, 18.071600, 13.745839>,  <18.083138, 17.861221, 13.660481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.753813, 18.071600, 13.745839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368684, -0.209709, -0.905591,
		-0.431539, -0.824260, 0.366563,
		-0.823314, 0.525944, 0.213394,
		17.506819, 18.229383, 13.809857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.596628, 17.773184, 14.125875>,  <18.083138, 17.861221, 13.660481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.596628, 17.773184, 14.125875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.466085, 17.847282, 14.496641>,  <18.387760, 17.891743, 14.719101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.466085, 17.847282, 14.496641>,  <18.596628, 17.773184, 14.125875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.466085, 17.847282, 14.496641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939598, 0.170630, 0.296719,
		-0.103193, 0.967765, -0.229744,
		-0.326355, 0.185248, 0.926917,
		18.368179, 17.902857, 14.774716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.233631, 17.796839, 14.450269>,  <18.596628, 17.773184, 14.125875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.233631, 17.796839, 14.450269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.969473, 17.903040, 14.731235>,  <18.810978, 17.966761, 14.899814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.969473, 17.903040, 14.731235>,  <19.233631, 17.796839, 14.450269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.969473, 17.903040, 14.731235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743822, 0.102994, 0.660395,
		0.102994, 0.958592, -0.265505,
		-0.660395, 0.265505, 0.702414,
		18.771355, 17.982691, 14.941958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.405565, 18.480463, 14.635775>,  <19.233631, 17.796839, 14.450269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.405565, 18.480463, 14.635775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.263962, 18.236349, 14.919248>,  <19.178999, 18.089882, 15.089332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.263962, 18.236349, 14.919248>,  <19.405565, 18.480463, 14.635775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.263962, 18.236349, 14.919248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893605, 0.002858, 0.448845,
		-0.275948, 0.792179, 0.544340,
		-0.354010, -0.610282, 0.708683,
		19.157759, 18.053265, 15.131853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.758722, 18.788309, 15.174361>,  <19.405565, 18.480463, 14.635775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.758722, 18.788309, 15.174361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.674774, 18.409594, 15.271966>,  <19.624405, 18.182364, 15.330529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.674774, 18.409594, 15.271966>,  <19.758722, 18.788309, 15.174361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.674774, 18.409594, 15.271966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874114, -0.069881, 0.480668,
		-0.438039, 0.314174, 0.842269,
		-0.209872, -0.946790, 0.244013,
		19.611813, 18.125557, 15.345170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.902885, 18.732224, 15.939219>,  <19.758722, 18.788309, 15.174361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.902885, 18.732224, 15.939219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.962227, 18.391642, 15.738014>,  <19.997831, 18.187292, 15.617291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.962227, 18.391642, 15.738014>,  <19.902885, 18.732224, 15.939219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.962227, 18.391642, 15.738014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858846, -0.141237, 0.492376,
		-0.490279, -0.505055, 0.710314,
		0.148354, -0.851452, -0.503011,
		20.006733, 18.136206, 15.587111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.991114, 18.073641, 16.352959>,  <19.902885, 18.732224, 15.939219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.991114, 18.073641, 16.352959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.184841, 18.066462, 16.003075>,  <20.301077, 18.062155, 15.793144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.184841, 18.066462, 16.003075>,  <19.991114, 18.073641, 16.352959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.184841, 18.066462, 16.003075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862142, -0.160275, 0.480649,
		-0.148821, -0.986909, -0.062148,
		0.484318, -0.017950, -0.874708,
		20.330137, 18.061077, 15.740663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.746189, 17.276831, 16.428593>,  <19.991114, 18.073641, 16.352959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.746189, 17.276831, 16.428593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.937456, 16.977911, 16.244028>,  <20.052216, 16.798559, 16.133289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.937456, 16.977911, 16.244028>,  <19.746189, 17.276831, 16.428593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.937456, 16.977911, 16.244028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878253, -0.403571, -0.256520,
		0.005484, 0.527897, -0.849290,
		0.478165, -0.747299, -0.461414,
		20.080906, 16.753721, 16.105604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.422800, 17.259012, 15.694621>,  <19.746189, 17.276831, 16.428593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.422800, 17.259012, 15.694621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.565941, 16.899023, 15.794216>,  <19.651825, 16.683029, 15.853973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.565941, 16.899023, 15.794216>,  <19.422800, 17.259012, 15.694621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.565941, 16.899023, 15.794216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893641, -0.407407, -0.188217,
		0.270829, -0.155152, -0.950042,
		0.357852, -0.899971, 0.248988,
		19.673296, 16.629032, 15.868913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.243477, 16.824730, 15.103387>,  <19.422800, 17.259012, 15.694621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.243477, 16.824730, 15.103387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.318951, 16.557940, 15.391705>,  <19.364235, 16.397865, 15.564695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.318951, 16.557940, 15.391705>,  <19.243477, 16.824730, 15.103387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.318951, 16.557940, 15.391705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805394, -0.525069, -0.275033,
		0.561907, -0.528628, -0.636250,
		0.188685, -0.666974, 0.720793,
		19.375557, 16.357847, 15.607943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.413858, 16.145838, 14.795578>,  <19.243477, 16.824730, 15.103387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.413858, 16.145838, 14.795578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.272469, 16.086205, 15.164973>,  <19.187634, 16.050425, 15.386610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.272469, 16.086205, 15.164973>,  <19.413858, 16.145838, 14.795578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.272469, 16.086205, 15.164973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609033, -0.712645, -0.348159,
		0.710023, -0.685501, 0.161107,
		-0.353476, -0.149081, 0.923487,
		19.166426, 16.041481, 15.442019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.450420, 15.424537, 14.932422>,  <19.413858, 16.145838, 14.795578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.450420, 15.424537, 14.932422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.152658, 15.574221, 15.153630>,  <18.974001, 15.664031, 15.286355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.152658, 15.574221, 15.153630>,  <19.450420, 15.424537, 14.932422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.152658, 15.574221, 15.153630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600814, -0.736746, -0.310206,
		0.291354, -0.563180, 0.773266,
		-0.744403, 0.374209, 0.553020,
		18.929338, 15.686483, 15.319536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.977749, 14.889063, 15.078721>,  <19.450420, 15.424537, 14.932422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.977749, 14.889063, 15.078721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.732685, 15.181821, 15.198038>,  <18.585648, 15.357476, 15.269629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.732685, 15.181821, 15.198038>,  <18.977749, 14.889063, 15.078721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.732685, 15.181821, 15.198038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767626, -0.461187, -0.445036,
		-0.188151, -0.501633, 0.844372,
		-0.612658, 0.731896, 0.298294,
		18.548887, 15.401390, 15.287526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.394966, 14.498735, 15.182171>,  <18.977749, 14.889063, 15.078721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.394966, 14.498735, 15.182171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.268484, 14.877402, 15.157402>,  <18.192595, 15.104603, 15.142541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.268484, 14.877402, 15.157402>,  <18.394966, 14.498735, 15.182171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.268484, 14.877402, 15.157402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770039, -0.294238, -0.566095,
		-0.554123, -0.131320, 0.822011,
		-0.316206, 0.946667, -0.061922,
		18.173622, 15.161403, 15.138825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.699739, 14.437277, 15.267330>,  <18.394966, 14.498735, 15.182171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.699739, 14.437277, 15.267330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.761700, 14.778810, 15.068543>,  <17.798876, 14.983729, 14.949271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.761700, 14.778810, 15.068543>,  <17.699739, 14.437277, 15.267330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.761700, 14.778810, 15.068543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828117, -0.162093, -0.536607,
		-0.538728, 0.494668, 0.681965,
		0.154901, 0.853832, -0.496967,
		17.808170, 15.034959, 14.919454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.156343, 14.852146, 15.426707>,  <17.699739, 14.437277, 15.267330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.156343, 14.852146, 15.426707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.292910, 14.976216, 15.071804>,  <17.374849, 15.050658, 14.858862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.292910, 14.976216, 15.071804>,  <17.156343, 14.852146, 15.426707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.292910, 14.976216, 15.071804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931823, -0.011882, -0.362717,
		-0.123049, 0.950605, 0.284973,
		0.341415, 0.310176, -0.887258,
		17.395334, 15.069269, 14.805627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.512508, 15.184631, 15.232234>,  <17.156343, 14.852146, 15.426707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.512508, 15.184631, 15.232234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.743679, 15.174829, 14.905946>,  <16.882381, 15.168948, 14.710173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.743679, 15.174829, 14.905946>,  <16.512508, 15.184631, 15.232234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.743679, 15.174829, 14.905946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814599, -0.077696, -0.574798,
		-0.049293, 0.996676, -0.064864,
		0.577927, -0.024504, -0.815721,
		16.917057, 15.167479, 14.661229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.216131, 15.508060, 14.732579>,  <16.512508, 15.184631, 15.232234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.216131, 15.508060, 14.732579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.475321, 15.304839, 14.505595>,  <16.630835, 15.182907, 14.369405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.475321, 15.304839, 14.505595>,  <16.216131, 15.508060, 14.732579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.475321, 15.304839, 14.505595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702919, -0.111978, -0.702400,
		0.293312, 0.854017, -0.429678,
		0.647976, -0.508051, -0.567460,
		16.669714, 15.152424, 14.335357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.054256, 15.826532, 14.061987>,  <16.216131, 15.508060, 14.732579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.054256, 15.826532, 14.061987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.255102, 15.483797, 14.015153>,  <16.375610, 15.278155, 13.987052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.255102, 15.483797, 14.015153>,  <16.054256, 15.826532, 14.061987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.255102, 15.483797, 14.015153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529614, -0.197637, -0.824893,
		0.683659, 0.476200, -0.553030,
		0.502114, -0.856839, -0.117086,
		16.405737, 15.226746, 13.980027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.236536, 15.831238, 13.477481>,  <16.054256, 15.826532, 14.061987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.236536, 15.831238, 13.477481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.239948, 15.439772, 13.559593>,  <16.241997, 15.204892, 13.608860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.239948, 15.439772, 13.559593>,  <16.236536, 15.831238, 13.477481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.239948, 15.439772, 13.559593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527247, -0.178836, -0.830680,
		0.849669, -0.101146, -0.517524,
		0.008532, -0.978666, 0.205280,
		16.242508, 15.146172, 13.621178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.519552, 15.383445, 12.879372>,  <16.236536, 15.831238, 13.477481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.519552, 15.383445, 12.879372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.270977, 15.151498, 13.090111>,  <16.121832, 15.012330, 13.216555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.270977, 15.151498, 13.090111>,  <16.519552, 15.383445, 12.879372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.270977, 15.151498, 13.090111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496272, -0.229002, -0.837420,
		0.606241, -0.781865, -0.145461,
		-0.621438, -0.579866, 0.526848,
		16.084545, 14.977538, 13.248165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.308908, 14.742650, 12.520871>,  <16.519552, 15.383445, 12.879372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.308908, 14.742650, 12.520871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.037737, 14.729017, 12.814606>,  <15.875034, 14.720838, 12.990847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.037737, 14.729017, 12.814606>,  <16.308908, 14.742650, 12.520871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.037737, 14.729017, 12.814606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633572, -0.479524, -0.607160,
		0.372826, -0.876866, 0.303490,
		-0.677929, -0.034082, 0.734337,
		15.834358, 14.718793, 13.034907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.111786, 14.067019, 12.728833>,  <16.308908, 14.742650, 12.520871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.111786, 14.067019, 12.728833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.790405, 14.288525, 12.816298>,  <15.597577, 14.421428, 12.868777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.790405, 14.288525, 12.816298>,  <16.111786, 14.067019, 12.728833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.790405, 14.288525, 12.816298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537418, -0.516502, -0.666639,
		-0.256220, -0.653125, 0.712586,
		-0.803451, 0.553762, 0.218663,
		15.549370, 14.454654, 12.881897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.623765, 13.637354, 12.808244>,  <16.111786, 14.067019, 12.728833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.623765, 13.637354, 12.808244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.420009, 13.977468, 12.755278>,  <15.297755, 14.181538, 12.723497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.420009, 13.977468, 12.755278>,  <15.623765, 13.637354, 12.808244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.420009, 13.977468, 12.755278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510814, -0.422606, -0.748647,
		-0.692525, -0.313714, 0.649610,
		-0.509390, 0.850287, -0.132416,
		15.267192, 14.232554, 12.715553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.835310, 13.413725, 12.715908>,  <15.623765, 13.637354, 12.808244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.835310, 13.413725, 12.715908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.858569, 13.785833, 12.571013>,  <14.872524, 14.009098, 12.484076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.858569, 13.785833, 12.571013>,  <14.835310, 13.413725, 12.715908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.858569, 13.785833, 12.571013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414233, -0.307656, -0.856597,
		-0.908312, 0.199859, 0.367459,
		0.058147, 0.930271, -0.362236,
		14.876014, 14.064915, 12.462342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.230258, 13.553210, 12.293204>,  <14.835310, 13.413725, 12.715908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.230258, 13.553210, 12.293204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.486109, 13.832012, 12.163551>,  <14.639620, 13.999293, 12.085759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.486109, 13.832012, 12.163551>,  <14.230258, 13.553210, 12.293204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.486109, 13.832012, 12.163551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376833, -0.083202, -0.922537,
		-0.669980, 0.712224, 0.209436,
		0.639628, 0.697004, -0.324133,
		14.677997, 14.041113, 12.066312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.983260, 14.122768, 12.017297>,  <14.230258, 13.553210, 12.293204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.983260, 14.122768, 12.017297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.330325, 14.146107, 11.819810>,  <14.538565, 14.160110, 11.701318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.330325, 14.146107, 11.819810>,  <13.983260, 14.122768, 12.017297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.330325, 14.146107, 11.819810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495851, 0.029766, -0.867897,
		-0.035942, 0.997853, 0.054757,
		0.867663, 0.058346, -0.493717,
		14.590624, 14.163610, 11.671695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.786807, 14.539294, 11.514490>,  <13.983260, 14.122768, 12.017297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.786807, 14.539294, 11.514490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.131639, 14.377842, 11.391919>,  <14.338539, 14.280971, 11.318377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.131639, 14.377842, 11.391919>,  <13.786807, 14.539294, 11.514490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.131639, 14.377842, 11.391919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349319, -0.035236, -0.936341,
		0.367139, 0.914243, -0.171372,
		0.862082, -0.403631, -0.306426,
		14.390265, 14.256753, 11.299992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.183954, 14.766879, 10.996353>,  <13.786807, 14.539294, 11.514490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.183954, 14.766879, 10.996353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.365982, 15.085097, 10.836344>,  <14.475199, 15.276028, 10.740338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.365982, 15.085097, 10.836344>,  <14.183954, 14.766879, 10.996353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.365982, 15.085097, 10.836344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452774, 0.180098, 0.873247,
		0.766751, -0.578509, -0.278245,
		0.455070, 0.795545, -0.400025,
		14.502503, 15.323761, 10.716336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.909373, 14.727302, 10.748888>,  <14.183954, 14.766879, 10.996353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.909373, 14.727302, 10.748888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.854084, 15.091034, 10.905865>,  <14.820910, 15.309274, 11.000051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.854084, 15.091034, 10.905865>,  <14.909373, 14.727302, 10.748888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.854084, 15.091034, 10.905865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449382, -0.295525, 0.843042,
		0.882581, 0.292885, -0.367789,
		-0.138224, 0.909331, 0.392442,
		14.812616, 15.363833, 11.023598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.409711, 15.296917, 10.930255>,  <14.909373, 14.727302, 10.748888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.409711, 15.296917, 10.930255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.757728, 15.124252, 10.835012>,  <15.966537, 15.020654, 10.777866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.757728, 15.124252, 10.835012>,  <15.409711, 15.296917, 10.930255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.757728, 15.124252, 10.835012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104845, 0.633971, -0.766217,
		0.481700, 0.641676, 0.596839,
		0.870042, -0.431662, -0.238107,
		16.018740, 14.994754, 10.763580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.927571, 15.883162, 10.821427>,  <15.409711, 15.296917, 10.930255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.927571, 15.883162, 10.821427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.024998, 15.537108, 10.646057>,  <16.083454, 15.329476, 10.540835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.024998, 15.537108, 10.646057>,  <15.927571, 15.883162, 10.821427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.024998, 15.537108, 10.646057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119028, 0.475284, -0.871744,
		0.962553, 0.160143, 0.218738,
		0.243566, -0.865136, -0.438425,
		16.098068, 15.277568, 10.514530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.489040, 16.088457, 10.348003>,  <15.927571, 15.883162, 10.821427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.489040, 16.088457, 10.348003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.268686, 15.778387, 10.224305>,  <16.136475, 15.592345, 10.150086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.268686, 15.778387, 10.224305>,  <16.489040, 16.088457, 10.348003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.268686, 15.778387, 10.224305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237526, 0.500840, -0.832311,
		0.800068, -0.385052, -0.460028,
		-0.550883, -0.775174, -0.309246,
		16.103420, 15.545835, 10.131532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.209242, 16.158791, 10.363716>,  <16.489040, 16.088457, 10.348003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.209242, 16.158791, 10.363716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.197998, 16.089964, 10.757590>,  <17.191252, 16.048668, 10.993915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.197998, 16.089964, 10.757590>,  <17.209242, 16.158791, 10.363716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.197998, 16.089964, 10.757590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978996, 0.194255, 0.061893,
		-0.201930, 0.965743, 0.162989,
		-0.028111, -0.172064, 0.984685,
		17.189566, 16.038345, 11.052996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.312941, 16.747866, 10.763620>,  <17.209242, 16.158791, 10.363716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.312941, 16.747866, 10.763620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.454718, 16.417763, 10.939492>,  <17.539783, 16.219702, 11.045015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.454718, 16.417763, 10.939492>,  <17.312941, 16.747866, 10.763620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.454718, 16.417763, 10.939492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917252, 0.398228, 0.008019,
		-0.181710, 0.400455, 0.898119,
		0.354445, -0.825258, 0.439680,
		17.561050, 16.170185, 11.071396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.912271, 16.840574, 11.238764>,  <17.312941, 16.747866, 10.763620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.912271, 16.840574, 11.238764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.952379, 16.448690, 11.169350>,  <17.976444, 16.213560, 11.127701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.952379, 16.448690, 11.169350>,  <17.912271, 16.840574, 11.238764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.952379, 16.448690, 11.169350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957596, 0.047675, 0.284144,
		-0.270105, -0.194668, 0.942946,
		0.100269, -0.979710, -0.173536,
		17.982460, 16.154778, 11.117289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.366777, 16.498079, 11.761427>,  <17.912271, 16.840574, 11.238764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.366777, 16.498079, 11.761427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.389503, 16.313082, 11.407507>,  <18.403139, 16.202084, 11.195155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.389503, 16.313082, 11.407507>,  <18.366777, 16.498079, 11.761427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.389503, 16.313082, 11.407507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997715, 0.058755, 0.033352,
		0.036561, -0.884673, 0.464776,
		0.056813, -0.462495, -0.884800,
		18.406548, 16.174334, 11.142067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.762659, 15.759461, 11.713837>,  <18.366777, 16.498079, 11.761427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.762659, 15.759461, 11.713837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.778238, 15.986298, 11.384743>,  <18.787586, 16.122398, 11.187286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.778238, 15.986298, 11.384743>,  <18.762659, 15.759461, 11.713837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.778238, 15.986298, 11.384743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958405, 0.211773, 0.191341,
		0.282740, -0.795966, -0.535254,
		0.038948, 0.567089, -0.822735,
		18.789923, 16.156424, 11.137922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.256598, 15.544982, 11.194716>,  <18.762659, 15.759461, 11.713837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.256598, 15.544982, 11.194716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.211571, 15.933257, 11.109776>,  <19.184555, 16.166222, 11.058813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.211571, 15.933257, 11.109776>,  <19.256598, 15.544982, 11.194716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.211571, 15.933257, 11.109776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993538, 0.113077, -0.009777,
		0.014521, -0.212077, -0.977145,
		-0.112566, 0.970689, -0.212349,
		19.177801, 16.224464, 11.046072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.783346, 15.623187, 10.869594>,  <19.256598, 15.544982, 11.194716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.783346, 15.623187, 10.869594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.694662, 16.009583, 10.922826>,  <19.641451, 16.241421, 10.954765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.694662, 16.009583, 10.922826>,  <19.783346, 15.623187, 10.869594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.694662, 16.009583, 10.922826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972650, 0.209386, 0.100548,
		0.069263, 0.151734, -0.985992,
		-0.221710, 0.965989, 0.133081,
		19.628149, 16.299379, 10.962750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.177259, 15.958358, 10.389538>,  <19.783346, 15.623187, 10.869594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.177259, 15.958358, 10.389538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.099590, 16.192455, 10.704443>,  <20.052988, 16.332914, 10.893386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.099590, 16.192455, 10.704443>,  <20.177259, 15.958358, 10.389538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.099590, 16.192455, 10.704443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976280, 0.193651, 0.096836,
		-0.095781, 0.787393, -0.608965,
		-0.194175, 0.585245, 0.787264,
		20.041338, 16.368029, 10.940622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.440081, 16.476984, 10.193177>,  <20.177259, 15.958358, 10.389538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.440081, 16.476984, 10.193177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.414703, 16.513512, 10.590696>,  <20.399477, 16.535427, 10.829208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.414703, 16.513512, 10.590696>,  <20.440081, 16.476984, 10.193177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.414703, 16.513512, 10.590696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875413, 0.483238, 0.011481,
		-0.479193, 0.870713, -0.110599,
		-0.063443, 0.091318, 0.993799,
		20.395670, 16.540907, 10.888836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.869263, 17.132998, 10.385149>,  <20.440081, 16.476984, 10.193177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.869263, 17.132998, 10.385149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.825424, 16.931629, 10.727975>,  <20.799122, 16.810808, 10.933670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.825424, 16.931629, 10.727975>,  <20.869263, 17.132998, 10.385149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.825424, 16.931629, 10.727975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991395, 0.006743, 0.130733,
		-0.071593, 0.864016, 0.498348,
		-0.109595, -0.503419, 0.857064,
		20.792545, 16.780603, 10.985094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.244844, 17.544867, 10.835228>,  <20.869263, 17.132998, 10.385149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.244844, 17.544867, 10.835228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.212782, 17.198322, 11.032406>,  <21.193544, 16.990396, 11.150713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.212782, 17.198322, 11.032406>,  <21.244844, 17.544867, 10.835228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.212782, 17.198322, 11.032406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935249, 0.105698, 0.337842,
		-0.344797, 0.488106, 0.801790,
		-0.080155, -0.866360, 0.492945,
		21.188736, 16.938414, 11.180289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.668266, 17.645203, 11.424479>,  <21.244844, 17.544867, 10.835228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.668266, 17.645203, 11.424479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.593321, 17.252340, 11.417933>,  <21.548353, 17.016623, 11.414006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.593321, 17.252340, 11.417933>,  <21.668266, 17.645203, 11.424479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.593321, 17.252340, 11.417933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896315, -0.177757, 0.406229,
		-0.401888, 0.061447, 0.913625,
		-0.187364, -0.982154, -0.016363,
		21.537111, 16.957695, 11.413025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.972195, 17.425970, 12.051598>,  <21.668266, 17.645203, 11.424479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.972195, 17.425970, 12.051598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.949825, 17.103260, 11.816316>,  <21.936403, 16.909634, 11.675146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.949825, 17.103260, 11.816316>,  <21.972195, 17.425970, 12.051598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.949825, 17.103260, 11.816316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930142, -0.256238, 0.263016,
		-0.362915, -0.532406, 0.764746,
		-0.055926, -0.806775, -0.588206,
		21.933048, 16.861227, 11.639853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.173515, 16.888218, 12.468801>,  <21.972195, 17.425970, 12.051598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.173515, 16.888218, 12.468801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.249357, 16.751448, 12.100641>,  <22.294863, 16.669386, 11.879745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.249357, 16.751448, 12.100641>,  <22.173515, 16.888218, 12.468801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.249357, 16.751448, 12.100641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878787, -0.359005, 0.314404,
		-0.437931, -0.868447, 0.232412,
		0.189606, -0.341928, -0.920399,
		22.306238, 16.648869, 11.824521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.451967, 16.198454, 12.569907>,  <22.173515, 16.888218, 12.468801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.451967, 16.198454, 12.569907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.547115, 16.310226, 12.197813>,  <22.604204, 16.377291, 11.974557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.547115, 16.310226, 12.197813>,  <22.451967, 16.198454, 12.569907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.547115, 16.310226, 12.197813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907165, -0.406150, 0.109969,
		-0.347086, -0.870035, -0.350102,
		0.237871, 0.279431, -0.930234,
		22.618477, 16.394056, 11.918743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.801191, 15.633021, 12.351031>,  <22.451967, 16.198454, 12.569907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.801191, 15.633021, 12.351031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.904486, 15.922030, 12.094508>,  <22.966463, 16.095436, 11.940594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.904486, 15.922030, 12.094508>,  <22.801191, 15.633021, 12.351031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.904486, 15.922030, 12.094508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956807, -0.283039, 0.066396,
		-0.133543, -0.630754, -0.764405,
		0.258236, 0.722522, -0.641308,
		22.981956, 16.138786, 11.902116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.355442, 15.270844, 12.005705>,  <22.801191, 15.633021, 12.351031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.355442, 15.270844, 12.005705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.385466, 15.667378, 11.962580>,  <23.403481, 15.905298, 11.936705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.385466, 15.667378, 11.962580>,  <23.355442, 15.270844, 12.005705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.385466, 15.667378, 11.962580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937044, -0.033141, 0.347635,
		0.341049, -0.127117, -0.931411,
		0.075059, 0.991334, -0.107812,
		23.407984, 15.964779, 11.930236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.043268, 15.437020, 11.709497>,  <23.355442, 15.270844, 12.005705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.043268, 15.437020, 11.709497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.949453, 15.798317, 11.853246>,  <23.893164, 16.015095, 11.939495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.949453, 15.798317, 11.853246>,  <24.043268, 15.437020, 11.709497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.949453, 15.798317, 11.853246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899844, 0.061854, 0.431805,
		0.367795, 0.424653, -0.827283,
		-0.234538, 0.903241, 0.359372,
		23.879091, 16.069290, 11.961058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.532370, 15.836691, 11.541773>,  <24.043268, 15.437020, 11.709497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.532370, 15.836691, 11.541773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358828, 16.027592, 11.847453>,  <24.254704, 16.142132, 12.030861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358828, 16.027592, 11.847453>,  <24.532370, 15.836691, 11.541773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.358828, 16.027592, 11.847453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889952, 0.094681, 0.446117,
		0.140555, 0.873651, -0.465809,
		-0.433854, 0.477252, 0.764200,
		24.228672, 16.170767, 12.076713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.903313, 16.429432, 11.610872>,  <24.532370, 15.836691, 11.541773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.903313, 16.429432, 11.610872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.736692, 16.313166, 11.955429>,  <24.636721, 16.243406, 12.162164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.736692, 16.313166, 11.955429>,  <24.903313, 16.429432, 11.610872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.736692, 16.313166, 11.955429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899616, 0.004799, 0.436656,
		-0.131054, 0.956813, 0.259488,
		-0.416552, -0.290665, 0.861393,
		24.611727, 16.225965, 12.213847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.566935, 16.675018, 11.911539>,  <24.903313, 16.429432, 11.610872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.566935, 16.675018, 11.911539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759668, 16.926588, 12.155602>,  <25.875309, 17.077530, 12.302039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759668, 16.926588, 12.155602>,  <25.566935, 16.675018, 11.911539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759668, 16.926588, 12.155602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375617, -0.777342, 0.504630,
		0.791674, -0.013963, -0.610785,
		0.481834, 0.628924, 0.610156,
		25.904219, 17.115265, 12.338649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.997618, 16.300852, 12.271907>,  <25.566935, 16.675018, 11.911539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.997618, 16.300852, 12.271907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095087, 16.632832, 12.472630>,  <26.153568, 16.832020, 12.593063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095087, 16.632832, 12.472630>,  <25.997618, 16.300852, 12.271907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095087, 16.632832, 12.472630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484801, -0.552355, 0.678138,
		0.839995, 0.078033, -0.536954,
		0.243672, 0.829949, 0.501806,
		26.168188, 16.881817, 12.623172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870110, 15.656243, 12.289361>,  <25.997618, 16.300852, 12.271907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870110, 15.656243, 12.289361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922981, 15.945232, 12.560820>,  <25.954704, 16.118626, 12.723695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922981, 15.945232, 12.560820>,  <25.870110, 15.656243, 12.289361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922981, 15.945232, 12.560820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406455, -0.663951, 0.627665,
		0.904059, 0.192874, -0.381415,
		0.132181, 0.722474, 0.678646,
		25.962635, 16.161974, 12.764413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929907, 15.498746, 12.954462>,  <25.870110, 15.656243, 12.289361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929907, 15.498746, 12.954462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989681, 15.113913, 13.045732>,  <26.025545, 14.883013, 13.100493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989681, 15.113913, 13.045732>,  <25.929907, 15.498746, 12.954462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.989681, 15.113913, 13.045732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140206, 0.249050, 0.958288,
		-0.978780, -0.111212, 0.172107,
		0.149436, -0.962084, 0.228173,
		26.034512, 14.825287, 13.114183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571001, 15.241186, 13.521432>,  <25.929907, 15.498746, 12.954462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.571001, 15.241186, 13.521432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890564, 15.001101, 13.505987>,  <26.082302, 14.857051, 13.496720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890564, 15.001101, 13.505987>,  <25.571001, 15.241186, 13.521432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.890564, 15.001101, 13.505987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265206, 0.293926, 0.918299,
		-0.539825, -0.743877, 0.393999,
		0.798908, -0.600212, -0.038612,
		26.130236, 14.821038, 13.494404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574810, 14.746758, 14.134986>,  <25.571001, 15.241186, 13.521432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574810, 14.746758, 14.134986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936977, 14.826512, 13.985074>,  <26.154278, 14.874365, 13.895127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936977, 14.826512, 13.985074>,  <25.574810, 14.746758, 14.134986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936977, 14.826512, 13.985074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277675, 0.389631, 0.878114,
		0.321107, -0.899130, 0.297416,
		0.905421, 0.199383, -0.374779,
		26.208603, 14.886329, 13.872640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072020, 14.354141, 14.561915>,  <25.574810, 14.746758, 14.134986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072020, 14.354141, 14.561915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166828, 14.711457, 14.409152>,  <26.223713, 14.925847, 14.317494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166828, 14.711457, 14.409152>,  <26.072020, 14.354141, 14.561915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.166828, 14.711457, 14.409152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268264, 0.317646, 0.909470,
		0.933732, -0.318016, -0.164349,
		0.237022, 0.893290, -0.381908,
		26.237934, 14.979445, 14.294580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723753, 14.492888, 14.741720>,  <26.072020, 14.354141, 14.561915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723753, 14.492888, 14.741720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521830, 14.829594, 14.665193>,  <26.400675, 15.031617, 14.619276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521830, 14.829594, 14.665193>,  <26.723753, 14.492888, 14.741720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.521830, 14.829594, 14.665193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328963, 0.392498, 0.858911,
		0.798093, 0.370648, -0.475045,
		-0.504808, 0.841763, -0.191320,
		26.370388, 15.082123, 14.607797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141134, 15.093318, 14.722035>,  <26.723753, 14.492888, 14.741720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141134, 15.093318, 14.722035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779745, 15.220004, 14.837571>,  <26.562912, 15.296016, 14.906893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779745, 15.220004, 14.837571>,  <27.141134, 15.093318, 14.722035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779745, 15.220004, 14.837571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416972, 0.493188, 0.763478,
		0.099354, 0.810220, -0.577644,
		-0.903473, 0.316716, 0.288839,
		26.508703, 15.315019, 14.924223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<14.041288, 21.947788, 23.646261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.954770, 21.622255, 23.861998>,  <13.902859, 21.426935, 23.991440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.954770, 21.622255, 23.861998>,  <14.041288, 21.947788, 23.646261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.954770, 21.622255, 23.861998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692194, -0.261757, -0.672571,
		0.688538, -0.518803, -0.506714,
		-0.216295, -0.813835, 0.539342,
		13.889881, 21.378105, 24.023800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.373873, 21.260086, 23.448578>,  <14.041288, 21.947788, 23.646261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.373873, 21.260086, 23.448578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.024113, 21.171276, 23.621149>,  <13.814257, 21.117990, 23.724691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.024113, 21.171276, 23.621149>,  <14.373873, 21.260086, 23.448578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.024113, 21.171276, 23.621149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302042, -0.446803, -0.842103,
		0.379730, -0.866644, 0.323624,
		-0.874400, -0.222024, 0.431428,
		13.761792, 21.104670, 23.750578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.330008, 20.570690, 23.319664>,  <14.373873, 21.260086, 23.448578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.330008, 20.570690, 23.319664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.954556, 20.635506, 23.441463>,  <13.729284, 20.674395, 23.514544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.954556, 20.635506, 23.441463>,  <14.330008, 20.570690, 23.319664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.954556, 20.635506, 23.441463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317811, -0.749375, -0.580891,
		0.134057, -0.642014, 0.754882,
		-0.938629, 0.162037, 0.304498,
		13.672967, 20.684116, 23.532812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.957024, 19.940826, 23.619164>,  <14.330008, 20.570690, 23.319664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.957024, 19.940826, 23.619164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.643837, 20.174606, 23.533951>,  <13.455925, 20.314875, 23.482822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.643837, 20.174606, 23.533951>,  <13.957024, 19.940826, 23.619164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.643837, 20.174606, 23.533951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421407, -0.750244, -0.509460,
		-0.457579, -0.309118, 0.833707,
		-0.782968, 0.584448, -0.213032,
		13.408947, 20.349941, 23.470041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.372579, 19.500584, 23.735886>,  <13.957024, 19.940826, 23.619164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.372579, 19.500584, 23.735886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.214645, 19.797749, 23.519667>,  <13.119885, 19.976048, 23.389936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.214645, 19.797749, 23.519667>,  <13.372579, 19.500584, 23.735886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.214645, 19.797749, 23.519667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370241, -0.667118, -0.646432,
		-0.840850, -0.055100, 0.538456,
		-0.394833, 0.742912, -0.540546,
		13.096195, 20.020622, 23.357504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.726252, 19.245140, 23.503328>,  <13.372579, 19.500584, 23.735886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.726252, 19.245140, 23.503328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.823329, 19.547194, 23.259731>,  <12.881576, 19.728426, 23.113573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.823329, 19.547194, 23.259731>,  <12.726252, 19.245140, 23.503328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.823329, 19.547194, 23.259731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390708, -0.498510, -0.773844,
		-0.887945, 0.425745, 0.174052,
		0.242694, 0.755135, -0.608992,
		12.896137, 19.773733, 23.077034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.121512, 19.416227, 22.968197>,  <12.726252, 19.245140, 23.503328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.121512, 19.416227, 22.968197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.457673, 19.548134, 22.796160>,  <12.659369, 19.627277, 22.692938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.457673, 19.548134, 22.796160>,  <12.121512, 19.416227, 22.968197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.457673, 19.548134, 22.796160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245845, -0.475280, -0.844789,
		-0.482997, 0.815698, -0.318355,
		0.840401, 0.329764, -0.430094,
		12.709793, 19.647062, 22.667131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.904552, 19.540771, 22.275772>,  <12.121512, 19.416227, 22.968197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.904552, 19.540771, 22.275772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.304267, 19.551691, 22.265358>,  <12.544096, 19.558243, 22.259109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.304267, 19.551691, 22.265358>,  <11.904552, 19.540771, 22.275772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.304267, 19.551691, 22.265358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012352, -0.415398, -0.909556,
		-0.035644, 0.909230, -0.414765,
		0.999288, 0.027297, -0.026037,
		12.604053, 19.559879, 22.257547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.142672, 19.881832, 21.552391>,  <11.904552, 19.540771, 22.275772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.142672, 19.881832, 21.552391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.449379, 19.671778, 21.700066>,  <12.633404, 19.545746, 21.788671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.449379, 19.671778, 21.700066>,  <12.142672, 19.881832, 21.552391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.449379, 19.671778, 21.700066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203643, -0.346428, -0.915706,
		0.608766, 0.777317, -0.158690,
		0.766768, -0.525134, 0.369188,
		12.679409, 19.514236, 21.810822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.625526, 20.006546, 21.051563>,  <12.142672, 19.881832, 21.552391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.625526, 20.006546, 21.051563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.774656, 19.682232, 21.232065>,  <12.864134, 19.487644, 21.340366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.774656, 19.682232, 21.232065>,  <12.625526, 20.006546, 21.051563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.774656, 19.682232, 21.232065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441284, -0.272878, -0.854872,
		0.816254, 0.517848, 0.256051,
		0.372824, -0.810784, 0.451256,
		12.886503, 19.438997, 21.367441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.310214, 19.948215, 20.909395>,  <12.625526, 20.006546, 21.051563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.310214, 19.948215, 20.909395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.194842, 19.575668, 20.998270>,  <13.125619, 19.352140, 21.051594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.194842, 19.575668, 20.998270>,  <13.310214, 19.948215, 20.909395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.194842, 19.575668, 20.998270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600887, -0.356731, -0.715317,
		0.745482, -0.072810, 0.662537,
		-0.288429, -0.931366, 0.222186,
		13.108314, 19.296259, 21.064926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.896930, 19.598782, 20.883448>,  <13.310214, 19.948215, 20.909395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.896930, 19.598782, 20.883448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.637819, 19.295094, 20.858242>,  <13.482353, 19.112881, 20.843119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.637819, 19.295094, 20.858242>,  <13.896930, 19.598782, 20.883448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.637819, 19.295094, 20.858242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527302, -0.387122, -0.756366,
		0.549855, -0.523183, 0.651107,
		-0.647775, -0.759221, -0.063014,
		13.443487, 19.067327, 20.839338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.310192, 19.056873, 20.714331>,  <13.896930, 19.598782, 20.883448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.310192, 19.056873, 20.714331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.941470, 18.928854, 20.626837>,  <13.720237, 18.852043, 20.574341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.941470, 18.928854, 20.626837>,  <14.310192, 19.056873, 20.714331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.941470, 18.928854, 20.626837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338233, -0.388329, -0.857204,
		0.189404, -0.864159, 0.466214,
		-0.921805, -0.320047, -0.218736,
		13.664928, 18.832840, 20.561216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.521773, 18.567926, 20.359129>,  <14.310192, 19.056873, 20.714331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.521773, 18.567926, 20.359129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.130586, 18.567049, 20.275635>,  <13.895873, 18.566523, 20.225538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.130586, 18.567049, 20.275635>,  <14.521773, 18.567926, 20.359129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.130586, 18.567049, 20.275635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169810, -0.589937, -0.789392,
		-0.121411, -0.807446, 0.577313,
		-0.977969, -0.002192, -0.208737,
		13.837194, 18.566391, 20.213013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.384634, 17.951323, 20.178762>,  <14.521773, 18.567926, 20.359129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.384634, 17.951323, 20.178762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.084803, 18.150509, 20.004333>,  <13.904903, 18.270021, 19.899675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.084803, 18.150509, 20.004333>,  <14.384634, 17.951323, 20.178762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.084803, 18.150509, 20.004333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112888, -0.552980, -0.825512,
		-0.652220, -0.668012, 0.358286,
		-0.749577, 0.497969, -0.436075,
		13.859929, 18.299900, 19.873510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.970969, 17.492910, 19.797323>,  <14.384634, 17.951323, 20.178762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.970969, 17.492910, 19.797323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.905145, 17.847357, 19.624020>,  <13.865650, 18.060024, 19.520037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.905145, 17.847357, 19.624020>,  <13.970969, 17.492910, 19.797323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.905145, 17.847357, 19.624020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000796, -0.439129, -0.898424,
		-0.986367, -0.148190, 0.071558,
		-0.164561, 0.886118, -0.433260,
		13.855777, 18.113192, 19.494041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.534701, 17.311827, 19.251400>,  <13.970969, 17.492910, 19.797323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.534701, 17.311827, 19.251400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.654240, 17.671825, 19.124470>,  <13.725963, 17.887825, 19.048311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.654240, 17.671825, 19.124470>,  <13.534701, 17.311827, 19.251400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.654240, 17.671825, 19.124470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140572, -0.370410, -0.918170,
		-0.943891, 0.229784, -0.237210,
		0.298846, 0.899998, -0.317325,
		13.743894, 17.941824, 19.029272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.291218, 17.355774, 18.648354>,  <13.534701, 17.311827, 19.251400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.291218, 17.355774, 18.648354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.583088, 17.629261, 18.652422>,  <13.758210, 17.793354, 18.654863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.583088, 17.629261, 18.652422>,  <13.291218, 17.355774, 18.648354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.583088, 17.629261, 18.652422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183215, -0.181154, -0.966238,
		-0.658791, 0.706904, -0.257451,
		0.729676, 0.683718, 0.010173,
		13.801991, 17.834377, 18.655474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.120628, 17.752962, 18.068647>,  <13.291218, 17.355774, 18.648354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.120628, 17.752962, 18.068647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.507745, 17.816422, 18.146839>,  <13.740015, 17.854498, 18.193754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.507745, 17.816422, 18.146839>,  <13.120628, 17.752962, 18.068647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.507745, 17.816422, 18.146839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192879, 0.031770, -0.980708,
		-0.161798, 0.986824, 0.000147,
		0.967791, 0.158648, 0.195478,
		13.798082, 17.864016, 18.205482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.377565, 18.195856, 17.504583>,  <13.120628, 17.752962, 18.068647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.377565, 18.195856, 17.504583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.702395, 18.011021, 17.647137>,  <13.897294, 17.900120, 17.732668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.702395, 18.011021, 17.647137>,  <13.377565, 18.195856, 17.504583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.702395, 18.011021, 17.647137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373982, -0.056699, -0.925701,
		0.447961, 0.885020, 0.126768,
		0.812076, -0.462087, 0.356381,
		13.946018, 17.872395, 17.754051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.889028, 18.623905, 17.170160>,  <13.377565, 18.195856, 17.504583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.889028, 18.623905, 17.170160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.050630, 18.272551, 17.272310>,  <14.147591, 18.061737, 17.333599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.050630, 18.272551, 17.272310>,  <13.889028, 18.623905, 17.170160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.050630, 18.272551, 17.272310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203630, -0.185808, -0.961255,
		0.891804, 0.440354, 0.103798,
		0.404006, -0.878387, 0.255373,
		14.171831, 18.009035, 17.348923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.582943, 18.494286, 16.879633>,  <13.889028, 18.623905, 17.170160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.582943, 18.494286, 16.879633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.394153, 18.145996, 16.934877>,  <14.280878, 17.937021, 16.968025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.394153, 18.145996, 16.934877>,  <14.582943, 18.494286, 16.879633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.394153, 18.145996, 16.934877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347133, -0.327549, -0.878755,
		0.810393, -0.366808, 0.456853,
		-0.471976, -0.870726, 0.138113,
		14.252560, 17.884779, 16.976311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.548592, 18.609957, 16.181904>,  <14.582943, 18.494286, 16.879633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.548592, 18.609957, 16.181904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.798571, 18.737123, 15.896704>,  <14.948558, 18.813423, 15.725583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.798571, 18.737123, 15.896704>,  <14.548592, 18.609957, 16.181904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.798571, 18.737123, 15.896704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466948, 0.579703, 0.667760,
		0.625622, -0.750248, 0.213832,
		0.624945, 0.317917, -0.713002,
		14.986054, 18.832499, 15.682803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.161830, 18.651354, 16.400568>,  <14.548592, 18.609957, 16.181904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.161830, 18.651354, 16.400568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.225970, 18.894274, 16.089319>,  <15.264455, 19.040026, 15.902570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.225970, 18.894274, 16.089319>,  <15.161830, 18.651354, 16.400568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.225970, 18.894274, 16.089319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276183, 0.729231, 0.626054,
		0.947634, -0.315293, -0.050793,
		0.160350, 0.607299, -0.778123,
		15.274076, 19.076464, 15.855883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.872250, 18.894699, 16.550335>,  <15.161830, 18.651354, 16.400568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.872250, 18.894699, 16.550335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.671741, 19.144623, 16.310888>,  <15.551435, 19.294577, 16.167221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.671741, 19.144623, 16.310888>,  <15.872250, 18.894699, 16.550335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.671741, 19.144623, 16.310888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241260, 0.765295, 0.596755,
		0.830975, 0.154715, -0.534362,
		-0.501272, 0.624809, -0.598615,
		15.521358, 19.332066, 16.131304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.349419, 19.316250, 16.389961>,  <15.872250, 18.894699, 16.550335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.349419, 19.316250, 16.389961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.994804, 19.494228, 16.339249>,  <15.782035, 19.601015, 16.308821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.994804, 19.494228, 16.339249>,  <16.349419, 19.316250, 16.389961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.994804, 19.494228, 16.339249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217779, 0.643104, 0.734159,
		0.408195, 0.623250, -0.667036,
		-0.886538, 0.444946, -0.126781,
		15.728843, 19.627712, 16.301214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.447554, 20.041628, 16.463636>,  <16.349419, 19.316250, 16.389961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.447554, 20.041628, 16.463636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.054695, 19.999050, 16.525681>,  <15.818980, 19.973503, 16.562906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.054695, 19.999050, 16.525681>,  <16.447554, 20.041628, 16.463636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.054695, 19.999050, 16.525681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050649, 0.644456, 0.762962,
		-0.181172, 0.757197, -0.627559,
		-0.982146, -0.106442, 0.155108,
		15.760051, 19.967117, 16.572212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.263430, 20.701443, 16.783531>,  <16.447554, 20.041628, 16.463636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.263430, 20.701443, 16.783531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.967516, 20.438320, 16.840113>,  <15.789968, 20.280447, 16.874062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.967516, 20.438320, 16.840113>,  <16.263430, 20.701443, 16.783531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.967516, 20.438320, 16.840113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086949, 0.301931, 0.949357,
		-0.667200, 0.690022, -0.280560,
		-0.739786, -0.657805, 0.141451,
		15.745580, 20.240978, 16.882547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.631095, 21.133333, 16.972857>,  <16.263430, 20.701443, 16.783531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.631095, 21.133333, 16.972857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.590474, 20.776230, 17.148432>,  <15.566102, 20.561968, 17.253777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.590474, 20.776230, 17.148432>,  <15.631095, 21.133333, 16.972857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.590474, 20.776230, 17.148432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017738, 0.442776, 0.896457,
		-0.994672, 0.083250, -0.060801,
		-0.101552, -0.892759, 0.438940,
		15.560009, 20.508402, 17.280113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.138836, 21.270271, 17.459171>,  <15.631095, 21.133333, 16.972857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.138836, 21.270271, 17.459171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.293085, 20.927410, 17.595747>,  <15.385634, 20.721693, 17.677692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.293085, 20.927410, 17.595747>,  <15.138836, 21.270271, 17.459171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.293085, 20.927410, 17.595747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063318, 0.344604, 0.936610,
		-0.920482, -0.382797, 0.078614,
		0.385622, -0.857155, 0.341440,
		15.408772, 20.670263, 17.698179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.658256, 21.007421, 17.936016>,  <15.138836, 21.270271, 17.459171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.658256, 21.007421, 17.936016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.996606, 20.819496, 18.037027>,  <15.199615, 20.706741, 18.097633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.996606, 20.819496, 18.037027>,  <14.658256, 21.007421, 17.936016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.996606, 20.819496, 18.037027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224162, 0.116480, 0.967566,
		-0.483991, -0.875046, -0.006787,
		0.845874, -0.469815, 0.252527,
		15.250368, 20.678553, 18.112785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.522174, 20.636892, 18.604687>,  <14.658256, 21.007421, 17.936016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.522174, 20.636892, 18.604687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.917211, 20.689949, 18.571053>,  <15.154232, 20.721783, 18.550873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.917211, 20.689949, 18.571053>,  <14.522174, 20.636892, 18.604687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.917211, 20.689949, 18.571053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029473, 0.369348, 0.928824,
		0.154256, -0.919776, 0.360855,
		0.987591, 0.132641, -0.084083,
		15.213488, 20.729742, 18.545828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.729407, 20.396812, 19.259754>,  <14.522174, 20.636892, 18.604687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.729407, 20.396812, 19.259754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.041628, 20.615755, 19.138996>,  <15.228960, 20.747120, 19.066542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.041628, 20.615755, 19.138996>,  <14.729407, 20.396812, 19.259754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.041628, 20.615755, 19.138996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117882, 0.345404, 0.931021,
		0.613876, -0.762298, 0.205082,
		0.780552, 0.547356, -0.301896,
		15.275793, 20.779963, 19.048428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.293435, 20.185152, 19.631962>,  <14.729407, 20.396812, 19.259754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.293435, 20.185152, 19.631962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.337739, 20.563671, 19.510469>,  <15.364322, 20.790783, 19.437574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.337739, 20.563671, 19.510469>,  <15.293435, 20.185152, 19.631962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.337739, 20.563671, 19.510469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306213, 0.258248, 0.916265,
		0.945498, -0.194492, -0.261165,
		0.110760, 0.946299, -0.303729,
		15.370967, 20.847561, 19.419352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.739018, 20.432484, 20.156815>,  <15.293435, 20.185152, 19.631962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.739018, 20.432484, 20.156815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.606241, 20.766674, 19.981638>,  <15.526575, 20.967188, 19.876532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.606241, 20.766674, 19.981638>,  <15.739018, 20.432484, 20.156815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.606241, 20.766674, 19.981638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185644, 0.513048, 0.838044,
		0.924851, 0.196882, -0.325404,
		-0.331943, 0.835476, -0.437943,
		15.506659, 21.017317, 19.850256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.099575, 20.919109, 20.491604>,  <15.739018, 20.432484, 20.156815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.099575, 20.919109, 20.491604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.807364, 21.125467, 20.312637>,  <15.632037, 21.249283, 20.205257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.807364, 21.125467, 20.312637>,  <16.099575, 20.919109, 20.491604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.807364, 21.125467, 20.312637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027821, 0.677126, 0.735341,
		0.682316, 0.524739, -0.509012,
		-0.730528, 0.515896, -0.447415,
		15.588205, 21.280235, 20.178413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.272303, 21.675688, 20.488800>,  <16.099575, 20.919109, 20.491604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.272303, 21.675688, 20.488800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.876831, 21.664375, 20.429861>,  <15.639547, 21.657587, 20.394497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.876831, 21.664375, 20.429861>,  <16.272303, 21.675688, 20.488800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.876831, 21.664375, 20.429861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131665, 0.634447, 0.761670,
		0.071942, 0.772449, -0.630989,
		-0.988680, -0.028283, -0.147348,
		15.580227, 21.655890, 20.385656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.055544, 22.321526, 20.418116>,  <16.272303, 21.675688, 20.488800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.055544, 22.321526, 20.418116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.729061, 22.120863, 20.532759>,  <15.533172, 22.000465, 20.601545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.729061, 22.120863, 20.532759>,  <16.055544, 22.321526, 20.418116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.729061, 22.120863, 20.532759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047810, 0.553014, 0.831799,
		-0.575778, 0.665217, -0.475358,
		-0.816207, -0.501659, 0.286609,
		15.484200, 21.970366, 20.618742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.679077, 22.839483, 20.788630>,  <16.055544, 22.321526, 20.418116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.679077, 22.839483, 20.788630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.528450, 22.491724, 20.916595>,  <15.438073, 22.283070, 20.993376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.528450, 22.491724, 20.916595>,  <15.679077, 22.839483, 20.788630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.528450, 22.491724, 20.916595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100287, 0.381565, 0.918886,
		-0.920944, 0.313940, -0.230874,
		-0.376569, -0.869396, 0.319916,
		15.415480, 22.230906, 21.012569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.292923, 23.112101, 21.321741>,  <15.679077, 22.839483, 20.788630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.292923, 23.112101, 21.321741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.327445, 22.720104, 21.393490>,  <15.348159, 22.484907, 21.436539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.327445, 22.720104, 21.393490>,  <15.292923, 23.112101, 21.321741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.327445, 22.720104, 21.393490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146114, 0.190545, 0.970743,
		-0.985496, -0.057572, 0.159635,
		0.086305, -0.979989, 0.179370,
		15.353336, 22.426107, 21.447300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<14.836072, 22.951250, 21.995974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.086854, 22.639921, 21.982443>,  <15.237324, 22.453125, 21.974325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.086854, 22.639921, 21.982443>,  <14.836072, 22.951250, 21.995974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.086854, 22.639921, 21.982443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241401, 0.152806, 0.958320,
		-0.740711, -0.608989, 0.283689,
		0.626955, -0.778321, -0.033826,
		15.274940, 22.406425, 21.972296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.613276, 22.477505, 22.562819>,  <14.836072, 22.951250, 21.995974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.613276, 22.477505, 22.562819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.989389, 22.386261, 22.461756>,  <15.215057, 22.331514, 22.401117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.989389, 22.386261, 22.461756>,  <14.613276, 22.477505, 22.562819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.989389, 22.386261, 22.461756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273832, 0.065994, 0.959511,
		-0.202198, -0.971397, 0.124516,
		0.940283, -0.228108, -0.252656,
		15.271474, 22.317829, 22.385960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.786360, 21.979502, 23.020134>,  <14.613276, 22.477505, 22.562819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.786360, 21.979502, 23.020134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.130265, 22.159723, 22.923962>,  <15.336608, 22.267857, 22.866259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.130265, 22.159723, 22.923962>,  <14.786360, 21.979502, 23.020134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.130265, 22.159723, 22.923962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166035, 0.198610, 0.965912,
		0.482950, -0.870376, 0.095949,
		0.859763, 0.450556, -0.240431,
		15.388194, 22.294889, 22.851831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.271526, 21.698076, 23.457754>,  <14.786360, 21.979502, 23.020134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.271526, 21.698076, 23.457754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.440881, 22.040854, 23.340183>,  <15.542494, 22.246519, 23.269640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.440881, 22.040854, 23.340183>,  <15.271526, 21.698076, 23.457754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.440881, 22.040854, 23.340183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259586, 0.196084, 0.945604,
		0.867962, -0.476655, -0.139431,
		0.423387, 0.856943, -0.293926,
		15.567897, 22.297935, 23.252005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.942539, 21.654629, 23.712040>,  <15.271526, 21.698076, 23.457754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.942539, 21.654629, 23.712040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.895778, 22.045578, 23.641531>,  <15.867721, 22.280148, 23.599226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.895778, 22.045578, 23.641531>,  <15.942539, 21.654629, 23.712040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.895778, 22.045578, 23.641531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245399, 0.200413, 0.948480,
		0.962348, 0.067625, -0.263276,
		-0.116904, 0.977375, -0.176272,
		15.860706, 22.338791, 23.588650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.559271, 21.904266, 23.902426>,  <15.942539, 21.654629, 23.712040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.559271, 21.904266, 23.902426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.312958, 22.219427, 23.900373>,  <16.165171, 22.408524, 23.899143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.312958, 22.219427, 23.900373>,  <16.559271, 21.904266, 23.902426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.312958, 22.219427, 23.900373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297268, 0.238347, 0.924567,
		0.729689, 0.567806, -0.380986,
		-0.615781, 0.787901, -0.005129,
		16.128223, 22.455797, 23.898834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.092766, 22.477644, 24.053862>,  <16.559271, 21.904266, 23.902426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.092766, 22.477644, 24.053862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.729235, 22.617653, 24.144651>,  <16.511116, 22.701658, 24.199125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.729235, 22.617653, 24.144651>,  <17.092766, 22.477644, 24.053862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.729235, 22.617653, 24.144651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319695, 0.234818, 0.917963,
		0.268010, 0.906832, -0.325309,
		-0.908827, 0.350022, 0.226976,
		16.456587, 22.722660, 24.212744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.160114, 23.206863, 24.230280>,  <17.092766, 22.477644, 24.053862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.160114, 23.206863, 24.230280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.810242, 23.107283, 24.396633>,  <16.600319, 23.047535, 24.496445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.810242, 23.107283, 24.396633>,  <17.160114, 23.206863, 24.230280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.810242, 23.107283, 24.396633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202813, 0.591319, 0.780519,
		-0.440231, 0.767050, -0.466724,
		-0.874679, -0.248951, 0.415884,
		16.547838, 23.032597, 24.521399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907013, 23.793222, 24.554407>,  <17.160114, 23.206863, 24.230280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.907013, 23.793222, 24.554407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.688805, 23.512581, 24.737778>,  <16.557878, 23.344196, 24.847799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.688805, 23.512581, 24.737778>,  <16.907013, 23.793222, 24.554407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.688805, 23.512581, 24.737778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067143, 0.581814, 0.810545,
		-0.835402, 0.411391, -0.364501,
		-0.545523, -0.701605, 0.458427,
		16.525148, 23.302099, 24.875305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.381693, 24.206072, 24.857996>,  <16.907013, 23.793222, 24.554407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.381693, 24.206072, 24.857996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.422998, 23.856476, 25.047935>,  <16.447783, 23.646719, 25.161900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.422998, 23.856476, 25.047935>,  <16.381693, 24.206072, 24.857996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.422998, 23.856476, 25.047935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050280, 0.472203, 0.880055,
		-0.993382, -0.114755, 0.004818,
		0.103266, -0.873989, 0.474848,
		16.453978, 23.594278, 25.190390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.829778, 24.163584, 25.301632>,  <16.381693, 24.206072, 24.857996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.829778, 24.163584, 25.301632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.116953, 23.936615, 25.462925>,  <16.289257, 23.800434, 25.559700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.116953, 23.936615, 25.462925>,  <15.829778, 24.163584, 25.301632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.116953, 23.936615, 25.462925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137862, 0.451892, 0.881356,
		-0.682320, -0.688349, 0.246204,
		0.717937, -0.567424, 0.403232,
		16.332335, 23.766388, 25.583895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.800331, 24.190336, 26.035662>,  <15.829778, 24.163584, 25.301632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.800331, 24.190336, 26.035662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.139351, 23.978596, 26.050888>,  <16.342762, 23.851551, 26.060024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.139351, 23.978596, 26.050888>,  <15.800331, 24.190336, 26.035662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.139351, 23.978596, 26.050888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204719, 0.392268, 0.896781,
		-0.489643, -0.752273, 0.440834,
		0.847549, -0.529349, 0.038067,
		16.393616, 23.819792, 26.062307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.829622, 23.963055, 26.755354>,  <15.800331, 24.190336, 26.035662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.829622, 23.963055, 26.755354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.209709, 23.903639, 26.645794>,  <16.437761, 23.867989, 26.580057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.209709, 23.903639, 26.645794>,  <15.829622, 23.963055, 26.755354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.209709, 23.903639, 26.645794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284637, 0.056206, 0.956986,
		-0.126757, -0.987308, 0.095689,
		0.950218, -0.148542, -0.273900,
		16.494774, 23.859077, 26.563623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.168917, 23.478903, 27.288872>,  <15.829622, 23.963055, 26.755354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.168917, 23.478903, 27.288872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.474911, 23.666275, 27.112070>,  <16.658508, 23.778698, 27.005989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.474911, 23.666275, 27.112070>,  <16.168917, 23.478903, 27.288872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.474911, 23.666275, 27.112070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396160, 0.198860, 0.896388,
		0.507793, -0.860829, -0.033448,
		0.764986, 0.468430, -0.442006,
		16.704407, 23.806805, 26.979469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.801348, 23.123779, 27.383738>,  <16.168917, 23.478903, 27.288872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.801348, 23.123779, 27.383738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.852894, 23.515892, 27.323812>,  <16.883821, 23.751160, 27.287857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.852894, 23.515892, 27.323812>,  <16.801348, 23.123779, 27.383738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.852894, 23.515892, 27.323812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480143, 0.070507, 0.874352,
		0.867673, -0.184607, -0.461588,
		0.128866, 0.980280, -0.149815,
		16.891554, 23.809977, 27.278868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.405602, 23.265583, 27.726433>,  <16.801348, 23.123779, 27.383738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.405602, 23.265583, 27.726433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.268961, 23.638062, 27.675543>,  <17.186977, 23.861547, 27.645008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.268961, 23.638062, 27.675543>,  <17.405602, 23.265583, 27.726433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.268961, 23.638062, 27.675543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437055, 0.277233, 0.855643,
		0.832040, 0.236686, -0.501686,
		-0.341602, 0.931194, -0.127224,
		17.166481, 23.917419, 27.637375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.977468, 23.673983, 27.661415>,  <17.405602, 23.265583, 27.726433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.977468, 23.673983, 27.661415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.669983, 23.903238, 27.774969>,  <17.485491, 24.040791, 27.843102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.669983, 23.903238, 27.774969>,  <17.977468, 23.673983, 27.661415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.669983, 23.903238, 27.774969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378066, 0.049169, 0.924472,
		0.515891, 0.817983, -0.254481,
		-0.768715, 0.573137, 0.283886,
		17.439369, 24.075180, 27.860134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.327103, 24.222584, 28.053415>,  <17.977468, 23.673983, 27.661415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.327103, 24.222584, 28.053415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.935282, 24.226135, 28.133808>,  <17.700188, 24.228266, 28.182043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.935282, 24.226135, 28.133808>,  <18.327103, 24.222584, 28.053415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.935282, 24.226135, 28.133808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201178, 0.041918, 0.978657,
		0.000264, 0.999082, -0.042847,
		-0.979555, 0.008878, 0.200982,
		17.641415, 24.228798, 28.194103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.335295, 24.735134, 28.476332>,  <18.327103, 24.222584, 28.053415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.335295, 24.735134, 28.476332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.994413, 24.539778, 28.551399>,  <17.789885, 24.422564, 28.596439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.994413, 24.539778, 28.551399>,  <18.335295, 24.735134, 28.476332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.994413, 24.539778, 28.551399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224235, -0.016852, 0.974389,
		-0.472722, 0.872461, 0.123876,
		-0.852205, -0.488392, 0.187670,
		17.738752, 24.393261, 28.607700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.919886, 25.129944, 28.946659>,  <18.335295, 24.735134, 28.476332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.919886, 25.129944, 28.946659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.842993, 24.740187, 28.993317>,  <17.796856, 24.506332, 29.021311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.842993, 24.740187, 28.993317>,  <17.919886, 25.129944, 28.946659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.842993, 24.740187, 28.993317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174774, 0.082966, 0.981107,
		-0.965661, 0.208989, 0.154349,
		-0.192234, -0.974393, 0.116642,
		17.785322, 24.447868, 29.028309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.831097, 25.123652, 29.635059>,  <17.919886, 25.129944, 28.946659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.831097, 25.123652, 29.635059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.831640, 24.730814, 29.559704>,  <17.831966, 24.495111, 29.514490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.831640, 24.730814, 29.559704>,  <17.831097, 25.123652, 29.635059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.831640, 24.730814, 29.559704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434484, -0.169096, 0.884664,
		-0.900679, -0.083053, 0.426474,
		0.001359, -0.982094, -0.188387,
		17.832048, 24.436186, 29.503187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.542711, 24.833899, 30.284184>,  <17.831097, 25.123652, 29.635059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.542711, 24.833899, 30.284184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.733196, 24.527168, 30.112043>,  <17.847486, 24.343130, 30.008759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.733196, 24.527168, 30.112043>,  <17.542711, 24.833899, 30.284184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.733196, 24.527168, 30.112043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514279, -0.154097, 0.843665,
		-0.713260, -0.623082, 0.320980,
		0.476211, -0.766826, -0.430350,
		17.876060, 24.297121, 29.982939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.368835, 24.344503, 30.668262>,  <17.542711, 24.833899, 30.284184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.368835, 24.344503, 30.668262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.721756, 24.262213, 30.498924>,  <17.933508, 24.212839, 30.397322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.721756, 24.262213, 30.498924>,  <17.368835, 24.344503, 30.668262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.721756, 24.262213, 30.498924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344208, -0.331452, 0.878442,
		-0.321005, -0.920777, -0.221643,
		0.882313, -0.205693, -0.423337,
		17.986446, 24.200495, 30.371922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.726562, 24.040884, 30.455790>,  <17.368835, 24.344503, 30.668262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.726562, 24.040884, 30.455790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.757025, 23.764757, 30.743586>,  <16.775301, 23.599081, 30.916264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.757025, 23.764757, 30.743586>,  <16.726562, 24.040884, 30.455790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.757025, 23.764757, 30.743586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382256, -0.646238, -0.660497,
		0.920913, 0.325328, 0.214664,
		0.076154, -0.690317, 0.719488,
		16.779871, 23.557663, 30.959433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.296978, 23.669704, 30.211626>,  <16.726562, 24.040884, 30.455790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.296978, 23.669704, 30.211626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.105621, 23.450890, 30.486404>,  <16.990808, 23.319601, 30.651272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.105621, 23.450890, 30.486404>,  <17.296978, 23.669704, 30.211626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.105621, 23.450890, 30.486404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011256, -0.786022, -0.618096,
		0.878076, -0.287958, 0.382182,
		-0.478389, -0.547036, 0.686946,
		16.962105, 23.286779, 30.692488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.635103, 22.989265, 30.362589>,  <17.296978, 23.669704, 30.211626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.635103, 22.989265, 30.362589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.269682, 22.913084, 30.506336>,  <17.050428, 22.867374, 30.592585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.269682, 22.913084, 30.506336>,  <17.635103, 22.989265, 30.362589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.269682, 22.913084, 30.506336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143832, -0.675207, -0.723469,
		0.380437, -0.712617, 0.589444,
		-0.913553, -0.190454, 0.359371,
		16.995615, 22.855947, 30.614147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.595404, 22.251413, 30.394482>,  <17.635103, 22.989265, 30.362589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.595404, 22.251413, 30.394482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.218105, 22.381809, 30.419842>,  <16.991726, 22.460047, 30.435057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.218105, 22.381809, 30.419842>,  <17.595404, 22.251413, 30.394482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.218105, 22.381809, 30.419842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295440, -0.736507, -0.608501,
		-0.151671, -0.592696, 0.791017,
		-0.943245, 0.325990, 0.063399,
		16.935131, 22.479607, 30.438862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.160786, 21.712139, 30.472036>,  <17.595404, 22.251413, 30.394482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.160786, 21.712139, 30.472036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.900307, 21.977480, 30.324575>,  <16.744019, 22.136684, 30.236099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.900307, 21.977480, 30.324575>,  <17.160786, 21.712139, 30.472036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.900307, 21.977480, 30.324575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305520, -0.673813, -0.672780,
		-0.694696, -0.325479, 0.641452,
		-0.651194, 0.663354, -0.368656,
		16.704948, 22.176485, 30.213980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.500246, 21.376167, 30.409138>,  <17.160786, 21.712139, 30.472036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.500246, 21.376167, 30.409138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.487854, 21.692982, 30.165264>,  <16.480419, 21.883070, 30.018940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.487854, 21.692982, 30.165264>,  <16.500246, 21.376167, 30.409138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.487854, 21.692982, 30.165264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413226, -0.565557, -0.713715,
		-0.910101, 0.229827, 0.344811,
		-0.030980, 0.792038, -0.609685,
		16.478559, 21.930593, 29.982359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.773528, 21.470947, 30.189730>,  <16.500246, 21.376167, 30.409138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.773528, 21.470947, 30.189730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.003574, 21.658180, 29.921360>,  <16.141602, 21.770521, 29.760338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.003574, 21.658180, 29.921360>,  <15.773528, 21.470947, 30.189730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.003574, 21.658180, 29.921360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545859, -0.391288, -0.740899,
		-0.609328, 0.792332, 0.030472,
		0.575115, 0.468084, -0.670925,
		16.176109, 21.798605, 29.720083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.242861, 21.606295, 29.693319>,  <15.773528, 21.470947, 30.189730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.242861, 21.606295, 29.693319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.601016, 21.643240, 29.519077>,  <15.815909, 21.665407, 29.414532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.601016, 21.643240, 29.519077>,  <15.242861, 21.606295, 29.693319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.601016, 21.643240, 29.519077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407130, -0.226410, -0.884864,
		-0.180353, 0.969643, -0.165122,
		0.895387, 0.092362, -0.435604,
		15.869632, 21.670948, 29.388395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.184813, 22.121103, 29.061878>,  <15.242861, 21.606295, 29.693319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.184813, 22.121103, 29.061878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.534022, 21.944244, 28.979580>,  <15.743548, 21.838129, 28.930201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.534022, 21.944244, 28.979580>,  <15.184813, 22.121103, 29.061878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.534022, 21.944244, 28.979580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206506, 0.047026, -0.977315,
		0.441794, 0.895708, -0.050252,
		0.873026, -0.442149, -0.205744,
		15.795930, 21.811600, 28.917856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.412420, 22.377796, 28.518860>,  <15.184813, 22.121103, 29.061878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.412420, 22.377796, 28.518860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.639988, 22.048876, 28.523809>,  <15.776528, 21.851524, 28.526779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.639988, 22.048876, 28.523809>,  <15.412420, 22.377796, 28.518860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.639988, 22.048876, 28.523809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133757, -0.107365, -0.985181,
		0.811444, 0.558833, -0.171071,
		0.568919, -0.822301, 0.012373,
		15.810663, 21.802185, 28.527521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.041952, 22.487200, 28.043343>,  <15.412420, 22.377796, 28.518860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.041952, 22.487200, 28.043343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.981208, 22.093193, 28.076035>,  <15.944761, 21.856789, 28.095650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.981208, 22.093193, 28.076035>,  <16.041952, 22.487200, 28.043343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.981208, 22.093193, 28.076035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274786, -0.037354, -0.960780,
		0.949437, -0.168361, -0.264996,
		-0.151859, -0.985017, 0.081728,
		15.935650, 21.797688, 28.100554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.141724, 22.281996, 27.399683>,  <16.041952, 22.487200, 28.043343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.141724, 22.281996, 27.399683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.955152, 21.956203, 27.537706>,  <15.843208, 21.760729, 27.620522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.955152, 21.956203, 27.537706>,  <16.141724, 22.281996, 27.399683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.955152, 21.956203, 27.537706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401907, -0.152365, -0.902915,
		0.787981, -0.559829, -0.256277,
		-0.466431, -0.814479, 0.345060,
		15.815222, 21.711861, 27.641224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.341566, 21.790251, 26.932848>,  <16.141724, 22.281996, 27.399683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.341566, 21.790251, 26.932848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.010799, 21.664850, 27.119577>,  <15.812339, 21.589609, 27.231615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.010799, 21.664850, 27.119577>,  <16.341566, 21.790251, 26.932848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.010799, 21.664850, 27.119577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423920, -0.197888, -0.883817,
		0.369457, -0.928739, 0.030737,
		-0.826918, -0.313502, 0.466822,
		15.762724, 21.570799, 27.259624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.104874, 21.155132, 26.504215>,  <16.341566, 21.790251, 26.932848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.104874, 21.155132, 26.504215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.804859, 21.273378, 26.740879>,  <15.624851, 21.344326, 26.882877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.804859, 21.273378, 26.740879>,  <16.104874, 21.155132, 26.504215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.804859, 21.273378, 26.740879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647758, -0.147577, -0.747415,
		-0.133612, -0.943847, 0.302160,
		-0.750038, 0.295590, 0.591667,
		15.579849, 21.362062, 26.918377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.609669, 20.603809, 26.536489>,  <16.104874, 21.155132, 26.504215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.609669, 20.603809, 26.536489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.430780, 20.957912, 26.587582>,  <15.323447, 21.170374, 26.618237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.430780, 20.957912, 26.587582>,  <15.609669, 20.603809, 26.536489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.430780, 20.957912, 26.587582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517105, -0.139384, -0.844497,
		-0.729792, -0.443727, 0.520105,
		-0.447220, 0.885256, 0.127732,
		15.296615, 21.223490, 26.625902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.061470, 20.575560, 26.118303>,  <15.609669, 20.603809, 26.536489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.061470, 20.575560, 26.118303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.042356, 20.971601, 26.171074>,  <15.030889, 21.209227, 26.202736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.042356, 20.971601, 26.171074>,  <15.061470, 20.575560, 26.118303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.042356, 20.971601, 26.171074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685693, 0.063525, -0.725114,
		-0.726321, -0.125111, 0.675874,
		-0.047785, 0.990107, 0.131927,
		15.028021, 21.268633, 26.210651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.388197, 20.683113, 26.273315>,  <15.061470, 20.575560, 26.118303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.388197, 20.683113, 26.273315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.527709, 21.042126, 26.165398>,  <14.611417, 21.257534, 26.100647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.527709, 21.042126, 26.165398>,  <14.388197, 20.683113, 26.273315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.527709, 21.042126, 26.165398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669888, 0.037420, -0.741519,
		-0.655440, 0.439361, 0.614296,
		0.348781, 0.897531, -0.269796,
		14.632343, 21.311384, 26.084459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.794334, 21.137100, 26.154797>,  <14.388197, 20.683113, 26.273315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.794334, 21.137100, 26.154797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.098611, 21.292032, 25.946442>,  <14.281177, 21.384993, 25.821428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.098611, 21.292032, 25.946442>,  <13.794334, 21.137100, 26.154797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.098611, 21.292032, 25.946442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543623, -0.058369, -0.837297,
		-0.354716, 0.920091, 0.166162,
		0.760691, 0.387332, -0.520887,
		14.326818, 21.408232, 25.790176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.524092, 21.709381, 25.726606>,  <13.794334, 21.137100, 26.154797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.524092, 21.709381, 25.726606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.867010, 21.611753, 25.545290>,  <14.072762, 21.553177, 25.436501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.867010, 21.611753, 25.545290>,  <13.524092, 21.709381, 25.726606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.867010, 21.611753, 25.545290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477872, -0.049704, -0.877022,
		0.191524, 0.968483, -0.159245,
		0.857296, -0.244070, -0.453291,
		14.124199, 21.538532, 25.409302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.631576, 22.177683, 25.112583>,  <13.524092, 21.709381, 25.726606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.631576, 22.177683, 25.112583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.857355, 21.852331, 25.056284>,  <13.992823, 21.657120, 25.022505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.857355, 21.852331, 25.056284>,  <13.631576, 22.177683, 25.112583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.857355, 21.852331, 25.056284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445696, -0.156781, -0.881348,
		0.694804, 0.560208, -0.451015,
		0.564449, -0.813380, -0.140750,
		14.026690, 21.608316, 25.014059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.998116, 22.308695, 24.446352>,  <13.631576, 22.177683, 25.112583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.998116, 22.308695, 24.446352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.019332, 21.910265, 24.474699>,  <14.032062, 21.671207, 24.491707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.019332, 21.910265, 24.474699>,  <13.998116, 22.308695, 24.446352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.019332, 21.910265, 24.474699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649087, -0.088321, -0.755569,
		0.758863, -0.005923, -0.651224,
		0.053042, -0.996074, 0.070868,
		14.035244, 21.611443, 24.495960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<16.163950, 14.118599, 7.943970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.830021, 14.085052, 7.726332>,  <15.629663, 14.064924, 7.595749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.830021, 14.085052, 7.726332>,  <16.163950, 14.118599, 7.943970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.830021, 14.085052, 7.726332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351535, 0.679389, -0.644092,
		0.423669, -0.728970, -0.537687,
		-0.834822, -0.083866, -0.544094,
		15.579575, 14.059893, 7.563104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.876310, 14.026866, 8.655706>,  <16.163950, 14.118599, 7.943970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.876310, 14.026866, 8.655706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.158794, 14.279202, 8.527142>,  <16.328285, 14.430604, 8.450003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.158794, 14.279202, 8.527142>,  <15.876310, 14.026866, 8.655706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.158794, 14.279202, 8.527142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707975, 0.625278, -0.328328,
		-0.006152, 0.459420, 0.888198,
		0.706211, 0.630842, -0.321411,
		16.370657, 14.468455, 8.430718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.899598, 14.790295, 9.006455>,  <15.876310, 14.026866, 8.655706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.899598, 14.790295, 9.006455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.024057, 14.765575, 8.627115>,  <16.098734, 14.750744, 8.399511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.024057, 14.765575, 8.627115>,  <15.899598, 14.790295, 9.006455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.024057, 14.765575, 8.627115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850037, 0.428153, -0.306792,
		0.424998, 0.901591, 0.080689,
		0.311149, -0.061797, -0.948350,
		16.117401, 14.747036, 8.342610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.161695, 14.512417, 9.041576>,  <15.899598, 14.790295, 9.006455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.161695, 14.512417, 9.041576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.219975, 14.878276, 8.890743>,  <15.254944, 15.097792, 8.800243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.219975, 14.878276, 8.890743>,  <15.161695, 14.512417, 9.041576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.219975, 14.878276, 8.890743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987575, -0.111776, 0.110464,
		0.058887, -0.388491, -0.919569,
		0.145700, 0.914648, -0.377082,
		15.263685, 15.152670, 8.777618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.677255, 13.972146, 9.059329>,  <15.161695, 14.512417, 9.041576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.677255, 13.972146, 9.059329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.634756, 13.605121, 9.212581>,  <14.609257, 13.384906, 9.304532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.634756, 13.605121, 9.212581>,  <14.677255, 13.972146, 9.059329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.634756, 13.605121, 9.212581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242139, 0.397587, 0.885038,
		-0.964406, 0.001262, -0.264421,
		-0.106248, -0.917563, 0.383130,
		14.602881, 13.329851, 9.327519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.998275, 13.916928, 9.492526>,  <14.677255, 13.972146, 9.059329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.998275, 13.916928, 9.492526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.247233, 13.633602, 9.625740>,  <14.396608, 13.463606, 9.705668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.247233, 13.633602, 9.625740>,  <13.998275, 13.916928, 9.492526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.247233, 13.633602, 9.625740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044137, 0.456577, 0.888588,
		-0.781457, -0.538354, 0.315435,
		0.622396, -0.708316, 0.333034,
		14.433952, 13.421107, 9.725650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.824690, 13.659522, 10.072749>,  <13.998275, 13.916928, 9.492526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.824690, 13.659522, 10.072749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.220461, 13.601972, 10.065448>,  <14.457924, 13.567442, 10.061067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.220461, 13.601972, 10.065448>,  <13.824690, 13.659522, 10.072749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.220461, 13.601972, 10.065448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068127, 0.349979, 0.934277,
		-0.128032, -0.925643, 0.356080,
		0.989427, -0.143876, -0.018253,
		14.517289, 13.558809, 10.059972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.096659, 13.389780, 10.667241>,  <13.824690, 13.659522, 10.072749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.096659, 13.389780, 10.667241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.395206, 13.605253, 10.510905>,  <14.574335, 13.734537, 10.417104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.395206, 13.605253, 10.510905>,  <14.096659, 13.389780, 10.667241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.395206, 13.605253, 10.510905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161413, 0.423208, 0.891539,
		0.645663, -0.728503, 0.228918,
		0.746368, 0.538683, -0.390839,
		14.619117, 13.766858, 10.393654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.893597, 13.269500, 10.883390>,  <14.096659, 13.389780, 10.667241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.893597, 13.269500, 10.883390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.822104, 13.652375, 10.792314>,  <14.779209, 13.882101, 10.737667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.822104, 13.652375, 10.792314>,  <14.893597, 13.269500, 10.883390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.822104, 13.652375, 10.792314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366388, 0.279525, 0.887483,
		0.913135, 0.075196, -0.400662,
		-0.178730, 0.957189, -0.227693,
		14.768485, 13.939532, 10.724006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.466750, 13.733588, 11.036344>,  <14.893597, 13.269500, 10.883390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.466750, 13.733588, 11.036344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.141305, 13.958184, 11.096691>,  <14.946037, 14.092942, 11.132899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.141305, 13.958184, 11.096691>,  <15.466750, 13.733588, 11.036344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.141305, 13.958184, 11.096691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327918, 0.228888, 0.916559,
		0.480106, 0.795198, -0.370349,
		-0.813614, 0.561490, 0.150869,
		14.897221, 14.126631, 11.141952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.684834, 14.472546, 11.158048>,  <15.466750, 13.733588, 11.036344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.684834, 14.472546, 11.158048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.343343, 14.357985, 11.332001>,  <15.138448, 14.289249, 11.436373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.343343, 14.357985, 11.332001>,  <15.684834, 14.472546, 11.158048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.343343, 14.357985, 11.332001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356710, 0.286759, 0.889116,
		-0.379349, 0.914191, -0.142653,
		-0.853728, -0.286400, 0.434883,
		15.087224, 14.272065, 11.462465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.465270, 14.950821, 11.573918>,  <15.684834, 14.472546, 11.158048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.465270, 14.950821, 11.573918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.207499, 14.682150, 11.720103>,  <15.052835, 14.520947, 11.807814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.207499, 14.682150, 11.720103>,  <15.465270, 14.950821, 11.573918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.207499, 14.682150, 11.720103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140653, 0.365660, 0.920060,
		-0.751618, 0.644315, -0.141168,
		-0.644428, -0.671678, 0.365461,
		15.014170, 14.480646, 11.829741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.968713, 15.252679, 12.004624>,  <15.465270, 14.950821, 11.573918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.968713, 15.252679, 12.004624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.954351, 14.878652, 12.145682>,  <14.945735, 14.654235, 12.230317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.954351, 14.878652, 12.145682>,  <14.968713, 15.252679, 12.004624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.954351, 14.878652, 12.145682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227375, 0.335974, 0.914014,
		-0.973145, 0.112998, 0.200549,
		-0.035903, -0.935069, 0.352644,
		14.943581, 14.598131, 12.251475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.609175, 15.386007, 12.695530>,  <14.968713, 15.252679, 12.004624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.609175, 15.386007, 12.695530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.793650, 15.031223, 12.685645>,  <14.904334, 14.818353, 12.679714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.793650, 15.031223, 12.685645>,  <14.609175, 15.386007, 12.695530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.793650, 15.031223, 12.685645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309021, 0.134449, 0.941504,
		-0.831753, -0.441845, 0.336095,
		0.461186, -0.886959, -0.024711,
		14.932006, 14.765136, 12.678232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.496251, 15.018654, 13.377385>,  <14.609175, 15.386007, 12.695530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.496251, 15.018654, 13.377385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.834247, 14.874196, 13.219615>,  <15.037044, 14.787521, 13.124953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.834247, 14.874196, 13.219615>,  <14.496251, 15.018654, 13.377385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.834247, 14.874196, 13.219615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474302, 0.165375, 0.864690,
		-0.247050, -0.917729, 0.311031,
		0.844988, -0.361144, -0.394424,
		15.087743, 14.765853, 13.101288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.905858, 14.663960, 13.859954>,  <14.496251, 15.018654, 13.377385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.905858, 14.663960, 13.859954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.173519, 14.749085, 13.575154>,  <15.334116, 14.800161, 13.404274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.173519, 14.749085, 13.575154>,  <14.905858, 14.663960, 13.859954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.173519, 14.749085, 13.575154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709932, 0.100082, 0.697123,
		0.219618, -0.971953, -0.084116,
		0.669152, 0.212817, -0.712000,
		15.374265, 14.812930, 13.361554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.438654, 14.212925, 13.990881>,  <14.905858, 14.663960, 13.859954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.438654, 14.212925, 13.990881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.608418, 14.488613, 13.755985>,  <15.710277, 14.654026, 13.615047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.608418, 14.488613, 13.755985>,  <15.438654, 14.212925, 13.990881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.608418, 14.488613, 13.755985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835688, -0.048488, 0.547060,
		0.348571, -0.722927, -0.596552,
		0.424411, 0.689221, -0.587240,
		15.735742, 14.695379, 13.579813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.136614, 13.921748, 13.946525>,  <15.438654, 14.212925, 13.990881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.136614, 13.921748, 13.946525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.169621, 14.305035, 13.836972>,  <16.189425, 14.535007, 13.771240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.169621, 14.305035, 13.836972>,  <16.136614, 13.921748, 13.946525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.169621, 14.305035, 13.836972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849134, 0.076259, 0.522642,
		0.521691, -0.275690, -0.807362,
		0.082518, 0.958217, -0.273882,
		16.194376, 14.592500, 13.754807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.854370, 14.023809, 13.807240>,  <16.136614, 13.921748, 13.946525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.854370, 14.023809, 13.807240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.725622, 14.398005, 13.865565>,  <16.648373, 14.622521, 13.900560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.725622, 14.398005, 13.865565>,  <16.854370, 14.023809, 13.807240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.725622, 14.398005, 13.865565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889657, 0.246155, 0.384602,
		0.323898, 0.253514, -0.911494,
		-0.321871, 0.935488, 0.145812,
		16.629061, 14.678651, 13.909308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.465446, 14.401598, 13.558551>,  <16.854370, 14.023809, 13.807240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.465446, 14.401598, 13.558551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.234831, 14.642406, 13.779520>,  <17.096462, 14.786892, 13.912102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.234831, 14.642406, 13.779520>,  <17.465446, 14.401598, 13.558551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.234831, 14.642406, 13.779520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812425, 0.350402, 0.466029,
		0.086990, 0.717487, -0.691119,
		-0.576540, 0.602022, 0.552423,
		17.061869, 14.823013, 13.945247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643801, 15.076995, 13.567259>,  <17.465446, 14.401598, 13.558551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.643801, 15.076995, 13.567259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.433094, 15.086430, 13.907131>,  <17.306669, 15.092091, 14.111054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.433094, 15.086430, 13.907131>,  <17.643801, 15.076995, 13.567259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.433094, 15.086430, 13.907131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774044, 0.426373, 0.468040,
		-0.351242, 0.904240, -0.242856,
		-0.526768, 0.023586, 0.849682,
		17.275064, 15.093506, 14.162036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.989386, 15.617514, 13.860721>,  <17.643801, 15.076995, 13.567259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.989386, 15.617514, 13.860721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.759951, 15.491571, 14.163207>,  <17.622290, 15.416006, 14.344699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.759951, 15.491571, 14.163207>,  <17.989386, 15.617514, 13.860721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.759951, 15.491571, 14.163207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669533, 0.351668, 0.654259,
		-0.471934, 0.881587, 0.009093,
		-0.573588, -0.314855, 0.756216,
		17.587873, 15.397115, 14.390072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939659, 16.183538, 14.407364>,  <17.989386, 15.617514, 13.860721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.939659, 16.183538, 14.407364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.887821, 15.819434, 14.564657>,  <17.856718, 15.600972, 14.659034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.887821, 15.819434, 14.564657>,  <17.939659, 16.183538, 14.407364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.887821, 15.819434, 14.564657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590997, 0.247533, 0.767757,
		-0.796196, 0.331895, 0.505882,
		-0.129593, -0.910260, 0.393234,
		17.848944, 15.546356, 14.682628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.770693, 16.405602, 15.045431>,  <17.939659, 16.183538, 14.407364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.770693, 16.405602, 15.045431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.900179, 16.029549, 15.088066>,  <17.977871, 15.803917, 15.113647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.900179, 16.029549, 15.088066>,  <17.770693, 16.405602, 15.045431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.900179, 16.029549, 15.088066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466157, 0.256507, 0.846700,
		-0.823350, -0.224404, 0.521284,
		0.323716, -0.940131, 0.106588,
		17.997293, 15.747509, 15.120043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.750084, 16.301529, 15.746693>,  <17.770693, 16.405602, 15.045431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.750084, 16.301529, 15.746693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.997408, 16.024422, 15.598226>,  <18.145803, 15.858157, 15.509146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.997408, 16.024422, 15.598226>,  <17.750084, 16.301529, 15.746693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.997408, 16.024422, 15.598226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710062, 0.289958, 0.641667,
		-0.336903, -0.660301, 0.671192,
		0.618311, -0.692768, -0.371167,
		18.182901, 15.816591, 15.486876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.162325, 16.067295, 16.281393>,  <17.750084, 16.301529, 15.746693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.162325, 16.067295, 16.281393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.395796, 15.934256, 15.985098>,  <18.535879, 15.854432, 15.807321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.395796, 15.934256, 15.985098>,  <18.162325, 16.067295, 16.281393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.395796, 15.934256, 15.985098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811910, 0.251405, 0.526875,
		0.010987, -0.908940, 0.416781,
		0.583679, -0.332600, -0.740740,
		18.570900, 15.834476, 15.762876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.714199, 15.662269, 16.613531>,  <18.162325, 16.067295, 16.281393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.714199, 15.662269, 16.613531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.845564, 15.805627, 16.263971>,  <18.924383, 15.891642, 16.054235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.845564, 15.805627, 16.263971>,  <18.714199, 15.662269, 16.613531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.845564, 15.805627, 16.263971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810784, 0.367657, 0.455474,
		0.484535, -0.858126, -0.169839,
		0.328411, 0.358396, -0.873898,
		18.944088, 15.913146, 16.001802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.524281, 15.568453, 16.573706>,  <18.714199, 15.662269, 16.613531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.524281, 15.568453, 16.573706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.498262, 15.813005, 16.258242>,  <19.482653, 15.959737, 16.068964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.498262, 15.813005, 16.258242>,  <19.524281, 15.568453, 16.573706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.498262, 15.813005, 16.258242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974417, 0.209300, 0.081888,
		0.215131, -0.763156, -0.609353,
		-0.065045, 0.611381, -0.788659,
		19.478748, 15.996420, 16.021645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.187532, 15.471856, 16.215691>,  <19.524281, 15.568453, 16.573706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.187532, 15.471856, 16.215691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.034138, 15.827865, 16.117062>,  <19.942101, 16.041470, 16.057884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.034138, 15.827865, 16.117062>,  <20.187532, 15.471856, 16.215691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.034138, 15.827865, 16.117062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905020, 0.415363, 0.091725,
		0.184054, -0.187976, -0.964774,
		-0.383489, 0.890022, -0.246571,
		19.919090, 16.094872, 16.043091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.530622, 15.623228, 15.652213>,  <20.187532, 15.471856, 16.215691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.530622, 15.623228, 15.652213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.424177, 15.973914, 15.812490>,  <20.360310, 16.184326, 15.908657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.424177, 15.973914, 15.812490>,  <20.530622, 15.623228, 15.652213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.424177, 15.973914, 15.812490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922410, 0.352306, -0.158242,
		-0.279900, 0.327494, -0.902443,
		-0.266113, 0.876715, 0.400694,
		20.344343, 16.236929, 15.932698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.893515, 16.245455, 15.331202>,  <20.530622, 15.623228, 15.652213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.893515, 16.245455, 15.331202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.844357, 16.401947, 15.696022>,  <20.814861, 16.495842, 15.914914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.844357, 16.401947, 15.696022>,  <20.893515, 16.245455, 15.331202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.844357, 16.401947, 15.696022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916077, 0.398196, -0.047369,
		-0.381707, 0.829687, -0.407332,
		-0.122897, 0.391228, 0.912051,
		20.807487, 16.519316, 15.969637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.093538, 16.972527, 15.223633>,  <20.893515, 16.245455, 15.331202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.093538, 16.972527, 15.223633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.129642, 16.790962, 15.578218>,  <21.151304, 16.682024, 15.790970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.129642, 16.790962, 15.578218>,  <21.093538, 16.972527, 15.223633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.129642, 16.790962, 15.578218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933684, 0.348281, 0.083269,
		-0.346536, 0.820162, 0.455245,
		0.090259, -0.453910, 0.886464,
		21.156719, 16.654789, 15.844157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.078800, 17.559698, 14.668153>,  <21.093538, 16.972527, 15.223633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.078800, 17.559698, 14.668153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.696199, 17.540239, 14.553095>,  <20.466639, 17.528564, 14.484060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.696199, 17.540239, 14.553095>,  <21.078800, 17.559698, 14.668153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.696199, 17.540239, 14.553095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088615, 0.987859, 0.127600,
		0.277945, 0.147539, -0.949199,
		-0.956501, -0.048647, -0.287644,
		20.409248, 17.525644, 14.466802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.532900, 17.724304, 14.086070>,  <21.078800, 17.559698, 14.668153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.532900, 17.724304, 14.086070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.641569, 17.353975, 13.980965>,  <21.706770, 17.131777, 13.917902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.641569, 17.353975, 13.980965>,  <21.532900, 17.724304, 14.086070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.641569, 17.353975, 13.980965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772308, 0.372640, -0.514469,
		0.574224, -0.063166, 0.816258,
		0.271674, -0.925823, -0.262763,
		21.723072, 17.076229, 13.902136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.210947, 17.692968, 13.990959>,  <21.532900, 17.724304, 14.086070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.210947, 17.692968, 13.990959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.107239, 17.352001, 13.809338>,  <22.045013, 17.147421, 13.700365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.107239, 17.352001, 13.809338>,  <22.210947, 17.692968, 13.990959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.107239, 17.352001, 13.809338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564000, 0.248011, -0.787651,
		0.784018, -0.460300, 0.416462,
		-0.259269, -0.852417, -0.454054,
		22.029459, 17.096275, 13.673121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.827103, 17.166849, 13.909078>,  <22.210947, 17.692968, 13.990959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.827103, 17.166849, 13.909078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.546326, 17.195728, 13.625651>,  <22.377859, 17.213057, 13.455595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.546326, 17.195728, 13.625651>,  <22.827103, 17.166849, 13.909078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.546326, 17.195728, 13.625651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703329, 0.227101, -0.673612,
		0.112282, -0.971191, -0.210191,
		-0.701941, 0.072199, -0.708567,
		22.335743, 17.217388, 13.413081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.942160, 16.703659, 13.340647>,  <22.827103, 17.166849, 13.909078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.942160, 16.703659, 13.340647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.732502, 17.024099, 13.225053>,  <22.606709, 17.216364, 13.155697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.732502, 17.024099, 13.225053>,  <22.942160, 16.703659, 13.340647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.732502, 17.024099, 13.225053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740983, 0.261724, -0.618421,
		-0.419784, -0.538272, -0.730784,
		-0.524142, 0.801101, -0.288983,
		22.575260, 17.264429, 13.138358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.622175, 16.749098, 13.016829>,  <22.942160, 16.703659, 13.340647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.622175, 16.749098, 13.016829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.839722, 16.595753, 12.718234>,  <23.970249, 16.503746, 12.539077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.839722, 16.595753, 12.718234>,  <23.622175, 16.749098, 13.016829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.839722, 16.595753, 12.718234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627591, 0.404713, -0.665084,
		0.557082, 0.830205, -0.020487,
		0.543864, -0.383364, -0.746488,
		24.002880, 16.480743, 12.494287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.405890, 17.107775, 12.578285>,  <23.622175, 16.749098, 13.016829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.405890, 17.107775, 12.578285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.589710, 16.827278, 12.360268>,  <23.700003, 16.658981, 12.229457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.589710, 16.827278, 12.360268>,  <23.405890, 17.107775, 12.578285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.589710, 16.827278, 12.360268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716207, 0.070316, -0.694336,
		0.525222, 0.709448, -0.469920,
		0.459553, -0.701241, -0.545044,
		23.727575, 16.616905, 12.196754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.415102, 17.329062, 11.830429>,  <23.405890, 17.107775, 12.578285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.415102, 17.329062, 11.830429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.417364, 16.929068, 11.830107>,  <23.418722, 16.689072, 11.829913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.417364, 16.929068, 11.830107>,  <23.415102, 17.329062, 11.830429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.417364, 16.929068, 11.830107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797517, -0.004024, -0.603284,
		0.603271, 0.004054, -0.797526,
		0.005655, -0.999984, -0.000806,
		23.419060, 16.629072, 11.829865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.387812, 17.123558, 11.129263>,  <23.415102, 17.329062, 11.830429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.387812, 17.123558, 11.129263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.260275, 16.812883, 11.346554>,  <23.183752, 16.626478, 11.476928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.260275, 16.812883, 11.346554>,  <23.387812, 17.123558, 11.129263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.260275, 16.812883, 11.346554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893731, 0.055545, -0.445151,
		0.315570, -0.627430, -0.711861,
		-0.318841, -0.776689, 0.543226,
		23.164623, 16.579876, 11.509521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.937122, 16.669245, 10.695063>,  <23.387812, 17.123558, 11.129263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.937122, 16.669245, 10.695063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.814507, 16.580355, 11.065284>,  <22.740936, 16.527021, 11.287416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.814507, 16.580355, 11.065284>,  <22.937122, 16.669245, 10.695063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.814507, 16.580355, 11.065284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951731, 0.087389, -0.294229,
		-0.015499, -0.971072, -0.238285,
		-0.306541, -0.222223, 0.925554,
		22.722544, 16.513687, 11.342950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.308121, 16.327980, 10.602416>,  <22.937122, 16.669245, 10.695063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.308121, 16.327980, 10.602416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.321156, 16.431068, 10.988684>,  <22.328976, 16.492922, 11.220445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.321156, 16.431068, 10.988684>,  <22.308121, 16.327980, 10.602416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.321156, 16.431068, 10.988684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994616, 0.103456, 0.005954,
		-0.098370, -0.960665, 0.259703,
		0.032587, 0.257719, 0.965670,
		22.330933, 16.508385, 11.278385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.957260, 15.818239, 10.855285>,  <22.308121, 16.327980, 10.602416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.957260, 15.818239, 10.855285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.948187, 16.130804, 11.104726>,  <21.942743, 16.318342, 11.254391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.948187, 16.130804, 11.104726>,  <21.957260, 15.818239, 10.855285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.948187, 16.130804, 11.104726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995338, 0.040839, -0.087375,
		-0.093743, -0.622677, 0.776843,
		-0.022681, 0.781413, 0.623602,
		21.941383, 16.365229, 11.291806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.598572, 15.672823, 11.375309>,  <21.957260, 15.818239, 10.855285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.598572, 15.672823, 11.375309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.576698, 16.072208, 11.378857>,  <21.563574, 16.311840, 11.380985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.576698, 16.072208, 11.378857>,  <21.598572, 15.672823, 11.375309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.576698, 16.072208, 11.378857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996114, -0.055166, 0.068662,
		0.069046, -0.005079, 0.997601,
		-0.054685, 0.998464, 0.008869,
		21.560293, 16.371748, 11.381517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.038218, 15.833458, 11.823265>,  <21.598572, 15.672823, 11.375309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.038218, 15.833458, 11.823265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.089071, 16.177193, 11.625123>,  <21.119583, 16.383434, 11.506238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.089071, 16.177193, 11.625123>,  <21.038218, 15.833458, 11.823265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.089071, 16.177193, 11.625123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985366, 0.166588, 0.036095,
		0.113538, 0.483516, 0.867941,
		0.127136, 0.859337, -0.495354,
		21.127213, 16.434994, 11.476517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.636400, 16.276165, 12.114207>,  <21.038218, 15.833458, 11.823265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.636400, 16.276165, 12.114207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.682306, 16.442226, 11.753214>,  <20.709850, 16.541864, 11.536618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.682306, 16.442226, 11.753214>,  <20.636400, 16.276165, 12.114207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.682306, 16.442226, 11.753214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993217, 0.065041, -0.096382,
		0.018685, 0.907423, 0.419803,
		0.114764, 0.415155, -0.902483,
		20.716736, 16.566772, 11.482469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.141159, 16.760210, 12.119848>,  <20.636400, 16.276165, 12.114207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.141159, 16.760210, 12.119848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.233788, 16.738749, 11.731314>,  <20.289366, 16.725872, 11.498193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.233788, 16.738749, 11.731314>,  <20.141159, 16.760210, 12.119848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.233788, 16.738749, 11.731314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968509, 0.081147, -0.235382,
		0.091450, 0.995257, -0.033172,
		0.231574, -0.053654, -0.971337,
		20.303259, 16.722652, 11.439913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.711880, 17.243856, 11.799316>,  <20.141159, 16.760210, 12.119848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.711880, 17.243856, 11.799316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.817005, 17.006344, 11.495119>,  <19.880081, 16.863836, 11.312600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.817005, 17.006344, 11.495119>,  <19.711880, 17.243856, 11.799316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.817005, 17.006344, 11.495119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952221, -0.032533, -0.303673,
		0.155574, 0.803968, -0.573961,
		0.262816, -0.593782, -0.760494,
		19.895849, 16.828209, 11.266971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.259054, 17.516367, 11.217653>,  <19.711880, 17.243856, 11.799316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.259054, 17.516367, 11.217653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.375925, 17.141533, 11.141226>,  <19.446047, 16.916634, 11.095369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.375925, 17.141533, 11.141226>,  <19.259054, 17.516367, 11.217653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.375925, 17.141533, 11.141226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905798, -0.207044, -0.369679,
		0.306861, 0.281080, -0.909302,
		0.292175, -0.937084, -0.191068,
		19.463577, 16.860407, 11.083905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.165857, 17.434107, 10.529405>,  <19.259054, 17.516367, 11.217653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.165857, 17.434107, 10.529405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.150019, 17.071430, 10.697376>,  <19.140514, 16.853825, 10.798160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.150019, 17.071430, 10.697376>,  <19.165857, 17.434107, 10.529405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.150019, 17.071430, 10.697376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870697, -0.174872, -0.459680,
		0.490223, -0.383833, -0.782530,
		-0.039598, -0.906693, 0.419929,
		19.138140, 16.799423, 10.823355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.694746, 17.021151, 10.139755>,  <19.165857, 17.434107, 10.529405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.694746, 17.021151, 10.139755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.734808, 16.758764, 10.439002>,  <18.758844, 16.601332, 10.618550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.734808, 16.758764, 10.439002>,  <18.694746, 17.021151, 10.139755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.734808, 16.758764, 10.439002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952333, -0.280956, -0.118855,
		0.288152, -0.700552, -0.652837,
		0.100154, -0.655966, 0.748116,
		18.764854, 16.561974, 10.663437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.741862, 22.057673, 18.976786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.626501, 21.697243, 19.106333>,  <15.557284, 21.480986, 19.184061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.626501, 21.697243, 19.106333>,  <15.741862, 22.057673, 18.976786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.626501, 21.697243, 19.106333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075050, -0.358472, -0.930519,
		0.954563, -0.244058, 0.171010,
		-0.288403, -0.901074, 0.323867,
		15.539980, 21.426920, 19.203493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.199894, 21.542635, 18.548679>,  <15.741862, 22.057673, 18.976786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.199894, 21.542635, 18.548679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.918668, 21.316538, 18.721283>,  <15.749932, 21.180880, 18.824844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.918668, 21.316538, 18.721283>,  <16.199894, 21.542635, 18.548679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.918668, 21.316538, 18.721283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053053, -0.646798, -0.760814,
		0.709143, -0.512009, 0.484729,
		-0.703066, -0.565242, 0.431509,
		15.707748, 21.146965, 18.850735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456949, 20.807364, 18.604349>,  <16.199894, 21.542635, 18.548679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.456949, 20.807364, 18.604349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.057819, 20.800844, 18.578804>,  <15.818341, 20.796932, 18.563477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.057819, 20.800844, 18.578804>,  <16.456949, 20.807364, 18.604349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.057819, 20.800844, 18.578804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058819, -0.657373, -0.751267,
		-0.029735, -0.753389, 0.656902,
		-0.997826, -0.016299, -0.063861,
		15.758471, 20.795954, 18.559647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.426472, 20.183407, 18.412697>,  <16.456949, 20.807364, 18.604349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.426472, 20.183407, 18.412697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.066252, 20.333584, 18.325016>,  <15.850120, 20.423691, 18.272408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.066252, 20.333584, 18.325016>,  <16.426472, 20.183407, 18.412697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.066252, 20.333584, 18.325016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022498, -0.543772, -0.838932,
		-0.434165, -0.750570, 0.498142,
		-0.900552, 0.375442, -0.219200,
		15.796086, 20.446217, 18.259256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.023134, 19.595690, 18.097708>,  <16.426472, 20.183407, 18.412697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.023134, 19.595690, 18.097708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.845255, 19.934309, 17.980677>,  <15.738528, 20.137480, 17.910458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.845255, 19.934309, 17.980677>,  <16.023134, 19.595690, 18.097708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.845255, 19.934309, 17.980677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132502, -0.385239, -0.913254,
		-0.885826, -0.367353, 0.283484,
		-0.444696, 0.846547, -0.292580,
		15.711846, 20.188272, 17.892902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.526458, 19.285198, 17.665592>,  <16.023134, 19.595690, 18.097708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.526458, 19.285198, 17.665592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.545882, 19.663576, 17.537323>,  <15.557537, 19.890602, 17.460361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.545882, 19.663576, 17.537323>,  <15.526458, 19.285198, 17.665592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.545882, 19.663576, 17.537323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420423, -0.271867, -0.865640,
		-0.906028, 0.176854, 0.384495,
		0.048560, 0.945944, -0.320673,
		15.560451, 19.947359, 17.441122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.801365, 19.426001, 17.356792>,  <15.526458, 19.285198, 17.665592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.801365, 19.426001, 17.356792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.084820, 19.662884, 17.203365>,  <15.254892, 19.805014, 17.111309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.084820, 19.662884, 17.203365>,  <14.801365, 19.426001, 17.356792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.084820, 19.662884, 17.203365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356480, -0.168640, -0.918957,
		-0.608897, 0.787942, 0.091605,
		0.708637, 0.592206, -0.383570,
		15.297411, 19.840546, 17.088295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.564377, 19.595804, 16.656174>,  <14.801365, 19.426001, 17.356792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.564377, 19.595804, 16.656174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.936434, 19.742605, 16.651356>,  <15.159668, 19.830687, 16.648464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.936434, 19.742605, 16.651356>,  <14.564377, 19.595804, 16.656174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.936434, 19.742605, 16.651356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013134, -0.066033, -0.997731,
		-0.366966, 0.927873, -0.066241,
		0.930142, 0.367003, -0.012045,
		15.215476, 19.852707, 16.647743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.494734, 20.129658, 16.033295>,  <14.564377, 19.595804, 16.656174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.494734, 20.129658, 16.033295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.852859, 19.973799, 16.119633>,  <15.067734, 19.880283, 16.171434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.852859, 19.973799, 16.119633>,  <14.494734, 20.129658, 16.033295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.852859, 19.973799, 16.119633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136428, -0.221409, -0.965591,
		0.424031, 0.893953, -0.145071,
		0.895313, -0.389649, 0.215844,
		15.121452, 19.856905, 16.184385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.930662, 20.264748, 15.428642>,  <14.494734, 20.129658, 16.033295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.930662, 20.264748, 15.428642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.124912, 19.970160, 15.617016>,  <15.241463, 19.793407, 15.730041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.124912, 19.970160, 15.617016>,  <14.930662, 20.264748, 15.428642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.124912, 19.970160, 15.617016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023365, -0.549467, -0.835189,
		0.873854, 0.394587, -0.284043,
		0.485626, -0.736470, 0.470934,
		15.270600, 19.749218, 15.758296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.407309, 19.943478, 14.898118>,  <14.930662, 20.264748, 15.428642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.407309, 19.943478, 14.898118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.356224, 19.672600, 15.187973>,  <15.325574, 19.510073, 15.361886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.356224, 19.672600, 15.187973>,  <15.407309, 19.943478, 14.898118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.356224, 19.672600, 15.187973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104621, -0.717345, -0.688818,
		0.986278, -0.163782, 0.020763,
		-0.127710, -0.677194, 0.724637,
		15.317911, 19.469442, 15.405364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.718994, 19.329708, 14.732046>,  <15.407309, 19.943478, 14.898118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.718994, 19.329708, 14.732046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.460597, 19.214994, 15.015017>,  <15.305559, 19.146166, 15.184798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.460597, 19.214994, 15.015017>,  <15.718994, 19.329708, 14.732046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.460597, 19.214994, 15.015017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234076, -0.807677, -0.541172,
		0.726569, -0.515184, 0.454624,
		-0.645992, -0.286782, 0.707426,
		15.266800, 19.128960, 15.227244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.861745, 18.702761, 14.833776>,  <15.718994, 19.329708, 14.732046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.861745, 18.702761, 14.833776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.481480, 18.754951, 14.946357>,  <15.253321, 18.786266, 15.013905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.481480, 18.754951, 14.946357>,  <15.861745, 18.702761, 14.833776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.481480, 18.754951, 14.946357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252017, -0.853875, -0.455395,
		0.180904, -0.503858, 0.844631,
		-0.950664, 0.130478, 0.281450,
		15.196280, 18.794094, 15.030792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.488129, 18.403744, 14.703749>,  <15.861745, 18.702761, 14.833776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.488129, 18.403744, 14.703749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.823242, 18.357412, 14.490317>,  <17.024309, 18.329613, 14.362259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.823242, 18.357412, 14.490317>,  <16.488129, 18.403744, 14.703749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.823242, 18.357412, 14.490317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351031, -0.634250, 0.688843,
		-0.418208, -0.764403, -0.490705,
		0.837783, -0.115827, -0.533577,
		17.074577, 18.322664, 14.330244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.625340, 17.656460, 14.633249>,  <16.488129, 18.403744, 14.703749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.625340, 17.656460, 14.633249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.932035, 17.912933, 14.620611>,  <17.116053, 18.066816, 14.613029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.932035, 17.912933, 14.620611>,  <16.625340, 17.656460, 14.633249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.932035, 17.912933, 14.620611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130306, -0.107254, 0.985656,
		0.628597, -0.759856, -0.165786,
		0.766738, 0.641183, -0.031594,
		17.162056, 18.105288, 14.611133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.202061, 17.347813, 15.030105>,  <16.625340, 17.656460, 14.633249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.202061, 17.347813, 15.030105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.300755, 17.735098, 15.013685>,  <17.359970, 17.967468, 15.003834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.300755, 17.735098, 15.013685>,  <17.202061, 17.347813, 15.030105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.300755, 17.735098, 15.013685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196194, -0.008426, 0.980529,
		0.949015, -0.249984, -0.192037,
		0.246735, 0.968213, -0.041049,
		17.374775, 18.025562, 15.001370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.756092, 17.372084, 15.354382>,  <17.202061, 17.347813, 15.030105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.756092, 17.372084, 15.354382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.626526, 17.750320, 15.366597>,  <17.548786, 17.977262, 15.373926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.626526, 17.750320, 15.366597>,  <17.756092, 17.372084, 15.354382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.626526, 17.750320, 15.366597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255600, 0.056386, 0.965137,
		0.910905, 0.320429, -0.259957,
		-0.323915, 0.945593, 0.030539,
		17.529352, 18.033998, 15.375759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.242355, 17.661430, 15.830218>,  <17.756092, 17.372084, 15.354382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.242355, 17.661430, 15.830218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939714, 17.922853, 15.822011>,  <17.758131, 18.079706, 15.817087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939714, 17.922853, 15.822011>,  <18.242355, 17.661430, 15.830218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.939714, 17.922853, 15.822011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185171, 0.244249, 0.951869,
		0.627110, 0.716385, -0.305818,
		-0.756601, 0.653555, -0.020518,
		17.712734, 18.118919, 15.815856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.459196, 18.269867, 16.266174>,  <18.242355, 17.661430, 15.830218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.459196, 18.269867, 16.266174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.061140, 18.276291, 16.227322>,  <17.822306, 18.280146, 16.204010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.061140, 18.276291, 16.227322>,  <18.459196, 18.269867, 16.266174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.061140, 18.276291, 16.227322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086767, 0.323126, 0.942370,
		0.046519, 0.946220, -0.320163,
		-0.995142, 0.016059, -0.097132,
		17.762598, 18.281109, 16.198181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.317923, 18.871254, 16.580702>,  <18.459196, 18.269867, 16.266174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.317923, 18.871254, 16.580702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.981380, 18.655436, 16.593412>,  <17.779455, 18.525946, 16.601040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.981380, 18.655436, 16.593412>,  <18.317923, 18.871254, 16.580702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.981380, 18.655436, 16.593412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122298, 0.247321, 0.961185,
		-0.526461, 0.804813, -0.274070,
		-0.841357, -0.539544, 0.031778,
		17.728973, 18.493572, 16.602945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.732752, 19.260454, 16.842178>,  <18.317923, 18.871254, 16.580702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.732752, 19.260454, 16.842178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.607859, 18.884972, 16.900616>,  <17.532923, 18.659683, 16.935678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.607859, 18.884972, 16.900616>,  <17.732752, 19.260454, 16.842178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.607859, 18.884972, 16.900616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407885, 0.271351, 0.871779,
		-0.857986, 0.212609, -0.467609,
		-0.312234, -0.938704, 0.146095,
		17.514189, 18.603361, 16.944445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.066797, 19.313980, 16.961702>,  <17.732752, 19.260454, 16.842178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.066797, 19.313980, 16.961702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.172306, 18.955145, 17.103498>,  <17.235611, 18.739843, 17.188576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.172306, 18.955145, 17.103498>,  <17.066797, 19.313980, 16.961702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.172306, 18.955145, 17.103498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438953, 0.215611, 0.872257,
		-0.858921, -0.385679, -0.336907,
		0.263770, -0.897086, 0.354488,
		17.251436, 18.686020, 17.209845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.431503, 18.900019, 17.253448>,  <17.066797, 19.313980, 16.961702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.431503, 18.900019, 17.253448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.764660, 18.755795, 17.421392>,  <16.964554, 18.669260, 17.522160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.764660, 18.755795, 17.421392>,  <16.431503, 18.900019, 17.253448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.764660, 18.755795, 17.421392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430322, 0.055134, 0.900990,
		-0.348010, -0.931105, -0.109237,
		0.832894, -0.360561, 0.419861,
		17.014528, 18.647627, 17.547352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.181133, 18.599688, 17.832022>,  <16.431503, 18.900019, 17.253448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.181133, 18.599688, 17.832022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.572966, 18.553967, 17.898184>,  <16.808065, 18.526533, 17.937881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.572966, 18.553967, 17.898184>,  <16.181133, 18.599688, 17.832022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.572966, 18.553967, 17.898184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156014, 0.086784, 0.983935,
		-0.126822, -0.989648, 0.067179,
		0.979580, -0.114303, 0.165405,
		16.866840, 18.519676, 17.947805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.127762, 18.211853, 18.354610>,  <16.181133, 18.599688, 17.832022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.127762, 18.211853, 18.354610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.506908, 18.336132, 18.382950>,  <16.734396, 18.410700, 18.399954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.506908, 18.336132, 18.382950>,  <16.127762, 18.211853, 18.354610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.506908, 18.336132, 18.382950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069964, -0.014008, 0.997451,
		0.310897, -0.950406, 0.008460,
		0.947865, 0.310696, 0.070849,
		16.791267, 18.429340, 18.404205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.550102, 17.665361, 18.623991>,  <16.127762, 18.211853, 18.354610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.550102, 17.665361, 18.623991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.741484, 18.007418, 18.703804>,  <16.856312, 18.212652, 18.751692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.741484, 18.007418, 18.703804>,  <16.550102, 17.665361, 18.623991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.741484, 18.007418, 18.703804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046217, -0.202388, 0.978214,
		0.876896, -0.477252, -0.057312,
		0.478454, 0.855143, 0.199531,
		16.885019, 18.263960, 18.763662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.986204, 17.524767, 19.117542>,  <16.550102, 17.665361, 18.623991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.986204, 17.524767, 19.117542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.955872, 17.923122, 19.137367>,  <16.937672, 18.162136, 19.149263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.955872, 17.923122, 19.137367>,  <16.986204, 17.524767, 19.117542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.955872, 17.923122, 19.137367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156261, -0.060963, 0.985833,
		0.984800, 0.067013, 0.160242,
		-0.075833, 0.995888, 0.049564,
		16.933123, 18.221889, 19.152237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.449326, 17.795271, 19.646851>,  <16.986204, 17.524767, 19.117542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.449326, 17.795271, 19.646851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.161806, 18.069338, 19.599731>,  <16.989294, 18.233778, 19.571461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.161806, 18.069338, 19.599731>,  <17.449326, 17.795271, 19.646851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.161806, 18.069338, 19.599731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133768, 0.029966, 0.990560,
		0.682227, 0.727771, 0.070113,
		-0.718799, 0.685165, -0.117796,
		16.946167, 18.274887, 19.564392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.049095, 17.321882, 19.839672>,  <17.449326, 17.795271, 19.646851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.049095, 17.321882, 19.839672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.012913, 16.981495, 20.046621>,  <17.991203, 16.777264, 20.170790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.012913, 16.981495, 20.046621>,  <18.049095, 17.321882, 19.839672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.012913, 16.981495, 20.046621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293710, -0.473600, -0.830324,
		0.951605, -0.227066, -0.207097,
		-0.090457, -0.850966, 0.517372,
		17.985775, 16.726206, 20.201834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.195776, 16.892427, 19.305197>,  <18.049095, 17.321882, 19.839672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.195776, 16.892427, 19.305197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.003580, 16.688599, 19.590704>,  <17.888264, 16.566301, 19.762009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.003580, 16.688599, 19.590704>,  <18.195776, 16.892427, 19.305197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.003580, 16.688599, 19.590704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432782, -0.570102, -0.698343,
		0.762778, -0.644452, 0.053394,
		-0.480489, -0.509573, 0.713769,
		17.859434, 16.535727, 19.804834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.373491, 16.154810, 19.226526>,  <18.195776, 16.892427, 19.305197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.373491, 16.154810, 19.226526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.026270, 16.166471, 19.424772>,  <17.817938, 16.173468, 19.543720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.026270, 16.166471, 19.424772>,  <18.373491, 16.154810, 19.226526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.026270, 16.166471, 19.424772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384144, -0.671845, -0.633291,
		0.314515, -0.740118, 0.594395,
		-0.868052, 0.029153, 0.495617,
		17.765854, 16.175217, 19.573458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.225439, 15.446719, 19.301542>,  <18.373491, 16.154810, 19.226526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.225439, 15.446719, 19.301542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.874899, 15.630532, 19.359282>,  <17.664574, 15.740820, 19.393925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.874899, 15.630532, 19.359282>,  <18.225439, 15.446719, 19.301542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.874899, 15.630532, 19.359282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446418, -0.662345, -0.601672,
		-0.180881, -0.591716, 0.785592,
		-0.876352, 0.459533, 0.144347,
		17.611994, 15.768393, 19.402586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.744287, 14.897391, 19.393297>,  <18.225439, 15.446719, 19.301542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.744287, 14.897391, 19.393297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.554522, 15.233761, 19.289160>,  <17.440662, 15.435583, 19.226677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.554522, 15.233761, 19.289160>,  <17.744287, 14.897391, 19.393297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.554522, 15.233761, 19.289160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578719, -0.520783, -0.627590,
		-0.663338, -0.147071, 0.733725,
		-0.474412, 0.840925, -0.260342,
		17.412197, 15.486038, 19.211058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.986143, 14.769360, 19.449677>,  <17.744287, 14.897391, 19.393297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.986143, 14.769360, 19.449677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.037539, 15.069710, 19.190546>,  <17.068377, 15.249920, 19.035069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.037539, 15.069710, 19.190546>,  <16.986143, 14.769360, 19.449677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.037539, 15.069710, 19.190546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744226, -0.358740, -0.563413,
		-0.655453, 0.554520, 0.512726,
		0.128489, 0.750875, -0.647825,
		17.076086, 15.294972, 18.996199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.333845, 14.936874, 19.245653>,  <16.986143, 14.769360, 19.449677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.333845, 14.936874, 19.245653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.555422, 15.089417, 18.949621>,  <16.688368, 15.180942, 18.772001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.555422, 15.089417, 18.949621>,  <16.333845, 14.936874, 19.245653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.555422, 15.089417, 18.949621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665739, -0.330896, -0.668804,
		-0.499942, 0.863178, 0.070587,
		0.553940, 0.381356, -0.740080,
		16.721603, 15.203823, 18.727596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.894832, 15.280924, 18.764484>,  <16.333845, 14.936874, 19.245653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.894832, 15.280924, 18.764484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.204191, 15.214160, 18.519863>,  <16.389807, 15.174102, 18.373091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.204191, 15.214160, 18.519863>,  <15.894832, 15.280924, 18.764484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.204191, 15.214160, 18.519863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633918, -0.205786, -0.745520,
		-0.001414, 0.964258, -0.264961,
		0.773399, -0.166909, -0.611551,
		16.436211, 15.164087, 18.336397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.763848, 15.683786, 18.146610>,  <15.894832, 15.280924, 18.764484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.763848, 15.683786, 18.146610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029398, 15.406322, 18.034822>,  <16.188728, 15.239842, 17.967751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029398, 15.406322, 18.034822>,  <15.763848, 15.683786, 18.146610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.029398, 15.406322, 18.034822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627436, -0.313285, -0.712865,
		0.406934, 0.648602, -0.643210,
		0.663874, -0.693663, -0.279470,
		16.228559, 15.198223, 17.950981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.579017, 15.609655, 17.498350>,  <15.763848, 15.683786, 18.146610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.579017, 15.609655, 17.498350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.815638, 15.289594, 17.537991>,  <15.957610, 15.097557, 17.561775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.815638, 15.289594, 17.537991>,  <15.579017, 15.609655, 17.498350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.815638, 15.289594, 17.537991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643629, -0.542673, -0.539674,
		0.485601, 0.255461, -0.836021,
		0.591552, -0.800153, 0.099100,
		15.993103, 15.049547, 17.567720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.637995, 15.302395, 16.806231>,  <15.579017, 15.609655, 17.498350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.637995, 15.302395, 16.806231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.771327, 15.013768, 17.048960>,  <15.851326, 14.840592, 17.194597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.771327, 15.013768, 17.048960>,  <15.637995, 15.302395, 16.806231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.771327, 15.013768, 17.048960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462746, -0.685984, -0.561509,
		0.821436, -0.093637, -0.562561,
		0.333330, -0.721567, 0.606822,
		15.871326, 14.797298, 17.231007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.201752, 14.815743, 16.461624>,  <15.637995, 15.302395, 16.806231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.201752, 14.815743, 16.461624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.941831, 14.665007, 16.725670>,  <15.785878, 14.574565, 16.884096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.941831, 14.665007, 16.725670>,  <16.201752, 14.815743, 16.461624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.941831, 14.665007, 16.725670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371634, -0.600061, -0.708389,
		0.663058, -0.705632, 0.249874,
		-0.649802, -0.376841, 0.660112,
		15.746890, 14.551954, 16.923704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<19.114111, 17.446154, 25.796650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.422983, 17.629866, 25.621016>,  <19.608307, 17.740093, 25.515635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.422983, 17.629866, 25.621016>,  <19.114111, 17.446154, 25.796650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.422983, 17.629866, 25.621016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353652, -0.263453, -0.897509,
		-0.527888, 0.848323, -0.041007,
		0.772181, 0.459282, -0.439085,
		19.654638, 17.767651, 25.489290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.891972, 17.897310, 25.300055>,  <19.114111, 17.446154, 25.796650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.891972, 17.897310, 25.300055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.268589, 17.816648, 25.192108>,  <19.494560, 17.768251, 25.127340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.268589, 17.816648, 25.192108>,  <18.891972, 17.897310, 25.300055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.268589, 17.816648, 25.192108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309177, -0.199076, -0.929935,
		0.133802, 0.959012, -0.249786,
		0.941545, -0.201655, -0.269867,
		19.551052, 17.756151, 25.111149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.859619, 18.116180, 24.572536>,  <18.891972, 17.897310, 25.300055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.859619, 18.116180, 24.572536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.218561, 17.941183, 24.595701>,  <19.433926, 17.836184, 24.609600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.218561, 17.941183, 24.595701>,  <18.859619, 18.116180, 24.572536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.218561, 17.941183, 24.595701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018188, -0.094450, -0.995363,
		0.440935, 0.894247, -0.076798,
		0.897355, -0.437494, 0.057911,
		19.487768, 17.809935, 24.613075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.356880, 18.486660, 24.089903>,  <18.859619, 18.116180, 24.572536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.356880, 18.486660, 24.089903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.469002, 18.106436, 24.143372>,  <19.536274, 17.878302, 24.175453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.469002, 18.106436, 24.143372>,  <19.356880, 18.486660, 24.089903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.469002, 18.106436, 24.143372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143711, -0.096128, -0.984940,
		0.949093, 0.295290, 0.109661,
		0.280302, -0.950559, 0.133671,
		19.553093, 17.821268, 24.183474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.932520, 18.391150, 23.618837>,  <19.356880, 18.486660, 24.089903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.932520, 18.391150, 23.618837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.784546, 18.032991, 23.717964>,  <19.695761, 17.818096, 23.777441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.784546, 18.032991, 23.717964>,  <19.932520, 18.391150, 23.618837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.784546, 18.032991, 23.717964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003417, -0.268049, -0.963399,
		0.929051, -0.355550, 0.102221,
		-0.369936, -0.895396, 0.247817,
		19.673565, 17.764372, 23.792309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.347204, 17.845854, 23.197979>,  <19.932520, 18.391150, 23.618837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.347204, 17.845854, 23.197979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.982187, 17.699333, 23.270742>,  <19.763178, 17.611420, 23.314400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.982187, 17.699333, 23.270742>,  <20.347204, 17.845854, 23.197979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.982187, 17.699333, 23.270742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008191, -0.428322, -0.903589,
		0.408903, -0.826052, 0.387861,
		-0.912541, -0.366304, 0.181908,
		19.708426, 17.589441, 23.325315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.334717, 17.233047, 22.829687>,  <20.347204, 17.845854, 23.197979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.334717, 17.233047, 22.829687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.952049, 17.275200, 22.938259>,  <19.722448, 17.300491, 23.003403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.952049, 17.275200, 22.938259>,  <20.334717, 17.233047, 22.829687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.952049, 17.275200, 22.938259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291108, -0.365699, -0.884036,
		0.006101, -0.924748, 0.380531,
		-0.956671, 0.105382, 0.271433,
		19.665049, 17.306814, 23.019690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.985155, 16.596949, 22.704216>,  <20.334717, 17.233047, 22.829687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.985155, 16.596949, 22.704216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.679750, 16.853575, 22.733725>,  <19.496508, 17.007551, 22.751431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.679750, 16.853575, 22.733725>,  <19.985155, 16.596949, 22.704216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.679750, 16.853575, 22.733725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397691, -0.377103, -0.836442,
		-0.508814, -0.667970, 0.543068,
		-0.763511, 0.641567, 0.073770,
		19.450697, 17.046045, 22.755856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.394224, 16.235838, 22.503212>,  <19.985155, 16.596949, 22.704216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.394224, 16.235838, 22.503212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.271269, 16.612070, 22.445494>,  <19.197495, 16.837809, 22.410862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.271269, 16.612070, 22.445494>,  <19.394224, 16.235838, 22.503212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.271269, 16.612070, 22.445494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487754, -0.285940, -0.824823,
		-0.817072, -0.183162, 0.546667,
		-0.307390, 0.940579, -0.144296,
		19.179052, 16.894243, 22.402205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.690063, 16.180170, 22.320177>,  <19.394224, 16.235838, 22.503212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.690063, 16.180170, 22.320177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.803518, 16.542637, 22.194695>,  <18.871592, 16.760117, 22.119406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.803518, 16.542637, 22.194695>,  <18.690063, 16.180170, 22.320177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.803518, 16.542637, 22.194695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609983, -0.081928, -0.788168,
		-0.739913, 0.414908, 0.529509,
		0.283635, 0.906167, -0.313706,
		18.888609, 16.814487, 22.100582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.041599, 16.357506, 22.144651>,  <18.690063, 16.180170, 22.320177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.041599, 16.357506, 22.144651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.301661, 16.617090, 21.986588>,  <18.457697, 16.772840, 21.891748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.301661, 16.617090, 21.986588>,  <18.041599, 16.357506, 22.144651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.301661, 16.617090, 21.986588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423054, -0.122814, -0.897742,
		-0.631131, 0.750844, 0.194698,
		0.650153, 0.648961, -0.395160,
		18.496706, 16.811779, 21.868040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.571455, 16.811487, 21.819349>,  <18.041599, 16.357506, 22.144651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.571455, 16.811487, 21.819349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.932636, 16.817467, 21.647556>,  <18.149345, 16.821054, 21.544481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.932636, 16.817467, 21.647556>,  <17.571455, 16.811487, 21.819349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.932636, 16.817467, 21.647556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429091, -0.023658, -0.902952,
		-0.023658, 0.999608, -0.014948,
		0.902952, 0.014948, -0.429482,
		18.203522, 16.821951, 21.518711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.624609, 17.373491, 21.329632>,  <17.571455, 16.811487, 21.819349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.624609, 17.373491, 21.329632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.889154, 17.097651, 21.211615>,  <18.047882, 16.932146, 21.140804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.889154, 17.097651, 21.211615>,  <17.624609, 17.373491, 21.329632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.889154, 17.097651, 21.211615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452910, -0.053608, -0.889943,
		0.597888, 0.722203, -0.347782,
		0.661364, -0.689600, -0.295042,
		18.087563, 16.890770, 21.123102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.630190, 17.500406, 20.588905>,  <17.624609, 17.373491, 21.329632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.630190, 17.500406, 20.588905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.816166, 17.150476, 20.643332>,  <17.927752, 16.940519, 20.675987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.816166, 17.150476, 20.643332>,  <17.630190, 17.500406, 20.588905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.816166, 17.150476, 20.643332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274218, -0.288427, -0.917395,
		0.841805, 0.389223, -0.373993,
		0.464941, -0.874823, 0.136068,
		17.955648, 16.888029, 20.684153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.460819, 18.126165, 20.287102>,  <17.630190, 17.500406, 20.588905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.460819, 18.126165, 20.287102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.150053, 18.323696, 20.130878>,  <16.963593, 18.442215, 20.037144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.150053, 18.323696, 20.130878>,  <17.460819, 18.126165, 20.287102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.150053, 18.323696, 20.130878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301855, 0.252227, 0.919383,
		0.552527, 0.832175, -0.046894,
		-0.776915, 0.493828, -0.390559,
		16.916979, 18.471844, 20.013710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.404732, 18.830486, 20.544226>,  <17.460819, 18.126165, 20.287102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.404732, 18.830486, 20.544226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.030407, 18.727388, 20.448040>,  <16.805813, 18.665529, 20.390327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.030407, 18.727388, 20.448040>,  <17.404732, 18.830486, 20.544226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.030407, 18.727388, 20.448040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314426, 0.301966, 0.899974,
		-0.159353, 0.917814, -0.363626,
		-0.935811, -0.257747, -0.240465,
		16.749664, 18.650064, 20.375900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098520, 19.209856, 20.952904>,  <17.404732, 18.830486, 20.544226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.098520, 19.209856, 20.952904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.776299, 18.996956, 20.848755>,  <16.582966, 18.869215, 20.786266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.776299, 18.996956, 20.848755>,  <17.098520, 19.209856, 20.952904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.776299, 18.996956, 20.848755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411671, 0.186701, 0.892003,
		-0.426157, 0.825744, -0.369509,
		-0.805554, -0.532250, -0.260371,
		16.534632, 18.837280, 20.770643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650324, 19.582170, 21.171398>,  <17.098520, 19.209856, 20.952904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.650324, 19.582170, 21.171398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.480597, 19.220167, 21.159285>,  <16.378761, 19.002966, 21.152016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.480597, 19.220167, 21.159285>,  <16.650324, 19.582170, 21.171398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.480597, 19.220167, 21.159285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431320, 0.172592, 0.885537,
		-0.796190, 0.388811, -0.463582,
		-0.424317, -0.905007, -0.030286,
		16.353302, 18.948666, 21.150198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.761049, 19.613859, 21.247328>,  <16.650324, 19.582170, 21.171398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.761049, 19.613859, 21.247328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.977301, 19.299088, 21.366299>,  <16.107052, 19.110226, 21.437681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.977301, 19.299088, 21.366299>,  <15.761049, 19.613859, 21.247328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.977301, 19.299088, 21.366299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265660, 0.175761, 0.947909,
		-0.798213, -0.591483, -0.114034,
		0.540629, -0.786928, 0.297428,
		16.139490, 19.063009, 21.455526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.306832, 19.107977, 21.633375>,  <15.761049, 19.613859, 21.247328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.306832, 19.107977, 21.633375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.681004, 19.140709, 21.770943>,  <15.905506, 19.160349, 21.853483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.681004, 19.140709, 21.770943>,  <15.306832, 19.107977, 21.633375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.681004, 19.140709, 21.770943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353286, 0.181100, 0.917819,
		0.012822, -0.980054, 0.198315,
		0.935427, 0.081830, 0.343918,
		15.961632, 19.165258, 21.874119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.191624, 19.112270, 22.422922>,  <15.306832, 19.107977, 21.633375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.191624, 19.112270, 22.422922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.588496, 19.069273, 22.397556>,  <15.826620, 19.043474, 22.382338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.588496, 19.069273, 22.397556>,  <15.191624, 19.112270, 22.422922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.588496, 19.069273, 22.397556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074338, 0.100881, 0.992117,
		-0.100248, -0.989075, 0.108083,
		0.992181, -0.107492, -0.063413,
		15.886150, 19.037025, 22.378532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.339388, 18.673553, 22.888487>,  <15.191624, 19.112270, 22.422922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.339388, 18.673553, 22.888487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.695661, 18.846066, 22.830963>,  <15.909425, 18.949574, 22.796450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.695661, 18.846066, 22.830963>,  <15.339388, 18.673553, 22.888487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.695661, 18.846066, 22.830963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188463, -0.062407, 0.980095,
		0.413722, -0.900057, -0.136865,
		0.890683, 0.431281, -0.143808,
		15.962866, 18.975451, 22.787821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.765600, 18.298222, 23.361969>,  <15.339388, 18.673553, 22.888487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.765600, 18.298222, 23.361969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.962135, 18.634819, 23.272104>,  <16.080057, 18.836779, 23.218185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.962135, 18.634819, 23.272104>,  <15.765600, 18.298222, 23.361969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.962135, 18.634819, 23.272104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316018, 0.068125, 0.946304,
		0.811615, -0.535952, -0.232455,
		0.491338, 0.841495, -0.224662,
		16.109537, 18.887268, 23.204706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.378172, 18.122637, 23.691584>,  <15.765600, 18.298222, 23.361969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.378172, 18.122637, 23.691584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.382837, 18.517334, 23.626835>,  <16.385637, 18.754152, 23.587986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.382837, 18.517334, 23.626835>,  <16.378172, 18.122637, 23.691584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.382837, 18.517334, 23.626835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463365, 0.138119, 0.875338,
		0.886091, -0.085216, -0.455611,
		0.011664, 0.986743, -0.161872,
		16.386337, 18.813356, 23.578274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.034262, 18.372797, 23.833977>,  <16.378172, 18.122637, 23.691584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.034262, 18.372797, 23.833977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.824181, 18.711216, 23.870562>,  <16.698132, 18.914267, 23.892511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.824181, 18.711216, 23.870562>,  <17.034262, 18.372797, 23.833977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.824181, 18.711216, 23.870562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571486, 0.271032, 0.774561,
		0.630526, 0.459071, -0.625851,
		-0.525204, 0.846047, 0.091460,
		16.666618, 18.965031, 23.897999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.468897, 18.949827, 23.885149>,  <17.034262, 18.372797, 23.833977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.468897, 18.949827, 23.885149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.122517, 19.051914, 24.057192>,  <16.914688, 19.113167, 24.160418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.122517, 19.051914, 24.057192>,  <17.468897, 18.949827, 23.885149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.122517, 19.051914, 24.057192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498046, 0.361666, 0.788129,
		0.045589, 0.896695, -0.440296,
		-0.865951, 0.255217, 0.430107,
		16.862732, 19.128479, 24.186224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.626095, 19.598549, 24.099087>,  <17.468897, 18.949827, 23.885149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.626095, 19.598549, 24.099087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.269802, 19.513073, 24.259554>,  <17.056026, 19.461788, 24.355835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.269802, 19.513073, 24.259554>,  <17.626095, 19.598549, 24.099087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.269802, 19.513073, 24.259554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275121, 0.449087, 0.850076,
		-0.361812, 0.867559, -0.341224,
		-0.890730, -0.213690, 0.401168,
		17.002583, 19.448967, 24.379904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.333982, 20.190018, 24.098984>,  <17.626095, 19.598549, 24.099087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.333982, 20.190018, 24.098984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.148529, 19.974655, 24.380455>,  <17.037256, 19.845438, 24.549337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.148529, 19.974655, 24.380455>,  <17.333982, 20.190018, 24.098984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.148529, 19.974655, 24.380455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347156, 0.620309, 0.703349,
		-0.815184, 0.570384, -0.100686,
		-0.463635, -0.538405, 0.703678,
		17.009438, 19.813133, 24.591558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<13.315084, 18.791298, 27.526340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.631004, 18.594440, 27.379910>,  <13.820556, 18.476326, 27.292051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.631004, 18.594440, 27.379910>,  <13.315084, 18.791298, 27.526340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.631004, 18.594440, 27.379910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499830, -0.170478, -0.849180,
		0.355511, 0.853658, -0.380632,
		0.789799, -0.492144, -0.366077,
		13.867944, 18.446796, 27.270086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.349684, 18.971127, 26.841644>,  <13.315084, 18.791298, 27.526340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.349684, 18.971127, 26.841644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.569186, 18.637875, 26.814051>,  <13.700888, 18.437923, 26.797495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.569186, 18.637875, 26.814051>,  <13.349684, 18.971127, 26.841644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.569186, 18.637875, 26.814051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304474, -0.122328, -0.944633,
		0.778564, 0.539378, -0.320795,
		0.548756, -0.833131, -0.068986,
		13.733813, 18.387936, 26.793354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.756093, 19.100657, 26.205854>,  <13.349684, 18.971127, 26.841644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.756093, 19.100657, 26.205854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.751364, 18.711067, 26.296398>,  <13.748527, 18.477314, 26.350725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.751364, 18.711067, 26.296398>,  <13.756093, 19.100657, 26.205854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.751364, 18.711067, 26.296398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000629, -0.226368, -0.974041,
		0.999930, -0.011658, 0.002064,
		-0.011822, -0.973972, 0.226360,
		13.747817, 18.418875, 26.364305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.208201, 18.822901, 25.786476>,  <13.756093, 19.100657, 26.205854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.208201, 18.822901, 25.786476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.998524, 18.502298, 25.901585>,  <13.872717, 18.309937, 25.970650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.998524, 18.502298, 25.901585>,  <14.208201, 18.822901, 25.786476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.998524, 18.502298, 25.901585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039806, -0.314486, -0.948427,
		0.850668, -0.508614, 0.132946,
		-0.524193, -0.801505, 0.287770,
		13.841266, 18.261847, 25.987915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.516049, 18.349379, 25.312082>,  <14.208201, 18.822901, 25.786476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.516049, 18.349379, 25.312082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.186515, 18.180088, 25.462908>,  <13.988794, 18.078514, 25.553402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.186515, 18.180088, 25.462908>,  <14.516049, 18.349379, 25.312082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.186515, 18.180088, 25.462908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221362, -0.372167, -0.901382,
		0.521818, -0.826058, 0.212918,
		-0.823835, -0.423226, 0.377062,
		13.939364, 18.053120, 25.576027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.432944, 17.677120, 24.872505>,  <14.516049, 18.349379, 25.312082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.432944, 17.677120, 24.872505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.097210, 17.771940, 25.068188>,  <13.895769, 17.828833, 25.185596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.097210, 17.771940, 25.068188>,  <14.432944, 17.677120, 24.872505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.097210, 17.771940, 25.068188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540100, -0.261500, -0.799944,
		-0.061699, -0.935642, 0.347517,
		-0.839336, 0.237050, 0.489205,
		13.845409, 17.843056, 25.214949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.972071, 17.087116, 24.787054>,  <14.432944, 17.677120, 24.872505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.972071, 17.087116, 24.787054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.772040, 17.432381, 24.814995>,  <13.652022, 17.639540, 24.831758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.772040, 17.432381, 24.814995>,  <13.972071, 17.087116, 24.787054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.772040, 17.432381, 24.814995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562466, -0.262417, -0.784073,
		-0.658450, -0.431384, 0.616726,
		-0.500076, 0.863160, 0.069850,
		13.622018, 17.691328, 24.835951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.309858, 16.845022, 24.775627>,  <13.972071, 17.087116, 24.787054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.309858, 16.845022, 24.775627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.247969, 17.236710, 24.723179>,  <13.210835, 17.471722, 24.691710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.247969, 17.236710, 24.723179>,  <13.309858, 16.845022, 24.775627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.247969, 17.236710, 24.723179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410168, -0.184411, -0.893171,
		-0.898789, -0.084412, 0.430177,
		-0.154724, 0.979217, -0.131123,
		13.201551, 17.530476, 24.683842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.643250, 16.998085, 24.778688>,  <13.309858, 16.845022, 24.775627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.643250, 16.998085, 24.778688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.800157, 17.308165, 24.580620>,  <12.894301, 17.494211, 24.461779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.800157, 17.308165, 24.580620>,  <12.643250, 16.998085, 24.778688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.800157, 17.308165, 24.580620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600482, -0.191986, -0.776249,
		-0.696812, 0.601840, 0.390182,
		0.392268, 0.775197, -0.495173,
		12.917837, 17.540724, 24.432068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.083310, 17.324028, 24.488749>,  <12.643250, 16.998085, 24.778688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.083310, 17.324028, 24.488749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.384753, 17.463385, 24.265787>,  <12.565619, 17.546999, 24.132010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.384753, 17.463385, 24.265787>,  <12.083310, 17.324028, 24.488749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.384753, 17.463385, 24.265787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507557, -0.230425, -0.830235,
		-0.417688, 0.908585, 0.003180,
		0.753607, 0.348393, -0.557404,
		12.610835, 17.567902, 24.098566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.705715, 17.679258, 23.927437>,  <12.083310, 17.324028, 24.488749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.705715, 17.679258, 23.927437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.079357, 17.653959, 23.786896>,  <12.303542, 17.638781, 23.702570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.079357, 17.653959, 23.786896>,  <11.705715, 17.679258, 23.927437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.079357, 17.653959, 23.786896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353772, -0.031924, -0.934787,
		0.047907, 0.997487, -0.052196,
		0.934104, -0.063248, -0.351354,
		12.359589, 17.634985, 23.681490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.816140, 18.040611, 23.315592>,  <11.705715, 17.679258, 23.927437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.816140, 18.040611, 23.315592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.107377, 17.771660, 23.262238>,  <12.282119, 17.610289, 23.230225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.107377, 17.771660, 23.262238>,  <11.816140, 18.040611, 23.315592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.107377, 17.771660, 23.262238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225548, -0.051241, -0.972883,
		0.647310, 0.738433, -0.188962,
		0.728092, -0.672377, -0.133384,
		12.325805, 17.569946, 23.222223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.019458, 18.150345, 22.610605>,  <11.816140, 18.040611, 23.315592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.019458, 18.150345, 22.610605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.199893, 17.800047, 22.679417>,  <12.308154, 17.589869, 22.720703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.199893, 17.800047, 22.679417>,  <12.019458, 18.150345, 22.610605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.199893, 17.800047, 22.679417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144680, -0.118449, -0.982363,
		0.880674, 0.468021, 0.073271,
		0.451088, -0.875743, 0.172029,
		12.335219, 17.537323, 22.731026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.565889, 18.122200, 22.030439>,  <12.019458, 18.150345, 22.610605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.565889, 18.122200, 22.030439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.529884, 17.747334, 22.165268>,  <12.508281, 17.522413, 22.246164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.529884, 17.747334, 22.165268>,  <12.565889, 18.122200, 22.030439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.529884, 17.747334, 22.165268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096563, -0.345062, -0.933599,
		0.991248, -0.051488, 0.121555,
		-0.090013, -0.937167, 0.337071,
		12.502880, 17.466183, 22.266390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.257569, 18.319407, 21.894989>,  <12.565889, 18.122200, 22.030439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.257569, 18.319407, 21.894989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.139878, 18.662199, 21.725748>,  <13.069263, 18.867874, 21.624203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.139878, 18.662199, 21.725748>,  <13.257569, 18.319407, 21.894989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.139878, 18.662199, 21.725748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028563, 0.434616, 0.900163,
		0.955309, 0.276937, -0.103398,
		-0.294227, 0.856980, -0.423103,
		13.051610, 18.919292, 21.598818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.703569, 18.802391, 22.177799>,  <13.257569, 18.319407, 21.894989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.703569, 18.802391, 22.177799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.421593, 19.045616, 22.031746>,  <13.252407, 19.191551, 21.944115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.421593, 19.045616, 22.031746>,  <13.703569, 18.802391, 22.177799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.421593, 19.045616, 22.031746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130073, 0.616903, 0.776216,
		0.697237, 0.499693, -0.513973,
		-0.704941, 0.608061, -0.365131,
		13.210111, 19.228035, 21.922207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.912661, 19.492628, 22.253407>,  <13.703569, 18.802391, 22.177799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.912661, 19.492628, 22.253407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.514828, 19.523338, 22.225370>,  <13.276128, 19.541763, 22.208548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.514828, 19.523338, 22.225370>,  <13.912661, 19.492628, 22.253407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.514828, 19.523338, 22.225370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014048, 0.767306, 0.641127,
		0.103003, 0.636669, -0.764227,
		-0.994582, 0.076774, -0.070091,
		13.216454, 19.546370, 22.204344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.751525, 20.169609, 22.006536>,  <13.912661, 19.492628, 22.253407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.751525, 20.169609, 22.006536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.439815, 20.026590, 22.212406>,  <13.252789, 19.940779, 22.335928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.439815, 20.026590, 22.212406>,  <13.751525, 20.169609, 22.006536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.439815, 20.026590, 22.212406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171831, 0.667883, 0.724159,
		-0.602663, 0.652757, -0.459027,
		-0.779276, -0.357549, 0.514672,
		13.206032, 19.919325, 22.366808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.304153, 20.680742, 22.216780>,  <13.751525, 20.169609, 22.006536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.304153, 20.680742, 22.216780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.190178, 20.402887, 22.480989>,  <13.121793, 20.236174, 22.639515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.190178, 20.402887, 22.480989>,  <13.304153, 20.680742, 22.216780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.190178, 20.402887, 22.480989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111165, 0.708385, 0.697017,
		-0.952078, 0.125181, -0.279066,
		-0.284939, -0.694637, 0.660522,
		13.104696, 20.194496, 22.679146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.645947, 21.018366, 22.649260>,  <13.304153, 20.680742, 22.216780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.645947, 21.018366, 22.649260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.775447, 20.711298, 22.870480>,  <12.853147, 20.527058, 23.003212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.775447, 20.711298, 22.870480>,  <12.645947, 21.018366, 22.649260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.775447, 20.711298, 22.870480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259233, 0.634136, 0.728470,
		-0.909936, -0.092473, 0.404308,
		0.323750, -0.767672, 0.553051,
		12.872572, 20.480997, 23.036394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.421168, 21.144072, 23.353462>,  <12.645947, 21.018366, 22.649260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.421168, 21.144072, 23.353462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.724992, 20.885328, 23.380720>,  <12.907286, 20.730082, 23.397076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.724992, 20.885328, 23.380720>,  <12.421168, 21.144072, 23.353462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.724992, 20.885328, 23.380720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341424, 0.485684, 0.804699,
		-0.553624, -0.587950, 0.589759,
		0.759559, -0.646859, 0.068146,
		12.952860, 20.691271, 23.401163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.549795, 21.070688, 24.029966>,  <12.421168, 21.144072, 23.353462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.549795, 21.070688, 24.029966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.890553, 20.929665, 23.875059>,  <13.095009, 20.845051, 23.782114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.890553, 20.929665, 23.875059>,  <12.549795, 21.070688, 24.029966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.890553, 20.929665, 23.875059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513872, 0.420042, 0.747998,
		-0.101043, -0.836223, 0.539001,
		0.851895, -0.352558, -0.387269,
		13.146122, 20.823898, 23.758879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.838871, 20.659140, 24.580271>,  <12.549795, 21.070688, 24.029966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.838871, 20.659140, 24.580271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.115248, 20.790981, 24.322910>,  <13.281074, 20.870087, 24.168495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.115248, 20.790981, 24.322910>,  <12.838871, 20.659140, 24.580271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.115248, 20.790981, 24.322910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534495, 0.366330, 0.761654,
		0.486739, -0.870152, 0.076942,
		0.690941, 0.329602, -0.643399,
		13.322530, 20.889862, 24.129890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513369, 20.399746, 24.769091>,  <12.838871, 20.659140, 24.580271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513369, 20.399746, 24.769091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.620471, 20.724470, 24.561527>,  <13.684732, 20.919306, 24.436989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.620471, 20.724470, 24.561527>,  <13.513369, 20.399746, 24.769091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.620471, 20.724470, 24.561527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738407, 0.173066, 0.651770,
		0.618920, -0.557681, -0.553109,
		0.267756, 0.811813, -0.518909,
		13.700798, 20.968014, 24.405855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.218945, 20.309593, 24.628201>,  <13.513369, 20.399746, 24.769091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.218945, 20.309593, 24.628201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.144932, 20.702639, 24.622061>,  <14.100524, 20.938465, 24.618378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.144932, 20.702639, 24.622061>,  <14.218945, 20.309593, 24.628201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.144932, 20.702639, 24.622061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684929, 0.140145, 0.715005,
		0.704724, 0.121786, -0.698951,
		-0.185032, 0.982613, -0.015349,
		14.089422, 20.997423, 24.617456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.847757, 20.702377, 24.558043>,  <14.218945, 20.309593, 24.628201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.847757, 20.702377, 24.558043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.584603, 20.955502, 24.721378>,  <14.426711, 21.107376, 24.819380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.584603, 20.955502, 24.721378>,  <14.847757, 20.702377, 24.558043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.584603, 20.955502, 24.721378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695788, 0.303214, 0.651107,
		0.288212, 0.712471, -0.639781,
		-0.657885, 0.632808, 0.408339,
		14.387238, 21.145344, 24.843880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.238959, 21.204905, 24.831879>,  <14.847757, 20.702377, 24.558043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.238959, 21.204905, 24.831879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.901401, 21.317665, 25.014469>,  <14.698865, 21.385321, 25.124023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.901401, 21.317665, 25.014469>,  <15.238959, 21.204905, 24.831879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.901401, 21.317665, 25.014469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536488, 0.450212, 0.713786,
		-0.004293, 0.847255, -0.531170,
		-0.843897, 0.281902, 0.456475,
		14.648232, 21.402235, 25.151411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.361114, 21.885687, 25.111076>,  <15.238959, 21.204905, 24.831879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.361114, 21.885687, 25.111076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.045058, 21.750113, 25.315351>,  <14.855425, 21.668768, 25.437918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.045058, 21.750113, 25.315351>,  <15.361114, 21.885687, 25.111076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.045058, 21.750113, 25.315351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477726, 0.181455, 0.859565,
		-0.384004, 0.923145, 0.018544,
		-0.790139, -0.338935, 0.510689,
		14.808017, 21.648432, 25.468559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.385049, 22.608393, 24.912992>,  <15.361114, 21.885687, 25.111076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.385049, 22.608393, 24.912992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.739246, 22.752213, 24.795265>,  <15.951765, 22.838505, 24.724628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.739246, 22.752213, 24.795265>,  <15.385049, 22.608393, 24.912992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.739246, 22.752213, 24.795265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261871, -0.137070, -0.955320,
		-0.383827, 0.923004, -0.027219,
		0.885495, 0.359549, -0.294319,
		16.004894, 22.860077, 24.706970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.217003, 22.969213, 24.311693>,  <15.385049, 22.608393, 24.912992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.217003, 22.969213, 24.311693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.615261, 22.937719, 24.291727>,  <15.854216, 22.918823, 24.279747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.615261, 22.937719, 24.291727>,  <15.217003, 22.969213, 24.311693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.615261, 22.937719, 24.291727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050572, -0.006379, -0.998700,
		0.078314, 0.996875, -0.010333,
		0.995645, -0.078735, -0.049915,
		15.913955, 22.914099, 24.276752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.358997, 23.473997, 23.832331>,  <15.217003, 22.969213, 24.311693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.358997, 23.473997, 23.832331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.612669, 23.168873, 23.882826>,  <15.764873, 22.985798, 23.913124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.612669, 23.168873, 23.882826>,  <15.358997, 23.473997, 23.832331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.612669, 23.168873, 23.882826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018127, -0.177895, -0.983882,
		0.772973, 0.621670, -0.126645,
		0.634180, -0.762810, 0.126239,
		15.802923, 22.940029, 23.920698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.801861, 23.615740, 23.211527>,  <15.358997, 23.473997, 23.832331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.801861, 23.615740, 23.211527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.804472, 23.235367, 23.335257>,  <15.806039, 23.007143, 23.409494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.804472, 23.235367, 23.335257>,  <15.801861, 23.615740, 23.211527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.804472, 23.235367, 23.335257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137942, -0.307232, -0.941584,
		0.990419, -0.036523, -0.133179,
		0.006528, -0.950934, 0.309326,
		15.806430, 22.950087, 23.428055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.129757, 23.268675, 22.690468>,  <15.801861, 23.615740, 23.211527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.129757, 23.268675, 22.690468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.998779, 22.941063, 22.878922>,  <15.920193, 22.744495, 22.991993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.998779, 22.941063, 22.878922>,  <16.129757, 23.268675, 22.690468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.998779, 22.941063, 22.878922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107139, -0.463223, -0.879742,
		0.938776, -0.338544, 0.063930,
		-0.327445, -0.819031, 0.471134,
		15.900546, 22.695354, 23.020262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.579556, 22.660494, 22.536551>,  <16.129757, 23.268675, 22.690468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.579556, 22.660494, 22.536551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.202053, 22.551706, 22.611767>,  <15.975552, 22.486435, 22.656897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.202053, 22.551706, 22.611767>,  <16.579556, 22.660494, 22.536551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.202053, 22.551706, 22.611767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017562, -0.526679, -0.849883,
		0.330179, -0.805384, 0.492279,
		-0.943755, -0.271968, 0.188042,
		15.918926, 22.470116, 22.668179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.506779, 21.979740, 22.258312>,  <16.579556, 22.660494, 22.536551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.506779, 21.979740, 22.258312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.124205, 22.092648, 22.288116>,  <15.894660, 22.160393, 22.306000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.124205, 22.092648, 22.288116>,  <16.506779, 21.979740, 22.258312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.124205, 22.092648, 22.288116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171512, -0.336749, -0.925842,
		-0.236242, -0.898291, 0.370492,
		-0.956438, 0.282266, 0.074513,
		15.837274, 22.177328, 22.310471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.101959, 21.414906, 21.974789>,  <16.506779, 21.979740, 22.258312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.101959, 21.414906, 21.974789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.871221, 21.741356, 21.961027>,  <15.732778, 21.937227, 21.952770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.871221, 21.741356, 21.961027>,  <16.101959, 21.414906, 21.974789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.871221, 21.741356, 21.961027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334965, -0.274749, -0.901283,
		-0.745015, -0.508377, 0.431862,
		-0.576846, 0.816128, -0.034404,
		15.698167, 21.986195, 21.950706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.638550, 21.114893, 21.628225>,  <16.101959, 21.414906, 21.974789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.638550, 21.114893, 21.628225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.532006, 21.498236, 21.587030>,  <15.468081, 21.728241, 21.562313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.532006, 21.498236, 21.587030>,  <15.638550, 21.114893, 21.628225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.532006, 21.498236, 21.587030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410892, -0.209549, -0.887275,
		-0.871906, -0.194016, 0.449597,
		-0.266358, 0.958356, -0.102988,
		15.452099, 21.785742, 21.556133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.949180, 21.111824, 21.434093>,  <15.638550, 21.114893, 21.628225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.949180, 21.111824, 21.434093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.086699, 21.463177, 21.301281>,  <15.169211, 21.673988, 21.221594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.086699, 21.463177, 21.301281>,  <14.949180, 21.111824, 21.434093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.086699, 21.463177, 21.301281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299287, -0.232649, -0.925366,
		-0.890072, 0.417513, 0.182904,
		0.343800, 0.878383, -0.332031,
		15.189839, 21.726692, 21.201672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.450081, 21.368296, 20.982885>,  <14.949180, 21.111824, 21.434093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.450081, 21.368296, 20.982885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.784553, 21.558247, 20.873123>,  <14.985235, 21.672216, 20.807266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.784553, 21.558247, 20.873123>,  <14.450081, 21.368296, 20.982885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.784553, 21.558247, 20.873123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187282, -0.223022, -0.956654,
		-0.515490, 0.851325, -0.097551,
		0.836179, 0.474876, -0.274403,
		15.035406, 21.700708, 20.790802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.258329, 21.582939, 20.310484>,  <14.450081, 21.368296, 20.982885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.258329, 21.582939, 20.310484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.657082, 21.589849, 20.341288>,  <14.896333, 21.593996, 20.359770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.657082, 21.589849, 20.341288>,  <14.258329, 21.582939, 20.310484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.657082, 21.589849, 20.341288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078494, -0.318753, -0.944582,
		0.008229, 0.947681, -0.319114,
		0.996881, 0.017276, 0.077010,
		14.956146, 21.595032, 20.364391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.550085, 21.857176, 19.649712>,  <14.258329, 21.582939, 20.310484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.550085, 21.857176, 19.649712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.876302, 21.700287, 19.819914>,  <15.072032, 21.606153, 19.922035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.876302, 21.700287, 19.819914>,  <14.550085, 21.857176, 19.649712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.876302, 21.700287, 19.819914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287678, -0.363220, -0.886179,
		0.502130, 0.845124, -0.183387,
		0.815541, -0.392221, 0.425507,
		15.120964, 21.582621, 19.947565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.103689, 22.166508, 19.360409>,  <14.550085, 21.857176, 19.649712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.103689, 22.166508, 19.360409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.222684, 21.808119, 19.492308>,  <15.294081, 21.593086, 19.571447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.222684, 21.808119, 19.492308>,  <15.103689, 22.166508, 19.360409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.222684, 21.808119, 19.492308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210076, -0.275491, -0.938069,
		0.931327, 0.348336, 0.106267,
		0.297487, -0.895973, 0.329749,
		15.311930, 21.539328, 19.591232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<8.082188, 4.642123, 10.101915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.074388, 4.562140, 10.493759>,  <8.069708, 4.514150, 10.728866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.074388, 4.562140, 10.493759>,  <8.082188, 4.642123, 10.101915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.074388, 4.562140, 10.493759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931500, 0.359580, 0.054855,
		-0.363217, -0.911438, -0.193273,
		-0.019500, -0.199958, 0.979611,
		8.068538, 4.502152, 10.787642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.505867, 4.193491, 10.253322>,  <8.082188, 4.642123, 10.101915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.505867, 4.193491, 10.253322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.607273, 4.384142, 10.590024>,  <7.668117, 4.498533, 10.792046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.607273, 4.384142, 10.590024>,  <7.505867, 4.193491, 10.253322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.607273, 4.384142, 10.590024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858122, 0.512465, -0.031729,
		-0.446494, -0.714286, 0.538924,
		0.253516, 0.476629, 0.841756,
		7.683328, 4.527131, 10.842551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.866357, 4.120292, 10.708928>,  <7.505867, 4.193491, 10.253322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.866357, 4.120292, 10.708928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.104746, 4.434571, 10.775258>,  <7.247779, 4.623138, 10.815056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.104746, 4.434571, 10.775258>,  <6.866357, 4.120292, 10.708928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.104746, 4.434571, 10.775258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791664, 0.609474, -0.042527,
		-0.134480, -0.105934, 0.985238,
		0.595972, 0.785697, 0.165826,
		7.283537, 4.670280, 10.825006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.563091, 4.578707, 11.281457>,  <6.866357, 4.120292, 10.708928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.563091, 4.578707, 11.281457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.818409, 4.792906, 11.060252>,  <6.971601, 4.921425, 10.927529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.818409, 4.792906, 11.060252>,  <6.563091, 4.578707, 11.281457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.818409, 4.792906, 11.060252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694950, 0.709841, -0.114763,
		0.331094, 0.457568, 0.825233,
		0.638296, 0.535498, -0.553011,
		7.009898, 4.953555, 10.894349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.705023, 5.222093, 11.635937>,  <6.563091, 4.578707, 11.281457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.705023, 5.222093, 11.635937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.718709, 5.230979, 11.236270>,  <6.726920, 5.236311, 10.996469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.718709, 5.230979, 11.236270>,  <6.705023, 5.222093, 11.635937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.718709, 5.230979, 11.236270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744409, 0.667639, -0.010645,
		0.666847, 0.744153, 0.039380,
		0.034213, 0.022216, -0.999167,
		6.728972, 5.237644, 10.936520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.460827, 5.936974, 11.607071>,  <6.705023, 5.222093, 11.635937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.460827, 5.936974, 11.607071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.646013, 5.772440, 11.921133>,  <6.757125, 5.673720, 12.109571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.646013, 5.772440, 11.921133>,  <6.460827, 5.936974, 11.607071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.646013, 5.772440, 11.921133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192538, 0.911321, 0.363901,
		-0.865212, -0.017302, 0.501107,
		0.462966, -0.411334, 0.785154,
		6.784903, 5.649040, 12.156679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.136668, 6.109066, 12.237887>,  <6.460827, 5.936974, 11.607071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.136668, 6.109066, 12.237887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.534076, 6.064337, 12.245995>,  <6.772521, 6.037500, 12.250859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.534076, 6.064337, 12.245995>,  <6.136668, 6.109066, 12.237887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.534076, 6.064337, 12.245995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103220, 0.962539, 0.250729,
		-0.047546, -0.247012, 0.967845,
		0.993522, -0.111822, 0.020268,
		6.832133, 6.030791, 12.252075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.317579, 6.493092, 12.799839>,  <6.136668, 6.109066, 12.237887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.317579, 6.493092, 12.799839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.597345, 6.472059, 12.514728>,  <6.765205, 6.459439, 12.343660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.597345, 6.472059, 12.514728>,  <6.317579, 6.493092, 12.799839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.597345, 6.472059, 12.514728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081454, 0.996657, 0.006402,
		0.710060, -0.062536, 0.701360,
		0.699415, -0.052582, -0.712779,
		6.807170, 6.456284, 12.300894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.823423, 6.875213, 13.026871>,  <6.317579, 6.493092, 12.799839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.823423, 6.875213, 13.026871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.825806, 6.862093, 12.627093>,  <6.827236, 6.854221, 12.387227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.825806, 6.862093, 12.627093>,  <6.823423, 6.875213, 13.026871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.825806, 6.862093, 12.627093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250025, 0.967668, -0.033248,
		0.968221, 0.250084, -0.002438,
		0.005955, -0.032801, -0.999444,
		6.827593, 6.852253, 12.327260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.187181, 7.514447, 12.764319>,  <6.823423, 6.875213, 13.026871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.187181, 7.514447, 12.764319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.957120, 7.349144, 12.481925>,  <6.819084, 7.249961, 12.312489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.957120, 7.349144, 12.481925>,  <7.187181, 7.514447, 12.764319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.957120, 7.349144, 12.481925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358966, 0.902987, -0.236133,
		0.735080, 0.117613, -0.667701,
		-0.575153, -0.413258, -0.705987,
		6.784575, 7.225166, 12.270129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.318671, 7.791812, 12.075351>,  <7.187181, 7.514447, 12.764319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.318671, 7.791812, 12.075351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.940600, 7.669201, 12.120400>,  <6.713758, 7.595635, 12.147430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.940600, 7.669201, 12.120400>,  <7.318671, 7.791812, 12.075351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.940600, 7.669201, 12.120400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308664, 0.951170, -0.001618,
		-0.106629, -0.036292, -0.993636,
		-0.945176, -0.306528, 0.112624,
		6.657048, 7.577243, 12.154188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.904393, 8.041193, 11.540486>,  <7.318671, 7.791812, 12.075351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.904393, 8.041193, 11.540486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.644065, 7.963225, 11.834001>,  <6.487869, 7.916444, 12.010109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.644065, 7.963225, 11.834001>,  <6.904393, 8.041193, 11.540486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.644065, 7.963225, 11.834001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451027, 0.876720, -0.167141,
		-0.610745, -0.439736, -0.658500,
		-0.650818, -0.194921, 0.733785,
		6.448820, 7.904748, 12.054136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.311018, 8.087214, 11.171470>,  <6.904393, 8.041193, 11.540486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.311018, 8.087214, 11.171470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.254150, 8.154745, 11.561605>,  <6.220029, 8.195263, 11.795687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.254150, 8.154745, 11.561605>,  <6.311018, 8.087214, 11.171470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.254150, 8.154745, 11.561605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383391, 0.899042, -0.211505,
		-0.912578, -0.404006, -0.063092,
		-0.142172, 0.168826, 0.975338,
		6.211498, 8.205393, 11.854207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.625595, 8.452704, 11.268570>,  <6.311018, 8.087214, 11.171470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.625595, 8.452704, 11.268570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.839325, 8.515295, 11.600837>,  <5.967564, 8.552850, 11.800197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.839325, 8.515295, 11.600837>,  <5.625595, 8.452704, 11.268570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.839325, 8.515295, 11.600837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068923, 0.987509, -0.141688,
		-0.842463, 0.018456, 0.538438,
		0.534327, 0.156477, 0.830668,
		5.999624, 8.562239, 11.850038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.163837, 8.805061, 11.765416>,  <5.625595, 8.452704, 11.268570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.163837, 8.805061, 11.765416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.550644, 8.850071, 11.856822>,  <5.782728, 8.877077, 11.911665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.550644, 8.850071, 11.856822>,  <5.163837, 8.805061, 11.765416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.550644, 8.850071, 11.856822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112184, 0.993581, -0.014519,
		-0.228681, -0.011596, 0.973432,
		0.967016, 0.112524, 0.228514,
		5.840749, 8.883828, 11.925376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.232288, 9.423375, 12.044686>,  <5.163837, 8.805061, 11.765416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.232288, 9.423375, 12.044686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.628835, 9.379591, 12.015808>,  <5.866763, 9.353320, 11.998481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.628835, 9.379591, 12.015808>,  <5.232288, 9.423375, 12.044686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.628835, 9.379591, 12.015808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112143, 0.993103, 0.034207,
		0.067954, -0.042008, 0.996804,
		0.991366, -0.109460, -0.072197,
		5.926244, 9.346753, 11.994149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.534972, 9.862605, 12.516189>,  <5.232288, 9.423375, 12.044686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.534972, 9.862605, 12.516189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.847160, 9.762500, 12.287022>,  <6.034472, 9.702436, 12.149522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.847160, 9.762500, 12.287022>,  <5.534972, 9.862605, 12.516189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.847160, 9.762500, 12.287022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411505, 0.895527, 0.169394,
		0.470670, -0.367966, 0.801917,
		0.780470, -0.250264, -0.572918,
		6.081301, 9.687421, 12.115147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.168903, 10.027288, 12.881783>,  <5.534972, 9.862605, 12.516189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.168903, 10.027288, 12.881783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.296691, 10.004330, 12.503441>,  <6.373364, 9.990554, 12.276435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.296691, 10.004330, 12.503441>,  <6.168903, 10.027288, 12.881783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.296691, 10.004330, 12.503441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623877, 0.764045, 0.164354,
		0.713244, -0.642604, 0.279899,
		0.319470, -0.057398, -0.945857,
		6.392532, 9.987110, 12.219684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.925708, 10.045922, 12.914871>,  <6.168903, 10.027288, 12.881783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.925708, 10.045922, 12.914871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.826774, 10.132730, 12.537146>,  <6.767413, 10.184815, 12.310511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.826774, 10.132730, 12.537146>,  <6.925708, 10.045922, 12.914871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.826774, 10.132730, 12.537146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519795, 0.852202, 0.059707,
		0.817703, -0.476081, -0.323586,
		-0.247336, 0.217021, -0.944313,
		6.752573, 10.197837, 12.253852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.567295, 10.272416, 12.603788>,  <6.925708, 10.045922, 12.914871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.567295, 10.272416, 12.603788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.260349, 10.431668, 12.402734>,  <7.076181, 10.527220, 12.282101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.260349, 10.431668, 12.402734>,  <7.567295, 10.272416, 12.603788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.260349, 10.431668, 12.402734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363251, 0.915885, 0.170888,
		0.528394, -0.051450, -0.847439,
		-0.767365, 0.398129, -0.502637,
		7.030139, 10.551107, 12.251943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.948328, 10.872105, 12.351425>,  <7.567295, 10.272416, 12.603788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.948328, 10.872105, 12.351425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.559985, 10.935614, 12.279616>,  <7.326980, 10.973720, 12.236531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.559985, 10.935614, 12.279616>,  <7.948328, 10.872105, 12.351425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.559985, 10.935614, 12.279616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118586, 0.969196, 0.215862,
		0.208264, 0.188282, -0.959779,
		-0.970857, 0.158773, -0.179521,
		7.268728, 10.983246, 12.225760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.905312, 11.383001, 11.862006>,  <7.948328, 10.872105, 12.351425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.905312, 11.383001, 11.862006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.569388, 11.361217, 12.078062>,  <7.367833, 11.348147, 12.207696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.569388, 11.361217, 12.078062>,  <7.905312, 11.383001, 11.862006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.569388, 11.361217, 12.078062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147896, 0.934372, 0.324155,
		-0.522345, 0.352114, -0.776641,
		-0.839811, -0.054459, 0.540141,
		7.317445, 11.344880, 12.240105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.701521, 12.008657, 11.730665>,  <7.905312, 11.383001, 11.862006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.701521, 12.008657, 11.730665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.500531, 11.881535, 12.052290>,  <7.379937, 11.805261, 12.245265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.500531, 11.881535, 12.052290>,  <7.701521, 12.008657, 11.730665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.500531, 11.881535, 12.052290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039882, 0.937522, 0.345634,
		-0.863671, 0.141605, -0.483757,
		-0.502476, -0.317807, 0.804063,
		7.349789, 11.786192, 12.293509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.136459, 12.425716, 11.756365>,  <7.701521, 12.008657, 11.730665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.136459, 12.425716, 11.756365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.204623, 12.277809, 12.121710>,  <7.245522, 12.189065, 12.340917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.204623, 12.277809, 12.121710>,  <7.136459, 12.425716, 11.756365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.204623, 12.277809, 12.121710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194599, 0.896037, 0.399061,
		-0.965967, -0.245743, 0.080737,
		0.170410, -0.369769, 0.913363,
		7.255746, 12.166879, 12.395719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.613629, 12.756099, 12.210739>,  <7.136459, 12.425716, 11.756365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.613629, 12.756099, 12.210739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.903689, 12.637862, 12.459507>,  <7.077725, 12.566920, 12.608768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.903689, 12.637862, 12.459507>,  <6.613629, 12.756099, 12.210739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.903689, 12.637862, 12.459507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184947, 0.786382, 0.589405,
		-0.663288, -0.542429, 0.515576,
		0.725150, -0.295591, 0.621919,
		7.121234, 12.549185, 12.646083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.285159, 12.658182, 12.849409>,  <6.613629, 12.756099, 12.210739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.285159, 12.658182, 12.849409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.671999, 12.710799, 12.936508>,  <6.904102, 12.742370, 12.988768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.671999, 12.710799, 12.936508>,  <6.285159, 12.658182, 12.849409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.671999, 12.710799, 12.936508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224029, 0.845923, 0.483968,
		-0.120536, -0.516827, 0.847562,
		0.967100, 0.131543, 0.217749,
		6.962129, 12.750262, 13.001833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.192512, 13.048778, 13.400101>,  <6.285159, 12.658182, 12.849409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.192512, 13.048778, 13.400101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.589811, 13.056651, 13.354368>,  <6.828190, 13.061376, 13.326929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.589811, 13.056651, 13.354368>,  <6.192512, 13.048778, 13.400101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.589811, 13.056651, 13.354368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028269, 0.914729, 0.403078,
		0.112516, -0.403589, 0.907996,
		0.993248, 0.019685, -0.114330,
		6.887785, 13.062556, 13.320069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.502084, 13.206697, 14.037435>,  <6.192512, 13.048778, 13.400101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.502084, 13.206697, 14.037435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.765555, 13.347012, 13.771174>,  <6.923638, 13.431201, 13.611418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.765555, 13.347012, 13.771174>,  <6.502084, 13.206697, 14.037435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.765555, 13.347012, 13.771174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059030, 0.857856, 0.510488,
		0.750106, -0.375540, 0.544344,
		0.658678, 0.350788, -0.665651,
		6.963159, 13.452248, 13.571479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.981314, 13.498874, 14.388718>,  <6.502084, 13.206697, 14.037435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.981314, 13.498874, 14.388718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.016511, 13.666544, 14.027266>,  <7.037629, 13.767146, 13.810394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.016511, 13.666544, 14.027266>,  <6.981314, 13.498874, 14.388718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.016511, 13.666544, 14.027266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059269, 0.903339, 0.424812,
		0.994356, -0.090937, 0.054642,
		0.087991, 0.419176, -0.903631,
		7.042909, 13.792296, 13.756176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.447305, 14.105287, 14.462260>,  <6.981314, 13.498874, 14.388718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.447305, 14.105287, 14.462260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.254618, 14.199605, 14.124658>,  <7.139005, 14.256196, 13.922096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.254618, 14.199605, 14.124658>,  <7.447305, 14.105287, 14.462260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.254618, 14.199605, 14.124658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092142, 0.944152, 0.316365,
		0.871468, 0.230167, -0.433090,
		-0.481719, 0.235797, -0.844006,
		7.110102, 14.270344, 13.871456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.930863, 14.512029, 14.207895>,  <7.447305, 14.105287, 14.462260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.930863, 14.512029, 14.207895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.556889, 14.566933, 14.077017>,  <7.332505, 14.599874, 13.998490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.556889, 14.566933, 14.077017>,  <7.930863, 14.512029, 14.207895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.556889, 14.566933, 14.077017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083854, 0.810550, 0.579635,
		0.344769, 0.569358, -0.746302,
		-0.934935, 0.137260, -0.327196,
		7.276409, 14.608110, 13.978858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.432528, 13.893593, 13.875119>,  <7.930863, 14.512029, 14.207895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.432528, 13.893593, 13.875119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.823379, 13.974586, 13.901123>,  <9.057889, 14.023183, 13.916725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.823379, 13.974586, 13.901123>,  <8.432528, 13.893593, 13.875119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.823379, 13.974586, 13.901123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200826, -0.777993, -0.595312,
		-0.069964, 0.594750, -0.800861,
		0.977125, 0.202484, 0.065010,
		9.116516, 14.035332, 13.920626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.827099, 13.993186, 13.220888>,  <8.432528, 13.893593, 13.875119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.827099, 13.993186, 13.220888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.103106, 13.870793, 13.483263>,  <9.268709, 13.797358, 13.640688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.103106, 13.870793, 13.483263>,  <8.827099, 13.993186, 13.220888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.103106, 13.870793, 13.483263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234336, -0.762994, -0.602433,
		0.684809, 0.569399, -0.454776,
		0.690017, -0.305981, 0.655936,
		9.310110, 13.778999, 13.680044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.405972, 13.827060, 12.844433>,  <8.827099, 13.993186, 13.220888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.405972, 13.827060, 12.844433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.485211, 13.635247, 13.186382>,  <9.532755, 13.520160, 13.391552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.485211, 13.635247, 13.186382>,  <9.405972, 13.827060, 12.844433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.485211, 13.635247, 13.186382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263115, -0.814132, -0.517649,
		0.944208, 0.327474, -0.035106,
		0.198098, -0.479531, 0.854873,
		9.544641, 13.491388, 13.442844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.062827, 13.482176, 12.707915>,  <9.405972, 13.827060, 12.844433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.062827, 13.482176, 12.707915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.901421, 13.297229, 13.023736>,  <9.804577, 13.186260, 13.213228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.901421, 13.297229, 13.023736>,  <10.062827, 13.482176, 12.707915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.901421, 13.297229, 13.023736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234537, -0.886361, -0.399195,
		0.884402, 0.024097, 0.466104,
		-0.403516, -0.462368, 0.789551,
		9.780366, 13.158519, 13.260601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.605332, 12.996927, 13.022380>,  <10.062827, 13.482176, 12.707915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.605332, 12.996927, 13.022380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.240263, 12.878382, 13.134947>,  <10.021221, 12.807255, 13.202487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.240263, 12.878382, 13.134947>,  <10.605332, 12.996927, 13.022380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.240263, 12.878382, 13.134947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227927, -0.940658, -0.251420,
		0.339229, -0.165322, 0.926063,
		-0.912674, -0.296363, 0.281417,
		9.966461, 12.789473, 13.219372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.738793, 12.388459, 13.387632>,  <10.605332, 12.996927, 13.022380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.738793, 12.388459, 13.387632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.345542, 12.367668, 13.317480>,  <10.109591, 12.355193, 13.275389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.345542, 12.367668, 13.317480>,  <10.738793, 12.388459, 13.387632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.345542, 12.367668, 13.317480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064120, -0.995869, -0.064291,
		-0.171314, -0.074452, 0.982399,
		-0.983128, -0.051977, -0.175380,
		10.050604, 12.352075, 13.264866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.575646, 11.825533, 13.697193>,  <10.738793, 12.388459, 13.387632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.575646, 11.825533, 13.697193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.287457, 11.901544, 13.430417>,  <10.114544, 11.947150, 13.270351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.287457, 11.901544, 13.430417>,  <10.575646, 11.825533, 13.697193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.287457, 11.901544, 13.430417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000872, -0.961475, -0.274889,
		-0.693483, -0.198632, 0.692551,
		-0.720473, 0.190027, -0.666940,
		10.071316, 11.958551, 13.230335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.091103, 11.182652, 13.784588>,  <10.575646, 11.825533, 13.697193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.091103, 11.182652, 13.784588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.052902, 11.352157, 13.424298>,  <10.029983, 11.453860, 13.208124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.052902, 11.352157, 13.424298>,  <10.091103, 11.182652, 13.784588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.052902, 11.352157, 13.424298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130731, -0.902362, -0.410673,
		-0.986808, 0.078534, 0.141575,
		-0.095500, 0.423764, -0.900724,
		10.024252, 11.479286, 13.154081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.791460, 10.657052, 13.473272>,  <10.091103, 11.182652, 13.784588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.791460, 10.657052, 13.473272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.872155, 10.892129, 13.159861>,  <9.920572, 11.033175, 12.971813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.872155, 10.892129, 13.159861>,  <9.791460, 10.657052, 13.473272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.872155, 10.892129, 13.159861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093770, -0.807892, -0.581823,
		-0.974941, 0.043904, -0.218090,
		0.201738, 0.587693, -0.783530,
		9.932676, 11.068437, 12.924802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.263765, 10.555828, 12.965198>,  <9.791460, 10.657052, 13.473272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.263765, 10.555828, 12.965198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.582978, 10.670420, 12.753132>,  <9.774506, 10.739175, 12.625893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.582978, 10.670420, 12.753132>,  <9.263765, 10.555828, 12.965198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.582978, 10.670420, 12.753132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071493, -0.828551, -0.555330,
		-0.598359, 0.481074, -0.640729,
		0.798032, 0.286479, -0.530165,
		9.822388, 10.756364, 12.594083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.166782, 10.515649, 12.165145>,  <9.263765, 10.555828, 12.965198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.166782, 10.515649, 12.165145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.562270, 10.507814, 12.224542>,  <9.799562, 10.503114, 12.260180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.562270, 10.507814, 12.224542>,  <9.166782, 10.515649, 12.165145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.562270, 10.507814, 12.224542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096970, -0.671884, -0.734281,
		0.114152, 0.740398, -0.662405,
		0.988719, -0.019586, 0.148493,
		9.858886, 10.501939, 12.269090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.344395, 10.622047, 11.553240>,  <9.166782, 10.515649, 12.165145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.344395, 10.622047, 11.553240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.662926, 10.464815, 11.737131>,  <9.854044, 10.370476, 11.847466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.662926, 10.464815, 11.737131>,  <9.344395, 10.622047, 11.553240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.662926, 10.464815, 11.737131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158455, -0.597937, -0.785725,
		0.583742, 0.698540, -0.413868,
		0.796327, -0.393081, 0.459728,
		9.901824, 10.346890, 11.875050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.735771, 10.630226, 11.028616>,  <9.344395, 10.622047, 11.553240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.735771, 10.630226, 11.028616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.888074, 10.384237, 11.304829>,  <9.979456, 10.236644, 11.470556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.888074, 10.384237, 11.304829>,  <9.735771, 10.630226, 11.028616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.888074, 10.384237, 11.304829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164362, -0.689878, -0.705020,
		0.909950, 0.381939, -0.161598,
		0.380758, -0.614972, 0.690531,
		10.002301, 10.199746, 11.511988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.175580, 10.238667, 10.625628>,  <9.735771, 10.630226, 11.028616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.175580, 10.238667, 10.625628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.130791, 10.026248, 10.961592>,  <10.103917, 9.898796, 11.163170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.130791, 10.026248, 10.961592>,  <10.175580, 10.238667, 10.625628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.130791, 10.026248, 10.961592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078509, -0.837857, -0.540215,
		0.990605, -0.126429, 0.052125,
		-0.111972, -0.531048, 0.839911,
		10.097199, 9.866934, 11.213565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.792902, 9.721282, 10.705673>,  <10.175580, 10.238667, 10.625628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.792902, 9.721282, 10.705673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.471046, 9.600300, 10.910057>,  <10.277933, 9.527711, 11.032687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.471046, 9.600300, 10.910057>,  <10.792902, 9.721282, 10.705673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.471046, 9.600300, 10.910057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044515, -0.827389, -0.559862,
		0.592095, -0.473231, 0.652285,
		-0.804638, -0.302455, 0.510959,
		10.229655, 9.509563, 11.063345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.897392, 8.940892, 10.909236>,  <10.792902, 9.721282, 10.705673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.897392, 8.940892, 10.909236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.507041, 9.004611, 10.968950>,  <10.272830, 9.042842, 11.004779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.507041, 9.004611, 10.968950>,  <10.897392, 8.940892, 10.909236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.507041, 9.004611, 10.968950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205548, -0.900835, -0.382421,
		0.073565, -0.403882, 0.911848,
		-0.975878, 0.159296, 0.149287,
		10.214277, 9.052400, 11.013736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.648302, 8.347186, 11.184713>,  <10.897392, 8.940892, 10.909236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.648302, 8.347186, 11.184713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.326571, 8.537426, 11.042244>,  <10.133532, 8.651570, 10.956762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.326571, 8.537426, 11.042244>,  <10.648302, 8.347186, 11.184713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.326571, 8.537426, 11.042244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312813, -0.848574, -0.426697,
		-0.505175, -0.231790, 0.831307,
		-0.804330, 0.475600, -0.356172,
		10.085272, 8.680106, 10.935392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.186130, 7.834495, 11.316286>,  <10.648302, 8.347186, 11.184713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.186130, 7.834495, 11.316286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.994500, 8.072520, 11.058173>,  <9.879522, 8.215335, 10.903306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.994500, 8.072520, 11.058173>,  <10.186130, 7.834495, 11.316286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.994500, 8.072520, 11.058173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215398, -0.792353, -0.570771,
		-0.850936, -0.134448, 0.507771,
		-0.479073, 0.595063, -0.645282,
		9.850778, 8.251040, 10.864589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.561909, 7.451449, 11.109385>,  <10.186130, 7.834495, 11.316286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.561909, 7.451449, 11.109385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.612626, 7.742368, 10.839581>,  <9.643057, 7.916919, 10.677698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.612626, 7.742368, 10.839581>,  <9.561909, 7.451449, 11.109385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.612626, 7.742368, 10.839581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189107, -0.649802, -0.736204,
		-0.973736, 0.220900, 0.055146,
		0.126793, 0.727297, -0.674509,
		9.650664, 7.960557, 10.637228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.934682, 7.456476, 10.662361>,  <9.561909, 7.451449, 11.109385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.934682, 7.456476, 10.662361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.252798, 7.612358, 10.476611>,  <9.443667, 7.705887, 10.365161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.252798, 7.612358, 10.476611>,  <8.934682, 7.456476, 10.662361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.252798, 7.612358, 10.476611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021771, -0.783871, -0.620542,
		-0.605839, 0.483401, -0.631889,
		0.795290, 0.389705, -0.464376,
		9.491385, 7.729270, 10.337298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.823261, 7.479959, 9.841311>,  <8.934682, 7.456476, 10.662361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.823261, 7.479959, 9.841311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.214954, 7.465807, 9.921164>,  <9.449970, 7.457317, 9.969075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.214954, 7.465807, 9.921164>,  <8.823261, 7.479959, 9.841311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.214954, 7.465807, 9.921164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103102, -0.760932, -0.640588,
		0.174568, 0.647867, -0.741482,
		0.979232, -0.035378, 0.199630,
		9.508724, 7.455194, 9.981052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.966545, 20.667742, 24.720966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.982677, 20.312094, 24.903324>,  <16.992357, 20.098705, 25.012739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.982677, 20.312094, 24.903324>,  <16.966545, 20.667742, 24.720966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.982677, 20.312094, 24.903324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287622, 0.447283, 0.846883,
		-0.956894, 0.096968, 0.273770,
		0.040332, -0.889120, 0.455893,
		16.994778, 20.045357, 25.040092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.635448, 20.840065, 25.369747>,  <16.966545, 20.667742, 24.720966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.635448, 20.840065, 25.369747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.856375, 20.507566, 25.394978>,  <16.988930, 20.308067, 25.410116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.856375, 20.507566, 25.394978>,  <16.635448, 20.840065, 25.369747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.856375, 20.507566, 25.394978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402275, 0.332030, 0.853189,
		-0.730153, -0.445854, 0.517774,
		0.552314, -0.831246, 0.063077,
		17.022070, 20.258192, 25.413900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.578959, 20.754515, 26.091064>,  <16.635448, 20.840065, 25.369747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.578959, 20.754515, 26.091064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.887213, 20.538290, 25.956060>,  <17.072166, 20.408556, 25.875057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.887213, 20.538290, 25.956060>,  <16.578959, 20.754515, 26.091064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.887213, 20.538290, 25.956060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564616, 0.333562, 0.754947,
		-0.295513, -0.772354, 0.562264,
		0.770637, -0.540560, -0.337512,
		17.118404, 20.376122, 25.854807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.870852, 20.546034, 26.703520>,  <16.578959, 20.754515, 26.091064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.870852, 20.546034, 26.703520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.159828, 20.505960, 26.429867>,  <17.333214, 20.481916, 26.265675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.159828, 20.505960, 26.429867>,  <16.870852, 20.546034, 26.703520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.159828, 20.505960, 26.429867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670840, 0.341225, 0.658437,
		0.167480, -0.934628, 0.313722,
		0.722443, -0.100183, -0.684134,
		17.376560, 20.475906, 26.224627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.378878, 19.988770, 26.889605>,  <16.870852, 20.546034, 26.703520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.378878, 19.988770, 26.889605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.584154, 20.238514, 26.654043>,  <17.707319, 20.388361, 26.512707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.584154, 20.238514, 26.654043>,  <17.378878, 19.988770, 26.889605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.584154, 20.238514, 26.654043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622750, 0.201285, 0.756086,
		0.590609, -0.754756, -0.285524,
		0.513189, 0.624361, -0.588906,
		17.738111, 20.425823, 26.477371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.035557, 19.938705, 27.089169>,  <17.378878, 19.988770, 26.889605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.035557, 19.938705, 27.089169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.040449, 20.291639, 26.900984>,  <18.043385, 20.503401, 26.788073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.040449, 20.291639, 26.900984>,  <18.035557, 19.938705, 27.089169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.040449, 20.291639, 26.900984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564830, 0.382146, 0.731390,
		0.825117, -0.274676, -0.493696,
		0.012231, 0.882336, -0.470461,
		18.044119, 20.556339, 26.759846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.726202, 20.217606, 27.288750>,  <18.035557, 19.938705, 27.089169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.726202, 20.217606, 27.288750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.543030, 20.536184, 27.130777>,  <18.433126, 20.727331, 27.035994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.543030, 20.536184, 27.130777>,  <18.726202, 20.217606, 27.288750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.543030, 20.536184, 27.130777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346311, 0.568972, 0.745882,
		0.818760, 0.204794, -0.536369,
		-0.457931, 0.796449, -0.394929,
		18.405651, 20.775120, 27.012299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.223341, 20.673775, 27.024097>,  <18.726202, 20.217606, 27.288750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.223341, 20.673775, 27.024097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.897388, 20.896463, 27.088631>,  <18.701817, 21.030077, 27.127352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.897388, 20.896463, 27.088631>,  <19.223341, 20.673775, 27.024097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.897388, 20.896463, 27.088631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537152, 0.620735, 0.571101,
		0.217799, 0.552040, -0.804870,
		-0.814881, 0.556722, 0.161334,
		18.652924, 21.063480, 27.137032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.384729, 21.402918, 26.845867>,  <19.223341, 20.673775, 27.024097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.384729, 21.402918, 26.845867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.067261, 21.403130, 27.089207>,  <18.876780, 21.403257, 27.235210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.067261, 21.403130, 27.089207>,  <19.384729, 21.402918, 26.845867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.067261, 21.403130, 27.089207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458819, 0.657158, 0.598021,
		-0.399463, 0.753753, -0.521810,
		-0.793671, 0.000529, 0.608347,
		18.829159, 21.403288, 27.271711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.454636, 21.998913, 27.248663>,  <19.384729, 21.402918, 26.845867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.454636, 21.998913, 27.248663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.199621, 21.805212, 27.488344>,  <19.046612, 21.688992, 27.632153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.199621, 21.805212, 27.488344>,  <19.454636, 21.998913, 27.248663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.199621, 21.805212, 27.488344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477025, 0.362621, 0.800596,
		-0.604974, 0.796245, -0.000183,
		-0.637537, -0.484252, 0.599205,
		19.008360, 21.659937, 27.668106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.201433, 22.461294, 27.823450>,  <19.454636, 21.998913, 27.248663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.201433, 22.461294, 27.823450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.153913, 22.085312, 27.951431>,  <19.125401, 21.859722, 28.028219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.153913, 22.085312, 27.951431>,  <19.201433, 22.461294, 27.823450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.153913, 22.085312, 27.951431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487803, 0.225416, 0.843348,
		-0.864832, 0.256264, 0.431734,
		-0.118800, -0.939955, 0.319953,
		19.118273, 21.803326, 28.047417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.097788, 22.576548, 28.509708>,  <19.201433, 22.461294, 27.823450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.097788, 22.576548, 28.509708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.160833, 22.181616, 28.517029>,  <19.198660, 21.944656, 28.521421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.160833, 22.181616, 28.517029>,  <19.097788, 22.576548, 28.509708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.160833, 22.181616, 28.517029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372628, 0.076627, 0.924812,
		-0.914498, -0.138943, 0.379985,
		0.157613, -0.987331, 0.018301,
		19.208117, 21.885416, 28.522518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.762739, 22.150127, 29.029285>,  <19.097788, 22.576548, 28.509708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.762739, 22.150127, 29.029285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.122601, 22.008505, 28.927099>,  <19.338518, 21.923531, 28.865788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.122601, 22.008505, 28.927099>,  <18.762739, 22.150127, 29.029285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.122601, 22.008505, 28.927099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332644, 0.176868, 0.926318,
		-0.282786, -0.918347, 0.276895,
		0.899656, -0.354058, -0.255467,
		19.392498, 21.902288, 28.850460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.594963, 22.585091, 29.763256>,  <18.762739, 22.150127, 29.029285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.594963, 22.585091, 29.763256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.488325, 22.202900, 29.813837>,  <18.424343, 21.973585, 29.844187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.488325, 22.202900, 29.813837>,  <18.594963, 22.585091, 29.763256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.488325, 22.202900, 29.813837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686206, 0.096035, -0.721040,
		0.676794, -0.278997, -0.681257,
		-0.266593, -0.955478, 0.126454,
		18.408348, 21.916256, 29.851772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.544424, 23.313511, 29.433334>,  <18.594963, 22.585091, 29.763256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.544424, 23.313511, 29.433334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.335983, 23.610989, 29.600843>,  <18.210918, 23.789476, 29.701349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.335983, 23.610989, 29.600843>,  <18.544424, 23.313511, 29.433334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.335983, 23.610989, 29.600843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487211, 0.143657, -0.861387,
		-0.700770, -0.652900, 0.287477,
		-0.521102, 0.743696, 0.418771,
		18.179653, 23.834097, 29.726475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.907768, 23.158401, 29.287975>,  <18.544424, 23.313511, 29.433334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.907768, 23.158401, 29.287975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.901453, 23.552464, 29.356346>,  <17.897663, 23.788900, 29.397369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.901453, 23.552464, 29.356346>,  <17.907768, 23.158401, 29.287975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.901453, 23.552464, 29.356346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346764, 0.154944, -0.925066,
		-0.937819, -0.073878, 0.339171,
		-0.015789, 0.985157, 0.170928,
		17.896717, 23.848011, 29.407625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.144276, 23.343790, 29.163595>,  <17.907768, 23.158401, 29.287975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.144276, 23.343790, 29.163595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.358606, 23.678869, 29.121355>,  <17.487204, 23.879917, 29.096010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.358606, 23.678869, 29.121355>,  <17.144276, 23.343790, 29.163595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.358606, 23.678869, 29.121355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492342, 0.208390, -0.845088,
		-0.685923, 0.504811, 0.524095,
		0.535825, 0.837699, -0.105600,
		17.519354, 23.930180, 29.089676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.625801, 23.764879, 28.932697>,  <17.144276, 23.343790, 29.163595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.625801, 23.764879, 28.932697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.962702, 23.956844, 28.834475>,  <17.164843, 24.072023, 28.775541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.962702, 23.956844, 28.834475>,  <16.625801, 23.764879, 28.932697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.962702, 23.956844, 28.834475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401736, 0.255020, -0.879530,
		-0.359476, 0.839433, 0.407589,
		0.842250, 0.479913, -0.245557,
		17.215378, 24.100819, 28.760807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.374695, 24.306372, 28.577385>,  <16.625801, 23.764879, 28.932697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.374695, 24.306372, 28.577385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.751198, 24.280241, 28.444860>,  <16.977098, 24.264563, 28.365345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.751198, 24.280241, 28.444860>,  <16.374695, 24.306372, 28.577385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.751198, 24.280241, 28.444860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320040, 0.140488, -0.936930,
		0.107753, 0.987925, 0.111328,
		0.941256, -0.065328, -0.331313,
		17.033575, 24.260643, 28.345467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.371805, 24.806164, 28.136309>,  <16.374695, 24.306372, 28.577385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.371805, 24.806164, 28.136309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.693842, 24.581715, 28.059402>,  <16.887064, 24.447044, 28.013260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.693842, 24.581715, 28.059402>,  <16.371805, 24.806164, 28.136309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.693842, 24.581715, 28.059402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187618, 0.066591, -0.979982,
		0.562693, 0.825050, -0.051664,
		0.805094, -0.561122, -0.192264,
		16.935369, 24.413378, 28.001722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.693148, 25.134964, 27.563223>,  <16.371805, 24.806164, 28.136309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.693148, 25.134964, 27.563223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.846889, 24.765718, 27.567793>,  <16.939135, 24.544170, 27.570536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.846889, 24.765718, 27.567793>,  <16.693148, 25.134964, 27.563223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.846889, 24.765718, 27.567793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125867, -0.064660, -0.989938,
		0.914565, 0.379049, -0.141042,
		0.384355, -0.923115, 0.011426,
		16.962196, 24.488785, 27.571220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.124466, 25.042755, 27.043976>,  <16.693148, 25.134964, 27.563223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.124466, 25.042755, 27.043976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.022057, 24.664055, 27.122072>,  <16.960611, 24.436834, 27.168930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.022057, 24.664055, 27.122072>,  <17.124466, 25.042755, 27.043976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.022057, 24.664055, 27.122072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042899, -0.190644, -0.980721,
		0.965718, -0.259464, 0.008195,
		-0.256024, -0.946749, 0.195239,
		16.945250, 24.380030, 27.180643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516376, 24.656298, 26.564310>,  <17.124466, 25.042755, 27.043976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.516376, 24.656298, 26.564310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.242249, 24.388374, 26.678638>,  <17.077772, 24.227621, 26.747234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.242249, 24.388374, 26.678638>,  <17.516376, 24.656298, 26.564310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.242249, 24.388374, 26.678638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012625, -0.381492, -0.924286,
		0.728131, -0.637042, 0.252988,
		-0.685322, -0.669807, 0.285819,
		17.036652, 24.187433, 26.764383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.631756, 24.089209, 25.994953>,  <17.516376, 24.656298, 26.564310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.631756, 24.089209, 25.994953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.295504, 23.987095, 26.186022>,  <17.093752, 23.925827, 26.300663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.295504, 23.987095, 26.186022>,  <17.631756, 24.089209, 25.994953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.295504, 23.987095, 26.186022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283894, -0.543390, -0.790020,
		0.461241, -0.799723, 0.384317,
		-0.840631, -0.255284, 0.477670,
		17.043314, 23.910509, 26.329323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.580252, 23.278152, 26.109848>,  <17.631756, 24.089209, 25.994953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.580252, 23.278152, 26.109848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.213459, 23.433838, 26.074844>,  <16.993383, 23.527250, 26.053843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.213459, 23.433838, 26.074844>,  <17.580252, 23.278152, 26.109848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.213459, 23.433838, 26.074844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090012, -0.415563, -0.905099,
		-0.388637, -0.822085, 0.416098,
		-0.916984, 0.389209, -0.087506,
		16.938364, 23.550602, 26.048592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.076204, 22.740030, 25.986536>,  <17.580252, 23.278152, 26.109848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.076204, 22.740030, 25.986536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.879143, 23.064705, 25.861027>,  <16.760906, 23.259510, 25.785721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.879143, 23.064705, 25.861027>,  <17.076204, 22.740030, 25.986536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.879143, 23.064705, 25.861027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199129, -0.456149, -0.867338,
		-0.847136, -0.364815, 0.386355,
		-0.492654, 0.811688, -0.313775,
		16.731346, 23.308212, 25.766893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.326841, 22.519966, 25.936239>,  <17.076204, 22.740030, 25.986536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.326841, 22.519966, 25.936239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.378981, 22.845140, 25.709208>,  <16.410263, 23.040245, 25.572989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.378981, 22.845140, 25.709208>,  <16.326841, 22.519966, 25.936239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.378981, 22.845140, 25.709208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291329, -0.515788, -0.805661,
		-0.947701, 0.270367, 0.169600,
		0.130346, 0.812936, -0.567579,
		16.418085, 23.089022, 25.538935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.914165, 22.364939, 25.494577>,  <16.326841, 22.519966, 25.936239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.914165, 22.364939, 25.494577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.092136, 22.675735, 25.316444>,  <16.198919, 22.862213, 25.209564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.092136, 22.675735, 25.316444>,  <15.914165, 22.364939, 25.494577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.092136, 22.675735, 25.316444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175189, -0.412145, -0.894117,
		-0.878263, 0.475837, -0.047256,
		0.444930, 0.776991, -0.445333,
		16.225616, 22.908833, 25.182844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.156073, 22.411980, 25.713436>,  <15.914165, 22.364939, 25.494577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.156073, 22.411980, 25.713436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.990547, 22.064442, 25.822151>,  <14.891232, 21.855919, 25.887381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.990547, 22.064442, 25.822151>,  <15.156073, 22.411980, 25.713436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.990547, 22.064442, 25.822151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531710, 0.011664, 0.846846,
		-0.738947, 0.494949, 0.457146,
		-0.413814, -0.868844, 0.271788,
		14.866403, 21.803789, 25.903688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.850984, 22.520428, 26.369448>,  <15.156073, 22.411980, 25.713436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.850984, 22.520428, 26.369448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.908909, 22.125677, 26.340868>,  <14.943664, 21.888826, 26.323721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.908909, 22.125677, 26.340868>,  <14.850984, 22.520428, 26.369448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.908909, 22.125677, 26.340868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433463, -0.001639, 0.901170,
		-0.889460, -0.161471, 0.427537,
		0.144812, -0.986876, -0.071450,
		14.952353, 21.829615, 26.319433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.659306, 22.311655, 27.033970>,  <14.850984, 22.520428, 26.369448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.659306, 22.311655, 27.033970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.848807, 21.989491, 26.891495>,  <14.962508, 21.796192, 26.806009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.848807, 21.989491, 26.891495>,  <14.659306, 22.311655, 27.033970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.848807, 21.989491, 26.891495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345874, -0.201792, 0.916325,
		-0.809893, -0.557310, 0.182970,
		0.473755, -0.805410, -0.356189,
		14.990934, 21.747868, 26.784637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.579578, 21.885223, 27.517582>,  <14.659306, 22.311655, 27.033970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.579578, 21.885223, 27.517582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.895728, 21.721941, 27.334858>,  <15.085418, 21.623972, 27.225224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.895728, 21.721941, 27.334858>,  <14.579578, 21.885223, 27.517582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.895728, 21.721941, 27.334858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390933, -0.238043, 0.889105,
		-0.471681, -0.881306, -0.028561,
		0.790373, -0.408208, -0.456812,
		15.132840, 21.599480, 27.197815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.645541, 21.231359, 27.824030>,  <14.579578, 21.885223, 27.517582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.645541, 21.231359, 27.824030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.997278, 21.343115, 27.669785>,  <15.208321, 21.410168, 27.577238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.997278, 21.343115, 27.669785>,  <14.645541, 21.231359, 27.824030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.997278, 21.343115, 27.669785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442455, -0.180016, 0.878537,
		0.176037, -0.943152, -0.281913,
		0.879343, 0.279389, -0.385613,
		15.261082, 21.426931, 27.554100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.162115, 20.694397, 27.957129>,  <14.645541, 21.231359, 27.824030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.162115, 20.694397, 27.957129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.372554, 21.023945, 27.872789>,  <15.498817, 21.221674, 27.822186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.372554, 21.023945, 27.872789>,  <15.162115, 20.694397, 27.957129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.372554, 21.023945, 27.872789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382656, -0.007913, 0.923857,
		0.759471, -0.566721, -0.319423,
		0.526097, 0.823872, -0.210849,
		15.530383, 21.271107, 27.809534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.795238, 20.524607, 28.037018>,  <15.162115, 20.694397, 27.957129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.795238, 20.524607, 28.037018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.837682, 20.920752, 28.072617>,  <15.863148, 21.158440, 28.093977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.837682, 20.920752, 28.072617>,  <15.795238, 20.524607, 28.037018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.837682, 20.920752, 28.072617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512679, -0.131179, 0.848500,
		0.851999, -0.044406, -0.521658,
		0.106109, 0.990364, 0.088999,
		15.869514, 21.217861, 28.099316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.794023, 19.989971, 28.583929>,  <15.795238, 20.524607, 28.037018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.794023, 19.989971, 28.583929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.626093, 19.784212, 28.883032>,  <15.525335, 19.660757, 29.062494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.626093, 19.784212, 28.883032>,  <15.794023, 19.989971, 28.583929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.626093, 19.784212, 28.883032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520879, -0.538139, -0.662640,
		0.743258, -0.667684, -0.042014,
		-0.419825, -0.514397, 0.747759,
		15.500146, 19.629892, 29.107359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.027477, 19.316347, 28.629925>,  <15.794023, 19.989971, 28.583929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.027477, 19.316347, 28.629925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.658040, 19.305891, 28.782917>,  <15.436378, 19.299618, 28.874712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.658040, 19.305891, 28.782917>,  <16.027477, 19.316347, 28.629925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.658040, 19.305891, 28.782917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283229, -0.625848, -0.726702,
		0.258372, -0.779507, 0.570625,
		-0.923594, -0.026142, 0.382481,
		15.380962, 19.298048, 28.897661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.927485, 18.618040, 28.554922>,  <16.027477, 19.316347, 28.629925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.927485, 18.618040, 28.554922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.581960, 18.809664, 28.617319>,  <15.374645, 18.924637, 28.654757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.581960, 18.809664, 28.617319>,  <15.927485, 18.618040, 28.554922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.581960, 18.809664, 28.617319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431776, -0.544369, -0.719189,
		-0.259615, -0.688597, 0.677077,
		-0.863811, 0.479057, 0.155993,
		15.322817, 18.953381, 28.664118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.457558, 18.152117, 28.521887>,  <15.927485, 18.618040, 28.554922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.457558, 18.152117, 28.521887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.252480, 18.489439, 28.457418>,  <15.129433, 18.691833, 28.418737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.252480, 18.489439, 28.457418>,  <15.457558, 18.152117, 28.521887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.252480, 18.489439, 28.457418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558927, -0.470324, -0.682932,
		-0.651724, -0.260054, 0.712480,
		-0.512695, 0.843307, -0.161171,
		15.098671, 18.742432, 28.409067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.776220, 17.884043, 28.445454>,  <15.457558, 18.152117, 28.521887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.776220, 17.884043, 28.445454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.752313, 18.254745, 28.297104>,  <14.737968, 18.477167, 28.208094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.752313, 18.254745, 28.297104>,  <14.776220, 17.884043, 28.445454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.752313, 18.254745, 28.297104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643868, -0.319710, -0.695139,
		-0.762798, 0.197248, 0.615818,
		-0.059769, 0.926757, -0.370877,
		14.734382, 18.532772, 28.185841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.979038, 17.952221, 28.360214>,  <14.776220, 17.884043, 28.445454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.979038, 17.952221, 28.360214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.177192, 18.224182, 28.143946>,  <14.296083, 18.387360, 28.014185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.177192, 18.224182, 28.143946>,  <13.979038, 17.952221, 28.360214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.177192, 18.224182, 28.143946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555277, -0.230798, -0.798999,
		-0.668030, 0.696032, 0.263202,
		0.495382, 0.679905, -0.540671,
		14.325807, 18.428154, 27.981745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.500769, 18.298809, 28.073198>,  <13.979038, 17.952221, 28.360214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.500769, 18.298809, 28.073198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.830219, 18.354036, 27.853170>,  <14.027890, 18.387173, 27.721153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.830219, 18.354036, 27.853170>,  <13.500769, 18.298809, 28.073198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.830219, 18.354036, 27.853170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520851, -0.199611, -0.829982,
		-0.224394, 0.970100, -0.092492,
		0.823627, 0.138068, -0.550069,
		14.077308, 18.395456, 27.688150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<22.791538, 21.111633, 24.637808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.878624, 20.725679, 24.696590>,  <22.930876, 20.494106, 24.731859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.878624, 20.725679, 24.696590>,  <22.791538, 21.111633, 24.637808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.878624, 20.725679, 24.696590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351601, 0.217993, 0.910415,
		-0.910482, -0.146540, 0.386715,
		0.217713, -0.964886, 0.146955,
		22.943937, 20.436214, 24.740677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.524578, 20.966152, 25.258562>,  <22.791538, 21.111633, 24.637808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.524578, 20.966152, 25.258562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.784094, 20.664089, 25.221020>,  <22.939804, 20.482851, 25.198494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.784094, 20.664089, 25.221020>,  <22.524578, 20.966152, 25.258562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.784094, 20.664089, 25.221020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306980, 0.146874, 0.940314,
		-0.696300, -0.638879, 0.327109,
		0.648790, -0.755157, -0.093854,
		22.978731, 20.437542, 25.192863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.420301, 20.384453, 25.583389>,  <22.524578, 20.966152, 25.258562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.420301, 20.384453, 25.583389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.818012, 20.387033, 25.540728>,  <23.056639, 20.388582, 25.515131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.818012, 20.387033, 25.540728>,  <22.420301, 20.384453, 25.583389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.818012, 20.387033, 25.540728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106487, -0.141933, 0.984132,
		-0.008788, -0.989855, -0.141807,
		0.994275, 0.006452, -0.106654,
		23.116295, 20.388968, 25.508732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.964550, 20.267038, 26.015480>,  <22.420301, 20.384453, 25.583389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.964550, 20.267038, 26.015480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.020596, 20.094706, 26.372076>,  <23.054222, 19.991306, 26.586033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.020596, 20.094706, 26.372076>,  <22.964550, 20.267038, 26.015480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.020596, 20.094706, 26.372076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914192, -0.402105, -0.050646,
		0.380292, -0.807895, -0.450203,
		0.140112, -0.430832, 0.891489,
		23.062630, 19.965456, 26.639523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.735769, 19.550642, 26.086058>,  <22.964550, 20.267038, 26.015480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.735769, 19.550642, 26.086058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.671581, 19.690947, 26.455103>,  <22.633068, 19.775129, 26.676531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.671581, 19.690947, 26.455103>,  <22.735769, 19.550642, 26.086058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.671581, 19.690947, 26.455103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985754, -0.104670, -0.131658,
		0.050390, -0.930598, 0.362558,
		-0.160469, 0.350759, 0.922615,
		22.623440, 19.796175, 26.731888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.274290, 19.147354, 26.509655>,  <22.735769, 19.550642, 26.086058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.274290, 19.147354, 26.509655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.253082, 19.509411, 26.678370>,  <22.240358, 19.726645, 26.779598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.253082, 19.509411, 26.678370>,  <22.274290, 19.147354, 26.509655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.253082, 19.509411, 26.678370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989499, -0.104494, 0.099859,
		0.134461, -0.412064, 0.901179,
		-0.053020, 0.905143, 0.421788,
		22.237177, 19.780954, 26.804905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.091198, 18.997494, 27.206106>,  <22.274290, 19.147354, 26.509655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.091198, 18.997494, 27.206106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.991041, 19.340693, 27.026709>,  <21.930946, 19.546612, 26.919069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.991041, 19.340693, 27.026709>,  <22.091198, 18.997494, 27.206106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.991041, 19.340693, 27.026709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950532, -0.305828, -0.054391,
		-0.183829, 0.412689, 0.892129,
		-0.250391, 0.857996, -0.448494,
		21.915924, 19.598091, 26.892160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.473354, 18.950335, 26.659172>,  <22.091198, 18.997494, 27.206106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.473354, 18.950335, 26.659172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.116320, 18.892118, 26.829868>,  <20.902098, 18.857189, 26.932285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.116320, 18.892118, 26.829868>,  <21.473354, 18.950335, 26.659172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.116320, 18.892118, 26.829868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300747, -0.512962, -0.804003,
		0.335914, -0.845984, 0.414094,
		-0.892588, -0.145538, 0.426738,
		20.848543, 18.848457, 26.957890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.348034, 18.180820, 26.655146>,  <21.473354, 18.950335, 26.659172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.348034, 18.180820, 26.655146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.993366, 18.353123, 26.722393>,  <20.780565, 18.456505, 26.762741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.993366, 18.353123, 26.722393>,  <21.348034, 18.180820, 26.655146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.993366, 18.353123, 26.722393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417367, -0.589041, -0.691980,
		-0.199045, -0.683726, 0.702068,
		-0.886671, 0.430755, 0.168119,
		20.727365, 18.482349, 26.772829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.808451, 17.654402, 26.589048>,  <21.348034, 18.180820, 26.655146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.808451, 17.654402, 26.589048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.586880, 17.985310, 26.551542>,  <20.453938, 18.183855, 26.529037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.586880, 17.985310, 26.551542>,  <20.808451, 17.654402, 26.589048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.586880, 17.985310, 26.551542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517989, -0.430609, -0.739096,
		-0.651809, -0.360834, 0.667042,
		-0.553925, 0.827269, -0.093767,
		20.420702, 18.233490, 26.523413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.266026, 17.384872, 26.564850>,  <20.808451, 17.654402, 26.589048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.266026, 17.384872, 26.564850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.187656, 17.746126, 26.412027>,  <20.140635, 17.962877, 26.320333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.187656, 17.746126, 26.412027>,  <20.266026, 17.384872, 26.564850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.187656, 17.746126, 26.412027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551204, -0.423657, -0.718810,
		-0.811041, 0.069758, 0.580815,
		-0.195923, 0.903132, -0.382054,
		20.128880, 18.017065, 26.297411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.678989, 17.346312, 26.328640>,  <20.266026, 17.384872, 26.564850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.678989, 17.346312, 26.328640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.761194, 17.657867, 26.091625>,  <19.810516, 17.844801, 25.949417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.761194, 17.657867, 26.091625>,  <19.678989, 17.346312, 26.328640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.761194, 17.657867, 26.091625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461431, -0.456817, -0.760526,
		-0.863045, 0.429711, 0.265523,
		0.205511, 0.778888, -0.592536,
		19.822847, 17.891535, 25.913864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.124229, 17.106131, 26.691286>,  <19.678989, 17.346312, 26.328640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.124229, 17.106131, 26.691286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.772301, 16.916729, 26.707811>,  <18.561144, 16.803089, 26.717726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.772301, 16.916729, 26.707811>,  <19.124229, 17.106131, 26.691286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.772301, 16.916729, 26.707811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165619, 0.386886, 0.907133,
		-0.445513, 0.791274, -0.418812,
		-0.879823, -0.473502, 0.041313,
		18.508354, 16.774677, 26.720205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.636000, 17.600517, 27.044563>,  <19.124229, 17.106131, 26.691286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.636000, 17.600517, 27.044563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.466259, 17.238977, 27.066389>,  <18.364414, 17.022053, 27.079485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.466259, 17.238977, 27.066389>,  <18.636000, 17.600517, 27.044563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.466259, 17.238977, 27.066389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309321, 0.201333, 0.929401,
		-0.851026, 0.377515, -0.365016,
		-0.424353, -0.903851, 0.054567,
		18.338953, 16.967821, 27.082760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.888437, 17.715944, 27.149153>,  <18.636000, 17.600517, 27.044563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.888437, 17.715944, 27.149153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.043627, 17.372637, 27.283525>,  <18.136740, 17.166653, 27.364149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.043627, 17.372637, 27.283525>,  <17.888437, 17.715944, 27.149153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.043627, 17.372637, 27.283525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158979, 0.296699, 0.941645,
		-0.907856, -0.418739, -0.021336,
		0.387973, -0.858270, 0.335931,
		18.160019, 17.115156, 27.384304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.566671, 17.642015, 27.713135>,  <17.888437, 17.715944, 27.149153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.566671, 17.642015, 27.713135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.856100, 17.371561, 27.768682>,  <18.029757, 17.209288, 27.802011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.856100, 17.371561, 27.768682>,  <17.566671, 17.642015, 27.713135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.856100, 17.371561, 27.768682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111603, 0.083940, 0.990202,
		-0.681170, -0.731978, -0.014722,
		0.723570, -0.676138, 0.138868,
		18.073172, 17.168720, 27.810343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.374052, 17.122042, 28.241634>,  <17.566671, 17.642015, 27.713135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.374052, 17.122042, 28.241634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.769039, 17.059881, 28.252663>,  <18.006031, 17.022585, 28.259279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.769039, 17.059881, 28.252663>,  <17.374052, 17.122042, 28.241634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.769039, 17.059881, 28.252663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017024, 0.068789, 0.997486,
		-0.156907, -0.985453, 0.065281,
		0.987467, -0.155401, 0.027570,
		18.065279, 17.013262, 28.260933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.502596, 16.717699, 28.805544>,  <17.374052, 17.122042, 28.241634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.502596, 16.717699, 28.805544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.863941, 16.881487, 28.754519>,  <18.080748, 16.979759, 28.723904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.863941, 16.881487, 28.754519>,  <17.502596, 16.717699, 28.805544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.863941, 16.881487, 28.754519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131049, 0.019670, 0.991181,
		0.408367, -0.912112, -0.035891,
		0.903362, 0.409469, -0.127564,
		18.134951, 17.004328, 28.716249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.850843, 16.453197, 29.442183>,  <17.502596, 16.717699, 28.805544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.850843, 16.453197, 29.442183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.069702, 16.753899, 29.294941>,  <18.201017, 16.934319, 29.206596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.069702, 16.753899, 29.294941>,  <17.850843, 16.453197, 29.442183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.069702, 16.753899, 29.294941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167110, 0.332811, 0.928068,
		0.820185, -0.569304, 0.056472,
		0.547148, 0.751751, -0.368103,
		18.233847, 16.979424, 29.184509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.394621, 16.554300, 29.901253>,  <17.850843, 16.453197, 29.442183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.394621, 16.554300, 29.901253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.406855, 16.907051, 29.713058>,  <18.414194, 17.118702, 29.600142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.406855, 16.907051, 29.713058>,  <18.394621, 16.554300, 29.901253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.406855, 16.907051, 29.713058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280193, 0.444270, 0.850950,
		0.959456, -0.157852, -0.233509,
		0.030583, 0.881877, -0.470487,
		18.416029, 17.171614, 29.571913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.003220, 16.877115, 30.071630>,  <18.394621, 16.554300, 29.901253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.003220, 16.877115, 30.071630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.741236, 17.158854, 29.962139>,  <18.584045, 17.327896, 29.896444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.741236, 17.158854, 29.962139>,  <19.003220, 16.877115, 30.071630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.741236, 17.158854, 29.962139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124144, 0.457606, 0.880446,
		0.745397, 0.542674, -0.387154,
		-0.654959, 0.704345, -0.273729,
		18.544748, 17.370157, 29.880020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.238604, 17.437126, 30.252594>,  <19.003220, 16.877115, 30.071630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.238604, 17.437126, 30.252594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.856077, 17.545382, 30.208387>,  <18.626562, 17.610334, 30.181864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.856077, 17.545382, 30.208387>,  <19.238604, 17.437126, 30.252594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.856077, 17.545382, 30.208387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032685, 0.474663, 0.879560,
		0.290500, 0.837526, -0.462774,
		-0.956317, 0.270638, -0.110515,
		18.569181, 17.626574, 30.175234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.159676, 18.065767, 30.649698>,  <19.238604, 17.437126, 30.252594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.159676, 18.065767, 30.649698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.782310, 17.947140, 30.590338>,  <18.555891, 17.875963, 30.554722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.782310, 17.947140, 30.590338>,  <19.159676, 18.065767, 30.649698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.782310, 17.947140, 30.590338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252618, 0.352764, 0.900967,
		-0.214849, 0.887471, -0.407721,
		-0.943411, -0.296569, -0.148400,
		18.499287, 17.858170, 30.545818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.742756, 18.633692, 30.586952>,  <19.159676, 18.065767, 30.649698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.742756, 18.633692, 30.586952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.525221, 18.327766, 30.725113>,  <18.394699, 18.144211, 30.808010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.525221, 18.327766, 30.725113>,  <18.742756, 18.633692, 30.586952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.525221, 18.327766, 30.725113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164599, 0.500811, 0.849762,
		-0.822890, 0.405280, -0.398247,
		-0.543838, -0.764811, 0.345404,
		18.362070, 18.098324, 30.828733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.310331, 18.937096, 31.007788>,  <18.742756, 18.633692, 30.586952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.310331, 18.937096, 31.007788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.255859, 18.561100, 31.132929>,  <18.223177, 18.335503, 31.208014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.255859, 18.561100, 31.132929>,  <18.310331, 18.937096, 31.007788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.255859, 18.561100, 31.132929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240470, 0.337715, 0.910013,
		-0.961057, 0.048692, -0.272028,
		-0.136179, -0.939988, 0.312854,
		18.215006, 18.279104, 31.226786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643419, 18.868797, 31.124603>,  <18.310331, 18.937096, 31.007788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.643419, 18.868797, 31.124603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.888247, 18.648621, 31.351721>,  <18.035143, 18.516516, 31.487991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.888247, 18.648621, 31.351721>,  <17.643419, 18.868797, 31.124603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.888247, 18.648621, 31.351721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177624, 0.603958, 0.776971,
		-0.770600, -0.576412, 0.271891,
		0.612066, -0.550440, 0.567795,
		18.071867, 18.483488, 31.522058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.019884, 18.486637, 31.362539>,  <17.643419, 18.868797, 31.124603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.019884, 18.486637, 31.362539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.067215, 18.882538, 31.394526>,  <17.095613, 19.120077, 31.413717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.067215, 18.882538, 31.394526>,  <17.019884, 18.486637, 31.362539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.067215, 18.882538, 31.394526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624216, 0.136772, -0.769186,
		-0.772239, 0.041099, 0.634001,
		0.118327, 0.989750, 0.079966,
		17.102713, 19.179462, 31.418516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.367670, 18.764299, 31.340607>,  <17.019884, 18.486637, 31.362539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.367670, 18.764299, 31.340607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.582432, 19.078148, 31.216604>,  <16.711288, 19.266457, 31.142202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.582432, 19.078148, 31.216604>,  <16.367670, 18.764299, 31.340607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.582432, 19.078148, 31.216604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712474, 0.224923, -0.664673,
		-0.451787, 0.577739, 0.679784,
		0.536906, 0.784619, -0.310006,
		16.743504, 19.313534, 31.123602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.958757, 19.462627, 31.298508>,  <16.367670, 18.764299, 31.340607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.958757, 19.462627, 31.298508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.278391, 19.526537, 31.066668>,  <16.470171, 19.564882, 30.927563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.278391, 19.526537, 31.066668>,  <15.958757, 19.462627, 31.298508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.278391, 19.526537, 31.066668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598664, 0.300231, -0.742605,
		0.055366, 0.940391, 0.335560,
		0.799084, 0.159773, -0.579601,
		16.518116, 19.574469, 30.892788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.759900, 20.046988, 30.979740>,  <15.958757, 19.462627, 31.298508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.759900, 20.046988, 30.979740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.057859, 19.899960, 30.757023>,  <16.236635, 19.811743, 30.623392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.057859, 19.899960, 30.757023>,  <15.759900, 20.046988, 30.979740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.057859, 19.899960, 30.757023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529575, 0.181858, -0.828540,
		0.405803, 0.912042, -0.059189,
		0.744899, -0.367569, -0.556793,
		16.281328, 19.789688, 30.589985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.022552, 20.560020, 30.517776>,  <15.759900, 20.046988, 30.979740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.022552, 20.560020, 30.517776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.072020, 20.193426, 30.365589>,  <16.101700, 19.973469, 30.274277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.072020, 20.193426, 30.365589>,  <16.022552, 20.560020, 30.517776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.072020, 20.193426, 30.365589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753912, 0.162528, -0.636554,
		0.645231, 0.365561, -0.670851,
		0.123667, -0.916487, -0.380469,
		16.109119, 19.918480, 30.251448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.787190, 20.659418, 29.806107>,  <16.022552, 20.560020, 30.517776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.787190, 20.659418, 29.806107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.840712, 20.263565, 29.826986>,  <15.872825, 20.026052, 29.839514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.840712, 20.263565, 29.826986>,  <15.787190, 20.659418, 29.806107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.840712, 20.263565, 29.826986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714532, -0.132840, -0.686875,
		0.686688, 0.054606, -0.724899,
		0.133803, -0.989632, 0.052201,
		15.880853, 19.966675, 29.842648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.746979, 20.448248, 29.120026>,  <15.787190, 20.659418, 29.806107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.746979, 20.448248, 29.120026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.688731, 20.108807, 29.323462>,  <15.653783, 19.905142, 29.445524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.688731, 20.108807, 29.323462>,  <15.746979, 20.448248, 29.120026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.688731, 20.108807, 29.323462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697472, -0.276534, -0.661106,
		0.701661, -0.450998, -0.551609,
		-0.145619, -0.848604, 0.508592,
		15.645045, 19.854225, 29.476040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.324335, 20.628620, 28.537609>,  <15.746979, 20.448248, 29.120026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.324335, 20.628620, 28.537609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.206064, 21.009947, 28.513073>,  <16.135101, 21.238743, 28.498352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.206064, 21.009947, 28.513073>,  <16.324335, 20.628620, 28.537609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.206064, 21.009947, 28.513073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532635, 0.217824, 0.817834,
		0.793015, 0.209144, -0.572176,
		-0.295679, 0.953316, -0.061340,
		16.117361, 21.295942, 28.494671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.852015, 21.148602, 28.718073>,  <16.324335, 20.628620, 28.537609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.852015, 21.148602, 28.718073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.520887, 21.366522, 28.771608>,  <16.322210, 21.497274, 28.803730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.520887, 21.366522, 28.771608>,  <16.852015, 21.148602, 28.718073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.520887, 21.366522, 28.771608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375707, 0.361225, 0.853441,
		0.416609, 0.756777, -0.503713,
		-0.827817, 0.544799, 0.133836,
		16.272543, 21.529961, 28.811760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.041536, 21.826468, 28.709471>,  <16.852015, 21.148602, 28.718073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.041536, 21.826468, 28.709471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.693745, 21.804222, 28.905804>,  <16.485069, 21.790874, 29.023603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.693745, 21.804222, 28.905804>,  <17.041536, 21.826468, 28.709471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.693745, 21.804222, 28.905804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322632, 0.688488, 0.649533,
		-0.374055, 0.723112, -0.580682,
		-0.869478, -0.055615, 0.490831,
		16.432901, 21.787539, 29.053053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.743956, 22.590277, 28.856871>,  <17.041536, 21.826468, 28.709471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.743956, 22.590277, 28.856871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.543688, 22.377121, 29.129738>,  <16.423527, 22.249228, 29.293459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.543688, 22.377121, 29.129738>,  <16.743956, 22.590277, 28.856871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.543688, 22.377121, 29.129738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218232, 0.684898, 0.695190,
		-0.837678, 0.496933, -0.226614,
		-0.500670, -0.532891, 0.682170,
		16.393486, 22.217253, 29.334389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.249125, 23.054604, 29.291323>,  <16.743956, 22.590277, 28.856871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.249125, 23.054604, 29.291323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.321701, 22.724255, 29.504869>,  <16.365246, 22.526045, 29.632998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.321701, 22.724255, 29.504869>,  <16.249125, 23.054604, 29.291323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.321701, 22.724255, 29.504869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190892, 0.562130, 0.804717,
		-0.964697, -0.044096, 0.259645,
		0.181439, -0.825873, 0.533867,
		16.376133, 22.476492, 29.665030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.779338, 22.999577, 29.888783>,  <16.249125, 23.054604, 29.291323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.779338, 22.999577, 29.888783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.089390, 22.766575, 29.986649>,  <16.275421, 22.626774, 30.045368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.089390, 22.766575, 29.986649>,  <15.779338, 22.999577, 29.888783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.089390, 22.766575, 29.986649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086383, 0.481325, 0.872275,
		-0.625870, -0.654991, 0.423407,
		0.775129, -0.582506, 0.244667,
		16.321928, 22.591824, 30.060049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.675838, 22.887709, 30.590250>,  <15.779338, 22.999577, 29.888783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.675838, 22.887709, 30.590250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.054066, 22.781805, 30.514570>,  <16.281002, 22.718262, 30.469162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.054066, 22.781805, 30.514570>,  <15.675838, 22.887709, 30.590250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.054066, 22.781805, 30.514570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262294, 0.275971, 0.924685,
		-0.192606, -0.923982, 0.330395,
		0.945571, -0.264760, -0.189201,
		16.337738, 22.702377, 30.457809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.819589, 22.646816, 31.118975>,  <15.675838, 22.887709, 30.590250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.819589, 22.646816, 31.118975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.173990, 22.727133, 30.951796>,  <16.386631, 22.775322, 30.851488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.173990, 22.727133, 30.951796>,  <15.819589, 22.646816, 31.118975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.173990, 22.727133, 30.951796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344895, 0.317064, 0.883469,
		0.309900, -0.926907, 0.211673,
		0.886008, 0.200782, -0.417944,
		16.439791, 22.787371, 30.826412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.335218, 22.417435, 31.590805>,  <15.819589, 22.646816, 31.118975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.335218, 22.417435, 31.590805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.528236, 22.674969, 31.353275>,  <16.644047, 22.829489, 31.210758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.528236, 22.674969, 31.353275>,  <16.335218, 22.417435, 31.590805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.528236, 22.674969, 31.353275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450266, 0.399186, 0.798693,
		0.751272, -0.652785, -0.097272,
		0.482545, 0.643834, -0.593824,
		16.673000, 22.868118, 31.175129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.016872, 16.805241, 17.270479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.238348, 17.129955, 17.196255>,  <14.371234, 17.324783, 17.151720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.238348, 17.129955, 17.196255>,  <14.016872, 16.805241, 17.270479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.238348, 17.129955, 17.196255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185647, 0.337564, 0.922814,
		0.811765, -0.476503, 0.337611,
		0.553689, 0.811785, -0.185561,
		14.404455, 17.373491, 17.140587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.645950, 16.894638, 17.766172>,  <14.016872, 16.805241, 17.270479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.645950, 16.894638, 17.766172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.484338, 17.230431, 17.620829>,  <14.387370, 17.431906, 17.533623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.484338, 17.230431, 17.620829>,  <14.645950, 16.894638, 17.766172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.484338, 17.230431, 17.620829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311704, 0.247103, 0.917486,
		0.860000, 0.483953, 0.161832,
		-0.404031, 0.839482, -0.363358,
		14.363129, 17.482275, 17.511822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.038432, 17.374508, 18.156298>,  <14.645950, 16.894638, 17.766172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.038432, 17.374508, 18.156298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.691084, 17.523664, 18.025526>,  <14.482676, 17.613159, 17.947063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.691084, 17.523664, 18.025526>,  <15.038432, 17.374508, 18.156298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.691084, 17.523664, 18.025526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148005, 0.434330, 0.888511,
		0.473316, 0.819944, -0.321969,
		-0.868370, 0.372893, -0.326931,
		14.430573, 17.635532, 17.927446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.041011, 17.968081, 18.553242>,  <15.038432, 17.374508, 18.156298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.041011, 17.968081, 18.553242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.661078, 17.955664, 18.428753>,  <14.433119, 17.948214, 18.354059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.661078, 17.955664, 18.428753>,  <15.041011, 17.968081, 18.553242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.661078, 17.955664, 18.428753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298516, 0.386910, 0.872461,
		0.093330, 0.921595, -0.376766,
		-0.949830, -0.031044, -0.311221,
		14.376129, 17.946350, 18.335386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.806705, 18.592802, 18.720375>,  <15.041011, 17.968081, 18.553242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.806705, 18.592802, 18.720375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.481675, 18.362387, 18.684824>,  <14.286657, 18.224136, 18.663492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.481675, 18.362387, 18.684824>,  <14.806705, 18.592802, 18.720375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.481675, 18.362387, 18.684824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371315, 0.394066, 0.840736,
		-0.449273, 0.716164, -0.534100,
		-0.812575, -0.576039, -0.088879,
		14.237903, 18.189575, 18.658159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.288668, 19.063211, 18.661892>,  <14.806705, 18.592802, 18.720375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.288668, 19.063211, 18.661892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.106279, 18.728899, 18.784243>,  <13.996846, 18.528311, 18.857653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.106279, 18.728899, 18.784243>,  <14.288668, 19.063211, 18.661892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.106279, 18.728899, 18.784243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307170, 0.470352, 0.827294,
		-0.835307, 0.283265, -0.471194,
		-0.455970, -0.835781, 0.305878,
		13.969488, 18.478165, 18.876005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.581347, 19.228979, 18.894539>,  <14.288668, 19.063211, 18.661892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.581347, 19.228979, 18.894539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.653838, 18.880789, 19.077593>,  <13.697332, 18.671875, 19.187426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.653838, 18.880789, 19.077593>,  <13.581347, 19.228979, 18.894539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.653838, 18.880789, 19.077593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449724, 0.340480, 0.825725,
		-0.874589, -0.355453, -0.329770,
		0.181226, -0.870475, 0.457636,
		13.708206, 18.619646, 19.214884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.989570, 19.036308, 19.187868>,  <13.581347, 19.228979, 18.894539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.989570, 19.036308, 19.187868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.259686, 18.833174, 19.401817>,  <13.421755, 18.711294, 19.530186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.259686, 18.833174, 19.401817>,  <12.989570, 19.036308, 19.187868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.259686, 18.833174, 19.401817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525938, 0.176859, 0.831931,
		-0.517082, -0.843103, -0.147659,
		0.675289, -0.507836, 0.534871,
		13.462273, 18.680822, 19.562279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.678723, 18.857210, 19.752119>,  <12.989570, 19.036308, 19.187868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.678723, 18.857210, 19.752119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.022606, 18.733822, 19.914968>,  <13.228935, 18.659788, 20.012678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.022606, 18.733822, 19.914968>,  <12.678723, 18.857210, 19.752119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.022606, 18.733822, 19.914968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375594, 0.158404, 0.913147,
		-0.346171, -0.937951, 0.020320,
		0.859706, -0.308473, 0.407124,
		13.280518, 18.641279, 20.037106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.442747, 18.377405, 20.253944>,  <12.678723, 18.857210, 19.752119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.442747, 18.377405, 20.253944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.808983, 18.500452, 20.357534>,  <13.028725, 18.574280, 20.419689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.808983, 18.500452, 20.357534>,  <12.442747, 18.377405, 20.253944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.808983, 18.500452, 20.357534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293090, 0.069581, 0.953549,
		0.275311, -0.948962, 0.153868,
		0.915588, 0.307619, 0.258975,
		13.083659, 18.592737, 20.435226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.439320, 18.148600, 20.901224>,  <12.442747, 18.377405, 20.253944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.439320, 18.148600, 20.901224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.737452, 18.412945, 20.866026>,  <12.916331, 18.571552, 20.844908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.737452, 18.412945, 20.866026>,  <12.439320, 18.148600, 20.901224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.737452, 18.412945, 20.866026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189663, 0.336709, 0.922309,
		0.639148, -0.670737, 0.376301,
		0.745331, 0.660862, -0.087993,
		12.961051, 18.611204, 20.839628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.837314, 18.054609, 21.344818>,  <12.439320, 18.148600, 20.901224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.837314, 18.054609, 21.344818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.919106, 18.438589, 21.268208>,  <12.968181, 18.668978, 21.222240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.919106, 18.438589, 21.268208>,  <12.837314, 18.054609, 21.344818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.919106, 18.438589, 21.268208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190660, 0.230972, 0.954097,
		0.960123, -0.158576, 0.230253,
		0.204479, 0.959951, -0.191527,
		12.980450, 18.726574, 21.210749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.336462, 17.486536, 21.563757>,  <12.837314, 18.054609, 21.344818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.336462, 17.486536, 21.563757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.057093, 17.268785, 21.749599>,  <12.889471, 17.138136, 21.861105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.057093, 17.268785, 21.749599>,  <13.336462, 17.486536, 21.563757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.057093, 17.268785, 21.749599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082042, -0.584000, -0.807597,
		0.710967, -0.602162, 0.363217,
		-0.698423, -0.544376, 0.464607,
		12.847566, 17.105473, 21.888981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.506458, 16.771152, 21.574820>,  <13.336462, 17.486536, 21.563757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.506458, 16.771152, 21.574820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.109962, 16.823980, 21.575544>,  <12.872066, 16.855677, 21.575979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.109962, 16.823980, 21.575544>,  <13.506458, 16.771152, 21.574820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.109962, 16.823980, 21.575544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084338, -0.622325, -0.778202,
		-0.101649, -0.771537, 0.628011,
		-0.991239, 0.132069, 0.001811,
		12.812591, 16.863602, 21.576088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.254064, 16.060059, 21.465261>,  <13.506458, 16.771152, 21.574820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.254064, 16.060059, 21.465261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.948659, 16.302223, 21.375349>,  <12.765416, 16.447521, 21.321402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.948659, 16.302223, 21.375349>,  <13.254064, 16.060059, 21.465261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.948659, 16.302223, 21.375349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213373, -0.565018, -0.797011,
		-0.609526, -0.560564, 0.560576,
		-0.763511, 0.605411, -0.224784,
		12.719605, 16.483847, 21.307915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.876552, 15.598671, 21.108641>,  <13.254064, 16.060059, 21.465261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.876552, 15.598671, 21.108641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.722640, 15.950707, 20.997368>,  <12.630293, 16.161930, 20.930605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.722640, 15.950707, 20.997368>,  <12.876552, 15.598671, 21.108641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.722640, 15.950707, 20.997368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265039, -0.394042, -0.880049,
		-0.884138, -0.264895, 0.384877,
		-0.384778, 0.880092, -0.278180,
		12.607206, 16.214735, 20.913914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.311924, 15.443869, 20.875214>,  <12.876552, 15.598671, 21.108641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.311924, 15.443869, 20.875214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.324834, 15.790421, 20.675879>,  <12.332580, 15.998353, 20.556276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.324834, 15.790421, 20.675879>,  <12.311924, 15.443869, 20.875214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.324834, 15.790421, 20.675879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312639, -0.464827, -0.828367,
		-0.949323, 0.182536, 0.255863,
		0.032275, 0.866381, -0.498339,
		12.334517, 16.050335, 20.526377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.647771, 15.599874, 20.453972>,  <12.311924, 15.443869, 20.875214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.647771, 15.599874, 20.453972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.941420, 15.820226, 20.295177>,  <12.117609, 15.952436, 20.199902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.941420, 15.820226, 20.295177>,  <11.647771, 15.599874, 20.453972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.941420, 15.820226, 20.295177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152699, -0.435735, -0.887027,
		-0.661624, 0.711806, -0.235765,
		0.734123, 0.550878, -0.396985,
		12.161656, 15.985489, 20.176083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.332492, 15.769011, 19.790066>,  <11.647771, 15.599874, 20.453972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.332492, 15.769011, 19.790066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.726797, 15.831144, 19.764320>,  <11.963380, 15.868424, 19.748873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.726797, 15.831144, 19.764320>,  <11.332492, 15.769011, 19.790066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.726797, 15.831144, 19.764320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001717, -0.373475, -0.927639,
		-0.168132, 0.914542, -0.367891,
		0.985763, 0.155334, -0.064364,
		12.022526, 15.877745, 19.745010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.422595, 16.113430, 19.173626>,  <11.332492, 15.769011, 19.790066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.422595, 16.113430, 19.173626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.769382, 15.935644, 19.263802>,  <11.977453, 15.828973, 19.317907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.769382, 15.935644, 19.263802>,  <11.422595, 16.113430, 19.173626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.769382, 15.935644, 19.263802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117967, -0.256481, -0.959323,
		0.484206, 0.858295, -0.169928,
		0.866965, -0.444464, 0.225440,
		12.029471, 15.802305, 19.331434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.856066, 16.353962, 18.701130>,  <11.422595, 16.113430, 19.173626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.856066, 16.353962, 18.701130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.038856, 16.023706, 18.833488>,  <12.148529, 15.825553, 18.912903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.038856, 16.023706, 18.833488>,  <11.856066, 16.353962, 18.701130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.038856, 16.023706, 18.833488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232159, -0.248405, -0.940424,
		0.858648, 0.506571, 0.078165,
		0.456975, -0.825640, 0.330897,
		12.175948, 15.776014, 18.932758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.476516, 16.327177, 18.339809>,  <11.856066, 16.353962, 18.701130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.476516, 16.327177, 18.339809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.419701, 15.953625, 18.471073>,  <12.385612, 15.729493, 18.549831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.419701, 15.953625, 18.471073>,  <12.476516, 16.327177, 18.339809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.419701, 15.953625, 18.471073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136878, -0.346864, -0.927874,
		0.980352, -0.086876, 0.177096,
		-0.142039, -0.933883, 0.328158,
		12.377089, 15.673460, 18.569521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.052246, 15.822737, 18.062822>,  <12.476516, 16.327177, 18.339809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.052246, 15.822737, 18.062822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.715901, 15.624620, 18.150127>,  <12.514094, 15.505751, 18.202511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.715901, 15.624620, 18.150127>,  <13.052246, 15.822737, 18.062822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.715901, 15.624620, 18.150127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013879, -0.383390, -0.923482,
		0.541072, -0.779550, 0.315504,
		-0.840862, -0.495292, 0.218261,
		12.463643, 15.476033, 18.215607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.249891, 15.123543, 17.732132>,  <13.052246, 15.822737, 18.062822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.249891, 15.123543, 17.732132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.857696, 15.108777, 17.809361>,  <12.622378, 15.099917, 17.855698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.857696, 15.108777, 17.809361>,  <13.249891, 15.123543, 17.732132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.857696, 15.108777, 17.809361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155129, -0.457917, -0.875355,
		0.120723, -0.888228, 0.443257,
		-0.980490, -0.036913, 0.193071,
		12.563548, 15.097703, 17.867283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.093224, 14.482264, 17.377588>,  <13.249891, 15.123543, 17.732132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.093224, 14.482264, 17.377588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.743224, 14.666465, 17.437342>,  <12.533224, 14.776985, 17.473194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.743224, 14.666465, 17.437342>,  <13.093224, 14.482264, 17.377588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.743224, 14.666465, 17.437342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355016, -0.400553, -0.844702,
		-0.329147, -0.792148, 0.513968,
		-0.875000, 0.460498, 0.149385,
		12.480724, 14.804615, 17.482157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.517920, 14.005391, 17.411383>,  <13.093224, 14.482264, 17.377588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.517920, 14.005391, 17.411383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.390353, 14.354468, 17.263491>,  <12.313812, 14.563914, 17.174755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.390353, 14.354468, 17.263491>,  <12.517920, 14.005391, 17.411383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.390353, 14.354468, 17.263491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620638, -0.487119, -0.614430,
		-0.716310, 0.033514, 0.696977,
		-0.318919, 0.872692, -0.369728,
		12.294678, 14.616276, 17.152573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.129950, 13.595366, 17.634270>,  <12.517920, 14.005391, 17.411383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.129950, 13.595366, 17.634270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.273950, 13.222499, 17.649591>,  <13.360350, 12.998779, 17.658785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.273950, 13.222499, 17.649591>,  <13.129950, 13.595366, 17.634270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.273950, 13.222499, 17.649591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641684, 0.277202, 0.715123,
		-0.677231, -0.232865, 0.697948,
		0.360000, -0.932166, 0.038304,
		13.381949, 12.942849, 17.661083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.143310, 13.296616, 18.356489>,  <13.129950, 13.595366, 17.634270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.143310, 13.296616, 18.356489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.435254, 13.108704, 18.157850>,  <13.610420, 12.995956, 18.038666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.435254, 13.108704, 18.157850>,  <13.143310, 13.296616, 18.356489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.435254, 13.108704, 18.157850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607919, 0.113817, 0.785799,
		-0.312631, -0.875415, 0.368659,
		0.729860, -0.469780, -0.496599,
		13.654212, 12.967770, 18.008871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.357319, 12.812046, 18.694124>,  <13.143310, 13.296616, 18.356489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.357319, 12.812046, 18.694124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.670656, 12.912005, 18.466467>,  <13.858659, 12.971981, 18.329872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.670656, 12.912005, 18.466467>,  <13.357319, 12.812046, 18.694124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.670656, 12.912005, 18.466467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561376, 0.108712, 0.820389,
		0.266889, -0.962149, -0.055130,
		0.783344, 0.249901, -0.569142,
		13.905660, 12.986976, 18.295725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.847874, 12.663066, 19.105961>,  <13.357319, 12.812046, 18.694124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.847874, 12.663066, 19.105961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.040576, 12.866782, 18.820715>,  <14.156198, 12.989012, 18.649567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.040576, 12.866782, 18.820715>,  <13.847874, 12.663066, 19.105961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.040576, 12.866782, 18.820715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571977, 0.433771, 0.696194,
		0.663894, -0.743281, -0.082331,
		0.481754, 0.509290, -0.713117,
		14.185102, 13.019569, 18.606779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.579518, 12.538306, 19.065382>,  <13.847874, 12.663066, 19.105961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.579518, 12.538306, 19.065382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.487803, 12.908435, 18.944580>,  <14.432773, 13.130512, 18.872099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.487803, 12.908435, 18.944580>,  <14.579518, 12.538306, 19.065382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.487803, 12.908435, 18.944580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579509, 0.379065, 0.721442,
		0.782045, -0.009595, -0.623148,
		-0.229291, 0.925320, -0.302006,
		14.419015, 13.186031, 18.853977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.265185, 12.895260, 19.085236>,  <14.579518, 12.538306, 19.065382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.265185, 12.895260, 19.085236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.985290, 13.179336, 19.054266>,  <14.817352, 13.349781, 19.035685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.985290, 13.179336, 19.054266>,  <15.265185, 12.895260, 19.085236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.985290, 13.179336, 19.054266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349530, 0.434860, 0.829895,
		0.623051, 0.553649, -0.552522,
		-0.699740, 0.710190, -0.077423,
		14.775368, 13.392393, 19.031038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.641635, 13.468763, 19.155100>,  <15.265185, 12.895260, 19.085236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.641635, 13.468763, 19.155100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.262678, 13.546568, 19.256775>,  <15.035304, 13.593250, 19.317780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.262678, 13.546568, 19.256775>,  <15.641635, 13.468763, 19.155100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.262678, 13.546568, 19.256775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317903, 0.479531, 0.817916,
		0.037202, 0.855696, -0.516140,
		-0.947393, 0.194511, 0.254189,
		14.978460, 13.604921, 19.333031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.756441, 14.162126, 19.264402>,  <15.641635, 13.468763, 19.155100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.756441, 14.162126, 19.264402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.409779, 14.067856, 19.440296>,  <15.201781, 14.011293, 19.545832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.409779, 14.067856, 19.440296>,  <15.756441, 14.162126, 19.264402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.409779, 14.067856, 19.440296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204248, 0.636546, 0.743702,
		-0.455182, 0.734348, -0.503530,
		-0.866656, -0.235675, 0.439733,
		15.149782, 13.997153, 19.572216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.412801, 14.804926, 19.366554>,  <15.756441, 14.162126, 19.264402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.412801, 14.804926, 19.366554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.255280, 14.536906, 19.618254>,  <15.160767, 14.376095, 19.769274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.255280, 14.536906, 19.618254>,  <15.412801, 14.804926, 19.366554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.255280, 14.536906, 19.618254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167395, 0.620841, 0.765856,
		-0.903824, 0.406929, -0.132326,
		-0.393803, -0.670048, 0.629249,
		15.137138, 14.335892, 19.807028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.844192, 15.059374, 19.857950>,  <15.412801, 14.804926, 19.366554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.844192, 15.059374, 19.857950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.997898, 14.744661, 20.051161>,  <15.090122, 14.555834, 20.167088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.997898, 14.744661, 20.051161>,  <14.844192, 15.059374, 19.857950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.997898, 14.744661, 20.051161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048274, 0.505355, 0.861560,
		-0.921959, -0.354387, 0.156210,
		0.384267, -0.786782, 0.483024,
		15.113178, 14.508627, 20.196068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.845813, 15.291930, 20.497179>,  <14.844192, 15.059374, 19.857950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.845813, 15.291930, 20.497179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.041121, 14.947998, 20.556890>,  <15.158305, 14.741639, 20.592718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.041121, 14.947998, 20.556890>,  <14.845813, 15.291930, 20.497179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.041121, 14.947998, 20.556890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213561, 0.283582, 0.934865,
		-0.846159, -0.424585, 0.322091,
		0.488269, -0.859831, 0.149281,
		15.187601, 14.690049, 20.601675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.554864, 14.947671, 21.200972>,  <14.845813, 15.291930, 20.497179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.554864, 14.947671, 21.200972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.913420, 14.782816, 21.135700>,  <15.128553, 14.683903, 21.096537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.913420, 14.782816, 21.135700>,  <14.554864, 14.947671, 21.200972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.913420, 14.782816, 21.135700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294844, 0.279486, 0.913759,
		-0.330989, -0.867196, 0.372045,
		0.896389, -0.412139, -0.163180,
		15.182337, 14.659174, 21.086746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.669979, 14.666630, 21.869003>,  <14.554864, 14.947671, 21.200972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.669979, 14.666630, 21.869003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.013995, 14.694127, 21.666773>,  <15.220405, 14.710626, 21.545435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.013995, 14.694127, 21.666773>,  <14.669979, 14.666630, 21.869003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.013995, 14.694127, 21.666773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468712, 0.285062, 0.836091,
		0.201597, -0.956041, 0.212944,
		0.860039, 0.068744, -0.505576,
		15.272007, 14.714750, 21.515100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.194860, 14.558141, 22.362736>,  <14.669979, 14.666630, 21.869003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.194860, 14.558141, 22.362736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.421763, 14.676808, 22.055437>,  <15.557905, 14.748009, 21.871058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.421763, 14.676808, 22.055437>,  <15.194860, 14.558141, 22.362736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.421763, 14.676808, 22.055437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755064, 0.185071, 0.628990,
		0.328782, -0.936876, -0.119021,
		0.567258, 0.296669, -0.768249,
		15.591941, 14.765809, 21.824963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.716374, 14.039838, 22.274334>,  <15.194860, 14.558141, 22.362736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.716374, 14.039838, 22.274334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.806773, 14.415852, 22.172150>,  <15.861012, 14.641459, 22.110838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.806773, 14.415852, 22.172150>,  <15.716374, 14.039838, 22.274334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.806773, 14.415852, 22.172150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720389, 0.015247, 0.693402,
		0.655717, -0.340739, -0.673745,
		0.225997, 0.940035, -0.255462,
		15.874572, 14.697862, 22.095510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.400660, 14.103895, 22.401686>,  <15.716374, 14.039838, 22.274334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.400660, 14.103895, 22.401686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.292507, 14.487634, 22.369316>,  <16.227615, 14.717876, 22.349895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.292507, 14.487634, 22.369316>,  <16.400660, 14.103895, 22.401686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.292507, 14.487634, 22.369316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776273, 0.266957, 0.571081,
		0.569467, 0.091593, -0.816895,
		-0.270382, 0.959346, -0.080922,
		16.211393, 14.775437, 22.345039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.980921, 14.450970, 22.068041>,  <16.400660, 14.103895, 22.401686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.980921, 14.450970, 22.068041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.762423, 14.709069, 22.281685>,  <16.631325, 14.863929, 22.409872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.762423, 14.709069, 22.281685>,  <16.980921, 14.450970, 22.068041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.762423, 14.709069, 22.281685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794024, 0.195836, 0.575477,
		0.266727, 0.738447, -0.619317,
		-0.546244, 0.645248, 0.534110,
		16.598549, 14.902643, 22.441917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.493898, 14.887444, 22.346659>,  <16.980921, 14.450970, 22.068041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.493898, 14.887444, 22.346659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.173037, 14.961648, 22.573685>,  <16.980518, 15.006170, 22.709900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.173037, 14.961648, 22.573685>,  <17.493898, 14.887444, 22.346659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.173037, 14.961648, 22.573685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595615, 0.315884, 0.738552,
		-0.042276, 0.930485, -0.363882,
		-0.802157, 0.185511, 0.567565,
		16.932390, 15.017302, 22.743954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.678772, 15.472043, 22.531492>,  <17.493898, 14.887444, 22.346659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.678772, 15.472043, 22.531492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.390991, 15.397615, 22.799154>,  <17.218323, 15.352959, 22.959751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.390991, 15.397615, 22.799154>,  <17.678772, 15.472043, 22.531492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.390991, 15.397615, 22.799154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513346, 0.506500, 0.692773,
		-0.467830, 0.841924, -0.268885,
		-0.719452, -0.186069, 0.669154,
		17.175156, 15.341795, 22.999901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.475634, 16.145620, 22.905754>,  <17.678772, 15.472043, 22.531492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.475634, 16.145620, 22.905754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.379335, 15.846511, 23.153263>,  <17.321556, 15.667046, 23.301767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.379335, 15.846511, 23.153263>,  <17.475634, 16.145620, 22.905754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.379335, 15.846511, 23.153263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349244, 0.528080, 0.774054,
		-0.905577, 0.402452, 0.134022,
		-0.240746, -0.747772, 0.618772,
		17.307112, 15.622179, 23.338894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.082949, 16.461086, 23.508583>,  <17.475634, 16.145620, 22.905754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.082949, 16.461086, 23.508583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.248650, 16.110685, 23.607391>,  <17.348070, 15.900445, 23.666676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.248650, 16.110685, 23.607391>,  <17.082949, 16.461086, 23.508583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.248650, 16.110685, 23.607391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358992, 0.406658, 0.840091,
		-0.836374, -0.259329, 0.482936,
		0.414250, -0.876001, 0.247021,
		17.372925, 15.847885, 23.681498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.811384, 16.291052, 24.187962>,  <17.082949, 16.461086, 23.508583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.811384, 16.291052, 24.187962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.117310, 16.034283, 24.166084>,  <17.300865, 15.880220, 24.152958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.117310, 16.034283, 24.166084>,  <16.811384, 16.291052, 24.187962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.117310, 16.034283, 24.166084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193173, 0.147505, 0.970014,
		-0.614608, -0.752446, 0.236816,
		0.764814, -0.641925, -0.054695,
		17.346754, 15.841705, 24.149675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.790325, 16.043575, 24.795397>,  <16.811384, 16.291052, 24.187962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.790325, 16.043575, 24.795397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.162188, 15.949169, 24.682238>,  <17.385305, 15.892526, 24.614342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.162188, 15.949169, 24.682238>,  <16.790325, 16.043575, 24.795397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.162188, 15.949169, 24.682238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330138, 0.192821, 0.924029,
		-0.163538, -0.952426, 0.257176,
		0.929658, -0.236017, -0.282899,
		17.441086, 15.878365, 24.597368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.055365, 15.575454, 25.331118>,  <16.790325, 16.043575, 24.795397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.055365, 15.575454, 25.331118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.378788, 15.721027, 25.146172>,  <17.572842, 15.808372, 25.035204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.378788, 15.721027, 25.146172>,  <17.055365, 15.575454, 25.331118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.378788, 15.721027, 25.146172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327820, 0.373924, 0.867592,
		0.488638, -0.853072, 0.183034,
		0.808559, 0.363936, -0.462367,
		17.621355, 15.830208, 25.007462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.743944, 15.164264, 25.621679>,  <17.055365, 15.575454, 25.331118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.743944, 15.164264, 25.621679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.822786, 15.527209, 25.473173>,  <17.870092, 15.744977, 25.384069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.822786, 15.527209, 25.473173>,  <17.743944, 15.164264, 25.621679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.822786, 15.527209, 25.473173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346969, 0.289623, 0.892037,
		0.916931, -0.304644, -0.257740,
		0.197106, 0.907364, -0.371266,
		17.881918, 15.799418, 25.361794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.396002, 15.295946, 25.852474>,  <17.743944, 15.164264, 25.621679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.396002, 15.295946, 25.852474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.251373, 15.656480, 25.757088>,  <18.164597, 15.872800, 25.699856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.251373, 15.656480, 25.757088>,  <18.396002, 15.295946, 25.852474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.251373, 15.656480, 25.757088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383369, 0.376874, 0.843205,
		0.849880, 0.213459, -0.481809,
		-0.361571, 0.901333, -0.238464,
		18.142902, 15.926880, 25.685549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.858334, 15.752131, 26.181204>,  <18.396002, 15.295946, 25.852474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.858334, 15.752131, 26.181204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.556261, 16.005661, 26.114309>,  <18.375017, 16.157780, 26.074173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.556261, 16.005661, 26.114309>,  <18.858334, 15.752131, 26.181204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.556261, 16.005661, 26.114309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289325, 0.551208, 0.782598,
		0.588212, 0.542618, -0.599644,
		-0.755180, 0.633826, -0.167234,
		18.329706, 16.195808, 26.064138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.092247, 16.411139, 26.250530>,  <18.858334, 15.752131, 26.181204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.092247, 16.411139, 26.250530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.698233, 16.432354, 26.316120>,  <18.461824, 16.445084, 26.355474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.698233, 16.432354, 26.316120>,  <19.092247, 16.411139, 26.250530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.698233, 16.432354, 26.316120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168249, 0.502005, 0.848341,
		-0.037323, 0.863237, -0.503417,
		-0.985038, 0.053037, 0.163975,
		18.402721, 16.448265, 26.365313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
